@interface PKPaymentSetupHeroViewController
- (BOOL)_readerModeIsSupported;
- (PKPaymentSetupHeroViewController)initWithProvisioningController:(id)controller context:(int64_t)context delegate:(id)delegate product:(id)product selectedMethod:(id)method allowsManualEntry:(BOOL)entry;
- (PKPaymentSetupHeroViewControllerFlowDelegate)flowDelegate;
- (PKPaymentSetupViewControllerDelegate)delegate;
- (id)_bodyText;
- (void)_configureDock;
- (void)_didContinueWithSelectedMethod;
- (void)_preflightWithCompletion:(id)completion;
- (void)_setShowActivityIndicator:(BOOL)indicator;
- (void)_setUserInteractionEnabled:(BOOL)enabled;
- (void)_terminateSetupFlow;
- (void)_transferExistingCardTapped;
- (void)didTapFooterLink:(id)link;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)setHideSetupLaterButton:(BOOL)button;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKPaymentSetupHeroViewController

- (PKPaymentSetupHeroViewController)initWithProvisioningController:(id)controller context:(int64_t)context delegate:(id)delegate product:(id)product selectedMethod:(id)method allowsManualEntry:(BOOL)entry
{
  entryCopy = entry;
  controllerCopy = controller;
  delegateCopy = delegate;
  productCopy = product;
  methodCopy = method;
  v34.receiver = self;
  v34.super_class = PKPaymentSetupHeroViewController;
  v19 = [(PKExplanationViewController *)&v34 initWithContext:context];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_provisioningController, controller);
    v21 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v20->_accountStore;
    v20->_accountStore = v21;

    objc_storeWeak(&v20->_delegate, delegateCopy);
    v20->_paymentSetupMode = 0;
    objc_storeStrong(&v20->_product, product);
    objc_storeStrong(&v20->_selectedMethod, method);
    if (v20->_selectedMethod)
    {
      v23 = 1;
    }

    else
    {
      v23 = !entryCopy;
    }

    v24 = !v23 && [(PKPaymentSetupHeroViewController *)v20 _readerModeIsSupported];
    v20->_allowsManualEntry = v24;
    webService = [(PKPaymentSetupHeroViewController *)v20 webService];
    targetDevice = [webService targetDevice];
    deviceRegion = [targetDevice deviceRegion];
    deviceRegion = v20->_deviceRegion;
    v20->_deviceRegion = deviceRegion;

    v29 = [MEMORY[0x1E69B8C18] manifestForRegion:v20->_deviceRegion];
    v30 = [objc_alloc(MEMORY[0x1E69B8C10]) initWithManifest:v29 webService:webService];
    heroImageController = v20->_heroImageController;
    v20->_heroImageController = v30;

    [(PKExplanationViewController *)v20 context];
    if (PKPaymentSetupContextIsBridge())
    {
      [(PKPaymentHeroImageController *)v20->_heroImageController setWatchSize:+[PKBridgeWatchAttributeController heroWatchSize]];
    }

    explanationView = [(PKExplanationViewController *)v20 explanationView];
    [explanationView setDelegate:v20];
  }

  return v20;
}

- (void)loadView
{
  v16.receiver = self;
  v16.super_class = PKPaymentSetupHeroViewController;
  [(PKExplanationViewController *)&v16 loadView];
  [(PKPaymentSetupHeroViewController *)self _configureDock];
  context = [(PKExplanationViewController *)self context];
  featuredImages = self->_featuredImages;
  if (featuredImages && [(NSArray *)featuredImages count])
  {
    v5 = self->_featuredImages;
  }

  else
  {
    featuredImages = [(PKPaymentHeroImageController *)self->_heroImageController featuredImages];
    v7 = featuredImages;
    if (featuredImages)
    {
      featuredDefaultImages = featuredImages;
    }

    else
    {
      featuredDefaultImages = [(PKPaymentHeroImageController *)self->_heroImageController featuredDefaultImages];
    }

    v5 = featuredDefaultImages;
  }

  v9 = [(PKPaymentHeroImageController *)self->_heroImageController filterImages:v5];

  v10 = [[PKPaymentSetupHeroView alloc] initWithContext:context heroImageController:self->_heroImageController heroImages:v9 product:self->_product];
  splashView = self->_splashView;
  self->_splashView = v10;

  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setHeroView:self->_splashView];
  if (self->_showPaymentCardTitle)
  {
    PKLocalizedPaymentString(&cfstr_PaymentSetupCr.isa);
  }

  else
  {
    [(PKPaymentSetupProduct *)self->_product displayName];
  }
  v13 = ;
  [explanationView setTitleText:v13];

  [explanationView setTitleAccessoriesEnabled:0];
  if ((PKPearlIsAvailable() & 1) != 0 || [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    v14 = +[PKPaymentSetupHeroView assetBackgroundColor];
    [explanationView setTopBackgroundColor:v14];
  }

  view = [(PKPaymentSetupHeroViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9C40]];
}

