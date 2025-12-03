@interface PKApplyOfferViewController
- (PKApplyOfferViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page;
- (id)analyticsAdditionalValues;
- (id)analyticsPageTag;
- (void)_openTermsAndConditions;
- (void)_setupForBroadwayApplication:(id)application;
- (void)_terminateApplyFlowWithoutDeclining;
- (void)_termsAccepted:(BOOL)accepted actionIdentifier:(id)identifier;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKApplyOfferViewController

- (PKApplyOfferViewController)initWithController:(id)controller setupDelegate:(id)delegate context:(int64_t)context applyPage:(id)page
{
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = PKApplyOfferViewController;
  v11 = [(PKApplyExplanationViewController *)&v22 initWithController:controllerCopy setupDelegate:delegate context:context applyPage:page];
  if (v11)
  {
    featureApplication = [controllerCopy featureApplication];
    applicationOfferDetails = [featureApplication applicationOfferDetails];

    detailsInfo = [applicationOfferDetails detailsInfo];
    offerTermsIdentifier = [applicationOfferDetails offerTermsIdentifier];
    offerTermsIdentifier = v11->_offerTermsIdentifier;
    v11->_offerTermsIdentifier = offerTermsIdentifier;

    installmentConfiguration = [controllerCopy installmentConfiguration];
    installmentConfiguration = v11->_installmentConfiguration;
    v11->_installmentConfiguration = installmentConfiguration;

    if ([detailsInfo layout])
    {
      layout = [detailsInfo layout];
    }

    else if (v11->_installmentConfiguration)
    {
      layout = 2;
    }

    else
    {
      layout = 1;
    }

    v11->_layout = layout;
    featureApplication2 = [controllerCopy featureApplication];
    v11->_hasSufficientOTBForInstallment = [featureApplication2 hasSufficientOTBForInstallmentConfiguration:v11->_installmentConfiguration];
  }

  return v11;
}

- (void)dealloc
{
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v4 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = PKApplyOfferViewController;
  [(PKApplyOfferViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKApplyOfferViewController;
  [(PKApplyExplanationViewController *)&v8 viewDidLoad];
  controller = [(PKApplyExplanationViewController *)self controller];
  featureApplication = [controller featureApplication];

  feature = [featureApplication feature];
  if (feature <= 5)
  {
    if (feature == 2)
    {
      [(PKApplyOfferViewController *)self _setupForBroadwayApplication:featureApplication];
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Error: Unsupported feature cannot present UI", v7, 2u);
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKApplyOfferViewController;
  [(PKApplyExplanationViewController *)&v5 viewDidAppear:appear];
  controller = [(PKApplyExplanationViewController *)self controller];
  [controller termsShownWithIdentifier:self->_offerTermsIdentifier];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PKApplyOfferViewController;
  [(PKApplyOfferViewController *)&v6 viewWillDisappear:disappear];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v5 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }
}

- (void)preflightWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_heroImage)
  {
    if (completionCopy)
    {
LABEL_3:
      v5[2](v5, 1);
    }
  }

  else
  {
    currentPage = [(PKApplyExplanationViewController *)self currentPage];
    heroImageURL = [currentPage heroImageURL];

    if (heroImageURL)
    {
      v8 = [MEMORY[0x1E695DFF8] URLWithString:heroImageURL];
      v9 = PKLogFacilityTypeGetObject();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "PKApplyOfferViewController preflighting", buf, 2u);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__PKApplyOfferViewController_preflightWithCompletion___block_invoke;
        aBlock[3] = &unk_1E8017E48;
        aBlock[4] = self;
        v19 = heroImageURL;
        v20 = v5;
        v11 = _Block_copy(aBlock);
        mEMORY[0x1E69B8A08] = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
        v13 = [mEMORY[0x1E69B8A08] cachedDataForURL:v8];

        if (v13)
        {
          v11[2](v11, v13);
        }

        else
        {
          mEMORY[0x1E69B8A08]2 = [MEMORY[0x1E69B8A08] sharedImageAssetDownloader];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __54__PKApplyOfferViewController_preflightWithCompletion___block_invoke_2;
          v16[3] = &unk_1E8013E70;
          v17 = v11;
          [mEMORY[0x1E69B8A08]2 downloadFromUrl:v8 completionHandler:v16];
        }
      }

      else
      {
        if (v10)
        {
          *buf = 138412290;
          v22 = heroImageURL;
          _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Could not create valid URL for :%@", buf, 0xCu);
        }

        if (v5)
        {
          v5[2](v5, 1);
        }
      }
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "PKApplyOfferViewController - nothing to preflight", buf, 2u);
      }

      if (v5)
      {
        goto LABEL_3;
      }
    }
  }
}

