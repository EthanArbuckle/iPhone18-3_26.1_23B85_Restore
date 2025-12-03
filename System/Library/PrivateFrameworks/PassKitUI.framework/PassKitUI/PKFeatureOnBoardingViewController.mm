@interface PKFeatureOnBoardingViewController
- (PKFeatureOnBoardingViewController)initWithParentFlowController:(id)controller setupDelegate:(id)delegate setupContext:(int64_t)context onboardingContext:(int64_t)onboardingContext featureIdentifier:(unint64_t)identifier provisioningController:(id)provisioningController paymentSetupProduct:(id)product currentPage:(id)self0;
- (id)_analyticsPartialEventDictionaryForButtonTapWithButtonTagKey:(id)key;
- (id)_appleCardWelcomeExperiment;
- (id)_subjectForFeature:(unint64_t)feature;
- (id)loadHeroImageFromWelcomeExperiment;
- (id)nextOnboardingViewControllerWithPage:(id)page product:(id)product;
- (void)_beginReportingIfNecessary;
- (void)_checkSecurityCapabilities:(unint64_t)capabilities nextStep:(id)step;
- (void)_defaultFeatureAccountAnalyticsWithCompletion:(id)completion;
- (void)_defaultFeatureAccountWithCompletion:(id)completion;
- (void)_endReportingIfNecessary;
- (void)_handleAccountCredential:(id)credential completion:(id)completion;
- (void)_handleApplyFlowWithCompletion:(id)completion;
- (void)_openSecondaryActionItem;
- (void)_openTermsAndConditions;
- (void)_reportAnalyticsSubject:(id)subject withPartialEventDictionary:(id)dictionary;
- (void)_reportAnalyticsViewDidAppear:(BOOL)appear;
- (void)_reportCancelTapped;
- (void)_reportContinueTapped;
- (void)_reportRatesAndTermsTapped;
- (void)didMoveToParentViewController:(id)controller;
- (void)explanationViewControllerDidSelectCancel:(id)cancel;
- (void)explanationViewDidUpdateLayout:(id)layout;
- (void)handleProductAvailable;
- (void)handleSetupLater;
- (void)preflightWithCompletion:(id)completion;
- (void)updateForHeroImage;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PKFeatureOnBoardingViewController

- (PKFeatureOnBoardingViewController)initWithParentFlowController:(id)controller setupDelegate:(id)delegate setupContext:(int64_t)context onboardingContext:(int64_t)onboardingContext featureIdentifier:(unint64_t)identifier provisioningController:(id)provisioningController paymentSetupProduct:(id)product currentPage:(id)self0
{
  pageCopy = page;
  v25.receiver = self;
  v25.super_class = PKFeatureOnBoardingViewController;
  v18 = [(PKOnBoardingViewController *)&v25 initWithParentFlowController:controller setupDelegate:delegate context:context provisioningController:provisioningController paymentSetupProduct:product currentPage:pageCopy];
  v19 = v18;
  if (v18)
  {
    v18->_featureIdentifier = identifier;
    v18->_onboardingContext = onboardingContext;
    identifier = [pageCopy identifier];
    v19->_isMainFeatureOnboardingPage = [identifier isEqualToString:*MEMORY[0x1E69BBAE8]];

    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    defaultFeatureAccountCompletions = v19->_defaultFeatureAccountCompletions;
    v19->_defaultFeatureAccountCompletions = v21;

    if (identifier <= 5)
    {
      v23 = ((1 << identifier) & 0x13) == 0 || v19->_isMainFeatureOnboardingPage;
      v19->_featureSupportsAnalytics = v23;
    }
  }

  return v19;
}

