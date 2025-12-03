@interface PKPassShareRedemptionViewController
- (PKHeroCardExplanationHeaderView)cardHeaderView;
- (PKPassShareRedemptionViewController)init;
- (PKShareRedemptionAnalyticsReporter)analyticsReporter;
- (void)_configureHeaderSize;
- (void)_reloadSections;
- (void)_setDisplayableSharedEntitlements:(id)entitlements;
- (void)_updateContinueButtonState;
- (void)activationCodeDidChange;
- (void)continueButtonPressed;
- (void)loadView;
- (void)setActivationOptions:(id)options;
- (void)setContinueButtonText:(id)text;
- (void)setContinueLaterText:(id)text;
- (void)setDisplayableSharedEntitlements:(id)entitlements;
- (void)setHeaderImage:(id)image;
- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)entitlements;
- (void)showDismissButton:(BOOL)button;
- (void)showFailureUI;
- (void)showLoadingUI;
- (void)showStartingUI;
- (void)showSuccessUI;
- (void)updateUserInteractionEnabled:(BOOL)enabled;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)viewWillAppear:(BOOL)appear
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKPassShareRedemptionViewController;
  [(PKPaymentSetupOptionsViewController *)&v9 viewWillAppear:appear];
  analyticsReporter = [(PKPassShareRedemptionViewController *)self analyticsReporter];
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
  [analyticsReporter sendEventForPage:0 specifics:v8];
}

- (void)_reloadSections
{
  viewIfLoaded = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (viewIfLoaded)
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

- (void)setActivationOptions:(id)options
{
  optionsCopy = options;
  activationCodeSectionController = self->_activationCodeSectionController;
  v9 = optionsCopy;
  if (!activationCodeSectionController)
  {
    v6 = [[PKPassShareRedemptionActivationCodeSectionController alloc] initWithMode:1 delegate:self];
    v7 = self->_activationCodeSectionController;
    self->_activationCodeSectionController = v6;

    optionsCopy = v9;
    activationCodeSectionController = self->_activationCodeSectionController;
  }

  [(PKPassShareRedemptionActivationCodeSectionController *)activationCodeSectionController setActivationOptions:optionsCopy];
  self->_requiresActivationCode = [(PKPassShareRedemptionActivationCodeSectionController *)self->_activationCodeSectionController requiresActivationCode];
  [(PKPassShareRedemptionViewController *)self activationCodeDidChange];
  if (!self->_requiresActivationCode)
  {
    v8 = self->_activationCodeSectionController;
    self->_activationCodeSectionController = 0;
  }

  [(PKPassShareRedemptionViewController *)self _reloadSections];
}

- (void)setDisplayableSharedEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  if (entitlementsCopy)
  {
    v5 = [MEMORY[0x1E69B8800] localizedEntitlementsFromDisplayableEntitlements:entitlementsCopy pass:0];
    [(PKPassShareRedemptionViewController *)self _setDisplayableSharedEntitlements:v5];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69B8800];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__PKPassShareRedemptionViewController_setDisplayableSharedEntitlements___block_invoke;
    v7[3] = &unk_1E8011158;
    objc_copyWeak(&v8, &location);
    [v6 localizedEntitlementsFromDisplayableEntitlements:entitlementsCopy pass:0 useCachedTemplates:0 completion:v7];
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

- (void)_setDisplayableSharedEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  objc_storeStrong(&self->_displayableSharedEntitlements, entitlements);
  if (entitlementsCopy)
  {
    v5 = [entitlementsCopy pk_arrayBySafelyApplyingBlock:&__block_literal_global_11];
    if ([v5 count])
    {
      v6 = objc_alloc(MEMORY[0x1E69B9268]);
      mEMORY[0x1E69B8EF8] = [MEMORY[0x1E69B8EF8] sharedService];
      v8 = [v6 initWithPass:0 webService:mEMORY[0x1E69B8EF8] paymentServiceProvider:0 queue:MEMORY[0x1E69E96A0]];

      v9 = objc_alloc(MEMORY[0x1E69B8A38]);
      possiblePredefinedEntitlements = [(PKSharePreviewOverviewSectionController *)v8 possiblePredefinedEntitlements];
      v11 = [v9 initWithRedeemableSharedEntitlements:entitlementsCopy predefinedSharedEntitlements:possiblePredefinedEntitlements];
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
  navigationItem = [(PKPassShareRedemptionViewController *)self navigationItem];
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed];
  [navigationItem setLeftBarButtonItem:v4];

  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  [headerView setTitleAccessoriesEnabled:1];
  v6 = [[PKHeroCardExplanationHeaderView alloc] initWithImage:0];
  [(PKHeroCardExplanationHeaderView *)v6 setPadding:1];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(PKHeroCardExplanationHeaderView *)v6 setBackgroundColor:systemBackgroundColor];

  [(PKPassShareRedemptionViewController *)self _configureHeaderSize];
  [headerView setTopArtView:v6];
  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  footerView = [dockView footerView];
  v10 = footerView;
  if (self->_continueLaterText)
  {
    setUpLaterButton = [footerView setUpLaterButton];
    [setUpLaterButton setTitle:self->_continueLaterText forState:0];
    [setUpLaterButton addTarget:self action:sel_continueLaterButtonPressed forControlEvents:0x2000];
  }

  else
  {
    [footerView setSetUpLaterButton:0];
  }

  primaryButton = [dockView primaryButton];
  [primaryButton setEnabled:1];
  [primaryButton addTarget:self action:sel_continueButtonPressed forControlEvents:0x2000];
  continueButtonText = self->_continueButtonText;
  if (continueButtonText)
  {
    [primaryButton setTitle:continueButtonText forState:0];
  }

  else
  {
    v14 = PKLocalizedPaymentString(&cfstr_Continue.isa);
    [primaryButton setTitle:v14 forState:0];
  }

  [dockView setButtonsEnabled:1];
}

