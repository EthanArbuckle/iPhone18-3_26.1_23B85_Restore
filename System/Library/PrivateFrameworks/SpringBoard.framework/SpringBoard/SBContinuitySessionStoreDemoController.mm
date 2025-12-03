@interface SBContinuitySessionStoreDemoController
- (SBContinuitySessionStoreDemoController)initWithSystemEventMonitor:(id)monitor;
- (void)continuitySessionDidUpdateState:(id)state;
@end

@implementation SBContinuitySessionStoreDemoController

- (SBContinuitySessionStoreDemoController)initWithSystemEventMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (!monitorCopy)
  {
    [(SBContinuitySessionStoreDemoController *)a2 initWithSystemEventMonitor:?];
  }

  v10.receiver = self;
  v10.super_class = SBContinuitySessionStoreDemoController;
  v7 = [(SBContinuitySessionStoreDemoController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_systemEventMonitor, monitor);
  }

  return v8;
}

- (void)continuitySessionDidUpdateState:(id)state
{
  stateCopy = state;
  if ([stateCopy state] == 1 && !-[SBContinuitySessionSystemEventMonitor isUILocked](self->_systemEventMonitor, "isUILocked"))
  {
    v5 = stateCopy;
    BSDispatchMain();
  }
}

void __74__SBContinuitySessionStoreDemoController_continuitySessionDidUpdateState___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = +[SBLockScreenManager sharedInstance];
  v7 = @"SBUILockOptionsAnimateLockScreenActivationKey";
  v8[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__SBContinuitySessionStoreDemoController_continuitySessionDidUpdateState___block_invoke_2;
  v5[3] = &unk_2783A8BF0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 lockUIFromSource:27 withOptions:v3 completion:v5];
}

uint64_t __74__SBContinuitySessionStoreDemoController_continuitySessionDidUpdateState___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) isUILocked];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 noteStoreDemoLockFailed];
  }

  return result;
}

- (void)initWithSystemEventMonitor:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuitySessionStoreDemoController.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"systemEventMonitor"}];
}

@end