- (void)viewDidLoad
{
  v108.receiver = self;
  v108.super_class = PKFeatureOnBoardingViewController;
  [(PKOnBoardingViewController *)&v108 viewDidLoad];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  navigationItem = [(PKFeatureOnBoardingViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  v106 = [PKApplyController preferredLanguageForFeatureIdentifier:self->_featureIdentifier account:0];
  currentPage = [(PKOnBoardingViewController *)self currentPage];
  provisioningController = [(PKOnBoardingViewController *)self provisioningController];
  associatedCredentials = [provisioningController associatedCredentials];
  firstObject = [associatedCredentials firstObject];
  isAccountCredential = [firstObject isAccountCredential];

  layout = [currentPage layout];
  self->_layout = layout;
  if (!layout)
  {
    if (self->_installmentConfiguration)
    {
      layout = 2;
    }

    else
    {
      layout = 1;
    }

    self->_layout = layout;
  }

  self->_useCompactLayout = layout == 2;
  if (!self->_isMainFeatureOnboardingPage)
  {
    [explanationView setShowPrivacyView:0];
    [(PKExplanationViewController *)self setShowCancelButton:0];
    goto LABEL_30;
  }

  v10 = [PKApplyController preferredLanguageForFeatureIdentifier:self->_featureIdentifier account:0];
  featureIdentifier = self->_featureIdentifier;
  if (featureIdentifier > 2)
  {
    if (featureIdentifier == 5)
    {
      v12 = MEMORY[0x1E69B7D50];
      v13 = 128;
LABEL_18:
      v16 = [v12 pk_privacyLinkForContext:v13];
      [v16 setDisplayLanguage:v10];
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (featureIdentifier == 4)
    {
      v14 = MEMORY[0x1E69B7D50];
      v15 = 8;
LABEL_22:
      v16 = [v14 pk_privacyLinkForContext:v15];
      if (v16)
      {
LABEL_23:
        [explanationView setShowPrivacyView:1];
        [(PKExplanationViewController *)self setPrivacyLinkController:v16];

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (featureIdentifier != 3)
    {
      goto LABEL_24;
    }

LABEL_16:
    v14 = MEMORY[0x1E69B7D50];
    v15 = 1;
    goto LABEL_22;
  }

  switch(featureIdentifier)
  {
    case 0:
      goto LABEL_16;
    case 1:
      v14 = MEMORY[0x1E69B7D50];
      v15 = 2;
      goto LABEL_22;
    case 2:
      v12 = MEMORY[0x1E69B7D50];
      v13 = 4;
      goto LABEL_18;
  }

LABEL_24:
  navigationController = [(PKFeatureOnBoardingViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v19 = [viewControllers count];

  if (v19 < 2)
  {
    if (self->_featureIdentifier == 2)
    {
      [(PKExplanationViewController *)self setShowCancelButton:1];
    }

    else
    {
      [(PKExplanationViewController *)self setShowCloseButton:1];
    }
  }

  else
  {
    [(PKExplanationViewController *)self setShowCancelButton:0];
    navigationItem2 = [(PKFeatureOnBoardingViewController *)self navigationItem];
    [navigationItem2 setHidesBackButton:0];
  }

LABEL_30:
  [(PKFeatureOnBoardingViewController *)self updateForHeroImage];
  title = [currentPage title];
  v101 = title;
  if ((title == 0) | isAccountCredential & 1)
  {
    v22 = self->_featureIdentifier;
    if (v22 == 5)
    {
      PKSavingsFDICSignageEnabled();
      v23 = PKLocalizedApplyFeatureString();
      [explanationView setBodyText:v23];
    }

    else
    {
      if (v22 != 2)
      {
        goto LABEL_39;
      }

      if (isAccountCredential & 1 | !self->_useCompactLayout)
      {
        [explanationView setTitleText:0];
        v23 = PKUIImageNamed(@"AppleCardLogo-Onboarding");
        [explanationView setTitleImage:v23];
        [explanationView setTitleAlignment:PKOBKTextAlignment()];
        [explanationView setTopLogoBottomPadding:12.0];
      }

      else
      {
        v23 = PKLocalizedApplyFeatureString();
        [explanationView setTitleText:v23];
      }
    }
  }

  else
  {
    [explanationView setTitleText:title];
    [explanationView setTitleAccessoriesEnabled:0];
  }

LABEL_39:
  subtitle = [currentPage subtitle];
  v100 = subtitle;
  if ((subtitle == 0) | isAccountCredential & 1)
  {
    v25 = dockView;
    if (self->_isMainFeatureOnboardingPage && (self->_installmentConfiguration || self->_featureIdentifier == 2))
    {
      v26 = PKLocalizedApplyFeatureString();
      [explanationView setBodyText:v26];
    }
  }

  else
  {
    [explanationView setBodyText:subtitle];
    v25 = dockView;
  }

  body = [currentPage body];
  v107 = explanationView;
  v99 = body;
  v104 = v25;
  if (body)
  {
    v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:body];
    goto LABEL_60;
  }

  v29 = self->_featureIdentifier;
  if (v29 != 5)
  {
    if (v29 == 2 && self->_isMainFeatureOnboardingPage)
    {
      v30 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
      [v30 setAlignment:PKOBKTextAlignment()];
      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v32 = *MEMORY[0x1E69DDCF8];
      v95 = *MEMORY[0x1E69DDC30];
      v33 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC30]);
      v93 = *MEMORY[0x1E69DB648];
      [v31 setObject:v33 forKey:?];

      v34 = PKOBKBodyTextColor();
      v92 = *MEMORY[0x1E69DB650];
      [v31 setObject:v34 forKey:?];

      v91 = *MEMORY[0x1E69DB688];
      [v31 setObject:v30 forKey:?];
      footnote = [currentPage footnote];
      v36 = footnote;
      if (footnote)
      {
        v37 = footnote;
      }

      else
      {
        v37 = PKLocalizedApplyFeatureString();
      }

      v72 = v37;

      v73 = MEMORY[0x1E696AEC0];
      v74 = [v72 length];
      v75 = @"\n";
      if (!v74)
      {
        v75 = &stru_1F3BD7330;
      }

      v98 = v72;
      v76 = [v73 stringWithFormat:@"%@%@", v75, v72];
      v77 = v31;
      v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v76 attributes:v31];
      footnoteDisclosure = [currentPage footnoteDisclosure];
      if ([footnoteDisclosure length])
      {
        v90 = v30;
        v79 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
        [v79 setAlignment:PKOBKTextAlignment()];
        v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v81 = PKFontForDefaultDesign(v32, v95);
        [v80 setObject:v81 forKey:v93];

        v82 = PKOBKBodyTextColor();
        [v80 setObject:v82 forKey:v92];

        [v80 setObject:v79 forKey:v91];
        v83 = MEMORY[0x1E696AEC0];
        v84 = [v76 length];
        v85 = @"\n";
        if (!v84)
        {
          v85 = &stru_1F3BD7330;
        }

        v86 = [v83 stringWithFormat:@"%@%@", v85, footnoteDisclosure];
        v87 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v86 attributes:v80];
        [v28 appendAttributedString:v87];

        v30 = v90;
      }

      explanationView = v107;
      v25 = v104;
      goto LABEL_60;
    }

LABEL_59:
    v28 = 0;
    goto LABEL_60;
  }

  if (!self->_isMainFeatureOnboardingPage)
  {
    goto LABEL_59;
  }

  v38 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v38 setAlignment:PKOBKTextAlignment()];
  v39 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v94 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC30]);
  [v39 setObject:? forKey:?];
  v40 = PKOBKBodyTextColor();
  [v39 setObject:v40 forKey:*MEMORY[0x1E69DB650]];

  v96 = v39;
  v97 = v38;
  [v39 setObject:v38 forKey:*MEMORY[0x1E69DB688]];
  footnote2 = [currentPage footnote];
  if (!footnote2)
  {
    v42 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v42 setNumberStyle:3];
    [v42 setMinimumFractionDigits:2];
    [v42 setMultiplier:&unk_1F3CC7640];
    paymentSetupProduct = [(PKOnBoardingViewController *)self paymentSetupProduct];
    clientInfo = [paymentSetupProduct clientInfo];
    v45 = [clientInfo objectForKey:*MEMORY[0x1E69BC260]];

    v46 = PKLocalizedApplyFeatureString();
    [explanationView setTitleText:v46];

    [explanationView setTitleAccessoriesEnabled:0];
    paymentSetupProduct2 = [(PKOnBoardingViewController *)self paymentSetupProduct];
    clientInfo2 = [paymentSetupProduct2 clientInfo];
    v49 = [clientInfo2 objectForKey:*MEMORY[0x1E69BC2C0]];

    PKSavingsFDICSignageEnabled();
    v50 = [v42 stringFromNumber:v45];
    [v42 stringFromNumber:v49];
    v89 = v88 = v50;
    footnote2 = PKLocalizedApplyFeatureString();

    explanationView = v107;
  }

  v51 = MEMORY[0x1E696AEC0];
  v52 = [footnote2 length];
  v53 = @"\n";
  if (!v52)
  {
    v53 = &stru_1F3BD7330;
  }

  v54 = [v51 stringWithFormat:@"%@%@", v53, footnote2];
  v28 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v54 attributes:v96];

