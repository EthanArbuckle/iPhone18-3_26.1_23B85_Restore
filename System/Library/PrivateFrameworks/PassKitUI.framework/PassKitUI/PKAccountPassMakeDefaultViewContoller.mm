@interface PKAccountPassMakeDefaultViewContoller
- (PKAccountPassMakeDefaultViewContoller)initWithAccountFlowController:(id)controller context:(int64_t)context setupDelegate:(id)delegate;
- (void)_presentDisplayableError:(id)error;
- (void)_presentViewController:(id)controller;
- (void)_reportEventForPassIfNecessary:(id)necessary;
- (void)_terminateSetupFlow;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)preflightWithCompletion:(id)completion;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation PKAccountPassMakeDefaultViewContoller

- (PKAccountPassMakeDefaultViewContoller)initWithAccountFlowController:(id)controller context:(int64_t)context setupDelegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = PKAccountPassMakeDefaultViewContoller;
  v11 = [(PKExplanationViewController *)&v16 initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_accountController, controller);
    accountCredential = [controllerCopy accountCredential];
    account = [accountCredential account];
    v12->_featureIdentifier = [account feature];
  }

  return v12;
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
  v5.super_class = PKAccountPassMakeDefaultViewContoller;
  [(PKAccountPassMakeDefaultViewContoller *)&v5 dealloc];
}

- (void)loadView
{
  v40 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = PKAccountPassMakeDefaultViewContoller;
  [(PKExplanationViewController *)&v38 loadView];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  accountCredential = [(PKAccountFlowController *)self->_accountController accountCredential];
  passDetailsResponse = [accountCredential passDetailsResponse];
  postProvisioningContent = [passDetailsResponse postProvisioningContent];

  v6 = [postProvisioningContent countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(postProvisioningContent);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        if ([v10 type] == 1)
        {
          objc_storeStrong(&self->_makeDefaultPostProvisioningContent, v10);
          goto LABEL_11;
        }
      }

      v7 = [postProvisioningContent countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  title = [(PKAccountPostProvisioningContent *)self->_makeDefaultPostProvisioningContent title];
  if (title)
  {
    [explanationView setTitleText:title];
  }

  else
  {
    v15 = PKLocalizedFeatureString();
    [explanationView setTitleText:v15];
  }

  primaryButton = [dockView primaryButton];
  primaryButtonTitle = [(PKAccountPostProvisioningContent *)self->_makeDefaultPostProvisioningContent primaryButtonTitle];
  if (primaryButtonTitle)
  {
    [primaryButton setTitle:primaryButtonTitle forState:0];
  }

  else
  {
    v18 = PKLocalizedFeatureString();
    [primaryButton setTitle:v18 forState:0];
  }

  [explanationView setForceShowSetupLaterButton:1];
  if ([(PKAccountPassMakeDefaultViewContoller *)self _willPerformProvisioningActions])
  {
    v19 = PKFeatureIdentifierToString();
    v20 = PKHasPairedWatchSupportingFeatureIdentifier();

    body = [(PKAccountPostProvisioningContent *)self->_makeDefaultPostProvisioningContent body];
    v22 = body;
    v23 = @"ACCOUNT_MAKE_DEFAULT_BODY_AND_WATCH";
    if (!v20)
    {
      v23 = @"ACCOUNT_MAKE_DEFAULT_BODY";
    }

    if (body)
    {
      v23 = body;
    }

    v24 = v23;

    v25 = PKLocalizedFeatureString();

    [explanationView setBodyText:v25];
    setUpLaterButton = [footerView setUpLaterButton];
    secondaryButtonTitle = [(PKAccountPostProvisioningContent *)self->_makeDefaultPostProvisioningContent secondaryButtonTitle];
    if (!secondaryButtonTitle)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v28 = PKLocalizedFeatureString();
    [explanationView setBodyText:v28];

    setUpLaterButton = [footerView setUpLaterButton];
    secondaryButtonTitle = [(PKAccountPostProvisioningContent *)self->_makeDefaultPostProvisioningContent secondaryButtonTitle];
    if (!secondaryButtonTitle)
    {
LABEL_26:
      v30 = PKLocalizedFeatureString();
      [setUpLaterButton setTitle:v30 forState:0];

      v29 = 0;
      goto LABEL_27;
    }
  }

  v29 = secondaryButtonTitle;
  [setUpLaterButton setTitle:secondaryButtonTitle forState:0];
LABEL_27:

  v31 = PKProvisioningSecondaryBackgroundColor();
  [explanationView setTopBackgroundColor:v31];
  v32 = [[PKApplyHeroCardView alloc] initWithFeatureIdentifier:self->_featureIdentifier];
  [(PKApplyHeroCardView *)v32 setBackgroundColor:v31];
  [explanationView setHeroView:v32];
  [explanationView setShowPrivacyView:0];
  [explanationView setDelegate:self];
  [explanationView showCheckmark:0 animated:0];
  [explanationView setNeedsLayout];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  navigationItem = [(PKAccountPassMakeDefaultViewContoller *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKAccountPassMakeDefaultViewContoller;
  [(PKExplanationViewController *)&v3 viewDidLoad];
  [(PKAccountFlowController *)self->_accountController performInitalOperations];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKAccountPassMakeDefaultViewContoller;
  [(PKAccountPassMakeDefaultViewContoller *)&v5 viewWillAppear:appear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA818];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKAccountPassMakeDefaultViewContoller *)self _reportEventForPassIfNecessary:v4];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PKAccountPassMakeDefaultViewContoller;
  [(PKAccountPassMakeDefaultViewContoller *)&v6 viewWillDisappear:disappear];
  inUseAssertion = self->_inUseAssertion;
  if (inUseAssertion)
  {
    [(CLInUseAssertion *)inUseAssertion invalidate];
    v5 = self->_inUseAssertion;
    self->_inUseAssertion = 0;
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = PKAccountPassMakeDefaultViewContoller;
  [(PKAccountPassMakeDefaultViewContoller *)&v5 viewDidDisappear:disappear];
  v6 = *MEMORY[0x1E69BA680];
  v7[0] = *MEMORY[0x1E69BA820];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKAccountPassMakeDefaultViewContoller *)self _reportEventForPassIfNecessary:v4];
}