void __54__PKApplyOfferViewController_preflightWithCompletion___block_invoke(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E69DCAB8] imageWithData:v3];
    v5 = a1[4];
    v6 = *(v5 + 1280);
    *(v5 + 1280) = v4;

    v7 = *(a1[4] + 1280);
    v8 = PKLogFacilityTypeGetObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = a1[5];
        *buf = 138543362;
        v17 = v10;
        v11 = "Created image for URL: %{public}@";
LABEL_7:
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      }
    }

    else if (v9)
    {
      v12 = a1[5];
      *buf = 138543362;
      v17 = v12;
      v11 = "Failed to create image for URL: %{public}@";
      goto LABEL_7;
    }
  }

  v13 = a1[6];
  if (v13)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__PKApplyOfferViewController_preflightWithCompletion___block_invoke_22;
    block[3] = &unk_1E8010B50;
    v15 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Offer terms accepted", v16, 2u);
  }

  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v6 = *MEMORY[0x1E69BA440];
  v17[0] = *MEMORY[0x1E69BA680];
  v17[1] = v6;
  v7 = *MEMORY[0x1E69BA288];
  v18[0] = *MEMORY[0x1E69BA6F0];
  v18[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v9 = [v5 initWithDictionary:v8];

  analyticsAdditionalValues = [(PKApplyOfferViewController *)self analyticsAdditionalValues];
  [v9 addEntriesFromDictionary:analyticsAdditionalValues];

  controller = [(PKApplyExplanationViewController *)self controller];
  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  analyticsPageTag = [(PKApplyOfferViewController *)self analyticsPageTag];
  [controller reportAnalyticsDictionaryForPage:currentPage pageTag:analyticsPageTag additionalValues:v9];

  currentPage2 = [(PKApplyExplanationViewController *)self currentPage];
  primaryActionIdentifier = [currentPage2 primaryActionIdentifier];
  [(PKApplyOfferViewController *)self _termsAccepted:1 actionIdentifier:primaryActionIdentifier];
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = *MEMORY[0x1E69BA440];
  v19[0] = *MEMORY[0x1E69BA680];
  v19[1] = v5;
  v6 = *MEMORY[0x1E69BA430];
  v20[0] = *MEMORY[0x1E69BA6F0];
  v20[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v8 = [v4 initWithDictionary:v7];

  analyticsAdditionalValues = [(PKApplyOfferViewController *)self analyticsAdditionalValues];
  [v8 addEntriesFromDictionary:analyticsAdditionalValues];

  controller = [(PKApplyExplanationViewController *)self controller];
  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  analyticsPageTag = [(PKApplyOfferViewController *)self analyticsPageTag];
  [controller reportAnalyticsDictionaryForPage:currentPage pageTag:analyticsPageTag additionalValues:v8];

  installmentConfiguration = self->_installmentConfiguration;
  v14 = PKLogFacilityTypeGetObject();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (installmentConfiguration)
  {
    if (v15)
    {
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Dismissing installment apply without declining", v18, 2u);
    }

    [(PKApplyOfferViewController *)self _terminateApplyFlowWithoutDeclining];
  }

  else
  {
    if (v15)
    {
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Offer terms declined", v18, 2u);
    }

    currentPage2 = [(PKApplyExplanationViewController *)self currentPage];
    secondaryActionIdentifier = [currentPage2 secondaryActionIdentifier];
    [(PKApplyOfferViewController *)self _termsAccepted:0 actionIdentifier:secondaryActionIdentifier];
  }
}

- (id)analyticsPageTag
{
  if (self->_installmentConfiguration)
  {
    v2 = MEMORY[0x1E69BA1E8];
  }

  else
  {
    v2 = MEMORY[0x1E69BA1F0];
  }

  return *v2;
}

- (id)analyticsAdditionalValues
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = PKFeatureApplicationOfferDetailsInfoLayoutToString();
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x1E69BAA50]];

  v4 = [v2 copy];

  return v4;
}