LABEL_60:
  if (self->_isMainFeatureOnboardingPage && self->_featureIdentifier == 5 && PKSavingsFDICSignageEnabled())
  {
    dockView2 = [explanationView dockView];
    v56 = [[PKFDICSignageView alloc] initWithFeature:5 displayingBankName:0];
    [dockView2 setAdditionalView:v56];
  }

  [explanationView setAttributedSecondaryBodyText:v28];
  learnMore = [currentPage learnMore];
  buttonTitle = [learnMore buttonTitle];
  if (buttonTitle)
  {
    [explanationView setBodyButtonText:buttonTitle];
  }

  disclosureTitle = [currentPage disclosureTitle];
  if (disclosureTitle)
  {
    [v25 setButtonExplanationText:disclosureTitle];
  }

  v60 = currentPage;
  primaryActionTitle = [currentPage primaryActionTitle];
  primaryButton = [v25 primaryButton];
  v63 = primaryButton;
  if (primaryActionTitle)
  {
    [primaryButton setTitle:primaryActionTitle forState:0];
  }

  else
  {
    v64 = PKLocalizedApplyFeatureString();
    [v63 setTitle:v64 forState:0];
  }

  secondaryActionItem = [v60 secondaryActionItem];
  buttonTitle2 = [secondaryActionItem buttonTitle];
  if (buttonTitle2 || ([v60 secondaryActionTitle], (buttonTitle2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v67 = buttonTitle2;
    [v107 setForceShowSetupLaterButton:1];
    setUpLaterButton = [footerView setUpLaterButton];
    [setUpLaterButton setTitle:v67 forState:0];
  }

  else if (self->_isMainFeatureOnboardingPage && self->_featureIdentifier == 2)
  {
    [v107 setForceShowSetupLaterButton:1];
    setUpLaterButton2 = [footerView setUpLaterButton];
    v71 = PKLocalizedApplyFeatureString();
    [setUpLaterButton2 setTitle:v71 forState:0];
  }

  else
  {
    [v107 setForceShowSetupLaterButton:0];
  }

  if (self->_isMainFeatureOnboardingPage && self->_featureIdentifier == 2)
  {
    loadHeroImageFromWelcomeExperiment = [(PKFeatureOnBoardingViewController *)self loadHeroImageFromWelcomeExperiment];
    if (loadHeroImageFromWelcomeExperiment)
    {
      [(PKOnBoardingViewController *)self setHeroImage:loadHeroImageFromWelcomeExperiment];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKFeatureOnBoardingViewController;
  [(PKFeatureOnBoardingViewController *)&v4 viewDidAppear:appear];
  [(PKFeatureOnBoardingViewController *)self _beginReportingIfNecessary];
  [(PKFeatureOnBoardingViewController *)self _reportAnalyticsViewDidAppear:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PKFeatureOnBoardingViewController;
  [(PKFeatureOnBoardingViewController *)&v4 viewDidDisappear:disappear];
  [(PKFeatureOnBoardingViewController *)self _reportAnalyticsViewDidAppear:0];
  [(PKFeatureOnBoardingViewController *)self _endReportingIfNecessary];
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = PKFeatureOnBoardingViewController;
  [(PKFeatureOnBoardingViewController *)&v5 didMoveToParentViewController:?];
  if (!controller)
  {
    [(PKFeatureOnBoardingViewController *)self _reportCancelTapped];
  }
}

- (void)updateForHeroImage
{
  v19 = *MEMORY[0x1E69E9840];
  currentPage = [(PKOnBoardingViewController *)self currentPage];
  explanationView = [(PKExplanationViewController *)self explanationView];
  heroImage = [(PKOnBoardingViewController *)self heroImage];
  v6 = heroImage;
  if (self->_useCompactLayout && self->_isMainFeatureOnboardingPage)
  {
    v7 = PKFeatureApplicationHeaderImageWithImage(self->_featureIdentifier, heroImage);
    [explanationView setImage:v7];
    [explanationView setTopMargin:30.0];
    v8 = PKProvisioningBackgroundColor();
    [explanationView setTopBackgroundColor:v8];

    goto LABEL_13;
  }

  if (heroImage)
  {
    v9 = explanationView;
    v10 = v6;
LABEL_6:
    [v9 setImage:v10];
    goto LABEL_13;
  }

  heroImageURL = [currentPage heroImageURL];
  if (heroImageURL)
  {
    v12 = heroImageURL;
    preflightCalled = [(PKOnBoardingViewController *)self preflightCalled];

    if (!preflightCalled)
    {
      v16 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = currentPage;
        _os_log_impl(&dword_1BD026000, v16, OS_LOG_TYPE_DEFAULT, "heroImageURL is set for the current page but we haven't been preflighted: %@", &v17, 0xCu);
      }

      v9 = explanationView;
      v10 = 0;
      goto LABEL_6;
    }
  }

  if (self->_featureIdentifier == 5)
  {
    PKProvisioningBackgroundColor();
  }

  else
  {
    PKProvisioningSecondaryBackgroundColor();
  }
  v14 = ;
  v15 = [[PKApplyHeroCardView alloc] initWithFeatureIdentifier:self->_featureIdentifier];
  [(PKHeroCardExplanationHeaderView *)v15 setHideShadow:1];
  [(PKApplyHeroCardView *)v15 setBackgroundColor:v14];
  [explanationView setHeroView:v15];
  [explanationView setTopBackgroundColor:v14];

LABEL_13:
}

- (void)explanationViewControllerDidSelectCancel:(id)cancel
{
  cancelCopy = cancel;
  [(PKFeatureOnBoardingViewController *)self _reportCancelTapped];
  v5.receiver = self;
  v5.super_class = PKFeatureOnBoardingViewController;
  [(PKOnBoardingViewController *)&v5 explanationViewControllerDidSelectCancel:cancelCopy];
}

- (void)explanationViewDidUpdateLayout:(id)layout
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    explanationView = [(PKExplanationViewController *)self explanationView];
    scrollView = [explanationView scrollView];
    navigationItem = [(PKFeatureOnBoardingViewController *)self navigationItem];
    [scrollView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  if (self->_isMainFeatureOnboardingPage && self->_featureIdentifier == 2 && (-[PKOnBoardingViewController paymentSetupProduct](self, "paymentSetupProduct"), v5 = objc_claimAutoreleasedReturnValue(), [v5 augmentedProduct], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    v8 = PKLogFacilityTypeGetObject();
    v9 = os_signpost_id_make_with_pointer(v8, self);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BD026000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "request:augmentedProduct", "", buf, 2u);
      }
    }

    _appleCardWelcomeExperiment = [(PKFeatureOnBoardingViewController *)self _appleCardWelcomeExperiment];
    installmentConfiguration = [(PKFeatureOnBoardingViewController *)self installmentConfiguration];
    experimentDetails = [_appleCardWelcomeExperiment experimentDetails];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__PKFeatureOnBoardingViewController_preflightWithCompletion___block_invoke;
    v15[3] = &unk_1E8015198;
    v15[4] = self;
    v16 = completionCopy;
    [paymentService augmentedProductForInstallmentConfiguration:installmentConfiguration experimentDetails:experimentDetails withCompletion:v15];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = PKFeatureOnBoardingViewController;
    [(PKOnBoardingViewController *)&v14 preflightWithCompletion:completionCopy];
  }
}

void __61__PKFeatureOnBoardingViewController_preflightWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PKFeatureOnBoardingViewController_preflightWithCompletion___block_invoke_2;
  block[3] = &unk_1E8012300;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __61__PKFeatureOnBoardingViewController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) product];
  if (v2)
  {
    v3 = [*(a1 + 40) paymentSetupProduct];
    [v3 augmentWithProduct:v2];
    v4 = *(a1 + 40);
    v5 = [v3 onboardingItems];
    v6 = [v5 firstObject];
    [v4 setCurrentPage:v6];
  }

  v7 = *(a1 + 48);
  v12.receiver = *(a1 + 40);
  v12.super_class = PKFeatureOnBoardingViewController;
  objc_msgSendSuper2(&v12, sel_preflightWithCompletion_, v7);
  v8 = PKLogFacilityTypeGetObject();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 40));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v8, OS_SIGNPOST_INTERVAL_END, v10, "request:augmentedProduct", "", v11, 2u);
    }
  }
}