- (void)_configureHeaderSize
{
  viewIfLoaded = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (viewIfLoaded)
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

    cardHeaderView = [(PKPassShareRedemptionViewController *)self cardHeaderView];
    [cardHeaderView setSize:v4];
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

- (void)setHeaderImage:(id)image
{
  imageCopy = image;
  cardHeaderView = [(PKPassShareRedemptionViewController *)self cardHeaderView];
  [cardHeaderView setCardImage:imageCopy];
}

- (void)setContinueButtonText:(id)text
{
  textCopy = text;
  objc_storeStrong(&self->_continueButtonText, text);
  viewIfLoaded = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
    primaryButton = [dockView primaryButton];
    [primaryButton setTitle:textCopy forState:0];
  }
}

- (void)setContinueLaterText:(id)text
{
  textCopy = text;
  objc_storeStrong(&self->_continueLaterText, text);
  viewIfLoaded = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
    footerView = [dockView footerView];
    if (textCopy)
    {
      setUpLaterButton = [footerView setUpLaterButton];
      [setUpLaterButton setTitle:textCopy forState:0];
      allTargets = [setUpLaterButton allTargets];
      v10 = [allTargets count];

      if (!v10)
      {
        [setUpLaterButton addTarget:self action:sel_continueLaterButtonPressed forControlEvents:0x2000];
      }
    }

    else
    {
      [footerView setSetUpLaterButton:0];
    }
  }
}

- (PKHeroCardExplanationHeaderView)cardHeaderView
{
  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  topArtView = [headerView topArtView];

  return topArtView;
}

- (void)showStartingUI
{
  v3 = _UISolariumFeatureFlagEnabled();
  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  v5 = dockView;
  if (v3)
  {
    [dockView setButtonsEnabled:1];
    primaryButton = [v5 primaryButton];
    [primaryButton setShowSpinner:0];
  }

  else
  {
    [dockView setHidden:0];
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
  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  v5 = dockView;
  if (v3)
  {
    [dockView setButtonsEnabled:0];
    primaryButton = [v5 primaryButton];
    [primaryButton setShowSpinner:1];
  }

  else
  {
    [dockView setHidden:1];
    [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:1];
    privacyLink = [(PKPaymentSetupOptionsViewController *)self privacyLink];
    privacyLinkController = self->_privacyLinkController;
    self->_privacyLinkController = privacyLink;

    [(PKPaymentSetupOptionsViewController *)self setPrivacyLink:0];
  }

  [(PKPassShareRedemptionViewController *)self updateUserInteractionEnabled:0];
}

- (void)showSuccessUI
{
  [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:0];
  headerView = [(PKPaymentSetupOptionsViewController *)self headerView];
  [headerView setShowCheckmark:1];

  dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
  [dockView setHidden:1];
  [(PKPassShareRedemptionViewController *)self updateUserInteractionEnabled:1];
}

- (void)showFailureUI
{
  [(PKPaymentSetupOptionsViewController *)self setShowHeaderSpinner:0];

  [(PKPassShareRedemptionViewController *)self updateUserInteractionEnabled:1];
}

- (void)updateUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  collectionView = [(PKDynamicCollectionViewController *)self collectionView];
  [collectionView setUserInteractionEnabled:enabledCopy];
}

- (void)showDismissButton:(BOOL)button
{
  buttonCopy = button;
  navigationItem = [(PKPassShareRedemptionViewController *)self navigationItem];
  if (buttonCopy)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonPressed];
    [navigationItem setLeftBarButtonItem:v5];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:0];
  }
}

- (void)_updateContinueButtonState
{
  viewIfLoaded = [(PKPassShareRedemptionViewController *)self viewIfLoaded];

  if (viewIfLoaded)
  {
    dockView = [(PKPaymentSetupOptionsViewController *)self dockView];
    v4 = !self->_requiresActivationCode || [(PKPassShareRedemptionActivationCodeSectionController *)self->_activationCodeSectionController hasValidActivationCode];
    primaryButton = [dockView primaryButton];
    [primaryButton setEnabled:v4];
  }
}

- (void)activationCodeDidChange
{
  activationCodeSectionController = self->_activationCodeSectionController;
  if (activationCodeSectionController)
  {
    enteredActivationCode = [(PKPassShareRedemptionActivationCodeSectionController *)activationCodeSectionController enteredActivationCode];
    [(PKPassShareRedemptionViewController *)self activationCodeDidChangeToCode:enteredActivationCode];
  }

  [(PKPassShareRedemptionViewController *)self _updateContinueButtonState];
}

- (void)sharePreviewSectionControllerDidSelectEntitlements:(id)entitlements
{
  v5 = [[PKPassShareEntitlementSelectionViewController alloc] initWithAccessType:[(PKPassShareRedemptionViewController *)self accessType] mode:1 entitlementComposer:self->_entitlementComposer];
  navigationController = [(PKPassShareRedemptionViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

@end