- (void)_setupForBroadwayApplication:(id)application
{
  applicationCopy = application;
  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  explanationView = [(PKExplanationViewController *)self explanationView];
  feature = [applicationCopy feature];
  applicationOfferDetails = [applicationCopy applicationOfferDetails];
  detailsInfo = [applicationOfferDetails detailsInfo];
  controller = [(PKApplyExplanationViewController *)self controller];
  preferredLanguage = [controller preferredLanguage];

  heroImage = [(PKApplyOfferViewController *)self heroImage];
  applicationType = [applicationCopy applicationType];
  v11 = self->_layout == 2 || applicationType == 2;
  v55 = heroImage;
  if (v11)
  {
    v12 = PKFeatureApplicationHeaderImageWithImage(feature, heroImage);
    [explanationView setImage:v12];
    [explanationView setTopMargin:30.0];
  }

  else
  {
    if (heroImage)
    {
      [explanationView setImage:heroImage];
      goto LABEL_11;
    }

    v12 = PKProvisioningSecondaryBackgroundColor();
    [explanationView setTopBackgroundColor:v12];
    v13 = [[PKApplyHeroCardView alloc] initWithFeatureIdentifier:feature];
    [(PKApplyHeroCardView *)v13 setBackgroundColor:v12];
    [explanationView setHeroView:v13];
  }

LABEL_11:
  aprForPurchase = [applicationOfferDetails aprForPurchase];
  v57 = aprForPurchase;
  if (aprForPurchase)
  {
    v15 = aprForPurchase;
    v16 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v16 setNumberStyle:3];
    if (([v15 pk_isIntegralNumber] & 1) == 0)
    {
      [v16 setMinimumFractionDigits:2];
    }

    v56 = [v16 stringFromNumber:v57];
  }

  else
  {
    v56 = @"-";
  }

  objc_initWeak(location, self);
  v17 = MEMORY[0x1E69DC628];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __59__PKApplyOfferViewController__setupForBroadwayApplication___block_invoke;
  v64[3] = &unk_1E8010A60;
  objc_copyWeak(&v65, location);
  v61 = [v17 actionWithHandler:v64];
  disclosureTitle = [detailsInfo disclosureTitle];
  v19 = disclosureTitle;
  if (disclosureTitle)
  {
    v60 = disclosureTitle;
  }

  else
  {
    v60 = PKLocalizedApplyFeatureString();
  }

  v20 = objc_alloc_init(PKApplyOfferCreditCardView);
  offerView = self->_offerView;
  self->_offerView = v20;

  v58 = PKOBKLearnMoreButton(@"info.circle.fill", v60, v61);
  dockView = [explanationView dockView];
  [dockView setAdditionalView:v58];

  body = [currentPage body];
  if (self->_layout != 2)
  {
    currencyCode = [applicationOfferDetails currencyCode];
    v52 = PKMutableNumberFormatterForCurrencyCode();
    minimumFractionDigits = [v52 minimumFractionDigits];
    creditLimitTitleLabel = [(PKApplyOfferCreditCardView *)self->_offerView creditLimitTitleLabel];
    v26 = PKLocalizedApplyFeatureString();
    [creditLimitTitleLabel setText:v26];

    creditLimit = [applicationOfferDetails creditLimit];
    v53 = @"-";
    if (currencyCode && creditLimit)
    {
      if ([creditLimit pk_isIntegralNumber])
      {
        v27 = 0;
      }

      else
      {
        v27 = minimumFractionDigits;
      }

      [v52 setMinimumFractionDigits:v27];
      v53 = [v52 stringFromNumber:creditLimit];
    }

    creditLimitLabel = [(PKApplyOfferCreditCardView *)self->_offerView creditLimitLabel];
    [creditLimitLabel setText:v53];

    aprForPurchaseTitleLabel = [(PKApplyOfferCreditCardView *)self->_offerView aprForPurchaseTitleLabel];
    v30 = PKLocalizedApplyFeatureString();
    [aprForPurchaseTitleLabel setText:v30];

    aprForPurchaseLabel = [(PKApplyOfferCreditCardView *)self->_offerView aprForPurchaseLabel];
    [aprForPurchaseLabel setText:v56];

    applicationType2 = [applicationCopy applicationType];
    if (applicationType2 < 2)
    {
      feeTitleLabel = [(PKApplyOfferCreditCardView *)self->_offerView feeTitleLabel];
      v37 = PKLocalizedApplyFeatureString();
      [feeTitleLabel setText:v37];
      v51 = currencyCode;

      annualFee = [applicationOfferDetails annualFee];
      zero = [MEMORY[0x1E696AB90] zero];
      v40 = [annualFee isEqualToNumber:zero];

      if (v40)
      {
        v41 = PKLocalizedApplyFeatureString();
      }

      else
      {
        v41 = @"-";
        if (v51 && annualFee)
        {
          v42 = PKMutableNumberFormatterForCurrencyCode();
          if ([annualFee pk_isIntegralNumber])
          {
            v43 = 0;
          }

          else
          {
            v43 = minimumFractionDigits;
          }

          [v42 setMinimumFractionDigits:v43];
          v41 = [v42 stringFromNumber:annualFee];
        }
      }

      feeLabel = [(PKApplyOfferCreditCardView *)self->_offerView feeLabel];
      [feeLabel setText:v41];
    }

    else
    {
      if (applicationType2 - 2 > 1)
      {
LABEL_42:

        goto LABEL_43;
      }

      balance = [applicationOfferDetails balance];
      v34 = balance;
      if (balance)
      {
        zero2 = balance;
      }

      else
      {
        zero2 = [MEMORY[0x1E696AB90] zero];
      }

      v41 = zero2;

      feeTitleLabel2 = [(PKApplyOfferCreditCardView *)self->_offerView feeTitleLabel];
      v46 = PKLocalizedApplyFeatureString();
      [feeTitleLabel2 setText:v46];
      v51 = currencyCode;

      currencyCode2 = [applicationOfferDetails currencyCode];
      v48 = PKCurrencyAmountMake();
      annualFee = [v48 formattedStringValue];

      feeLabel = [(PKApplyOfferCreditCardView *)self->_offerView feeLabel];
      [feeLabel setText:annualFee];
    }

    currencyCode = v51;
    goto LABEL_42;
  }

