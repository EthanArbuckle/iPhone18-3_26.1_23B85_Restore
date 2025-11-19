@interface SBUIStartupFromOverlayAnimationController
- (SBUIStartupFromOverlayAnimationController)initWithTransitionContextProvider:(id)a3 overlay:(id)a4;
- (void)_cleanupAnimation;
- (void)_prepareAnimation;
- (void)_startAnimation;
@end

@implementation SBUIStartupFromOverlayAnimationController

- (SBUIStartupFromOverlayAnimationController)initWithTransitionContextProvider:(id)a3 overlay:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SBUIStartupFromOverlayAnimationController initWithTransitionContextProvider:a2 overlay:self];
  }

  v12.receiver = self;
  v12.super_class = SBUIStartupFromOverlayAnimationController;
  v9 = [(SBUIMainScreenAnimationController *)&v12 initWithTransitionContextProvider:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_overlay, a4);
  }

  return v10;
}

- (void)_prepareAnimation
{
  v3 = [(SBUIAnimationController *)self toApplicationSceneEntities];
  v4 = [v3 count];

  if (v4)
  {
    v30 = [(SBUIMainScreenAnimationController *)self transitionRequest];
    v5 = [v30 applicationContext];
    v6 = [v5 layoutState];

    v7 = [v6 elementWithRole:1];
    v8 = [v7 workspaceEntity];

    v9 = [v8 deviceApplicationSceneEntity];
    v10 = objc_opt_class();
    v11 = [v9 sceneHandle];
    v12 = SBSafeCast(v10, v11);

    v13 = [v12 _windowScene];
    v14 = [v13 switcherController];
    v15 = [v14 windowManagementContext];
    v16 = [v15 isChamoisOrFlexibleWindowing];

    if (v12 && (v16 & 1) == 0)
    {
      v17 = [(SBUIMainScreenAnimationController *)self _getTransitionWindow];
      v18 = [v17 _windowInterfaceOrientation];

      v19 = [v12 currentInterfaceOrientation];
      v20 = [(SBUIAnimationController *)self containerView];
      v21 = [SBDeviceApplicationSceneView alloc];
      v22 = [v30 displayConfiguration];
      [v22 bounds];
      v25 = [(SBDeviceApplicationSceneView *)v21 initWithSceneHandle:v12 referenceSize:v19 contentOrientation:v18 containerOrientation:self hostRequester:v23, v24];
      sceneView = self->_sceneView;
      self->_sceneView = v25;

      v27 = objc_alloc(MEMORY[0x277CF0D78]);
      [v20 bounds];
      v28 = [v27 initWithFrame:?];
      orientationWrapperView = self->_orientationWrapperView;
      self->_orientationWrapperView = v28;

      [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContainerOrientation:v18];
      [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContentOrientation:v19];
      [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView addContentView:self->_sceneView];
      [(SBSceneView *)self->_sceneView setDisplayMode:4 animationFactory:0 completion:0];
      [v20 addSubview:self->_orientationWrapperView];
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
    v9 = [(SBTransaction *)self queue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__SBUIStartupFromOverlayAnimationController__startAnimation__block_invoke_2;
    v10[3] = &unk_2783A8C18;
    v10[4] = self;
    dispatch_async(v9, v10);
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