- (void)_configureDock
{
  v45[3] = *MEMORY[0x1E69E9840];
  explanationView = [(PKExplanationViewController *)self explanationView];
  [(PKExplanationViewController *)self context];
  IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  dockView = [explanationView dockView];
  [dockView setRequiresAdditionalPrimaryButtonPadding:IsSetupAssistant];
  product = self->_product;
  if (product)
  {
    configuration = [(PKPaymentSetupProduct *)product configuration];
    v7 = ([configuration type] - 3) < 2;
  }

  else
  {
    v7 = 0;
  }

  if (self->_hidePrivacyView)
  {
    [(PKExplanationViewController *)self setPrivacyLinkController:0];
  }

  if (v7)
  {
    v8 = 8;
LABEL_11:
    v11 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:v8];
    [(PKExplanationViewController *)self setPrivacyLinkController:v11];

    goto LABEL_12;
  }

  if ((PKPaymentSetupContextIsNonExpressSetupAssistant() & 1) != 0 || (-[PKPaymentProvisioningController associatedCredentials](self->_provisioningController, "associatedCredentials"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10))
  {
    v8 = 223;
    goto LABEL_11;
  }

  if (PKPaymentSetupContextIsIssuerApp())
  {
    v8 = 9;
    goto LABEL_11;
  }

LABEL_12:
  if (self->_showChinaPrivacyDisclosure)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    [v12 setLineBreakMode:0];
    [v12 setAlignment:PKOBKTextAlignment()];
    v44[0] = *MEMORY[0x1E69DB648];
    v13 = MEMORY[0x1E69DB878];
    v14 = _UISolariumFeatureFlagEnabled();
    v15 = MEMORY[0x1E69DDCF8];
    if (!v14)
    {
      v15 = MEMORY[0x1E69DDD08];
    }

    v16 = [v13 preferredFontForTextStyle:*v15];
    v45[0] = v16;
    v44[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v45[1] = secondaryLabelColor;
    v44[2] = *MEMORY[0x1E69DB688];
    v45[2] = v12;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];

    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    v20 = PKLocalizedPaymentString(&cfstr_ApplePayDescri.isa);
    v21 = [v19 initWithString:v20 attributes:v18];

    [explanationView setAttributedSecondaryBodyText:v21];
  }

  v22 = self->_product;
  v23 = PKIsChinaSKU();
  if (self->_showSouthKoreaPrivacyDisclosure)
  {
    primaryButton3 = PKLocalizedPaymentString(&cfstr_ContinueSouthK.isa);
    primaryButton = [dockView primaryButton];
    [primaryButton setTitle:primaryButton3 forState:0];

    primaryButton2 = PKLocalizedPaymentString(&cfstr_HeroSouthKorea.isa);
    v27 = PKLocalizedPaymentString(&cfstr_HeroSouthKorea_0.isa);
    v28 = PKStringWithValidatedFormat();
    v29 = objc_alloc_init(PKMultiHyperlinkView);
    [(PKMultiHyperlinkView *)v29 setTextAlignment:PKOBKTextAlignment(), v27];
    [(PKMultiHyperlinkView *)v29 setText:v28];
    objc_initWeak(&location, self);
    v30 = [PKTextRangeHyperlink alloc];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __50__PKPaymentSetupHeroViewController__configureDock__block_invoke;
    v40[3] = &unk_1E8010998;
    objc_copyWeak(&v41, &location);
    v31 = [(PKTextRangeHyperlink *)v30 initWithLinkText:v27 action:v40];
    v43 = v31;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    [(PKMultiHyperlinkView *)v29 setSources:v32];

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
    [dockView setAdditionalView:v29];
    [dockView setAdditionalViewBottomPadding:11.0];
  }

  else
  {
    if (v22)
    {
      v33 = 0;
    }

    else
    {
      v33 = v23;
    }

    if (v33 == 1)
    {
      primaryButton3 = PKLocalizedPaymentString(&cfstr_ContinueChina.isa);
      primaryButton2 = [dockView primaryButton];
      [primaryButton2 setTitle:primaryButton3 forState:0];
    }

    else
    {
      if (!self->_allowsManualEntry)
      {
        goto LABEL_26;
      }

      primaryButton3 = [dockView primaryButton];
      primaryButton2 = PKLocalizedPaymentString(&cfstr_AddNewCardTitl.isa);
      v34 = PKLocalizedPaymentString(primaryButton2);
      [primaryButton3 setTitle:v34 forState:0];
    }
  }