LABEL_43:
  bodyLabel = [(PKApplyOfferCreditCardView *)self->_offerView bodyLabel];
  [bodyLabel setText:body];

  [explanationView setBodyView:self->_offerView];
  objc_destroyWeak(&v65);
  objc_destroyWeak(location);
}

void __59__PKApplyOfferViewController__setupForBroadwayApplication___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openTermsAndConditions];
}

- (void)_openTermsAndConditions
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v4 = *MEMORY[0x1E69BB170];
  v19[0] = *MEMORY[0x1E69BA680];
  v19[1] = v4;
  v5 = *MEMORY[0x1E69BB310];
  v20[0] = *MEMORY[0x1E69BA7C8];
  v20[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v7 = [v3 initWithDictionary:v6];

  analyticsAdditionalValues = [(PKApplyOfferViewController *)self analyticsAdditionalValues];
  [v7 addEntriesFromDictionary:analyticsAdditionalValues];

  controller = [(PKApplyExplanationViewController *)self controller];
  currentPage = [(PKApplyExplanationViewController *)self currentPage];
  analyticsPageTag = [(PKApplyOfferViewController *)self analyticsPageTag];
  [controller reportAnalyticsDictionaryForPage:currentPage pageTag:analyticsPageTag additionalValues:v7];

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Opening offer terms and conditions", v18, 2u);
  }

  v13 = [PKApplyTermsAndConditionsViewController alloc];
  controller2 = [(PKApplyExplanationViewController *)self controller];
  setupDelegate = [(PKApplyExplanationViewController *)self setupDelegate];
  v16 = [(PKApplyTermsAndConditionsViewController *)v13 initWithController:controller2 setupDelegate:setupDelegate context:[(PKExplanationViewController *)self context] termsIdentifier:self->_offerTermsIdentifier];

  [(PKFeatureTermsAndConditionsViewController *)v16 setUseModalPresentation:1];
  navigationController = [(PKApplyOfferViewController *)self navigationController];
  [navigationController pk_presentPaymentSetupViewController:v16 animated:1 completion:0];
}

