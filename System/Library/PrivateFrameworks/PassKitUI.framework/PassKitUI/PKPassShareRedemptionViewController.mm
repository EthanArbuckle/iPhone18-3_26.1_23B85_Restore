@interface PKPassShareRedemptionViewController
- (PKHeroCardExplanationHeaderView)cardHeaderView;
- (PKPassShareRedemptionViewController)init;
- (PKShareRedemptionAnalyticsReporter)analyticsReporter;
- (void)_configureHeaderSize;
- (void)_reloadSections;
- (void)_setDisplayableSharedEntitlements:(id)a3;
- (void)_updateContinueButtonState;
- (void)activationCodeDidChange;
- (void)continueButtonPressed;
- (void)loadView;
- (void)setActivationOptions:(id)a3;
- (void)setContinueButtonText:(id)a3;
- (void)setContinueLaterText:(id)a3;
- (void)setDisplayableSharedEntitlements:(id)a3;
- (void)setHeaderImage:(id)a3;
- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)a3;
- (void)showDismissButton:(BOOL)a3;
- (void)showFailureUI;
- (void)showLoadingUI;
- (void)showStartingUI;
- (void)showSuccessUI;
- (void)updateUserInteractionEnabled:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKPassShareRedemptionViewController

- (PKPassShareRedemptionViewController)init
{
  v5.receiver = self;
  v5.super_class = PKPassShareRedemptionViewController;
  v2 = [(PKPaymentSetupOptionsViewController *)&v5 initWithContext:0];
  v3 = v2;
  if (v2)
  {
    [(PKDynamicCollectionViewController *)v2 setUseItemIdentityWhenUpdating:1];
    [(PKPaymentSetupOptionsViewController *)v3 setShouldCollapseHeaderOnKeyboardShow:0];
  }

  return v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPassShareRedemptionViewController;
  [(PKPaymentSetupOptionsViewController *)&v3 viewDidLoad];
  [(PKPassShareRedemptionViewController *)self _reloadSections];
  [(PKPassShareRedemptionViewController *)self _updateContinueButtonState];
}

- (void)viewWillAppear:(BOOL)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKPassShareRedemptionViewController;
  [(PKPaymentSetupOptionsViewController *)&v9 viewWillAppear:a3];
  v4 = [(PKPassShareRedemptionViewController *)self analyticsReporter];
  v10[0] = *MEMORY[0x1E69BB210];
  v5 = PKAnalyticsReportSwitchToggleResultValue();
  v6 = v5;
  v10[1] = *MEMORY[0x1E69BB260];
  referralSource = self->_referralSource;
  if (!referralSource)
  {
    referralSource = *MEMORY[0x1E69BB268];
  }

  v11[0] = v5;
  v11[1] = referralSource;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 sendEventForPage:0 specifics:v8];
}

- (void)_reloadSections
{
  v3 = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (v3)
  {
    v4 = self->_activationCodeSectionController != 0;
    [(PKPassShareSectionController *)self->_sharePreviewSectionController setUseCompactInsets:v4];
    [(PKPassShareSectionController *)self->_activationCodeSectionController setUseCompactInsets:v4];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v5 safelyAddObject:self->_activationCodeSectionController];
    [v5 safelyAddObject:self->_sharePreviewSectionController];
    [(PKPaymentSetupOptionsViewController *)self setSections:v5 animated:1];
    [(PKPassShareRedemptionViewController *)self _configureHeaderSize];
  }
}

- (void)setActivationOptions:(id)a3
{
  v4 = a3;
  activationCodeSectionController = self->_activationCodeSectionController;
  v9 = v4;
  if (!activationCodeSectionController)
  {
    v6 = [[PKPassShareRedemptionActivationCodeSectionController alloc] initWithMode:1 delegate:self];
    v7 = self->_activationCodeSectionController;
    self->_activationCodeSectionController = v6;

    v4 = v9;
    activationCodeSectionController = self->_activationCodeSectionController;
  }

  [(PKPassShareRedemptionActivationCodeSectionController *)activationCodeSectionController setActivationOptions:v4];
  self->_requiresActivationCode = [(PKPassShareRedemptionActivationCodeSectionController *)self->_activationCodeSectionController requiresActivationCode];
  [(PKPassShareRedemptionViewController *)self activationCodeDidChange];
  if (!self->_requiresActivationCode)
  {
    v8 = self->_activationCodeSectionController;
    self->_activationCodeSectionController = 0;
  }

  [(PKPassShareRedemptionViewController *)self _reloadSections];
}

- (void)setDisplayableSharedEntitlements:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E69B8800] localizedEntitlementsFromDisplayableEntitlements:v4 pass:0];
    [(PKPassShareRedemptionViewController *)self _setDisplayableSharedEntitlements:v5];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69B8800];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__PKPassShareRedemptionViewController_setDisplayableSharedEntitlements___block_invoke;
    v7[3] = &unk_1E8011158;
    objc_copyWeak(&v8, &location);
    [v6 localizedEntitlementsFromDisplayableEntitlements:v4 pass:0 useCachedTemplates:0 completion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKPassShareRedemptionViewController *)self _setDisplayableSharedEntitlements:0];
  }
}

