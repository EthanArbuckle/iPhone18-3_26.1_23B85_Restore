@interface SBUIStartupToUserSetupAppZoomInAnimationController
- (SBUIStartupToUserSetupAppZoomInAnimationController)initWithTransitionContextProvider:(id)a3 overlay:(id)a4;
- (id)_getTransitionWindow;
- (void)_cleanupAnimation;
- (void)_prepareAnimation;
- (void)_setHidden:(BOOL)a3;
- (void)_startAnimation;
@end

@implementation SBUIStartupToUserSetupAppZoomInAnimationController

- (SBUIStartupToUserSetupAppZoomInAnimationController)initWithTransitionContextProvider:(id)a3 overlay:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SBUIStartupToUserSetupAppZoomInAnimationController initWithTransitionContextProvider:a2 overlay:self];
  }

  v26.receiver = self;
  v26.super_class = SBUIStartupToUserSetupAppZoomInAnimationController;
  v9 = [(SBUIMainScreenAnimationController *)&v26 initWithTransitionContextProvider:v7];
  if (v9)
  {
    v24 = v8;
    obj = a4;
    v10 = [v7 applicationContext];
    v11 = [v10 applicationSceneEntityForLayoutRole:1];
    v12 = [v11 application];
    v13 = [v12 isSetup];

    if ((v13 & 1) == 0)
    {
      [SBUIStartupToUserSetupAppZoomInAnimationController initWithTransitionContextProvider:a2 overlay:v9];
    }

    v23 = a2;
    v14 = [v7 applicationContext];
    v15 = [v14 layoutState];
    v16 = [v15 elementWithRole:1];
    v17 = [v16 workspaceEntity];
    v18 = [v17 applicationSceneEntity];
    v19 = [v18 application];
    v20 = [v19 bundleIdentifier];
    v21 = [v20 isEqualToString:@"com.apple.purplebuddy"];

    if ((v21 & 1) == 0)
    {
      [SBUIStartupToUserSetupAppZoomInAnimationController initWithTransitionContextProvider:v23 overlay:v9];
    }

    objc_storeStrong(&v9->_persistentSnapshotOverlay, obj);
    v8 = v24;
  }

  return v9;
}

- (id)_getTransitionWindow
{
  if (_getTransitionWindow___once != -1)
  {
    [SBUIStartupToUserSetupAppZoomInAnimationController _getTransitionWindow];
  }

  v3 = _getTransitionWindow___instance;

  return v3;
}

uint64_t __74__SBUIStartupToUserSetupAppZoomInAnimationController__getTransitionWindow__block_invoke()
{
  v0 = [SBSecureWindow alloc];
  v1 = [SBApp windowSceneManager];
  v2 = [v1 activeDisplayWindowScene];
  v3 = [(SBWindow *)v0 initWithWindowScene:v2 role:@"SBTraitsParticipantRoleLoginBootToSetupAppZoomInAnimation" debugName:@"LoginBootToSetupAppZoomIn"];
  v4 = _getTransitionWindow___instance;
  _getTransitionWindow___instance = v3;

  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleLoginBootToSetupAppZoomInAnimation"))
  {
    v5 = _getTransitionWindow___instance;
    v6 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    [v5 setRootViewController:v6];
  }

  v7 = _getTransitionWindow___instance;
  v8 = *MEMORY[0x277D76EE8] + 15.0;

  return [v7 setWindowLevel:v8];
}

- (void)_setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBUIStartupToUserSetupAppZoomInAnimationController *)self _getTransitionWindow];
  [v5 setHidden:v3];

  v6.receiver = self;
  v6.super_class = SBUIStartupToUserSetupAppZoomInAnimationController;
  [(SBUIAnimationController *)&v6 _setHidden:v3];
}

- (void)_prepareAnimation
{
  v28 = [(SBUIAnimationController *)self containerView];
  v3 = [(SBUIMainScreenAnimationController *)self transitionRequest];
  v4 = [v3 applicationContext];
  v5 = [v4 layoutState];

  v6 = [v5 elementWithRole:1];
  v7 = [v6 workspaceEntity];

  v8 = [v7 deviceApplicationSceneEntity];
  v9 = objc_opt_class();
  v10 = [v8 sceneHandle];
  v11 = SBSafeCast(v9, v10);

  if (v11)
  {
    v12 = [(SBUIStartupToUserSetupAppZoomInAnimationController *)self _getTransitionWindow];
    v27 = v5;
    v13 = [v12 _windowInterfaceOrientation];

    v14 = [v11 currentInterfaceOrientation];
    v15 = [(SBUIAnimationController *)self containerView];
    v16 = [SBDeviceApplicationSceneView alloc];
    v17 = [v3 displayConfiguration];
    [v17 bounds];
    v20 = [(SBDeviceApplicationSceneView *)v16 initWithSceneHandle:v11 referenceSize:v14 contentOrientation:v13 containerOrientation:self hostRequester:v18, v19];
    sceneView = self->_sceneView;
    self->_sceneView = v20;

    v22 = objc_alloc(MEMORY[0x277CF0D78]);
    [v15 bounds];
    v23 = [v22 initWithFrame:?];
    orientationWrapperView = self->_orientationWrapperView;
    self->_orientationWrapperView = v23;

    v25 = v13;
    v5 = v27;
    [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContainerOrientation:v25];
    [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContentOrientation:v14];
    [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView addContentView:self->_sceneView];
    [(SBSceneView *)self->_sceneView setDisplayMode:4 animationFactory:0 completion:0];
    [v15 addSubview:self->_orientationWrapperView];
  }

  v26 = [MEMORY[0x277D75348] whiteColor];
  [v28 setBackgroundColor:v26];
}

- (void)_startAnimation
{
  v3 = [(SBUIStartupToUserSetupAppZoomInAnimationController *)self animationSettings];
  [(BKSDisplayRenderOverlay *)self->_persistentSnapshotOverlay dismissWithAnimation:v3];
  [v3 duration];
  v5 = dispatch_time(0, ((v4 + 0.1) * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SBUIStartupToUserSetupAppZoomInAnimationController__startAnimation__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (void)_cleanupAnimation
{
  [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView removeFromSuperview];
  [(SBSceneView *)self->_sceneView removeFromSuperview];
  [(SBSceneView *)self->_sceneView invalidate];
  v3.receiver = self;
  v3.super_class = SBUIStartupToUserSetupAppZoomInAnimationController;
  [(SBUIMainScreenAnimationController *)&v3 _cleanupAnimation];
}

- (void)initWithTransitionContextProvider:(uint64_t)a1 overlay:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIStartupToUserSetupAppZoomInAnimationController.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"transitionRequest"}];
}

- (void)initWithTransitionContextProvider:(uint64_t)a1 overlay:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIStartupToUserSetupAppZoomInAnimationController.m" lineNumber:55 description:@"This transition can only run with Buddy/Setup."];
}

- (void)initWithTransitionContextProvider:(uint64_t)a1 overlay:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIStartupToUserSetupAppZoomInAnimationController.m" lineNumber:56 description:@"Buddy's role must be primary"];
}

@end