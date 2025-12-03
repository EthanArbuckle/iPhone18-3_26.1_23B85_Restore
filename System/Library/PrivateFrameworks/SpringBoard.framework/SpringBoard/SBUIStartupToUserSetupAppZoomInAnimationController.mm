@interface SBUIStartupToUserSetupAppZoomInAnimationController
- (SBUIStartupToUserSetupAppZoomInAnimationController)initWithTransitionContextProvider:(id)provider overlay:(id)overlay;
- (id)_getTransitionWindow;
- (void)_cleanupAnimation;
- (void)_prepareAnimation;
- (void)_setHidden:(BOOL)hidden;
- (void)_startAnimation;
@end

@implementation SBUIStartupToUserSetupAppZoomInAnimationController

- (SBUIStartupToUserSetupAppZoomInAnimationController)initWithTransitionContextProvider:(id)provider overlay:(id)overlay
{
  providerCopy = provider;
  overlayCopy = overlay;
  if (!providerCopy)
  {
    [SBUIStartupToUserSetupAppZoomInAnimationController initWithTransitionContextProvider:a2 overlay:self];
  }

  v26.receiver = self;
  v26.super_class = SBUIStartupToUserSetupAppZoomInAnimationController;
  v9 = [(SBUIMainScreenAnimationController *)&v26 initWithTransitionContextProvider:providerCopy];
  if (v9)
  {
    v24 = overlayCopy;
    obj = overlay;
    applicationContext = [providerCopy applicationContext];
    v11 = [applicationContext applicationSceneEntityForLayoutRole:1];
    application = [v11 application];
    isSetup = [application isSetup];

    if ((isSetup & 1) == 0)
    {
      [SBUIStartupToUserSetupAppZoomInAnimationController initWithTransitionContextProvider:a2 overlay:v9];
    }

    v23 = a2;
    applicationContext2 = [providerCopy applicationContext];
    layoutState = [applicationContext2 layoutState];
    v16 = [layoutState elementWithRole:1];
    workspaceEntity = [v16 workspaceEntity];
    applicationSceneEntity = [workspaceEntity applicationSceneEntity];
    application2 = [applicationSceneEntity application];
    bundleIdentifier = [application2 bundleIdentifier];
    v21 = [bundleIdentifier isEqualToString:@"com.apple.purplebuddy"];

    if ((v21 & 1) == 0)
    {
      [SBUIStartupToUserSetupAppZoomInAnimationController initWithTransitionContextProvider:v23 overlay:v9];
    }

    objc_storeStrong(&v9->_persistentSnapshotOverlay, obj);
    overlayCopy = v24;
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

- (void)_setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  _getTransitionWindow = [(SBUIStartupToUserSetupAppZoomInAnimationController *)self _getTransitionWindow];
  [_getTransitionWindow setHidden:hiddenCopy];

  v6.receiver = self;
  v6.super_class = SBUIStartupToUserSetupAppZoomInAnimationController;
  [(SBUIAnimationController *)&v6 _setHidden:hiddenCopy];
}

- (void)_prepareAnimation
{
  containerView = [(SBUIAnimationController *)self containerView];
  transitionRequest = [(SBUIMainScreenAnimationController *)self transitionRequest];
  applicationContext = [transitionRequest applicationContext];
  layoutState = [applicationContext layoutState];

  v6 = [layoutState elementWithRole:1];
  workspaceEntity = [v6 workspaceEntity];

  deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];
  v9 = objc_opt_class();
  sceneHandle = [deviceApplicationSceneEntity sceneHandle];
  v11 = SBSafeCast(v9, sceneHandle);

  if (v11)
  {
    _getTransitionWindow = [(SBUIStartupToUserSetupAppZoomInAnimationController *)self _getTransitionWindow];
    v27 = layoutState;
    _windowInterfaceOrientation = [_getTransitionWindow _windowInterfaceOrientation];

    currentInterfaceOrientation = [v11 currentInterfaceOrientation];
    containerView2 = [(SBUIAnimationController *)self containerView];
    v16 = [SBDeviceApplicationSceneView alloc];
    displayConfiguration = [transitionRequest displayConfiguration];
    [displayConfiguration bounds];
    v20 = [(SBDeviceApplicationSceneView *)v16 initWithSceneHandle:v11 referenceSize:currentInterfaceOrientation contentOrientation:_windowInterfaceOrientation containerOrientation:self hostRequester:v18, v19];
    sceneView = self->_sceneView;
    self->_sceneView = v20;

    v22 = objc_alloc(MEMORY[0x277CF0D78]);
    [containerView2 bounds];
    v23 = [v22 initWithFrame:?];
    orientationWrapperView = self->_orientationWrapperView;
    self->_orientationWrapperView = v23;

    v25 = _windowInterfaceOrientation;
    layoutState = v27;
    [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContainerOrientation:v25];
    [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContentOrientation:currentInterfaceOrientation];
    [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView addContentView:self->_sceneView];
    [(SBSceneView *)self->_sceneView setDisplayMode:4 animationFactory:0 completion:0];
    [containerView2 addSubview:self->_orientationWrapperView];
  }

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [containerView setBackgroundColor:whiteColor];
}

- (void)_startAnimation
{
  animationSettings = [(SBUIStartupToUserSetupAppZoomInAnimationController *)self animationSettings];
  [(BKSDisplayRenderOverlay *)self->_persistentSnapshotOverlay dismissWithAnimation:animationSettings];
  [animationSettings duration];
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