void __72__PKPassShareRedemptionViewController_setDisplayableSharedEntitlements___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__PKPassShareRedemptionViewController_setDisplayableSharedEntitlements___block_invoke_2;
    v6[3] = &unk_1E8010A10;
    v6[4] = WeakRetained;
    v7 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)_setDisplayableSharedEntitlements:(id)a3
{
  v15 = a3;
  objc_storeStrong(&self->_displayableSharedEntitlements, a3);
  if (v15)
  {
    v5 = [v15 pk_arrayBySafelyApplyingBlock:&__block_literal_global_11];
    if ([v5 count])
    {
      v6 = objc_alloc(MEMORY[0x1E69B9268]);
      v7 = [MEMORY[0x1E69B8EF8] sharedService];
      v8 = [v6 initWithPass:0 webService:v7 paymentServiceProvider:0 queue:MEMORY[0x1E69E96A0]];

      v9 = objc_alloc(MEMORY[0x1E69B8A38]);
      v10 = [(PKSharePreviewOverviewSectionController *)v8 possiblePredefinedEntitlements];
      v11 = [v9 initWithRedeemableSharedEntitlements:v15 predefinedSharedEntitlements:v10];
      entitlementComposer = self->_entitlementComposer;
      self->_entitlementComposer = v11;

      v13 = [[PKSharePreviewOverviewSectionController alloc] initWithMode:1 accessType:[(PKPassShareRedemptionViewController *)self accessType] entitlementComposer:self->_entitlementComposer delegate:self];
      sharePreviewSectionController = self->_sharePreviewSectionController;
      self->_sharePreviewSectionController = v13;

      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = self->_sharePreviewSectionController;
  self->_sharePreviewSectionController = 0;
LABEL_6:

  [(PKPassShareRedemptionViewController *)self _reloadSections];
}

- (PKShareRedemptionAnalyticsReporter)analyticsReporter
{
  analyticsReporter = self->_analyticsReporter;
  if (!analyticsReporter)
  {
    if (self->_analyticsEnabled)
    {
      v4 = objc_alloc_init(PKShareRedemptionAnalyticsReporter);
      v5 = self->_analyticsReporter;
      self->_analyticsReporter = v4;

      analyticsReporter = self->_analyticsReporter;
    }

    else
    {
      analyticsReporter = 0;
    }
  }

  return analyticsReporter;
}

- (void)loadView
{
  v15.receiver = self;
  v15.super_class = PKPassShareRedemptionViewController;
  [(PKDynamicCollectionViewController *)&v15 loadView];
  v3 = [(PKPassShareRedemptionViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed];
  [v3 setLeftBarButtonItem:v4];

  v5 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v5 setTitleAccessoriesEnabled:1];
  v6 = [[PKHeroCardExplanationHeaderView alloc] initWithImage:0];
  [(PKHeroCardExplanationHeaderView *)v6 setPadding:1];
  v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKHeroCardExplanationHeaderView *)v6 setBackgroundColor:v7];

  [(PKPassShareRedemptionViewController *)self _configureHeaderSize];
  [v5 setTopArtView:v6];
  v8 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v9 = [v8 footerView];
  v10 = v9;
  if (self->_continueLaterText)
  {
    v11 = [v9 setUpLaterButton];
    [v11 setTitle:self->_continueLaterText forState:0];
    [v11 addTarget:self action:sel_continueLaterButtonPressed forControlEvents:0x2000];
  }

  else
  {
    [v9 setSetUpLaterButton:0];
  }

  v12 = [v8 primaryButton];
  [v12 setEnabled:1];
  [v12 addTarget:self action:sel_continueButtonPressed forControlEvents:0x2000];
  continueButtonText = self->_continueButtonText;
  if (continueButtonText)
  {
    [v12 setTitle:continueButtonText forState:0];
  }

  else
  {
    v14 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [v12 setTitle:v14 forState:0];
  }

  [v8 setButtonsEnabled:1];
}

- (void)_configureHeaderSize
{
  v3 = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (v3)
  {
    if (self->_activationCodeSectionController)
    {
      v4 = 2;
    }

    else if (self->_sharePreviewSectionController)
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }

    v5 = [(PKPassShareRedemptionViewController *)self cardHeaderView];
    [v5 setSize:v4];
  }
}

- (void)continueButtonPressed
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_requiresActivationCode)
  {
    v4 = *MEMORY[0x1E69BB208];
    v5[0] = *MEMORY[0x1E69BB300];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  }

  else
  {
    v3 = 0;
  }

  [(PKShareRedemptionAnalyticsReporter *)self->_analyticsReporter sendEventForPage:0 button:2 specifics:v3];
}

