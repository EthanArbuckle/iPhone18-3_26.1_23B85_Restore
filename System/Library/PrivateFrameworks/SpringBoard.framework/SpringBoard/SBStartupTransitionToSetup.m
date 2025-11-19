@interface SBStartupTransitionToSetup
- (SBStartupTransitionToSetup)initWithDestination:(unint64_t)a3 context:(id)a4;
- (SBStartupTransitionToSetup)initWithDestination:(unint64_t)a3 context:(id)a4 initialRestartState:(id)a5;
- (void)_activateSetupWithCompletion:(id)a3 underLock:(BOOL)a4 fromSnapshot:(BOOL)a5;
- (void)performTransitionWithCompletionBlock:(id)a3;
@end

@implementation SBStartupTransitionToSetup

- (SBStartupTransitionToSetup)initWithDestination:(unint64_t)a3 context:(id)a4 initialRestartState:(id)a5
{
  v9 = a5;
  v22.receiver = self;
  v22.super_class = SBStartupTransitionToSetup;
  v10 = [(SBBaseStartupTransition *)&v22 initWithDestination:a3 context:a4];
  if (v10)
  {
    v11 = [SBApp bannerManager];
    bannerManager = v10->_bannerManager;
    v10->_bannerManager = v11;

    v13 = +[SBLockScreenManager sharedInstance];
    lockScreenManager = v10->_lockScreenManager;
    v10->_lockScreenManager = v13;

    v15 = [SBApp authenticationController];
    authController = v10->_authController;
    v10->_authController = v15;

    v17 = +[SBApplicationController sharedInstance];
    appController = v10->_appController;
    v10->_appController = v17;

    v19 = +[SBSetupManager sharedInstance];
    setupManager = v10->_setupManager;
    v10->_setupManager = v19;

    objc_storeStrong(&v10->_initialRestartState, a5);
  }

  return v10;
}

- (SBStartupTransitionToSetup)initWithDestination:(unint64_t)a3 context:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBStartupTransitionToSetup.m" lineNumber:55 description:@"use initWithDestination:context:initialRestartState:"];

  return 0;
}

- (void)performTransitionWithCompletionBlock:(id)a3
{
  v27[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [(SBStartupTransitionToSetup *)a2 performTransitionWithCompletionBlock:?];
  }

  v6 = [(SBBaseStartupTransition *)self context];
  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 != 1)
  {
LABEL_7:
    [SBApp updateNativeOrientationWithOrientation:1 updateMirroredDisplays:1 animated:0 logMessage:@"Setting orientation to Portrait for boot to Setup."];
    [(SBSetupManager *)self->_setupManager setDeferringDeviceOrientationUpdates:1];
  }

LABEL_8:
  v9 = [v6 overlay];

  [(SBBannerManager *)self->_bannerManager setSuspended:1 forReason:@"com.apple.purplebuddy"];
  v10 = [v6 isLogin];
  v11 = [(SBInitialRestartState *)self->_initialRestartState hasPasscodeSet];
  v12 = [v6 fromUserPowerDown];
  v13 = [MEMORY[0x277D29520] sharedInstance];
  v25 = 0;
  v14 = [v13 needOwnershipWarning:&v25];
  v15 = v25;

  if ((v10 & 1) != 0 || v9 || !((v11 || (v12 & 1) == 0) | v14 & 1))
  {
    [(SBStartupTransitionToSetup *)self _activateSetupWithCompletion:v5 underLock:0 fromSnapshot:v9 != 0];
  }

  else
  {
    v16 = SBLogWorkspace();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_INFO, "Passcode locking if necessary, because we're transitioning at boot to Setup.", buf, 2u);
    }

    [(SBFUserAuthenticationController *)self->_authController revokeAuthenticationImmediatelyIfNecessaryForPublicReason:@"StartupTransitionToSetup"];
    lockScreenManager = self->_lockScreenManager;
    v26[0] = @"SBUILockOptionsLockAutomaticallyKey";
    v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v27[0] = v18;
    v26[1] = @"SBUILockOptionsUseScreenOffModeKey";
    v19 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v27[1] = v19;
    v26[2] = @"SBUILockOptionsForceLockKey";
    v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v27[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __67__SBStartupTransitionToSetup_performTransitionWithCompletionBlock___block_invoke;
    v22[3] = &unk_2783A9C98;
    v22[4] = self;
    v23 = v5;
    [(SBLockScreenManager *)lockScreenManager lockUIFromSource:16 withOptions:v21 completion:v22];
  }
}

