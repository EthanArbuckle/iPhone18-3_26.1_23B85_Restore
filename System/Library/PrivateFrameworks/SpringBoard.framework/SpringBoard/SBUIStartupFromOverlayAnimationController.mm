@interface SBUIStartupFromOverlayAnimationController
- (SBUIStartupFromOverlayAnimationController)initWithTransitionContextProvider:(id)provider overlay:(id)overlay;
- (void)_cleanupAnimation;
- (void)_prepareAnimation;
- (void)_startAnimation;
@end

@implementation SBUIStartupFromOverlayAnimationController

- (SBUIStartupFromOverlayAnimationController)initWithTransitionContextProvider:(id)provider overlay:(id)overlay
{
  providerCopy = provider;
  overlayCopy = overlay;
  if (!providerCopy)
  {
    [SBUIStartupFromOverlayAnimationController initWithTransitionContextProvider:a2 overlay:self];
  }

  v12.receiver = self;
  v12.super_class = SBUIStartupFromOverlayAnimationController;
  v9 = [(SBUIMainScreenAnimationController *)&v12 initWithTransitionContextProvider:providerCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_overlay, overlay);
  }

  return v10;
}

- (void)_prepareAnimation
{
  toApplicationSceneEntities = [(SBUIAnimationController *)self toApplicationSceneEntities];
  v4 = [toApplicationSceneEntities count];

  if (v4)
  {
    transitionRequest = [(SBUIMainScreenAnimationController *)self transitionRequest];
    applicationContext = [transitionRequest applicationContext];
    layoutState = [applicationContext layoutState];

    v7 = [layoutState elementWithRole:1];
    workspaceEntity = [v7 workspaceEntity];

    deviceApplicationSceneEntity = [workspaceEntity deviceApplicationSceneEntity];
    v10 = objc_opt_class();
    sceneHandle = [deviceApplicationSceneEntity sceneHandle];
    v12 = SBSafeCast(v10, sceneHandle);

    _windowScene = [v12 _windowScene];
    switcherController = [_windowScene switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

    if (v12 && (isChamoisOrFlexibleWindowing & 1) == 0)
    {
      _getTransitionWindow = [(SBUIMainScreenAnimationController *)self _getTransitionWindow];
      _windowInterfaceOrientation = [_getTransitionWindow _windowInterfaceOrientation];

      currentInterfaceOrientation = [v12 currentInterfaceOrientation];
      containerView = [(SBUIAnimationController *)self containerView];
      v21 = [SBDeviceApplicationSceneView alloc];
      displayConfiguration = [transitionRequest displayConfiguration];
      [displayConfiguration bounds];
      v25 = [(SBDeviceApplicationSceneView *)v21 initWithSceneHandle:v12 referenceSize:currentInterfaceOrientation contentOrientation:_windowInterfaceOrientation containerOrientation:self hostRequester:v23, v24];
      sceneView = self->_sceneView;
      self->_sceneView = v25;

      v27 = objc_alloc(MEMORY[0x277CF0D78]);
      [containerView bounds];
      v28 = [v27 initWithFrame:?];
      orientationWrapperView = self->_orientationWrapperView;
      self->_orientationWrapperView = v28;

      [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContainerOrientation:_windowInterfaceOrientation];
      [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContentOrientation:currentInterfaceOrientation];
      [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView addContentView:self->_sceneView];
      [(SBSceneView *)self->_sceneView setDisplayMode:4 animationFactory:0 completion:0];
      [containerView addSubview:self->_orientationWrapperView];
    }
  }
}

- (void)_startAnimation
{
  animationSettings = self->_animationSettings;
  overlay = self->_overlay;
  if (animationSettings)
  {
    [(BKSDisplayRenderOverlay *)overlay dismissWithAnimation:?];
    [(BSAnimationSettings *)self->_animationSettings duration];
    v6 = v5;
    [(BSAnimationSettings *)self->_animationSettings delay];
    v8 = dispatch_time(0, ((v6 + v7) * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SBUIStartupFromOverlayAnimationController__startAnimation__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_after(v8, MEMORY[0x277D85CD0], block);
  }

  else
  {
    [(BKSDisplayRenderOverlay *)overlay dismiss];
    queue = [(SBTransaction *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__SBUIStartupFromOverlayAnimationController__startAnimation__block_invoke_2;
    v10[3] = &unk_2783A8C18;
    v10[4] = self;
    dispatch_async(queue, v10);
  }
}

- (void)_cleanupAnimation
{
  [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView removeFromSuperview];
  [(SBSceneView *)self->_sceneView removeFromSuperview];
  [(SBSceneView *)self->_sceneView invalidate];
  v3.receiver = self;
  v3.super_class = SBUIStartupFromOverlayAnimationController;
  [(SBUIMainScreenAnimationController *)&v3 _cleanupAnimation];
}

- (void)initWithTransitionContextProvider:(uint64_t)a1 overlay:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIStartupFromOverlayAnimationController.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"transitionRequest"}];
}

@end