- (void)_reportAnalyticsViewDidAppear:(BOOL)appear
{
  if (self->_featureSupportsAnalytics)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__PKFeatureOnBoardingViewController__reportAnalyticsViewDidAppear___block_invoke;
    v5[3] = &unk_1E8019D18;
    appearCopy = appear;
    v5[4] = self;
    [(PKFeatureOnBoardingViewController *)self _defaultFeatureAccountAnalyticsWithCompletion:v5];
  }
}

void __67__PKFeatureOnBoardingViewController__reportAnalyticsViewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v9 = objc_alloc_init(v3);
  [v9 addEntriesFromDictionary:v4];

  if (*(a1 + 40))
  {
    v5 = MEMORY[0x1E69BA818];
  }

  else
  {
    v5 = MEMORY[0x1E69BA820];
  }

  [v9 setObject:*v5 forKey:*MEMORY[0x1E69BA680]];
  v6 = MEMORY[0x1E69B8540];
  v7 = [*(a1 + 32) _subjectForFeature:*(*(a1 + 32) + 1136)];
  v8 = [v9 copy];
  [v6 subject:v7 sendEvent:v8];
}

- (void)handleSetupLater
{
  if (self->_isMainFeatureOnboardingPage)
  {
    currentPage = [(PKOnBoardingViewController *)self currentPage];
    secondaryActionItem = [currentPage secondaryActionItem];

    if (secondaryActionItem)
    {
      [(PKFeatureOnBoardingViewController *)self _openSecondaryActionItem];
    }

    else
    {
      [(PKFeatureOnBoardingViewController *)self _openTermsAndConditions];
    }

    [(PKFeatureOnBoardingViewController *)self _reportRatesAndTermsTapped];
  }

  else
  {

    [(PKOnBoardingViewController *)self terminateSetupFlow];
  }
}

