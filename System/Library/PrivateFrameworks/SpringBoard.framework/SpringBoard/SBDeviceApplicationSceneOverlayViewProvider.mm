@interface SBDeviceApplicationSceneOverlayViewProvider
- (BOOL)_mightNeedCounterRotationForBasicContentWrapper;
- (SBDeviceApplicationSceneOverlayViewController)overlayViewController;
- (SBDeviceApplicationSceneOverlayViewProvider)initWithSceneHandle:(id)a3 delegate:(id)a4;
- (SBDeviceApplicationSceneOverlayViewProviderDelegate)delegate;
- (id)initialTraitsParticipantForOverlayContainer;
- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)a3;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activateIfPossible;
- (void)_deactivateIfPossible;
- (void)_noteSupportedInterfaceOrientationsChanged;
- (void)containerDidUpdateTraitsParticipant:(id)a3;
- (void)dealloc;
- (void)hideContentWithAnimation:(BOOL)a3 completionHandler:(id)a4;
- (void)showContentWithAnimation:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation SBDeviceApplicationSceneOverlayViewProvider

- (SBDeviceApplicationSceneOverlayViewProvider)initWithSceneHandle:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBDeviceApplicationSceneOverlayViewProvider;
  v9 = [(SBDeviceApplicationSceneOverlayViewProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneHandle, a3);
    objc_storeWeak(&v10->_delegate, v8);
    [(SBDeviceApplicationSceneOverlayViewProvider *)v10 _activateIfPossible];
  }

  return v10;
}

- (void)dealloc
{
  [(SBDeviceApplicationSceneOverlayViewProvider *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBDeviceApplicationSceneOverlayViewProvider;
  [(SBDeviceApplicationSceneOverlayViewProvider *)&v3 dealloc];
}

- (SBDeviceApplicationSceneOverlayViewController)overlayViewController
{
  orientationWrapperViewController = self->_orientationWrapperViewController;
  if (!orientationWrapperViewController)
  {
    orientationWrapperViewController = self->_basicWrapperViewController;
  }

  return orientationWrapperViewController;
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
  v3 = [v2 preferredStatusBarStyle];

  return v3;
}

- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)a3
{
  if ([(SBDeviceApplicationSceneOverlayViewProvider *)self shouldFollowSceneOrientation]|| ((1 << a3) & ~[(SBDeviceApplicationSceneOverlayViewProvider *)self supportedInterfaceOrientations]) == 0)
  {
    return a3;
  }

  orientationWrapperViewController = self->_orientationWrapperViewController;
  if (orientationWrapperViewController)
  {

    return [(SBIsolatedSceneOrientationFollowingWrapperViewController *)orientationWrapperViewController currentInterfaceOrientation];
  }

  else
  {
    v7 = [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self->_basicWrapperViewController view];
    v8 = [v7 window];
    v9 = [v8 _windowInterfaceOrientation];

    return v9;
  }
}

- (void)containerDidUpdateTraitsParticipant:(id)a3
{
  orientationWrapperViewController = self->_orientationWrapperViewController;
  v5 = a3;
  [(SBIsolatedSceneOrientationFollowingWrapperViewController *)orientationWrapperViewController containerDidUpdateTraitsParticipant:v5];
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self->_basicWrapperViewController containerDidUpdateTraitsParticipant:v5];
}

- (void)showContentWithAnimation:(BOOL)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)hideContentWithAnimation:(BOOL)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  v2 = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
  v3 = [v2 preferredInterfaceOrientationForPresentation];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
  v3 = [v2 supportedInterfaceOrientations];

  return v3;
}

- (id)initialTraitsParticipantForOverlayContainer
{
  v3 = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v4 = [v3 initialTraitsParticipantForOverlayViewProvider:self];

  return v4;
}

