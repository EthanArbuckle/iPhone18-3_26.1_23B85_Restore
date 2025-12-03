@interface PKAccountPassActivationResultViewController
- (PKAccountPassActivationResultViewController)initWithAccountFlowController:(id)controller context:(int64_t)context setupDelegate:(id)delegate;
- (id)_localizedStringKeyForPerformedOperationsAndMadeDefault:(BOOL)default;
- (void)_handleNextStep;
- (void)_presentDisplayableError:(id)error;
- (void)_presentViewController:(id)controller;
- (void)_showActivationSpinner:(BOOL)spinner;
- (void)_terminateSetupFlow;
- (void)_updateForLoading;
- (void)_updateForMadeDefault;
- (void)_updateForSetupLater;
- (void)_updateUI;
- (void)accountFlowController:(id)controller requestsNavigationControllerWithOnDisplay:(id)display;
- (void)accountFlowController:(id)controller requestsPresentationOfViewController:(id)viewController;
- (void)dealloc;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKAccountPassActivationResultViewController

- (PKAccountPassActivationResultViewController)initWithAccountFlowController:(id)controller context:(int64_t)context setupDelegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = PKAccountPassActivationResultViewController;
  v11 = [(PKExplanationViewController *)&v16 initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_accountController, controller);
    accountCredential = [(PKAccountFlowController *)v12->_accountController accountCredential];
    account = [accountCredential account];
    v12->_featureIdentifier = [account feature];

    v12->_setupContext = context;
  }

  return v12;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (!self->_inUseAssertion)
  {
    v5 = MEMORY[0x1E695FBE0];
    v6 = PKPassKitCoreBundle();
    v7 = [v5 newAssertionForBundle:v6 withReason:@"Passbook showing add card UI"];
    inUseAssertion = self->_inUseAssertion;
    self->_inUseAssertion = v7;
  }

  v9.receiver = self;
  v9.super_class = PKAccountPassActivationResultViewController;
  [(PKAccountPassActivationResultViewController *)&v9 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v6 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }

  v7.receiver = self;
  v7.super_class = PKAccountPassActivationResultViewController;
  [(PKAccountPassActivationResultViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)dealloc
{
  [(CLInUseAssertion *)self->_inUseAssertion invalidate];
  inUseAssertion = self->_inUseAssertion;
  self->_inUseAssertion = 0;

  [(UINotificationFeedbackGenerator *)self->_cardAddedFeedbackGenerator deactivate];
  v4.receiver = self;
  v4.super_class = PKAccountPassActivationResultViewController;
  [(PKAccountPassActivationResultViewController *)&v4 dealloc];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = PKAccountPassActivationResultViewController;
  [(PKExplanationViewController *)&v7 loadView];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v4 = PKProvisioningSecondaryBackgroundColor();
  [explanationView setTopBackgroundColor:v4];
  v5 = [[PKApplyHeroCardView alloc] initWithFeatureIdentifier:self->_featureIdentifier];
  [explanationView setTopBackgroundColor:v4];
  [(PKApplyHeroCardView *)v5 setBackgroundColor:v4];
  [explanationView setHeroView:v5];
  [explanationView setShowPrivacyView:0];
  [explanationView setDelegate:self];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  navigationItem = [(PKAccountPassActivationResultViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];

  [(PKAccountPassActivationResultViewController *)self _updateUI];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PKAccountPassActivationResultViewController;
  [(PKExplanationViewController *)&v7 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DCCF0]);
  view = [(PKAccountPassActivationResultViewController *)self view];
  v5 = [v3 initWithView:view];
  cardAddedFeedbackGenerator = self->_cardAddedFeedbackGenerator;
  self->_cardAddedFeedbackGenerator = v5;

  [(UINotificationFeedbackGenerator *)self->_cardAddedFeedbackGenerator activateWithCompletionBlock:0];
  [(PKAccountFlowController *)self->_accountController performInitalOperations];
}

- (void)accountFlowController:(id)controller requestsPresentationOfViewController:(id)viewController
{
  viewControllerCopy = viewController;
  nextStepHandler = self->_nextStepHandler;
  if (nextStepHandler)
  {
    self->_nextStepHandler = 0;

    [(PKExplanationViewController *)self showNavigationBarSpinner:0];
  }

  else
  {
    objc_storeStrong(&self->_nextViewController, viewController);
    self->_showingLoadingIndicator = 0;
    [(PKAccountPassActivationResultViewController *)self _updateUI];
  }
}

- (void)accountFlowController:(id)controller requestsNavigationControllerWithOnDisplay:(id)display
{
  self->_showingLoadingIndicator = 0;
  displayCopy = display;
  [(PKAccountPassActivationResultViewController *)self _updateUI];
  v6 = _Block_copy(displayCopy);

  nextStepHandler = self->_nextStepHandler;
  self->_nextStepHandler = v6;
}

- (void)_updateUI
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PKAccountPassActivationResultViewController__updateUI__block_invoke;
  aBlock[3] = &unk_1E801A198;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  if (PKPaymentSetupContextIsBridge())
  {
    paymentService = objc_alloc_init(getNPKCompanionAgentConnectionClass_6());
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__PKAccountPassActivationResultViewController__updateUI__block_invoke_2;
    v5[3] = &unk_1E8025940;
    v6 = v2;
    [paymentService defaultCardUniqueID:v5];
    defaultPaymentPassUniqueIdentifier = v6;
  }

  else
  {
    paymentService = [MEMORY[0x1E69B8DB8] paymentService];
    defaultPaymentPassUniqueIdentifier = [paymentService defaultPaymentPassUniqueIdentifier];
    (*(v2 + 2))(v2, defaultPaymentPassUniqueIdentifier);
  }
}