- (void)handleProductAvailable
{
  [(PKFeatureOnBoardingViewController *)self _reportContinueTapped];
  [(PKExplanationViewController *)self showNavigationBarSpinner:1];
  provisioningController = [(PKOnBoardingViewController *)self provisioningController];
  associatedCredentials = [provisioningController associatedCredentials];

  firstObject = [associatedCredentials firstObject];
  if (self->_onboardingContext == 1 && [associatedCredentials count] == 1 && objc_msgSend(firstObject, "isAccountCredential"))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__PKFeatureOnBoardingViewController_handleProductAvailable__block_invoke;
    v7[3] = &unk_1E8012FD0;
    v8 = firstObject;
    selfCopy = self;
    [(PKFeatureOnBoardingViewController *)self _checkSecurityCapabilities:58 nextStep:v7];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PKFeatureOnBoardingViewController_handleProductAvailable__block_invoke_3;
    v6[3] = &unk_1E8011D28;
    v6[4] = self;
    [(PKFeatureOnBoardingViewController *)self _checkSecurityCapabilities:56 nextStep:v6];
  }
}

void __59__PKFeatureOnBoardingViewController_handleProductAvailable__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) accountCredential];
    v4 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PKFeatureOnBoardingViewController_handleProductAvailable__block_invoke_2;
    v6[3] = &unk_1E8010970;
    v6[4] = v4;
    [v4 _handleAccountCredential:v3 completion:v6];
  }

  else
  {
    v5 = *(a1 + 40);

    [v5 showNavigationBarSpinner:0];
  }
}

uint64_t __59__PKFeatureOnBoardingViewController_handleProductAvailable__block_invoke_3(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __59__PKFeatureOnBoardingViewController_handleProductAvailable__block_invoke_4;
    v5[3] = &unk_1E8010970;
    v5[4] = v3;
    return [v3 _handleApplyFlowWithCompletion:v5];
  }

  else
  {

    return [v3 showNavigationBarSpinner:0];
  }
}

- (id)nextOnboardingViewControllerWithPage:(id)page product:(id)product
{
  productCopy = product;
  pageCopy = page;
  v8 = [PKFeatureOnBoardingViewController alloc];
  parentFlowController = [(PKOnBoardingViewController *)self parentFlowController];
  setupDelegate = [(PKOnBoardingViewController *)self setupDelegate];
  context = [(PKExplanationViewController *)self context];
  onboardingContext = self->_onboardingContext;
  featureIdentifier = self->_featureIdentifier;
  provisioningController = [(PKOnBoardingViewController *)self provisioningController];
  v15 = [(PKFeatureOnBoardingViewController *)v8 initWithParentFlowController:parentFlowController setupDelegate:setupDelegate setupContext:context onboardingContext:onboardingContext featureIdentifier:featureIdentifier provisioningController:provisioningController paymentSetupProduct:productCopy currentPage:pageCopy];

  return v15;
}

- (void)_handleAccountCredential:(id)credential completion:(id)completion
{
  completionCopy = completion;
  credentialCopy = credential;
  v8 = [PKAccountFlowController alloc];
  provisioningController = [(PKOnBoardingViewController *)self provisioningController];
  setupDelegate = [(PKOnBoardingViewController *)self setupDelegate];
  v11 = [(PKAccountFlowController *)v8 initWithAccountCredential:credentialCopy provisioningController:provisioningController setupDelegate:setupDelegate context:[(PKExplanationViewController *)self context] operations:63];

  parentFlowController = [(PKOnBoardingViewController *)self parentFlowController];
  [(PKAccountFlowController *)v11 setParentFlowController:parentFlowController];

  navigationController = [(PKFeatureOnBoardingViewController *)self navigationController];
  firstAccountViewController = [(PKAccountFlowController *)v11 firstAccountViewController];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PKFeatureOnBoardingViewController__handleAccountCredential_completion___block_invoke;
  v16[3] = &unk_1E8010AD8;
  v17 = completionCopy;
  v15 = completionCopy;
  [navigationController pk_presentPaymentSetupViewController:firstAccountViewController animated:1 completion:v16];
}

uint64_t __73__PKFeatureOnBoardingViewController__handleAccountCredential_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_handleApplyFlowWithCompletion:(id)completion
{
  completionCopy = completion;
  provisioningController = [(PKOnBoardingViewController *)self provisioningController];
  paymentSetupProductModel = [provisioningController paymentSetupProductModel];
  v7 = [paymentSetupProductModel productsForFeatureIdentifier:self->_featureIdentifier];

  firstObject = [v7 firstObject];
  featureApplications = [firstObject featureApplications];
  v10 = [featureApplications sortedArrayUsingComparator:&__block_literal_global_115];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke_2;
  v15[3] = &unk_1E8019D60;
  v16 = v10;
  selfCopy = self;
  v18 = provisioningController;
  v19 = firstObject;
  v20 = completionCopy;
  v11 = completionCopy;
  v12 = firstObject;
  v13 = provisioningController;
  v14 = v10;
  [(PKFeatureOnBoardingViewController *)self _defaultFeatureAccountWithCompletion:v15];
}

