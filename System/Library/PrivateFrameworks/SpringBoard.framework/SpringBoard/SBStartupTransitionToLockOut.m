@interface SBStartupTransitionToLockOut
- (SBStartupTransitionToLockOut)initWithDestination:(unint64_t)a3 context:(id)a4;
- (void)performTransitionWithCompletionBlock:(id)a3;
@end

@implementation SBStartupTransitionToLockOut

- (SBStartupTransitionToLockOut)initWithDestination:(unint64_t)a3 context:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBStartupTransitionToLockOut;
  v4 = [(SBBaseStartupTransition *)&v10 initWithDestination:a3 context:a4];
  if (v4)
  {
    v5 = +[SBLockScreenManager sharedInstance];
    lockScreenManager = v4->_lockScreenManager;
    v4->_lockScreenManager = v5;

    v7 = [SBApp authenticationController];
    authController = v4->_authController;
    v4->_authController = v7;
  }

  return v4;
}

- (void)performTransitionWithCompletionBlock:(id)a3
{
  v23[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBStartupTransitionToLockOut *)a2 performTransitionWithCompletionBlock:?];
  }

  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Passcode locking if necessary, because we're transitioning at boot to the lockscreen .", buf, 2u);
  }

  [(SBFUserAuthenticationController *)self->_authController revokeAuthenticationImmediatelyIfNecessaryForPublicReason:@"StartupTransitionToLockOut"];
  v7 = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__SBStartupTransitionToLockOut_performTransitionWithCompletionBlock___block_invoke;
  v19[3] = &unk_2783BAA70;
  v20 = v7;
  v8 = v7;
  v9 = MEMORY[0x223D6F7F0](v19);
  lockScreenManager = v8->_lockScreenManager;
  v22[0] = @"SBUILockOptionsLockAutomaticallyKey";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v23[0] = v11;
  v22[1] = @"SBUILockOptionsUseScreenOffModeKey";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v23[1] = v12;
  v22[2] = @"SBUILockOptionsForceLockKey";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v23[2] = v13;
  v22[3] = @"SBUILockOptionsAnimationTransactionProviderKey";
  v14 = MEMORY[0x223D6F7F0](v9);
  v23[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__SBStartupTransitionToLockOut_performTransitionWithCompletionBlock___block_invoke_2;
  v17[3] = &unk_2783A9C70;
  v18 = v5;
  v16 = v5;
  [(SBLockScreenManager *)lockScreenManager lockUIFromSource:16 withOptions:v15 completion:v17];
}

- (void)performTransitionWithCompletionBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStartupTransitionToLockOut.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
}

@end