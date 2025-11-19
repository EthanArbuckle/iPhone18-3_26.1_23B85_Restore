@interface SBUIStartupToLoginWindowAnimationController
- (SBUIStartupToLoginWindowAnimationController)initWithTransitionContextProvider:(id)a3 overlay:(id)a4;
- (id)_getTransitionWindow;
- (void)_cleanupAnimation;
- (void)_setHidden:(BOOL)a3;
- (void)_startAnimation;
@end

@implementation SBUIStartupToLoginWindowAnimationController

- (SBUIStartupToLoginWindowAnimationController)initWithTransitionContextProvider:(id)a3 overlay:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SBUIStartupToLoginWindowAnimationController initWithTransitionContextProvider:a2 overlay:self];
  }

  v17.receiver = self;
  v17.super_class = SBUIStartupToLoginWindowAnimationController;
  v9 = [(SBUIMainScreenAnimationController *)&v17 initWithTransitionContextProvider:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistentSnapshotOverlay, a4);
    v11 = objc_alloc_init(MEMORY[0x277CF0D08]);
    waitForLoginAppToFinishLaunchingTransaction = v10->_waitForLoginAppToFinishLaunchingTransaction;
    v10->_waitForLoginAppToFinishLaunchingTransaction = v11;

    [(BSTransaction *)v10->_waitForLoginAppToFinishLaunchingTransaction addMilestone:@"WaitForLoginWindowToFinishLaunchingMilestone"];
    [(SBUIAnimationController *)v10 delayAnimationUntilTransactionFinishes:v10->_waitForLoginAppToFinishLaunchingTransaction];
    [(BSTransaction *)v10->_waitForLoginAppToFinishLaunchingTransaction begin];
    v13 = +[SBLockScreenManager sharedInstance];
    v14 = [v13 lockScreenEnvironment];
    v15 = [v14 rootViewController];

    [v15 addLoginObserver:v10];
  }

  return v10;
}

- (id)_getTransitionWindow
{
  if (_getTransitionWindow___once_1 != -1)
  {
    [SBUIStartupToLoginWindowAnimationController _getTransitionWindow];
  }

  v3 = _getTransitionWindow___instance_1;

  return v3;
}

uint64_t __67__SBUIStartupToLoginWindowAnimationController__getTransitionWindow__block_invoke()
{
  v0 = [SBSecureWindow alloc];
  v1 = [SBApp windowSceneManager];
  v2 = [v1 activeDisplayWindowScene];
  v3 = [(SBWindow *)v0 initWithWindowScene:v2 role:@"SBTraitsParticipantRoleLoginBootToSetupAppZoomInAnimation" debugName:@"BootToLoginWindow"];
  v4 = _getTransitionWindow___instance_1;
  _getTransitionWindow___instance_1 = v3;

  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleLoginBootToSetupAppZoomInAnimation"))
  {
    v5 = _getTransitionWindow___instance_1;
    v6 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    [v5 setRootViewController:v6];
  }

  [_getTransitionWindow___instance_1 setWindowLevel:*MEMORY[0x277D76EE8] + 15.0];
  v7 = _getTransitionWindow___instance_1;

  return [v7 setUserInteractionEnabled:0];
}

- (void)_setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBUIStartupToLoginWindowAnimationController *)self _getTransitionWindow];
  [v5 setHidden:v3];

  v6.receiver = self;
  v6.super_class = SBUIStartupToLoginWindowAnimationController;
  [(SBUIAnimationController *)&v6 _setHidden:v3];
}

- (void)_startAnimation
{
  v3 = [(SBUIAnimationController *)self containerView];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v4];

  persistentSnapshotOverlay = self->_persistentSnapshotOverlay;
  v6 = [(SBUIStartupToLoginWindowAnimationController *)self animationSettings];
  [(BKSDisplayRenderOverlay *)persistentSnapshotOverlay dismissWithAnimation:v6];

  v7 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SBUIStartupToLoginWindowAnimationController__startAnimation__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
}

uint64_t __62__SBUIStartupToLoginWindowAnimationController__startAnimation__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__SBUIStartupToLoginWindowAnimationController__startAnimation__block_invoke_2;
  v3[3] = &unk_2783A8C18;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __62__SBUIStartupToLoginWindowAnimationController__startAnimation__block_invoke_3;
  v2[3] = &unk_2783A9398;
  v2[4] = v4;
  return [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:0.5];
}

void __62__SBUIStartupToLoginWindowAnimationController__startAnimation__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 setBackgroundColor:0];
}

- (void)_cleanupAnimation
{
  v5 = +[SBLockScreenManager sharedInstance];
  v3 = [v5 lockScreenEnvironment];
  v4 = [v3 rootViewController];

  [v4 removeLoginObserver:self];
}

- (void)initWithTransitionContextProvider:(uint64_t)a1 overlay:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIStartupToLoginWindowAnimationController.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"transitionRequest"}];
}

@end