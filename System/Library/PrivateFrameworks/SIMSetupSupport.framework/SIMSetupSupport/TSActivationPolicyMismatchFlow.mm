@interface TSActivationPolicyMismatchFlow
- (TSActivationPolicyMismatchFlow)init;
- (TSActivationPolicyMismatchFlow)initWithPlanItemError:(id)error;
- (id)_firstViewController;
- (id)firstViewController;
- (void)firstViewController;
- (void)firstViewController:(id)controller;
@end

@implementation TSActivationPolicyMismatchFlow

- (TSActivationPolicyMismatchFlow)init
{
  v3.receiver = self;
  v3.super_class = TSActivationPolicyMismatchFlow;
  return [(TSSIMSetupFlow *)&v3 init];
}

- (TSActivationPolicyMismatchFlow)initWithPlanItemError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = TSActivationPolicyMismatchFlow;
  v6 = [(TSSIMSetupFlow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_planItemError, error);
  }

  return v7;
}

- (id)firstViewController
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [(TSActivationPolicyMismatchFlow *)v2 firstViewController];
  }

  return 0;
}

- (id)_firstViewController
{
  v3 = [[TSMidOperationFailureViewController alloc] initWithPlanItemError:self->_planItemError updatePlanItem:0 withBackButton:0 forCarrier:0 withCarrierErrorCode:0 isEmbeddedInResultView:0];
  [(TSMidOperationFailureViewController *)v3 setDelegate:self];

  return v3;
}

- (void)firstViewController:(id)controller
{
  controllerCopy = controller;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__TSActivationPolicyMismatchFlow_firstViewController___block_invoke;
  v6[3] = &unk_279B45058;
  v6[4] = self;
  v7 = controllerCopy;
  v5 = controllerCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __54__TSActivationPolicyMismatchFlow_firstViewController___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _firstViewController];
  (*(v1 + 16))(v1, v2);
}

- (void)firstViewController
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[TSActivationPolicyMismatchFlow firstViewController]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]unimplemented, please use async version @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end