- (void)_terminateApplyFlowWithoutDeclining
{
  setupDelegate = [(PKApplyExplanationViewController *)self setupDelegate];
  v4 = setupDelegate;
  if (self->_installmentConfiguration)
  {
    v5 = setupDelegate == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    [(PKApplyExplanationViewController *)self terminateSetupFlow];
  }

  else
  {
    controller = [(PKApplyExplanationViewController *)self controller];
    featureApplication = [controller featureApplication];

    [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PKApplyOfferViewController__terminateApplyFlowWithoutDeclining__block_invoke;
    v8[3] = &unk_1E8010998;
    objc_copyWeak(&v9, &location);
    [v4 viewController:self canProceedWithInstallment:0 featureApplication:featureApplication completion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __65__PKApplyOfferViewController__terminateApplyFlowWithoutDeclining__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PKApplyOfferViewController__terminateApplyFlowWithoutDeclining__block_invoke_2;
  block[3] = &unk_1E8010998;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __65__PKApplyOfferViewController__terminateApplyFlowWithoutDeclining__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained showNavigationBarSpinner:0];
    [v2 terminateSetupFlow];
    WeakRetained = v2;
  }
}

- (void)_termsAccepted:(BOOL)accepted actionIdentifier:(id)identifier
{
  acceptedCopy = accepted;
  identifierCopy = identifier;
  if (!self->_inUseAssertion)
  {
    v7 = MEMORY[0x1E695FBE0];
    v8 = PKPassKitCoreBundle();
    v9 = [v7 newAssertionForBundle:v8 withReason:@"Accepting application terms"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v9;
  }

  [(PKApplyExplanationViewController *)self showNavigationBarSpinner:1];
  objc_initWeak(&location, self);
  controller = [(PKApplyExplanationViewController *)self controller];
  offerTermsIdentifier = self->_offerTermsIdentifier;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke;
  v13[3] = &unk_1E801CA18;
  objc_copyWeak(&v14, &location);
  v15 = acceptedCopy;
  v13[4] = self;
  [controller termsAccepted:acceptedCopy termsIdentifier:offerTermsIdentifier secondaryIdentifier:0 actionIdentifier:identifierCopy completion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (*(a1 + 48) == 1 && *(*(a1 + 32) + 1264))
    {
      v8 = [MEMORY[0x1E695DF00] date];
      PKSharedCacheSetObjectForKey();
    }

    v9 = [*(a1 + 32) setupDelegate];
    v10 = v9;
    if (*(*(a1 + 32) + 1264))
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      [WeakRetained handleNextViewController:v5 displayableError:v6];
    }

    else
    {
      v12 = [WeakRetained controller];
      v13 = [v12 featureApplication];

      if (*(a1 + 48) == 1)
      {
        v14 = *(*(a1 + 32) + 1272);
      }

      else
      {
        v14 = 0;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke_2;
      v15[3] = &unk_1E8010A88;
      v16 = WeakRetained;
      v17 = v5;
      v18 = v6;
      [v10 viewController:v16 canProceedWithInstallment:v14 & 1 featureApplication:v13 completion:v15];
    }
  }
}

void __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke_2(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKApplyOfferViewController__termsAccepted_actionIdentifier___block_invoke_3;
  block[3] = &unk_1E8010A88;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end