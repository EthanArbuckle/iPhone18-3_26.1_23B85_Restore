@interface BFFFinishSetupPaymentController
+ (BOOL)hasPrimaryiCloudAccount;
+ (id)finishSetupPaymentControllerWithHost:(id)host;
+ (unint64_t)registrationViewControllerOutstandingRequirements;
- (BFFFinishSetupPaymentController)initWithHost:(id)host;
- (BOOL)controllerNeedsToRun;
- (id)prerequisiteFlowIdentifier;
- (id)viewControllerWithCompletion:(id)completion;
- (void)_completeWithResult:(unint64_t)result didSetUp:(BOOL)up;
- (void)_userDidTapCancelButton:(id)button;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation BFFFinishSetupPaymentController

+ (id)finishSetupPaymentControllerWithHost:(id)host
{
  hostCopy = host;
  v4 = [[BFFFinishSetupPaymentController alloc] initWithHost:hostCopy];

  return v4;
}

- (BFFFinishSetupPaymentController)initWithHost:(id)host
{
  hostCopy = host;
  v8.receiver = self;
  v8.super_class = BFFFinishSetupPaymentController;
  v5 = [(BFFFinishSetupPaymentController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_host, hostCopy);
  }

  return v6;
}

- (id)prerequisiteFlowIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  v4 = *MEMORY[0x277D4D9B8];
  if ([WeakRetained didSkipFlowInFinishSetup:*MEMORY[0x277D4D9B8]])
  {

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v5 = objc_loadWeakRetained(&self->_host);
  v6 = *MEMORY[0x277D4D9A0];
  v7 = [v5 didSkipFlowInFinishSetup:*MEMORY[0x277D4D9A0]];

  if (v7)
  {
    goto LABEL_9;
  }

  v8 = objc_loadWeakRetained(&self->_host);
  v9 = [v8 didCompleteFlowInFinishSetup:v4];

  if ((v9 & 1) != 0 || (+[BFFFinishSetupPaymentController registrationViewControllerOutstandingRequirements]& 2) == 0 || (v10 = v4) == 0)
  {
    v11 = objc_loadWeakRetained(&self->_host);
    v12 = [v11 didCompleteFlowInFinishSetup:v6];

    if ((v12 & 1) != 0 || +[BFFFinishSetupPaymentController hasPrimaryiCloudAccount])
    {
      goto LABEL_9;
    }

    v10 = v6;
  }

LABEL_10:

  return v10;
}

+ (unint64_t)registrationViewControllerOutstandingRequirements
{
  v6 = 0;
  v2 = [objc_alloc(getPKSetupAssistantContextClass()) initWithSetupAssistantAsFollowupAction:1];
  v3 = [objc_alloc(getPKPaymentSetupAssistantControllerClass()) initWithSetupAssistantContext:v2];
  [v3 isFollowupNeededReturningRequirements:&v6];
  v4 = v6;

  return v4;
}

+ (BOOL)hasPrimaryiCloudAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  return aa_primaryAppleAccount != 0;
}

- (BOOL)controllerNeedsToRun
{
  WeakRetained = objc_loadWeakRetained(&self->_host);
  if ([WeakRetained didSkipFlowInFinishSetup:*MEMORY[0x277D4D9B8]])
  {

LABEL_4:
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Finish setup payment controller does not need to run. The user skipped a prerequisite", buf, 2u);
    }

    v7 = 0;
    goto LABEL_10;
  }

  v4 = objc_loadWeakRetained(&self->_host);
  v5 = [v4 didSkipFlowInFinishSetup:*MEMORY[0x277D4D9A0]];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "Finish setup payment controller needs to run", v9, 2u);
  }

  v7 = 1;
LABEL_10:

  return v7;
}

- (id)viewControllerWithCompletion:(id)completion
{
  [(BFFFinishSetupPaymentController *)self setCompletion:completion];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__userDidTapCancelButton_];
  navigationItem = [(UIViewController *)self->_registrationViewController navigationItem];
  [navigationItem setLeftBarButtonItem:v4 animated:0];

  registrationViewController = self->_registrationViewController;
  v7 = registrationViewController;

  return registrationViewController;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265AC5000, v5, OS_LOG_TYPE_DEFAULT, "Buddy followup will preflight payment controller", buf, 2u);
  }

  v6 = [objc_alloc(getPKSetupAssistantContextClass()) initWithSetupAssistantAsFollowupAction:1];
  [v6 setDelegate:self];
  v7 = [objc_alloc(getPKPaymentSetupAssistantControllerClass()) initWithSetupAssistantContext:v6];
  paymentController = self->_paymentController;
  self->_paymentController = v7;

  v9 = self->_paymentController;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__BFFFinishSetupPaymentController_performExtendedInitializationWithCompletion___block_invoke;
  v11[3] = &unk_279BB4A30;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(PKPaymentSetupAssistantController *)v9 setupAssistantViewControllerWithCompletion:v11];
}

void __79__BFFFinishSetupPaymentController_performExtendedInitializationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 16), a2);
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v10 = v4 != 0;
    _os_log_impl(&dword_265AC5000, v5, OS_LOG_TYPE_DEFAULT, "Buddy followup did preflight payment controller with success %d", buf, 8u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v8 = *MEMORY[0x277D4D9A8];
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    (*(v6 + 16))(v6, v4 != 0, v7);
  }
}

- (void)_userDidTapCancelButton:(id)button
{
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_265AC5000, v4, OS_LOG_TYPE_DEFAULT, "Buddy followup payment controller user did tap cancel", v5, 2u);
  }

  [(BFFFinishSetupPaymentController *)self _completeWithResult:2 didSetUp:0];
}

- (void)_completeWithResult:(unint64_t)result didSetUp:(BOOL)up
{
  upCopy = up;
  v14[1] = *MEMORY[0x277D85DE8];
  flowSkipController = [(BFFFinishSetupPaymentController *)self flowSkipController];
  v8 = *MEMORY[0x277D4D9A8];
  [flowSkipController didCompleteFlow:*MEMORY[0x277D4D9A8]];

  CFPreferencesSetValue(@"Payment2Presented", *MEMORY[0x277CBED28], *MEMORY[0x277D4D9E0], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  paneFeatureAnalyticsManager = [(BFFFinishSetupPaymentController *)self paneFeatureAnalyticsManager];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:upCopy];
  [paneFeatureAnalyticsManager recordActionWithValue:v10 forFeature:15];

  completion = self->_completion;
  if (completion)
  {
    v14[0] = v8;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    completion[2](completion, result, v12);

    v13 = self->_completion;
  }

  else
  {
    v13 = 0;
  }

  self->_completion = 0;
}

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [(PKPaymentSetupAssistantController *)self->_paymentController isFollowupNeededReturningRequirements:0];
  v5 = _BYLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_265AC5000, v5, OS_LOG_TYPE_DEFAULT, "Buddy followup payment controller did terminate flow with still needing to run: %i", v6, 8u);
  }

  [(BFFFinishSetupPaymentController *)self _completeWithResult:0 didSetUp:v4 ^ 1u];
}

@end