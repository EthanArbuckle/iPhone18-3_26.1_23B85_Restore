@interface SBDeviceApplicationSceneOverlayViewProvider
- (BOOL)_mightNeedCounterRotationForBasicContentWrapper;
- (SBDeviceApplicationSceneOverlayViewController)overlayViewController;
- (SBDeviceApplicationSceneOverlayViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate;
- (SBDeviceApplicationSceneOverlayViewProviderDelegate)delegate;
- (id)initialTraitsParticipantForOverlayContainer;
- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)orientation;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_activateIfPossible;
- (void)_deactivateIfPossible;
- (void)_noteSupportedInterfaceOrientationsChanged;
- (void)containerDidUpdateTraitsParticipant:(id)participant;
- (void)dealloc;
- (void)hideContentWithAnimation:(BOOL)animation completionHandler:(id)handler;
- (void)showContentWithAnimation:(BOOL)animation completionHandler:(id)handler;
@end

@implementation SBDeviceApplicationSceneOverlayViewProvider

- (SBDeviceApplicationSceneOverlayViewProvider)initWithSceneHandle:(id)handle delegate:(id)delegate
{
  handleCopy = handle;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SBDeviceApplicationSceneOverlayViewProvider;
  v9 = [(SBDeviceApplicationSceneOverlayViewProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneHandle, handle);
    objc_storeWeak(&v10->_delegate, delegateCopy);
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
  _realOverlayViewController = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
  preferredStatusBarStyle = [_realOverlayViewController preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (int64_t)bestHomeAffordanceOrientationForOrientation:(int64_t)orientation
{
  if ([(SBDeviceApplicationSceneOverlayViewProvider *)self shouldFollowSceneOrientation]|| ((1 << orientation) & ~[(SBDeviceApplicationSceneOverlayViewProvider *)self supportedInterfaceOrientations]) == 0)
  {
    return orientation;
  }

  orientationWrapperViewController = self->_orientationWrapperViewController;
  if (orientationWrapperViewController)
  {

    return [(SBIsolatedSceneOrientationFollowingWrapperViewController *)orientationWrapperViewController currentInterfaceOrientation];
  }

  else
  {
    view = [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self->_basicWrapperViewController view];
    window = [view window];
    _windowInterfaceOrientation = [window _windowInterfaceOrientation];

    return _windowInterfaceOrientation;
  }
}

- (void)containerDidUpdateTraitsParticipant:(id)participant
{
  orientationWrapperViewController = self->_orientationWrapperViewController;
  participantCopy = participant;
  [(SBIsolatedSceneOrientationFollowingWrapperViewController *)orientationWrapperViewController containerDidUpdateTraitsParticipant:participantCopy];
  [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self->_basicWrapperViewController containerDidUpdateTraitsParticipant:participantCopy];
}

- (void)showContentWithAnimation:(BOOL)animation completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)hideContentWithAnimation:(BOOL)animation completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  _realOverlayViewController = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
  preferredInterfaceOrientationForPresentation = [_realOverlayViewController preferredInterfaceOrientationForPresentation];

  return preferredInterfaceOrientationForPresentation;
}

- (unint64_t)supportedInterfaceOrientations
{
  _realOverlayViewController = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
  supportedInterfaceOrientations = [_realOverlayViewController supportedInterfaceOrientations];

  return supportedInterfaceOrientations;
}

- (id)initialTraitsParticipantForOverlayContainer
{
  delegate = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v4 = [delegate initialTraitsParticipantForOverlayViewProvider:self];

  return v4;
}

- (void)_activateIfPossible
{
  delegate = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  if (-[SBDeviceApplicationSceneOverlayViewProvider contentWantsSimplifiedOrientationBehavior](self, "contentWantsSimplifiedOrientationBehavior") || ([delegate overlayViewProviderIsHostedInNonrotatingWindow:self] & 1) == 0 && -[SBDeviceApplicationSceneOverlayViewProvider shouldFollowSceneOrientation](self, "shouldFollowSceneOrientation"))
  {
    if ([(SBDeviceApplicationSceneOverlayViewProvider *)self _mightNeedCounterRotationForBasicContentWrapper])
    {
      _contentSupportedInterfaceOrientationsRequireContainerCounterRotation = [(SBDeviceApplicationSceneOverlayViewProvider *)self _contentSupportedInterfaceOrientationsRequireContainerCounterRotation];
      self->_needsCounterRotationReevaluationForFirstSupportedOrientationsUpdate = 1;
    }

    else
    {
      _contentSupportedInterfaceOrientationsRequireContainerCounterRotation = 0;
    }

    v10 = [SBDeviceApplicationSceneOverlayBasicWrapperViewController alloc];
    _realOverlayViewController = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
    v11 = [delegate overlayViewProviderRendersWhileLocked:self];
    sceneHandle = [delegate initialTraitsParticipantForOverlayViewProvider:self];
    v12 = [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)v10 initWithContentViewController:_realOverlayViewController rendersWhileLocked:v11 needsCounterRotation:_contentSupportedInterfaceOrientationsRequireContainerCounterRotation containerTraitsParticipant:sceneHandle];
    basicWrapperViewController = self->_basicWrapperViewController;
    self->_basicWrapperViewController = v12;
  }

  else
  {
    v4 = [SBIsolatedSceneOrientationFollowingWrapperViewController alloc];
    _realOverlayViewController = [(SBDeviceApplicationSceneOverlayViewProvider *)self _realOverlayViewController];
    sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
    basicWrapperViewController = [delegate windowSceneForOverlayViewProvider:self];
    v8 = -[SBIsolatedSceneOrientationFollowingWrapperViewController initWithContentViewController:sceneHandle:windowScene:orientationDelegate:rendersWhileLocked:](v4, "initWithContentViewController:sceneHandle:windowScene:orientationDelegate:rendersWhileLocked:", _realOverlayViewController, sceneHandle, basicWrapperViewController, self, [delegate overlayViewProviderRendersWhileLocked:self]);
    orientationWrapperViewController = self->_orientationWrapperViewController;
    self->_orientationWrapperViewController = v8;
  }

  [delegate activateOverlayForViewProvider:self];
}