void __56__PKAccountPassActivationResultViewController__updateUI__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1080);
  v4 = a2;
  v5 = [v3 accountCredential];
  v6 = [v5 paymentPass];
  v9 = [v6 uniqueID];

  v7 = [v4 isEqualToString:v9];
  v8 = *(a1 + 32);
  if (v8[1154] == 1)
  {
    [v8 _updateForLoading];
  }

  else if (v7)
  {
    [v8 _updateForMadeDefault];
  }

  else
  {
    [v8 _updateForSetupLater];
  }

  PKPaymentSetupApplyContextAppearance([*(a1 + 32) context], *(a1 + 32));
}

void __56__PKAccountPassActivationResultViewController__updateUI__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PKAccountPassActivationResultViewController__updateUI__block_invoke_3;
  v6[3] = &unk_1E8010E20;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)_updateForLoading
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  [explanationView showCheckmark:0 animated:0];
  [(PKAccountPassActivationResultViewController *)self _showActivationSpinner:1];
  [(PKAccountPassActivationResultViewController *)self _willPerformProvisioningActions];
  v5 = PKLocalizedFeatureString();
  [explanationView setTitleText:v5];

  [footerView setSetUpLaterButton:0];
  primaryButton = [dockView primaryButton];
  v7 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [primaryButton setTitle:v7 forState:0];

  if ([(PKAccountPassActivationResultViewController *)self _willPerformProvisioningActions])
  {
    v8 = PKLocalizedFeatureString();
    [dockView setButtonExplanationText:v8];
  }

  else
  {
    [dockView setButtonExplanationText:0];
  }
}

- (void)_updateForMadeDefault
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  [(PKAccountPassActivationResultViewController *)self _showActivationSpinner:0];
  [explanationView setShowCheckmark:1];
  [(UINotificationFeedbackGenerator *)self->_cardAddedFeedbackGenerator notificationOccurred:0];
  primaryButton = [dockView primaryButton];
  v6 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [primaryButton setTitle:v6 forState:0];

  primaryButton2 = [dockView primaryButton];
  [primaryButton2 addTarget:self action:sel__handleNextStep forEvents:0x2000];

  [footerView setSetUpLaterButton:0];
  if ([(PKAccountPassActivationResultViewController *)self _willPerformProvisioningActions])
  {
    v8 = PKLocalizedFeatureString();
    [explanationView setTitleText:v8];

    v9 = [(PKAccountPassActivationResultViewController *)self _localizedStringKeyForPerformedOperationsAndMadeDefault:1];
    v10 = PKLocalizedFeatureString();
    v11 = PKLocalizedFeatureString();
    v12 = [v10 stringByAppendingString:v11];

    [explanationView setBodyText:v12];
    v13 = PKLocalizedFeatureString();
    [dockView setButtonExplanationText:v13];
  }

  else
  {
    v14 = PKLocalizedFeatureString();
    [explanationView setTitleText:v14];

    v15 = PKLocalizedFeatureString();
    [explanationView setBodyText:v15];

    [dockView setButtonExplanationText:0];
  }
}

- (void)_updateForSetupLater
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  [(PKAccountPassActivationResultViewController *)self _showActivationSpinner:0];
  [explanationView setShowCheckmark:1];
  [(UINotificationFeedbackGenerator *)self->_cardAddedFeedbackGenerator notificationOccurred:0];
  v5 = PKLocalizedFeatureString();
  [explanationView setTitleText:v5];

  v6 = [(PKAccountPassActivationResultViewController *)self _localizedStringKeyForPerformedOperationsAndMadeDefault:0];
  v7 = PKLocalizedFeatureString();
  v8 = PKLocalizedFeatureString();
  v9 = [v7 stringByAppendingString:v8];

  [explanationView setBodyText:v9];
  [footerView setSetUpLaterButton:0];
  primaryButton = [dockView primaryButton];
  v11 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [primaryButton setTitle:v11 forState:0];

  primaryButton2 = [dockView primaryButton];
  [primaryButton2 addTarget:self action:sel__handleNextStep forEvents:0x2000];

  if ([(PKAccountPassActivationResultViewController *)self _willPerformProvisioningActions])
  {
    v13 = PKLocalizedFeatureString();
    [dockView setButtonExplanationText:v13];
  }

  else
  {
    [dockView setButtonExplanationText:0];
  }
}