- (void)preflightWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(PKAccountPassMakeDefaultViewContoller *)self _willPerformProvisioningActions])
  {
    if (!self->_inUseAssertion)
    {
      v5 = MEMORY[0x1E695FBE0];
      v6 = PKPassKitCoreBundle();
      v7 = [v5 newAssertionForBundle:v6 withReason:@"Setting up account credential for provisioning"];
      inUseAssertion = self->_inUseAssertion;
      self->_inUseAssertion = v7;
    }

    provisioningController = [(PKAccountFlowController *)self->_accountController provisioningController];
    accountCredential = [(PKAccountFlowController *)self->_accountController accountCredential];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PKAccountPassMakeDefaultViewContoller_preflightWithCompletion___block_invoke;
    v11[3] = &unk_1E8013FF8;
    v12 = completionCopy;
    [provisioningController setupAccountCredentialForProvisioning:accountCredential completion:v11];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

uint64_t __65__PKAccountPassMakeDefaultViewContoller_preflightWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v11[2] = *MEMORY[0x1E69E9840];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:0];

  [(PKAccountFlowController *)self->_accountController makeAccountPassDefault:1];
  v6 = *MEMORY[0x1E69BA6F0];
  v7 = *MEMORY[0x1E69BA440];
  v10[0] = *MEMORY[0x1E69BA680];
  v10[1] = v7;
  v8 = *MEMORY[0x1E69BAA88];
  v11[0] = v6;
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [(PKAccountPassMakeDefaultViewContoller *)self _reportEventForPassIfNecessary:v9];
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v13[2] = *MEMORY[0x1E69E9840];
  if ([(PKAccountPassMakeDefaultViewContoller *)self _willPerformProvisioningActions])
  {
    explanationView = [(PKExplanationViewController *)self explanationView];
    dockView = [explanationView dockView];
    [dockView setButtonsEnabled:0];

    [(PKAccountFlowController *)self->_accountController makeAccountPassDefault:0];
  }

  else
  {
    [(PKAccountFlowController *)self->_accountController endProvisioningFlow];
    accountController = self->_accountController;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__PKAccountPassMakeDefaultViewContoller_explanationViewDidSelectSetupLater___block_invoke;
    v11[3] = &unk_1E8011D00;
    v11[4] = self;
    [(PKAccountFlowController *)accountController nextViewControllerWithCompletion:v11];
  }

  v7 = *MEMORY[0x1E69BA6F0];
  v8 = *MEMORY[0x1E69BA440];
  v12[0] = *MEMORY[0x1E69BA680];
  v12[1] = v8;
  v9 = *MEMORY[0x1E69BAA90];
  v13[0] = v7;
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [(PKAccountPassMakeDefaultViewContoller *)self _reportEventForPassIfNecessary:v10];
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy)
  {
    [controllerCopy pk_paymentSetupSetHideSetupLaterButton:1];
    navigationController = [(PKAccountPassMakeDefaultViewContoller *)self navigationController];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__PKAccountPassMakeDefaultViewContoller__presentViewController___block_invoke;
    v7[3] = &unk_1E8011D28;
    v7[4] = self;
    [navigationController pk_presentPaymentSetupViewController:v5 animated:1 completion:v7];
  }

  else
  {
    [(PKExplanationViewController *)self showNavigationBarSpinner:0];
    [(PKAccountPassMakeDefaultViewContoller *)self _terminateSetupFlow];
  }
}

- (void)_presentDisplayableError:(id)error
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PKAccountPassMakeDefaultViewContoller__presentDisplayableError___block_invoke;
  v6[3] = &unk_1E8010970;
  v6[4] = self;
  v4 = PKAlertForDisplayableErrorWithHandlers(error, 0, v6, 0);
  [(PKExplanationViewController *)self showNavigationBarSpinner:0];
  if (v4)
  {
    navigationController = [(PKAccountPassMakeDefaultViewContoller *)self navigationController];
    [navigationController presentViewController:v4 animated:1 completion:0];
  }

  else
  {
    [(PKAccountPassMakeDefaultViewContoller *)self _terminateSetupFlow];
  }
}

uint64_t __66__PKAccountPassMakeDefaultViewContoller__presentDisplayableError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) showNavigationBarSpinner:1];
  [*(*(a1 + 32) + 1080) endProvisioningFlow];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1080);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PKAccountPassMakeDefaultViewContoller__presentDisplayableError___block_invoke_2;
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
    presentingViewController = [(PKAccountPassMakeDefaultViewContoller *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_reportEventForPassIfNecessary:(id)necessary
{
  if (necessary)
  {
    v8 = [necessary mutableCopy];
    [v8 setObject:*MEMORY[0x1E69BAA78] forKey:*MEMORY[0x1E69BABE8]];
    v4 = MEMORY[0x1E69B8540];
    v5 = [v8 copy];
    accountCredential = [(PKAccountFlowController *)self->_accountController accountCredential];
    paymentPass = [accountCredential paymentPass];
    [v4 reportDashboardEventIfNecessary:v5 forPass:paymentPass];
  }
}

@end