LABEL_26:
  if ([(PKExplanationViewController *)self showCancelButton])
  {
    [(PKExplanationViewController *)self setShowCancelButton:0];
  }

  if (self->_allowsManualEntry)
  {
    if (self->_showSouthKoreaPrivacyDisclosure)
    {
      v35 = @"SETUP_PURCHASE_TRANSFER_BALANCE_MESSAGE_SOUTH_KOREA";
    }

    else
    {
      v35 = @"SETUP_PURCHASE_TRANSFER_BALANCE_MESSAGE";
    }

    v36 = PKLocalizedPaymentString(&v35->isa);
    footerView = [dockView footerView];
    secondaryActionButton = [footerView secondaryActionButton];

    [secondaryActionButton setTitle:v36 forState:0];
    [secondaryActionButton addTarget:self action:sel__transferExistingCardTapped forControlEvents:0x2000];
  }
}

void __50__PKPaymentSetupHeroViewController__configureDock__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:*MEMORY[0x1E69BB750]];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didTapFooterLink:v3];
}

- (void)_transferExistingCardTapped
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportOtherButtonPressed:@"transferCard"];
  v5 = [(PKPaymentSetupProduct *)self->_product setupProductMethodsOfType:1];
  firstObject = [v5 firstObject];
  selectedMethod = self->_selectedMethod;
  self->_selectedMethod = firstObject;

  [(PKPaymentSetupHeroViewController *)self _didContinueWithSelectedMethod];
}

- (void)_didContinueWithSelectedMethod
{
  if ([(PKSetupProductMethod *)self->_selectedMethod type])
  {
    WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
    [WeakRetained heroViewControllerDidSelectContinue:self didSelectMethod:self->_selectedMethod];
  }

  else
  {
    v3 = PKDisplayableErrorForCommonType();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__PKPaymentSetupHeroViewController__didContinueWithSelectedMethod__block_invoke;
    v6[3] = &unk_1E8010970;
    v6[4] = self;
    v4 = PKAlertForDisplayableErrorWithHandlers(v3, 0, v6, 0);
    if (v4)
    {
      [(PKPaymentSetupHeroViewController *)self presentViewController:v4 animated:1 completion:0];
    }
  }
}

void __66__PKPaymentSetupHeroViewController__didContinueWithSelectedMethod__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1152));
  [WeakRetained heroViewControllerDidSelectContinue:*(a1 + 32) didSelectMethod:0];
}