uint64_t __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 lastUpdated];
  v6 = [v4 lastUpdated];

  v7 = [v5 compare:v6];
  return v7;
}

void __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 lastObject];
  v6 = [PKApplyControllerConfiguration alloc];
  v7 = [*(a1 + 40) setupDelegate];
  v8 = -[PKApplyControllerConfiguration initWithSetupDelegate:context:provisioningController:](v6, "initWithSetupDelegate:context:provisioningController:", v7, [*(a1 + 40) context], *(a1 + 48));

  [(PKApplyControllerConfiguration *)v8 setFeatureApplication:v5];
  [(PKApplyControllerConfiguration *)v8 setFeature:*(*(a1 + 40) + 1136)];
  [(PKApplyControllerConfiguration *)v8 setApplicationType:1];
  v9 = [[PKApplyController alloc] initWithApplyConfiguration:v8];
  v10 = *(a1 + 40);
  v11 = *(v10 + 1144);
  *(v10 + 1144) = v9;

  v12 = *(*(a1 + 40) + 1144);
  v13 = [MEMORY[0x1E69B8330] analyticsAccountTypeForAccount:v4];

  [v12 setAnalyticsExistingAccountType:v13];
  [*(*(a1 + 40) + 1144) setInstallmentConfiguration:*(*(a1 + 40) + 1216)];
  v14 = *(a1 + 40);
  if (*(v14 + 1136) == 5)
  {
    [*(v14 + 1144) setAssociatedIntent:1];
  }

  if (!v5)
  {
    v15 = [*(a1 + 56) regionIdentifier];
    if (v15)
    {
      v24 = *(*(a1 + 40) + 1144);
      v16 = [*(a1 + 48) webService];
      v17 = [v16 context];
      v18 = [v17 regions];
      v19 = [v18 objectForKey:v15];
      v20 = [v19 applyServiceURL];
      [v24 setApplyServiceURL:v20];
    }
  }

  v21 = *(a1 + 40);
  v22 = v21[143];
  v23 = [v21 parentFlowController];
  [v22 setParentFlowController:v23];

  v25 = *(a1 + 64);
  PKRequestContactAccessWithCompletion();
}

void __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 1144);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke_4;
  v4[3] = &unk_1E8010CC0;
  v4[4] = v2;
  v5 = v1;
  [v3 nextViewControllerWithCompletion:v4];
}

void __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = [*(a1 + 32) navigationController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke_5;
    v12[3] = &unk_1E8010AD8;
    v13 = *(a1 + 40);
    [v6 pk_presentPaymentSetupViewController:v5 animated:1 completion:v12];

    v7 = v13;
  }

  else
  {
    v7 = PKAlertForDisplayableErrorWithHandlers(a3, 0, 0, 0);
    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v8 navigationController];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke_6;
      v10[3] = &unk_1E8010B50;
      v11 = *(a1 + 40);
      [v9 presentViewController:v7 animated:1 completion:v10];
    }

    else
    {
      [v8 terminateSetupFlow];
    }
  }
}

uint64_t __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __68__PKFeatureOnBoardingViewController__handleApplyFlowWithCompletion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_checkSecurityCapabilities:(unint64_t)capabilities nextStep:(id)step
{
  stepCopy = step;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Checking security capabilities for feature", buf, 2u);
  }

  v8 = [[PKSecurityCapabilitiesController alloc] initWithRequirements:capabilities feature:self->_featureIdentifier context:[(PKExplanationViewController *)self context]];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__PKFeatureOnBoardingViewController__checkSecurityCapabilities_nextStep___block_invoke;
  v10[3] = &unk_1E8019DB0;
  v10[4] = self;
  v11 = stepCopy;
  v9 = stepCopy;
  [(PKSecurityCapabilitiesController *)v8 presentSecurityRepairFlowWithPresentingViewController:self completion:v10];
}

void __73__PKFeatureOnBoardingViewController__checkSecurityCapabilities_nextStep___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__PKFeatureOnBoardingViewController__checkSecurityCapabilities_nextStep___block_invoke_2;
  v8[3] = &unk_1E8019D88;
  v12 = a2;
  v9 = v5;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __73__PKFeatureOnBoardingViewController__checkSecurityCapabilities_nextStep___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSecurityCapabilitiesErrorToString(*(a1 + 56));
    v4 = *(a1 + 32);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Finished checking security capabilities with upgrade error %@, error %@", &v9, 0x16u);
  }

  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 16);
  if (v5 != 3 && v5)
  {
    v6();
    v7 = [PKAccountFlowController displayableErrorForError:*(a1 + 32) featureIdentifier:*(*(a1 + 40) + 1136) genericErrorTitle:0 genericErrorMessage:0];
    v8 = PKAlertForDisplayableErrorWithHandlers(v7, 0, 0, 0);
    [*(a1 + 40) presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v6();
  }
}

