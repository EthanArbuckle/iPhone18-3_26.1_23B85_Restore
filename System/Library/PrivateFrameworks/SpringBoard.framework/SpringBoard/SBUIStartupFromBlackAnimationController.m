@interface SBUIStartupFromBlackAnimationController
- (SBUIStartupFromBlackAnimationController)initWithTransitionContextProvider:(id)a3;
- (id)_getTransitionWindow;
- (void)_cleanupAnimation;
- (void)_prepareAnimation;
- (void)_setHidden:(BOOL)a3;
- (void)_showBlackView;
- (void)_startAnimation;
@end

@implementation SBUIStartupFromBlackAnimationController

- (SBUIStartupFromBlackAnimationController)initWithTransitionContextProvider:(id)a3
{
  v12.receiver = self;
  v12.super_class = SBUIStartupFromBlackAnimationController;
  v3 = [(SBUIMainScreenAnimationController *)&v12 initWithTransitionContextProvider:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(SBUIStartupFromBlackAnimationController *)v3 _getTransitionWindow];
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    [v5 bounds];
    v7 = [v6 initWithFrame:?];
    internalContainerView = v4->_internalContainerView;
    v4->_internalContainerView = v7;

    if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleStartupFadeAnimation"))
    {
      v9 = [v5 rootViewController];
      v10 = [v9 view];
    }

    else
    {
      v10 = v5;
    }

    [v10 addSubview:v4->_internalContainerView];
    [(SBUIStartupFromBlackAnimationController *)v4 _showBlackView];
  }

  return v4;
}

- (id)_getTransitionWindow
{
  if (_getTransitionWindow___once_0 != -1)
  {
    [SBUIStartupFromBlackAnimationController _getTransitionWindow];
  }

  v3 = _getTransitionWindow___instance_0;

  return v3;
}

uint64_t __63__SBUIStartupFromBlackAnimationController__getTransitionWindow__block_invoke()
{
  v0 = [SBSecureWindow alloc];
  v1 = [SBApp windowSceneManager];
  v2 = [v1 activeDisplayWindowScene];
  v3 = [(SBWindow *)v0 initWithWindowScene:v2 role:@"SBTraitsParticipantRoleStartupFadeAnimation" debugName:@"FadeWindow"];
  v4 = _getTransitionWindow___instance_0;
  _getTransitionWindow___instance_0 = v3;

  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleStartupFadeAnimation"))
  {
    v5 = _getTransitionWindow___instance_0;
    v6 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    [v5 setRootViewController:v6];
  }

  [_getTransitionWindow___instance_0 setWindowLevel:*MEMORY[0x277D76A38] + 1.0];
  [_getTransitionWindow___instance_0 setHidden:0];
  v7 = _getTransitionWindow___instance_0;

  return [v7 setAlpha:1.0];
}

- (void)_setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBUIStartupFromBlackAnimationController *)self _getTransitionWindow];
  [v5 setHidden:v3];

  v6.receiver = self;
  v6.super_class = SBUIStartupFromBlackAnimationController;
  [(SBUIAnimationController *)&v6 _setHidden:v3];
}

- (void)_prepareAnimation
{
  v3 = [(SBUIAnimationController *)self toApplicationSceneEntities];
  v4 = [v3 count];

  if (v4)
  {
    v25 = [(SBUIMainScreenAnimationController *)self transitionRequest];
    v5 = [v25 applicationContext];
    v6 = [v5 layoutState];

    v7 = [v6 elementWithRole:1];
    v8 = [v7 workspaceEntity];

    v9 = [v8 deviceApplicationSceneEntity];
    v10 = objc_opt_class();
    v11 = [v9 sceneHandle];
    v12 = SBSafeCast(v10, v11);

    if (v12)
    {
      v13 = [(SBUIStartupFromBlackAnimationController *)self _getTransitionWindow];
      v14 = [v13 _windowInterfaceOrientation];

      v15 = [v12 currentInterfaceOrientation];
      v16 = [SBDeviceApplicationSceneView alloc];
      v17 = [v25 displayConfiguration];
      [v17 bounds];
      v20 = [(SBDeviceApplicationSceneView *)v16 initWithSceneHandle:v12 referenceSize:v14 contentOrientation:v15 containerOrientation:self hostRequester:v18, v19];
      sceneView = self->_sceneView;
      self->_sceneView = v20;

      v22 = objc_alloc(MEMORY[0x277CF0D78]);
      [(UIView *)self->_internalContainerView bounds];
      v23 = [v22 initWithFrame:?];
      orientationWrapperView = self->_orientationWrapperView;
      self->_orientationWrapperView = v23;

      [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContainerOrientation:v14];
      [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView setContentOrientation:v15];
      [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView addContentView:self->_sceneView];
      [(SBSceneView *)self->_sceneView setDisplayMode:4 animationFactory:0 completion:0];
      [(UIView *)self->_internalContainerView addSubview:self->_orientationWrapperView];
      [(UIView *)self->_internalContainerView sendSubviewToBack:self->_orientationWrapperView];
    }
  }
}

- (void)_startAnimation
{
  animationSettings = self->_animationSettings;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__SBUIStartupFromBlackAnimationController__startAnimation__block_invoke;
  v4[3] = &unk_2783A8C18;
  v4[4] = self;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__SBUIStartupFromBlackAnimationController__startAnimation__block_invoke_2;
  v3[3] = &unk_2783A9398;
  v3[4] = self;
  [MEMORY[0x277CF0D38] animateWithSettings:animationSettings actions:v4 completion:v3];
}

- (void)_cleanupAnimation
{
  [(BSUIOrientationTransformWrapperView *)self->_orientationWrapperView removeFromSuperview];
  orientationWrapperView = self->_orientationWrapperView;
  self->_orientationWrapperView = 0;

  [(SBDeviceApplicationSceneView *)self->_sceneView removeFromSuperview];
  [(SBDeviceApplicationSceneView *)self->_sceneView invalidate];
  sceneView = self->_sceneView;
  self->_sceneView = 0;

  [(UIView *)self->_internalContainerView removeFromSuperview];
  internalContainerView = self->_internalContainerView;
  self->_internalContainerView = 0;

  v6 = [(SBUIStartupFromBlackAnimationController *)self _getTransitionWindow];
  [v6 setHidden:1];

  v7.receiver = self;
  v7.super_class = SBUIStartupFromBlackAnimationController;
  [(SBUIMainScreenAnimationController *)&v7 _cleanupAnimation];
}

- (void)_showBlackView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [(UIView *)self->_internalContainerView bounds];
  v4 = [v3 initWithFrame:?];
  blackView = self->_blackView;
  self->_blackView = v4;

  v6 = self->_blackView;
  v7 = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v6 setBackgroundColor:v7];

  [(UIView *)self->_blackView setAlpha:1.0];
  internalContainerView = self->_internalContainerView;
  v9 = self->_blackView;

  [(UIView *)internalContainerView addSubview:v9];
}

@end