- (BOOL)_readerModeIsSupported
{
  if (!self->_product || ![MEMORY[0x1E69B8748] isSupported])
  {
    return 0;
  }

  v3 = [(PKPaymentSetupProduct *)self->_product provisioningMethodMetadataForType:*MEMORY[0x1E69BC148]];
  if (v3)
  {
    v4 = ([(PKPaymentSetupProduct *)self->_product allSupportedProtocols]& 4) == 0 || PKFelicaSecureElementIsAvailable() != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKPaymentSetupHeroViewController;
  [(PKPaymentSetupHeroViewController *)&v5 viewWillAppear:appear];
  [(PKPaymentSetupHeroViewController *)self _setUserInteractionEnabled:1];
  if (!self->_preflightComplete)
  {
    [(PKExplanationViewController *)self context];
    if (PKPaymentSetupContextIsMerchantApp())
    {
      [(PKPaymentSetupHeroViewController *)self _setShowActivityIndicator:1];
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __51__PKPaymentSetupHeroViewController_viewWillAppear___block_invoke;
      v4[3] = &unk_1E8011D28;
      v4[4] = self;
      [(PKPaymentSetupHeroViewController *)self _preflightWithCompletion:v4];
    }
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupHeroViewController;
  [(PKExplanationViewController *)&v7 viewDidLoad];
  view = [(PKPaymentSetupHeroViewController *)self view];
  explanationView = [(PKExplanationViewController *)self explanationView];
  _bodyText = [(PKPaymentSetupHeroViewController *)self _bodyText];
  [explanationView setBodyText:_bodyText];

  v6 = PKProvisioningBackgroundColor();
  [view setBackgroundColor:v6];

  PKPaymentSetupApplyContextAppearance([(PKExplanationViewController *)self context], view);
}

- (void)_preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_preflightComplete)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
    }
  }

  else
  {
    PKTimeProfileBegin();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__PKPaymentSetupHeroViewController__preflightWithCompletion___block_invoke;
    aBlock[3] = &unk_1E8010AD8;
    v14 = v5;
    v6 = _Block_copy(aBlock);
    objc_initWeak(&location, self);
    provisioningController = self->_provisioningController;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__PKPaymentSetupHeroViewController__preflightWithCompletion___block_invoke_2;
    v9[3] = &unk_1E8023280;
    objc_copyWeak(&v11, &location);
    v9[4] = self;
    v8 = v6;
    v10 = v8;
    [(PKPaymentProvisioningController *)provisioningController preflightWithRequirements:167 completionRequirements:167 completion:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

uint64_t __61__PKPaymentSetupHeroViewController__preflightWithCompletion___block_invoke(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  v3 = PKTimeProfileEnd();

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __61__PKPaymentSetupHeroViewController__preflightWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 1104) = 1;
    if (v4)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __61__PKPaymentSetupHeroViewController__preflightWithCompletion___block_invoke_3;
      v8[3] = &unk_1E8010970;
      v8[4] = *(a1 + 32);
      v7 = PKAlertForDisplayableErrorWithHandlers(v4, 0, v8, 0);
      if (v7)
      {
        [v6 presentViewController:v7 animated:1 completion:0];
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __61__PKPaymentSetupHeroViewController__preflightWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 explanationView];
  [v1 explanationViewDidSelectSetupLater:v2];
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKPaymentSetupHeroViewController;
  [(PKExplanationViewController *)&v9 viewWillLayoutSubviews];
  [(PKExplanationViewController *)self context];
  v3 = 0.0;
  if (PKPaymentSetupContextIsSetupAssistant())
  {
    traitCollection = [(PKPaymentSetupHeroViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      v7 = [currentDevice orientation] - 1;

      if (v7 > 1)
      {
        goto LABEL_9;
      }
    }

    else if (userInterfaceIdiom != 5)
    {
      if (userInterfaceIdiom == 6)
      {
        v3 = 74.0;
      }

      else
      {
        v3 = 0.0;
      }

      goto LABEL_9;
    }

    v3 = 54.0;
  }

LABEL_9:
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setTopMargin:v3];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupHeroViewController;
  [(PKPaymentSetupHeroViewController *)&v8 viewDidAppear:appear];
  self->_nextButtonPushed = 0;
  splashView = self->_splashView;
  if (splashView)
  {
    [(PKPaymentSetupHeroView *)splashView startAnimation];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 viewControllerDidBeginSetupFlow:self];
  }

  if (self->_product)
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter setSetupProduct:?];
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PKPaymentSetupHeroViewController;
  [(PKPaymentSetupHeroViewController *)&v7 viewDidDisappear:disappear];
  view = [(PKPaymentSetupHeroViewController *)self view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    view2 = [(PKPaymentSetupHeroViewController *)self view];
    [view2 stopAnimation];
  }
}