- (void)_openTermsAndConditions
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Opening feature terms and conditions", v16, 2u);
  }

  if (!self->_applyController)
  {
    v4 = [PKApplyControllerConfiguration alloc];
    setupDelegate = [(PKOnBoardingViewController *)self setupDelegate];
    context = [(PKExplanationViewController *)self context];
    provisioningController = [(PKOnBoardingViewController *)self provisioningController];
    v8 = [(PKApplyControllerConfiguration *)v4 initWithSetupDelegate:setupDelegate context:context provisioningController:provisioningController];

    [(PKApplyControllerConfiguration *)v8 setFeature:self->_featureIdentifier];
    [(PKApplyControllerConfiguration *)v8 setApplicationType:1];
    v9 = [[PKApplyController alloc] initWithApplyConfiguration:v8];
    applyController = self->_applyController;
    self->_applyController = v9;
  }

  v11 = [PKApplyTermsAndConditionsViewController alloc];
  v12 = self->_applyController;
  setupDelegate2 = [(PKOnBoardingViewController *)self setupDelegate];
  v14 = [(PKApplyTermsAndConditionsViewController *)v11 initWithController:v12 setupDelegate:setupDelegate2 context:[(PKExplanationViewController *)self context] termsIdentifier:0];

  [(PKFeatureTermsAndConditionsViewController *)v14 setUseModalPresentation:1];
  navigationController = [(PKFeatureOnBoardingViewController *)self navigationController];
  [navigationController pk_presentPaymentSetupViewController:v14 animated:1 completion:0];
}

- (void)_openSecondaryActionItem
{
  currentPage = [(PKOnBoardingViewController *)self currentPage];
  secondaryActionItem = [currentPage secondaryActionItem];

  if (secondaryActionItem)
  {
    v4 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKExplanationViewController *)self context]];
    title = [secondaryActionItem title];
    [(PKPaymentMoreInformationViewController *)v4 setDetailTitle:title];

    subtitle = [secondaryActionItem subtitle];
    [(PKPaymentMoreInformationViewController *)v4 setDetailSubtitle:subtitle];

    body = [secondaryActionItem body];
    [(PKPaymentMoreInformationViewController *)v4 setDetailBody:body];

    v8 = [[PKNavigationController alloc] initWithRootViewController:v4];
    navigationController = [(PKFeatureOnBoardingViewController *)self navigationController];
    [navigationController presentModalViewController:v8 withPaymentSetupContext:{-[PKExplanationViewController context](self, "context")}];
  }
}

- (void)_reportContinueTapped
{
  v4 = [(PKFeatureOnBoardingViewController *)self _analyticsPartialEventDictionaryForButtonTapWithButtonTagKey:*MEMORY[0x1E69BA500]];
  v3 = [(PKFeatureOnBoardingViewController *)self _subjectForFeature:self->_featureIdentifier];
  [(PKFeatureOnBoardingViewController *)self _reportAnalyticsSubject:v3 withPartialEventDictionary:v4];

  if (self->_featureIdentifier == 2)
  {
    [(PKFeatureOnBoardingViewController *)self _reportAnalyticsSubject:*MEMORY[0x1E69BB698] withPartialEventDictionary:v4];
  }
}

- (void)_reportCancelTapped
{
  v4 = [(PKFeatureOnBoardingViewController *)self _analyticsPartialEventDictionaryForButtonTapWithButtonTagKey:*MEMORY[0x1E69BA468]];
  v3 = [(PKFeatureOnBoardingViewController *)self _subjectForFeature:self->_featureIdentifier];
  [(PKFeatureOnBoardingViewController *)self _reportAnalyticsSubject:v3 withPartialEventDictionary:v4];
}

- (void)_reportRatesAndTermsTapped
{
  v3 = [(PKFeatureOnBoardingViewController *)self _analyticsPartialEventDictionaryForButtonTapWithButtonTagKey:*MEMORY[0x1E69BB0B8]];
  [(PKFeatureOnBoardingViewController *)self _reportAnalyticsSubject:*MEMORY[0x1E69BB6A0] withPartialEventDictionary:v3];
}

- (id)_analyticsPartialEventDictionaryForButtonTapWithButtonTagKey:(id)key
{
  v3 = MEMORY[0x1E695DF90];
  keyCopy = key;
  v5 = objc_alloc_init(v3);
  [v5 setObject:*MEMORY[0x1E69BA6F0] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [v5 setObject:keyCopy forKeyedSubscript:*MEMORY[0x1E69BA440]];

  v6 = [v5 copy];

  return v6;
}

- (void)_reportAnalyticsSubject:(id)subject withPartialEventDictionary:(id)dictionary
{
  subjectCopy = subject;
  dictionaryCopy = dictionary;
  v8 = dictionaryCopy;
  if (subjectCopy && self->_featureSupportsAnalytics)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __88__PKFeatureOnBoardingViewController__reportAnalyticsSubject_withPartialEventDictionary___block_invoke;
    v9[3] = &unk_1E8019DD8;
    v10 = dictionaryCopy;
    v11 = subjectCopy;
    [(PKFeatureOnBoardingViewController *)self _defaultFeatureAccountAnalyticsWithCompletion:v9];
  }
}

void __88__PKFeatureOnBoardingViewController__reportAnalyticsSubject_withPartialEventDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = [[v3 alloc] initWithDictionary:*(a1 + 32)];
  [v5 addEntriesFromDictionary:v4];

  [MEMORY[0x1E69B8540] subject:*(a1 + 40) sendEvent:v5];
}

- (void)_defaultFeatureAccountAnalyticsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    if (self->_featureSupportsAnalytics)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __83__PKFeatureOnBoardingViewController__defaultFeatureAccountAnalyticsWithCompletion___block_invoke;
      v6[3] = &unk_1E8019E00;
      v6[4] = self;
      v7 = completionCopy;
      [(PKFeatureOnBoardingViewController *)self _defaultFeatureAccountWithCompletion:v6];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __83__PKFeatureOnBoardingViewController__defaultFeatureAccountAnalyticsWithCompletion___block_invoke(uint64_t a1)
{
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2 = [*(a1 + 32) installmentConfiguration];
  v3 = MEMORY[0x1E69BA1D0];
  if (!v2)
  {
    v3 = MEMORY[0x1E69BA1D8];
  }

  v4 = *v3;

  [v18 setObject:v4 forKey:*MEMORY[0x1E69BABE8]];
  v5 = PKFeatureIdentifierToString();
  [v18 setObject:v5 forKey:*MEMORY[0x1E69BA850]];

  v6 = [*(a1 + 32) currentPage];
  v7 = [v6 identifier];

  if (v7)
  {
    v8 = [*(a1 + 32) currentPage];
    v9 = [v8 identifier];
    [v18 setObject:v9 forKey:*MEMORY[0x1E69BA1F8]];
  }

  v10 = *(*(a1 + 32) + 1176);
  if (v10)
  {
    v11 = [v10 analyticsEventAccountType];
  }

  else
  {
    v11 = *MEMORY[0x1E69BA698];
  }

  v12 = v11;
  if (v11)
  {
    [v18 setObject:v11 forKey:*MEMORY[0x1E69BA688]];
  }

  v13 = [*(a1 + 32) currentPage];
  [v13 layout];
  v14 = PKDynamicProvisioningPageLayoutToString();

  if (v14)
  {
    [v18 setObject:v14 forKey:*MEMORY[0x1E69BAA50]];
  }

  v15 = [*(a1 + 32) provisioningController];
  v16 = [v15 referrerIdentifier];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"cid%3Dapy-510-510001";
  }

  [v18 setObject:v17 forKey:*MEMORY[0x1E69BA460]];
  (*(*(a1 + 40) + 16))();
}

- (void)_defaultFeatureAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    if (self->_featureSupportsAnalytics)
    {
      if (!self->_defaultFeatureAccount && !self->_fetchedDefaultFeatureAccount)
      {
        defaultFeatureAccountCompletions = self->_defaultFeatureAccountCompletions;
        v8 = _Block_copy(completionCopy);
        [(NSMutableArray *)defaultFeatureAccountCompletions addObject:v8];

        mEMORY[0x1E69B8400] = [MEMORY[0x1E69B8400] sharedInstance];
        featureIdentifier = self->_featureIdentifier;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __74__PKFeatureOnBoardingViewController__defaultFeatureAccountWithCompletion___block_invoke;
        v11[3] = &unk_1E80112C0;
        v11[4] = self;
        [mEMORY[0x1E69B8400] defaultAccountForFeature:featureIdentifier completion:v11];

        goto LABEL_8;
      }

      v6 = completionCopy[2];
    }

    else
    {
      v6 = completionCopy[2];
    }

    v6();
  }

LABEL_8:
}

void __74__PKFeatureOnBoardingViewController__defaultFeatureAccountWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__PKFeatureOnBoardingViewController__defaultFeatureAccountWithCompletion___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __74__PKFeatureOnBoardingViewController__defaultFeatureAccountWithCompletion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_storeStrong((*(a1 + 32) + 1176), *(a1 + 40));
  *(*(a1 + 32) + 1184) = 1;
  v2 = [*(*(a1 + 32) + 1200) copy];
  [*(*(a1 + 32) + 1200) removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_beginReportingIfNecessary
{
  v3 = [(PKFeatureOnBoardingViewController *)self _subjectForFeature:self->_featureIdentifier];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x1E69B8540] reporterForSubject:v3];

    v3 = v5;
    if (!v4)
    {
      self->_didBeginOnboardingSubject = 1;
      [MEMORY[0x1E69B8540] beginSubjectReporting:v5];
      v3 = v5;
    }
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginOnboardingSubject)
  {
    v3 = MEMORY[0x1E69B8540];
    v4 = [(PKFeatureOnBoardingViewController *)self _subjectForFeature:self->_featureIdentifier];
    [v3 endSubjectReporting:v4];
  }
}

- (id)_subjectForFeature:(unint64_t)feature
{
  if (feature == 2)
  {
    v4 = MEMORY[0x1E69BB6A0];
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (feature == 5)
  {
    v4 = MEMORY[0x1E69BB6D0];
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_appleCardWelcomeExperiment
{
  appleCardWelcomeExperiment = self->_appleCardWelcomeExperiment;
  if (!appleCardWelcomeExperiment)
  {
    if (self->_featureIdentifier == 2)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69B8590]);
      v5 = self->_appleCardWelcomeExperiment;
      self->_appleCardWelcomeExperiment = v4;

      appleCardWelcomeExperiment = self->_appleCardWelcomeExperiment;
    }

    else
    {
      appleCardWelcomeExperiment = 0;
    }
  }

  v6 = appleCardWelcomeExperiment;

  return v6;
}

- (id)loadHeroImageFromWelcomeExperiment
{
  _appleCardWelcomeExperiment = [(PKFeatureOnBoardingViewController *)self _appleCardWelcomeExperiment];
  v4 = _appleCardWelcomeExperiment;
  if (self->_installmentConfiguration)
  {
    [_appleCardWelcomeExperiment heroInstallmentImagePath];
  }

  else
  {
    [_appleCardWelcomeExperiment heroImagePath];
  }
  v5 = ;
  if (v5)
  {
    v6 = [MEMORY[0x1E69DCAB8] imageWithContentsOfFile:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end