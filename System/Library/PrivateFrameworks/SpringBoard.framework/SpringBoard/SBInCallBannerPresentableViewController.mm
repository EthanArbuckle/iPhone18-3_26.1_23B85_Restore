@interface SBInCallBannerPresentableViewController
- (BOOL)handleHeadsetButtonPress:(BOOL)press;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)isCallConnected;
- (BOOL)isTouchOutsideDismissalEnabled;
- (BOOL)shouldDismissForReason:(id)reason;
- (CGPoint)translationInCoordinateSpace:(id)space;
- (CGPoint)velocityInCoordinateSpace:(id)space;
- (CGPoint)visualTranslationInCoordinateSpace:(id)space;
- (CGSize)preferredBannerContentSize;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)result containerSize:(CGSize)size;
- (NSString)requesterIdentifier;
- (SBInCallBannerPresentableViewController)initWithSceneHandle:(id)handle;
- (SBInCallBannerPresentableViewControllerDelegate)delegate;
- (id)_inCallSceneClientSettingsDiffInspector;
- (void)_callConnectedStatusChanged;
- (void)_handlePanGestureProxyAction:(id)action;
- (void)_handleTapAction:(id)action;
- (void)dealloc;
- (void)draggingDidBeginWithGestureProxy:(id)proxy;
- (void)invalidate;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SBInCallBannerPresentableViewController

- (SBInCallBannerPresentableViewController)initWithSceneHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = SBInCallBannerPresentableViewController;
  v6 = [(SBInCallBannerPresentableViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneHandle, handle);
    [(SBDeviceApplicationSceneHandle *)v7->_sceneHandle addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  if ([(SBInCallBannerPresentableViewController *)self isViewLoaded])
  {
    [(SBInCallBannerPresentableViewController *)self bs_removeChildViewController:self->_sceneViewController];
  }

  v3.receiver = self;
  v3.super_class = SBInCallBannerPresentableViewController;
  [(SBInCallBannerPresentableViewController *)&v3 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = SBInCallBannerPresentableViewController;
  [(SBInCallBannerPresentableViewController *)&v15 viewDidLayoutSubviews];
  view = [(SBInCallBannerPresentableViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];

  interfaceOrientation = [(SBInCallBannerPresentableViewController *)self interfaceOrientation];
  [(SBSceneViewController *)self->_sceneViewController setContentReferenceSize:interfaceOrientation withContentOrientation:interfaceOrientation andContainerOrientation:v9, v11];
  backgroundView = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController backgroundView];
  [backgroundView setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = SBInCallBannerPresentableViewController;
  [(SBInCallBannerPresentableViewController *)&v15 viewDidLoad];
  view = [(SBInCallBannerPresentableViewController *)self view];
  newSceneViewController = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle newSceneViewController];
  sceneViewController = self->_sceneViewController;
  self->_sceneViewController = newSceneViewController;

  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setRendersWhileLocked:1];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setHomeGrabberDisplayMode:1];
  v6 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController statusBarAssertionWithStatusBarHidden:1 atLevel:0];
  statusBarHiddenAssertion = self->_statusBarHiddenAssertion;
  self->_statusBarHiddenAssertion = v6;

  view2 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [objc_opt_class() cornerRadius];
  [view2 _setContinuousCornerRadius:?];
  [view2 setClipsToBounds:1];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapAction_];
  [view2 addGestureRecognizer:v9];
  v10 = [SBInCallBannerSceneBackgroundView alloc];
  [view2 bounds];
  v11 = [(SBInCallBannerSceneBackgroundView *)v10 initWithFrame:?];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setBackgroundView:v11];
  [(SBInCallBannerPresentableViewController *)self addChildViewController:self->_sceneViewController];
  interfaceOrientation = [(SBInCallBannerPresentableViewController *)self interfaceOrientation];
  v13 = self->_sceneViewController;
  [(SBInCallBannerPresentableViewController *)self preferredBannerContentSize];
  [(SBSceneViewController *)v13 setContentReferenceSize:interfaceOrientation withContentOrientation:interfaceOrientation andContainerOrientation:?];
  view3 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [view addSubview:view3];

  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController didMoveToParentViewController:self];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setDisplayMode:4 animationFactory:0 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SBInCallBannerPresentableViewController;
  coordinatorCopy = coordinator;
  [(SBInCallBannerPresentableViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__SBInCallBannerPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783A9488;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __94__SBInCallBannerPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D75D18] _currentAnimationSettings];
  [v4 inCallBannerPresentableViewController:v2 viewWillTransitionSizeWithAnimationSettings:v3];
}

- (void)draggingDidBeginWithGestureProxy:(id)proxy
{
  proxyCopy = proxy;
  objc_storeStrong(&self->_lastGestureProxy, proxy);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__SBInCallBannerPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke;
  v6[3] = &unk_2783B0770;
  objc_copyWeak(&v7, &location);
  [proxyCopy setActionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __76__SBInCallBannerPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePanGestureProxyAction:v3];
}

- (BOOL)isTouchOutsideDismissalEnabled
{
  v3 = objc_opt_class();
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  clientSettings = [sceneIfExists clientSettings];
  v6 = SBSafeCast(v3, clientSettings);

  LOBYTE(sceneIfExists) = [v6 isCallConnected];
  return sceneIfExists;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)result containerSize:(CGSize)size
{
  height = self->_preferredBannerContentSize.height;
  result.height = height;
  return result;
}

- (NSString)requesterIdentifier
{
  v2 = objc_opt_class();

  return [v2 requesterIdentifier];
}