- (void)_setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  view = [(PKPaymentSetupHeroViewController *)self view];
  [view setUserInteractionEnabled:enabledCopy];

  [(PKPaymentSetupHeroViewController *)self _setShowActivityIndicator:enabledCopy ^ 1];
}

- (void)_setShowActivityIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];

  [dockView setButtonsEnabled:indicatorCopy ^ 1];
  primaryButton = [dockView primaryButton];
  [primaryButton setShowSpinner:indicatorCopy];
}

- (id)_bodyText
{
  longLocalizedDescription = [(PKPaymentSetupProduct *)self->_product longLocalizedDescription];
  if ([longLocalizedDescription length])
  {
    v4 = longLocalizedDescription;
  }

  else
  {
    webService = [(PKPaymentSetupHeroViewController *)self webService];
    context = [webService context];
    configuration = [context configuration];

    v8 = [configuration paymentSetupFeaturedNetworksForRegion:self->_deviceRegion];
    [(PKExplanationViewController *)self context];
    IsBridge = PKPaymentSetupContextIsBridge();
    traitCollection = [(PKPaymentSetupHeroViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if ([v8 containsObject:*MEMORY[0x1E69BC0B8]])
    {
      v12 = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v4 = PKLocalizedAquamanString(&cfstr_ApplePayDescri_0.isa);
    }

    else
    {
      if ([(NSString *)self->_deviceRegion isEqualToString:@"HK"])
      {
        v13 = @"APPLE_PAY_DESCRIPTION_HONG_KONG";
      }

      else if ([(NSString *)self->_deviceRegion isEqualToString:@"TW"])
      {
        v13 = @"APPLE_PAY_DESCRIPTION_TAIWAN";
      }

      else
      {
        v13 = @"APPLE_PAY_DESCRIPTION";
      }

      v14 = PKDeviceSpecificLocalizedStringKeyForKey(v13, IsBridge);
      v4 = PKLocalizedPaymentString(v14);
    }
  }

  return v4;
}

- (void)_terminateSetupFlow
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Terminating setup flow", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    [(PKPaymentSetupHeroViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)didTapFooterLink:(id)link
{
  v10 = *MEMORY[0x1E69E9840];
  linkCopy = link;
  if (linkCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E697A838]) initWithURL:linkCopy];
    [v5 setModalPresentationStyle:2];
    [(PKPaymentSetupHeroViewController *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Error: Could not open url in: %@", &v8, 0xCu);
    }
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  if (WeakRetained)
  {
    product = self->_product;
    if (product)
    {
      if (self->_allowsManualEntry || !self->_selectedMethod)
      {
        v6 = [(PKPaymentSetupProduct *)product setupProductMethodsOfType:2];
        firstObject = [v6 firstObject];
        selectedMethod = self->_selectedMethod;
        self->_selectedMethod = firstObject;
      }

      v9 = objc_loadWeakRetained(&self->_flowDelegate);
      v13 = v9;
      v10 = self->_selectedMethod;
      selfCopy2 = self;
    }

    else
    {
      v9 = objc_loadWeakRetained(&self->_flowDelegate);
      v13 = v9;
      selfCopy2 = self;
      v10 = 0;
    }

    [v9 heroViewControllerDidSelectContinue:selfCopy2 didSelectMethod:v10];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "WARNING: explanationViewDidSelectContinue called for hero view, but it should have been overridden", buf, 2u);
    }

    [(PKPaymentSetupHeroViewController *)self _terminateSetupFlow];
  }
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:4];
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_flowDelegate);
    [v5 heroViewControllerDidSelectSetupLater:self];
  }

  else
  {

    [(PKPaymentSetupHeroViewController *)self _terminateSetupFlow];
  }
}

- (void)setHideSetupLaterButton:(BOOL)button
{
  buttonCopy = button;
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  v6 = footerView;
  if (buttonCopy)
  {
    [footerView setSetUpLaterButton:0];
  }
}

- (PKPaymentSetupHeroViewControllerFlowDelegate)flowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);

  return WeakRetained;
}

- (PKPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end