- (void)setHeaderImage:(id)a3
{
  v4 = a3;
  v5 = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  [v5 setCardImage:v4];
}

- (void)setContinueButtonText:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_continueButtonText, a3);
  v5 = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (v5)
  {
    v6 = [(PKPaymentSetupOptionsViewController *)self dockView];
    v7 = [v6 primaryButton];
    [v7 setTitle:v8 forState:0];
  }
}

- (void)setContinueLaterText:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_continueLaterText, a3);
  v5 = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (v5)
  {
    v6 = [(PKPaymentSetupOptionsViewController *)self dockView];
    v7 = [v6 footerView];
    if (v11)
    {
      v8 = [v7 setUpLaterButton];
      [v8 setTitle:v11 forState:0];
      v9 = [v8 allTargets];
      v10 = [v9 count];

      if (!v10)
      {
        [v8 addTarget:self action:sel_continueLaterButtonPressed forControlEvents:0x2000];
      }
    }

    else
    {
      [v7 setSetUpLaterButton:0];
    }
  }
}

- (PKHeroCardExplanationHeaderView)cardHeaderView
{
  v2 = [(PKPaymentSetupOptionsViewController *)self headerView];
  v3 = [v2 topArtView];

  return v3;
}

- (void)showStartingUI
{
  v3 = _UISolariumFeatureFlagEnabled();
  v4 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v5 = v4;
  if (v3)
  {
    [v4 setButtonsEnabled:1];
    v6 = [v5 primaryButton];
    [v6 setShowSpinner:0];
  }

  else
  {
    [v4 setHidden:0];
    [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:0];
    if (self->_privacyLinkController)
    {
      [(PKPaymentSetupOptionsViewController *)self setPrivacyLink:?];
    }
  }

  [(PKPassShareRedemptionViewController *)self _updateContinueButtonState];

  [(PKPassShareRedemptionViewController *)self updateUserInteractionEnabled:1];
}

- (void)showLoadingUI
{
  v3 = _UISolariumFeatureFlagEnabled();
  v4 = [(PKPaymentSetupOptionsViewController *)self dockView];
  v5 = v4;
  if (v3)
  {
    [v4 setButtonsEnabled:0];
    v6 = [v5 primaryButton];
    [v6 setShowSpinner:1];
  }

  else
  {
    [v4 setHidden:1];
    [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:1];
    v7 = [(PKPaymentSetupOptionsViewController *)self privacyLink];
    privacyLinkController = self->_privacyLinkController;
    self->_privacyLinkController = v7;

    [(PKPaymentSetupOptionsViewController *)self setPrivacyLink:0];
  }

  [(PKPassShareRedemptionViewController *)self updateUserInteractionEnabled:0];
}

- (void)showSuccessUI
{
  [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:0];
  v3 = [(PKPaymentSetupOptionsViewController *)self headerView];
  [v3 setShowCheckmark:1];

  v4 = [(PKPaymentSetupOptionsViewController *)self dockView];
  [v4 setHidden:1];
  [(PKPassShareRedemptionViewController *)self updateUserInteractionEnabled:1];
}

- (void)showFailureUI
{
  [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:0];

  [(PKPassShareRedemptionViewController *)self updateUserInteractionEnabled:1];
}

- (void)updateUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKDynamicCollectionViewController *)self collectionView];
  [v4 setUserInteractionEnabled:v3];
}

- (void)showDismissButton:(BOOL)a3
{
  v3 = a3;
  v6 = [(PKPassShareRedemptionViewController *)self navigationItem];
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed];
    [v6 setLeftBarButtonItem:v5];
  }

  else
  {
    [v6 setLeftBarButtonItem:0];
  }
}

- (void)_updateContinueButtonState
{
  v3 = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (v3)
  {
    v6 = [(PKPaymentSetupOptionsViewController *)self dockView];
    v4 = !self->_requiresActivationCode || [(PKPassShareRedemptionActivationCodeSectionController *)self->_activationCodeSectionController hasValidActivationCode];
    v5 = [v6 primaryButton];
    [v5 setEnabled:v4];
  }
}

- (void)activationCodeDidChange
{
  activationCodeSectionController = self->_activationCodeSectionController;
  if (activationCodeSectionController)
  {
    v4 = [(PKPassShareRedemptionActivationCodeSectionController *)activationCodeSectionController enteredActivationCode];
    [(PKPassShareRedemptionViewController *)self activationCodeDidChangeToCode:v4];
  }

  [(PKPassShareRedemptionViewController *)self _updateContinueButtonState];
}

- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)a3
{
  v5 = [[PKPassShareEntitlementSelectionViewController alloc] initWithAccessType:[(PKPassShareRedemptionViewController *)self accessType] mode:1 entitlementComposer:self->_entitlementComposer];
  v4 = [(PKPassShareRedemptionViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];
}

@end