- (void)_deactivateIfPossible
{
  delegate = [(SBDeviceApplicationSceneOverlayViewProvider *)self delegate];
  v8 = delegate;
  if (delegate)
  {
    [delegate deactivateOverlayForViewProvider:self];
  }

  else
  {
    overlayViewController = [(SBDeviceApplicationSceneOverlayViewProvider *)self overlayViewController];
    [overlayViewController beginAppearanceTransition:0 animated:0];
    [overlayViewController willMoveToParentViewController:0];
    viewIfLoaded = [overlayViewController viewIfLoaded];
    [viewIfLoaded removeFromSuperview];

    [overlayViewController removeFromParentViewController];
    [overlayViewController endAppearanceTransition];
  }

  orientationWrapperViewController = self->_orientationWrapperViewController;
  self->_orientationWrapperViewController = 0;

  basicWrapperViewController = self->_basicWrapperViewController;
  self->_basicWrapperViewController = 0;
}

- (BOOL)_mightNeedCounterRotationForBasicContentWrapper
{
  sceneHandle = [(SBDeviceApplicationSceneOverlayViewProvider *)self sceneHandle];
  application = [sceneHandle application];
  if (([application classicAppPhoneAppRunningOnPad] & 1) != 0 || !-[SBDeviceApplicationSceneOverlayViewProvider contentWantsSimplifiedOrientationBehavior](self, "contentWantsSimplifiedOrientationBehavior"))
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
    overlayView = [(SBDeviceApplicationSceneOverlayBasicWrapperViewController *)self->_basicWrapperViewController overlayView];
    [overlayView setContentNeedsCounterRotation:{-[SBDeviceApplicationSceneOverlayViewProvider _contentSupportedInterfaceOrientationsRequireContainerCounterRotation](self, "_contentSupportedInterfaceOrientationsRequireContainerCounterRotation")}];
  }
}

- (SBDeviceApplicationSceneOverlayViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end