- (BOOL)shouldDismissForReason:(id)reason
{
  reasonCopy = reason;
  if ([(SBInCallBannerPresentableViewController *)self isCallConnected])
  {
    LOBYTE(v5) = 1;
  }

  else if ([reasonCopy isEqualToString:@"dismissOverlays"] & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", @"mainScreenAnimationController"))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [reasonCopy isEqualToString:@"assistantWillAppear"] ^ 1;
  }

  return v5;
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerDidAppear:self];
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  self->_presented = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerWillAppear:self];
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewController:self willDisappearWithReason:reasonCopy];
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  self->_presented = 0;
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewController:self didDisappearWithReason:reasonCopy];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerUserInteractionWillBegin:self];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerUserInteractionDidEnd:self];
}

- (void)invalidate
{
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController invalidate];
  [(SBSceneViewStatusBarAssertion *)self->_statusBarHiddenAssertion invalidate];
  statusBarHiddenAssertion = self->_statusBarHiddenAssertion;
  self->_statusBarHiddenAssertion = 0;
}

- (BOOL)handleVolumeUpButtonPress
{
  if (([(SBDeviceApplicationSceneHandle *)self->_sceneHandle preferredHardwareButtonEventTypes]& 2) == 0)
  {
    return 0;
  }

  sceneHandle = self->_sceneHandle;

  return [(SBDeviceApplicationSceneHandle *)sceneHandle handleHardwareButtonEventType:1];
}

- (BOOL)handleVolumeDownButtonPress
{
  if (([(SBDeviceApplicationSceneHandle *)self->_sceneHandle preferredHardwareButtonEventTypes]& 4) == 0)
  {
    return 0;
  }

  sceneHandle = self->_sceneHandle;

  return [(SBDeviceApplicationSceneHandle *)sceneHandle handleHardwareButtonEventType:2];
}

- (BOOL)handleHeadsetButtonPress:(BOOL)press
{
  pressCopy = press;
  preferredHardwareButtonEventTypes = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle preferredHardwareButtonEventTypes];
  if (!pressCopy)
  {
    if ((preferredHardwareButtonEventTypes & 8) != 0)
    {
      v6 = 3;
      goto LABEL_7;
    }

    return 0;
  }

  if ((preferredHardwareButtonEventTypes & 0x10) == 0)
  {
    return 0;
  }

  v6 = 4;
LABEL_7:
  sceneHandle = self->_sceneHandle;

  return [(SBDeviceApplicationSceneHandle *)sceneHandle handleHardwareButtonEventType:v6];
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  settingsDiff = [settings settingsDiff];
  _inCallSceneClientSettingsDiffInspector = [(SBInCallBannerPresentableViewController *)self _inCallSceneClientSettingsDiffInspector];
  [_inCallSceneClientSettingsDiffInspector inspectDiff:settingsDiff withContext:0];
}

- (id)_inCallSceneClientSettingsDiffInspector
{
  inCallSceneClientSettingsDiffInspector = self->_inCallSceneClientSettingsDiffInspector;
  if (!inCallSceneClientSettingsDiffInspector)
  {
    v4 = objc_alloc_init(MEMORY[0x277D67BB0]);
    v5 = self->_inCallSceneClientSettingsDiffInspector;
    self->_inCallSceneClientSettingsDiffInspector = v4;

    objc_initWeak(&location, self);
    v6 = self->_inCallSceneClientSettingsDiffInspector;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__SBInCallBannerPresentableViewController__inCallSceneClientSettingsDiffInspector__block_invoke;
    v8[3] = &unk_2783AC8A0;
    objc_copyWeak(&v9, &location);
    [(SBSUIInCallSceneClientSettingsDiffInspector *)v6 observeCallConnectedWithBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    inCallSceneClientSettingsDiffInspector = self->_inCallSceneClientSettingsDiffInspector;
  }

  return inCallSceneClientSettingsDiffInspector;
}

void __82__SBInCallBannerPresentableViewController__inCallSceneClientSettingsDiffInspector__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callConnectedStatusChanged];
}

- (void)_callConnectedStatusChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerCallConnectedStatusChanged:self];
}

- (BOOL)isCallConnected
{
  v3 = objc_opt_class();
  sceneIfExists = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  clientSettings = [sceneIfExists clientSettings];
  v6 = SBSafeCast(v3, clientSettings);
  isCallConnected = [v6 isCallConnected];

  return isCallConnected;
}

- (CGPoint)translationInCoordinateSpace:(id)space
{
  [(BNPanGestureProxy *)self->_lastGestureProxy translationInCoordinateSpace:space];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)visualTranslationInCoordinateSpace:(id)space
{
  [(BNPanGestureProxy *)self->_lastGestureProxy visualTranslationInCoordinateSpace:space];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)velocityInCoordinateSpace:(id)space
{
  [(BNPanGestureProxy *)self->_lastGestureProxy velocityInCoordinateSpace:space];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_handleTapAction:(id)action
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerDidReceiveTap:self];
}

- (void)_handlePanGestureProxyAction:(id)action
{
  didCrossDefaultThreshold = [action didCrossDefaultThreshold];
  if (!self->_didCrossDefaultDraggingThreshold && didCrossDefaultThreshold)
  {
    self->_didCrossDefaultDraggingThreshold = didCrossDefaultThreshold;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained inCallBannerPresentableViewControllerDidCrossDefaultDraggingThreshold:self];
  }
}

- (SBInCallBannerPresentableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)preferredBannerContentSize
{
  width = self->_preferredBannerContentSize.width;
  height = self->_preferredBannerContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end