- (void)_activateIfPossible
{
  v13 = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  if (-[SBDeviceApplicationSceneOverlayViewProvider contentWantsSimplifiedOrientationBehavior](self, "contentWantsSimplifiedOrientationBehavior") || ([v13 overlayViewProviderIsHostedInNonrotatingWindow:self] & 1) == 0 && -[SBDeviceApplicationSceneOverlayViewProvider shouldFollowSceneOrientation](self, "shouldFollowSceneOrientation"))
  {
    if ([(SBDeviceApplicationSceneOverlayViewProvider *)self _mightNeedCounterRotationForBasicContentWrapper])
    {
      v3 = [(SBDeviceApplicationSceneOverlayViewProvider *)self _contentSupportedInterfaceOrientationsRequireContainerCounterRotation];
      self->_needsCounterRotationReevaluationForFirstSupportedOrientationsUpdate = 1;
    }

    else
    {
      v3 = 0;
    }

    v10 = [SBDeviceApplicationSceneOverlayBasicWrapperViewController alloc];
    v5 = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
    v11 = [v13 overlayViewProviderRendersWhileLocked:self];
    v6 = [v13 initialTraitsParticipantForOverlayViewProvider:self];
    v12 = [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)v10 initWithContentViewController:v5 rendersWhileLocked:v11 needsCounterRotation:v3 containerTraitsParticipant:v6];
    basicWrapperViewController = self->_basicWrapperViewController;
    self->_basicWrapperViewController = v12;
  }

  else
  {
    v4 = [SBIsolatedSceneOrientationFollowingWrapperViewController alloc];
    v5 = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
    v6 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    basicWrapperViewController = [v13 windowSceneForOverlayViewProvider:self];
    v8 = -[SBIsolatedSceneOrientationFollowingWrapperViewController initWithContentViewController:sceneHandle:windowScene:orientationDelegate:rendersWhileLocked:](v4, "initWithContentViewController:sceneHandle:windowScene:orientationDelegate:rendersWhileLocked:", v5, v6, basicWrapperViewController, self, [v13 overlayViewProviderRendersWhileLocked:self]);
    orientationWrapperViewController = self->_orientationWrapperViewController;
    self->_orientationWrapperViewController = v8;
  }

  [v13 activateOverlayForViewProvider:self];
}

- (void)_deactivateIfPossible
{
  v3 = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v8 = v3;
  if (v3)
  {
    [v3 deactivateOverlayForViewProvider:self];
  }

  else
  {
    v4 = [(SBDeviceApplicationSceneOverlayViewProvider *)self overlayViewController];
    [v4 beginAppearanceTransition:0 animated:0];
    [v4 willMoveToParentViewController:0];
    v5 = [v4 viewIfLoaded];
    [v5 removeFromSuperview];

    [v4 removeFromParentViewController];
    [v4 endAppearanceTransition];
  }

  orientationWrapperViewController = self->_orientationWrapperViewController;
  self->_orientationWrapperViewController = 0;

  basicWrapperViewController = self->_basicWrapperViewController;
  self->_basicWrapperViewController = 0;
}

- (BOOL)_mightNeedCounterRotationForBasicContentWrapper
{
  v3 = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  v4 = [v3 application];
  if (([v4 classicAppPhoneAppRunningOnPad] & 1) != 0 || !-[SBDeviceApplicationSceneOverlayViewProvider contentWantsSimplifiedOrientationBehavior](self, "contentWantsSimplifiedOrientationBehavior"))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = ![(SBDeviceApplicationSceneOverlayViewProvider *)self shouldFollowSceneOrientation];
  }

  return v5;
}

- (void)_noteSupportedInterfaceOrientationsChanged
{
  if (self->_needsCounterRotationReevaluationForFirstSupportedOrientationsUpdate && self->_basicWrapperViewController && [(SBDeviceApplicationSceneOverlayViewProvider *)self _mightNeedCounterRotationForBasicContentWrapper])
  {
    self->_needsCounterRotationReevaluationForFirstSupportedOrientationsUpdate = 0;
    v3 = [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self->_basicWrapperViewController overlayView];
    [v3 setContentNeedsCounterRotation:{-[SBDeviceApplicationSceneOverlayViewProvider _contentSupportedInterfaceOrientationsRequireContainerCounterRotation](self, "_contentSupportedInterfaceOrientationsRequireContainerCounterRotation")}];
  }
}

- (SBDeviceApplicationSceneOverlayViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end