- (void)_activateSetupWithCompletion:(id)a3 underLock:(BOOL)a4 fromSnapshot:(BOOL)a5
{
  v9 = a3;
  if (!v9)
  {
    [SBStartupTransitionToSetup _activateSetupWithCompletion:a2 underLock:self fromSnapshot:?];
  }

  v10 = [(SBBaseStartupTransition *)self context];
  v11 = [v10 isLogin];
  v12 = [(SBApplicationController *)self->_appController setupApplication];
  v13 = [(SBBaseStartupTransition *)self mainWorkspace];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__SBStartupTransitionToSetup__activateSetupWithCompletion_underLock_fromSnapshot___block_invoke;
  v17[3] = &unk_2783C4DB0;
  v21 = a4;
  v22 = v11;
  v18 = v12;
  v19 = v10;
  v23 = a5;
  v20 = v9;
  v14 = v9;
  v15 = v10;
  v16 = v12;
  [v13 requestTransitionWithOptions:0 builder:v17 validator:&__block_literal_global_453];
}

void __82__SBStartupTransitionToSetup__activateSetupWithCompletion_underLock_fromSnapshot___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:31];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__SBStartupTransitionToSetup__activateSetupWithCompletion_underLock_fromSnapshot___block_invoke_2;
  v9[3] = &unk_2783A9E00;
  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  [v3 modifyApplicationContext:v9];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__SBStartupTransitionToSetup__activateSetupWithCompletion_underLock_fromSnapshot___block_invoke_3;
  v4[3] = &unk_2783C4D88;
  v7 = *(a1 + 57);
  v5 = *(a1 + 40);
  v8 = *(a1 + 58);
  v6 = *(a1 + 48);
  [v3 setTransactionConfigurator:v4];
}

void __82__SBStartupTransitionToSetup__activateSetupWithCompletion_underLock_fromSnapshot___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[SBDeviceApplicationSceneEntity alloc] initWithApplicationForMainDisplay:*(a1 + 32)];
  if (*(a1 + 40) == 1)
  {
    [(SBWorkspaceEntity *)v5 setFlag:1 forActivationSetting:60];
    [(SBWorkspaceEntity *)v5 setFlag:1 forActivationSetting:1];
  }

  [v3 setInterfaceOrientation:{objc_msgSend(SBApp, "startupInterfaceOrientation")}];
  [v3 setEntity:v5 forLayoutRole:1];
  v4 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [v3 setEntity:v4 forLayoutRole:2];
}

void __82__SBStartupTransitionToSetup__activateSetupWithCompletion_underLock_fromSnapshot___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = [SBUIStartupToUserSetupAppZoomInAnimationController alloc];
    v5 = [v3 transitionRequest];
    v6 = [*(a1 + 32) overlay];
    v7 = [(SBUIStartupToUserSetupAppZoomInAnimationController *)v4 initWithTransitionContextProvider:v5 overlay:v6];
  }

  else
  {
    if (*(a1 + 49) != 1)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v8 = [SBUIStartupFromOverlayAnimationController alloc];
    v9 = [v3 transitionRequest];
    v10 = [*(a1 + 32) overlay];
    v5 = [(SBUIStartupFromOverlayAnimationController *)v8 initWithTransitionContextProvider:v9 overlay:v10];

    [(SBUIStartupFromOverlayAnimationController *)v5 setWaitsForAppActivation:1];
    [(SBUIStartupFromOverlayAnimationController *)v5 setAnimationSettings:0];
    v7 = 0;
  }

LABEL_7:
  [v3 setSuggestedAnimationController:v7];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__SBStartupTransitionToSetup__activateSetupWithCompletion_underLock_fromSnapshot___block_invoke_4;
  v11[3] = &unk_2783A9C70;
  v12 = *(a1 + 40);
  [v3 setCompletionBlock:v11];
}

- (void)performTransitionWithCompletionBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStartupTransitionToSetup.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
}

- (void)_activateSetupWithCompletion:(uint64_t)a1 underLock:(uint64_t)a2 fromSnapshot:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStartupTransitionToSetup.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
}

@end