- (void)_showActivationSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  v13 = *MEMORY[0x1E69E9840];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  [explanationView setShowSpinner:spinnerCopy];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] _setIdleTimerDisabled:spinnerCopy forReason:@"Activating Account Pass"];

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"enabled";
    if (spinnerCopy)
    {
      v8 = @"disabled";
    }

    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = @"Activating Account Pass";
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Idle timer is: %@ for reason: %@", &v9, 0x16u);
  }

  [dockView setButtonsEnabled:spinnerCopy ^ 1];
}

- (void)_handleNextStep
{
  [(PKExplanationViewController *)self showNavigationBarSpinner:1];
  nextStepHandler = self->_nextStepHandler;
  if (nextStepHandler)
  {
    navigationController = [(PKAccountPassActivationResultViewController *)self navigationController];
    nextStepHandler[2](nextStepHandler, navigationController);
    nextViewController = navigationController;
  }

  else
  {
    if (!self->_nextViewController)
    {
      accountController = self->_accountController;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __62__PKAccountPassActivationResultViewController__handleNextStep__block_invoke;
      v7[3] = &unk_1E8011D00;
      v7[4] = self;
      [(PKAccountFlowController *)accountController nextViewControllerWithCompletion:v7];
      return;
    }

    [(PKAccountPassActivationResultViewController *)self _presentViewController:?];
    nextViewController = self->_nextViewController;
    self->_nextViewController = 0;
  }
}

uint64_t __62__PKAccountPassActivationResultViewController__handleNextStep__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 _presentDisplayableError:?];
  }

  else
  {
    return [v3 _presentViewController:a2];
  }
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    [controllerCopy pk_paymentSetupSetHideSetupLaterButton:1];
    navigationController = [(PKAccountPassActivationResultViewController *)self navigationController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PKAccountPassActivationResultViewController__presentViewController___block_invoke;
    v7[3] = &unk_1E8011D28;
    v7[4] = self;
    [navigationController pk_presentPaymentSetupViewController:v5 animated:1 completion:v7];
  }

  else
  {
    [(PKExplanationViewController *)self showNavigationBarSpinner:0];
    [(PKAccountPassActivationResultViewController *)self _terminateSetupFlow];
  }
}

- (void)_presentDisplayableError:(id)error
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__PKAccountPassActivationResultViewController__presentDisplayableError___block_invoke;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  v4 = PKAlertForDisplayableErrorWithHandlers(error, 0, v6, 0);
  [(PKExplanationViewController *)self showNavigationBarSpinner:0];
  if (v4)
  {
    navigationController = [(PKAccountPassActivationResultViewController *)self navigationController];
    [navigationController presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    [(PKAccountPassActivationResultViewController *)self _terminateSetupFlow];
  }
}

uint64_t __72__PKAccountPassActivationResultViewController__presentDisplayableError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) showNavigationBarSpinner:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1080);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PKAccountPassActivationResultViewController__presentDisplayableError___block_invoke_2;
  v5[3] = &unk_1E8011D00;
  v5[4] = v2;
  return [v3 nextViewControllerWithCompletion:v5];
}

- (void)_terminateSetupFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    presentingViewController = objc_loadWeakRetained(&self->_delegate);
    [presentingViewController viewControllerDidTerminateSetupFlow:self];
  }

  else
  {
    presentingViewController = [(PKAccountPassActivationResultViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)_localizedStringKeyForPerformedOperationsAndMadeDefault:(BOOL)default
{
  defaultCopy = default;
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  if (defaultCopy)
  {
    v6 = @"ACCOUNT_ACTIVATED_BODY_MADE_DEFAULT_WALLET_SAFARI";
  }

  else
  {
    v6 = @"ACCOUNT_ACTIVATED_BODY_NOT_MADE_DEFAULT_WALLET_SAFARI";
  }

  v7 = [v5 initWithString:v6];
  accountProvisioningController = [(PKAccountFlowController *)self->_accountController accountProvisioningController];
  didAddToAMP = [accountProvisioningController didAddToAMP];

  if (didAddToAMP)
  {
    [v7 appendString:@"_APPLEID"];
  }

  v10 = PKFeatureIdentifierToString();
  v11 = PKHasPairedWatchSupportingFeatureIdentifier();

  if (v11)
  {
    [v7 appendString:@"_WATCH"];
  }

  v12 = [v7 copy];

  return v12;
}

@end