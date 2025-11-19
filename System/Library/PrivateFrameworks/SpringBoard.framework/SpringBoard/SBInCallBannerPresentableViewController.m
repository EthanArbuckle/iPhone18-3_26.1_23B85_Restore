@interface SBInCallBannerPresentableViewController
- (BOOL)handleHeadsetButtonPress:(BOOL)a3;
- (BOOL)handleVolumeDownButtonPress;
- (BOOL)handleVolumeUpButtonPress;
- (BOOL)isCallConnected;
- (BOOL)isTouchOutsideDismissalEnabled;
- (BOOL)shouldDismissForReason:(id)a3;
- (CGPoint)translationInCoordinateSpace:(id)a3;
- (CGPoint)velocityInCoordinateSpace:(id)a3;
- (CGPoint)visualTranslationInCoordinateSpace:(id)a3;
- (CGSize)preferredBannerContentSize;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)result containerSize:(CGSize)a4;
- (NSString)requesterIdentifier;
- (SBInCallBannerPresentableViewController)initWithSceneHandle:(id)a3;
- (SBInCallBannerPresentableViewControllerDelegate)delegate;
- (id)_inCallSceneClientSettingsDiffInspector;
- (void)_callConnectedStatusChanged;
- (void)_handlePanGestureProxyAction:(id)a3;
- (void)_handleTapAction:(id)a3;
- (void)dealloc;
- (void)draggingDidBeginWithGestureProxy:(id)a3;
- (void)invalidate;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)userInteractionDidEndForBannerForPresentable:(id)a3;
- (void)userInteractionWillBeginForBannerForPresentable:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SBInCallBannerPresentableViewController

- (SBInCallBannerPresentableViewController)initWithSceneHandle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBInCallBannerPresentableViewController;
  v6 = [(SBInCallBannerPresentableViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sceneHandle, a3);
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
  v3 = [(SBInCallBannerPresentableViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(SBInCallBannerPresentableViewController *)self interfaceOrientation];
  [(SBSceneViewController *)self->_sceneViewController setContentReferenceSize:v13 withContentOrientation:v13 andContainerOrientation:v9, v11];
  v14 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController backgroundView];
  [v14 setFrame:{v5, v7, v9, v11}];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = SBInCallBannerPresentableViewController;
  [(SBInCallBannerPresentableViewController *)&v15 viewDidLoad];
  v3 = [(SBInCallBannerPresentableViewController *)self view];
  v4 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle newSceneViewController];
  sceneViewController = self->_sceneViewController;
  self->_sceneViewController = v4;

  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setRendersWhileLocked:1];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setHomeGrabberDisplayMode:1];
  v6 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController statusBarAssertionWithStatusBarHidden:1 atLevel:0];
  statusBarHiddenAssertion = self->_statusBarHiddenAssertion;
  self->_statusBarHiddenAssertion = v6;

  v8 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [objc_opt_class() cornerRadius];
  [v8 _setContinuousCornerRadius:?];
  [v8 setClipsToBounds:1];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTapAction_];
  [v8 addGestureRecognizer:v9];
  v10 = [SBInCallBannerSceneBackgroundView alloc];
  [v8 bounds];
  v11 = [(SBInCallBannerSceneBackgroundView *)v10 initWithFrame:?];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setBackgroundView:v11];
  [(SBInCallBannerPresentableViewController *)self addChildViewController:self->_sceneViewController];
  v12 = [(SBInCallBannerPresentableViewController *)self interfaceOrientation];
  v13 = self->_sceneViewController;
  [(SBInCallBannerPresentableViewController *)self preferredBannerContentSize];
  [(SBSceneViewController *)v13 setContentReferenceSize:v12 withContentOrientation:v12 andContainerOrientation:?];
  v14 = [(SBDeviceApplicationSceneViewController *)self->_sceneViewController view];
  [v3 addSubview:v14];

  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController didMoveToParentViewController:self];
  [(SBDeviceApplicationSceneViewController *)self->_sceneViewController setDisplayMode:4 animationFactory:0 completion:0];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SBInCallBannerPresentableViewController;
  v7 = a4;
  [(SBInCallBannerPresentableViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__SBInCallBannerPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_2783A9488;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __94__SBInCallBannerPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D75D18] _currentAnimationSettings];
  [v4 inCallBannerPresentableViewController:v2 viewWillTransitionSizeWithAnimationSettings:v3];
}

- (void)draggingDidBeginWithGestureProxy:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_lastGestureProxy, a3);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__SBInCallBannerPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke;
  v6[3] = &unk_2783B0770;
  objc_copyWeak(&v7, &location);
  [v5 setActionHandler:v6];
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
  v4 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  v5 = [v4 clientSettings];
  v6 = SBSafeCast(v3, v5);

  LOBYTE(v4) = [v6 isCallConnected];
  return v4;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)result containerSize:(CGSize)a4
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

- (BOOL)shouldDismissForReason:(id)a3
{
  v4 = a3;
  if ([(SBInCallBannerPresentableViewController *)self isCallConnected])
  {
    LOBYTE(v5) = 1;
  }

  else if ([v4 isEqualToString:@"dismissOverlays"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"mainScreenAnimationController"))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 isEqualToString:@"assistantWillAppear"] ^ 1;
  }

  return v5;
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerDidAppear:self];
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  self->_presented = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerWillAppear:self];
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewController:self willDisappearWithReason:v5];
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  self->_presented = 0;
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewController:self didDisappearWithReason:v5];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerUserInteractionWillBegin:self];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)a3
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

- (BOOL)handleHeadsetButtonPress:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle preferredHardwareButtonEventTypes];
  if (!v3)
  {
    if ((v5 & 8) != 0)
    {
      v6 = 3;
      goto LABEL_7;
    }

    return 0;
  }

  if ((v5 & 0x10) == 0)
  {
    return 0;
  }

  v6 = 4;
LABEL_7:
  sceneHandle = self->_sceneHandle;

  return [(SBDeviceApplicationSceneHandle *)sceneHandle handleHardwareButtonEventType:v6];
}

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = [a4 settingsDiff];
  v5 = [(SBInCallBannerPresentableViewController *)self _inCallSceneClientSettingsDiffInspector];
  [v5 inspectDiff:v6 withContext:0];
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
  v4 = [(SBDeviceApplicationSceneHandle *)self->_sceneHandle sceneIfExists];
  v5 = [v4 clientSettings];
  v6 = SBSafeCast(v3, v5);
  v7 = [v6 isCallConnected];

  return v7;
}

- (CGPoint)translationInCoordinateSpace:(id)a3
{
  [(BNPanGestureProxy *)self->_lastGestureProxy translationInCoordinateSpace:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)visualTranslationInCoordinateSpace:(id)a3
{
  [(BNPanGestureProxy *)self->_lastGestureProxy visualTranslationInCoordinateSpace:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)velocityInCoordinateSpace:(id)a3
{
  [(BNPanGestureProxy *)self->_lastGestureProxy velocityInCoordinateSpace:a3];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_handleTapAction:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained inCallBannerPresentableViewControllerDidReceiveTap:self];
}

- (void)_handlePanGestureProxyAction:(id)a3
{
  v4 = [a3 didCrossDefaultThreshold];
  if (!self->_didCrossDefaultDraggingThreshold && v4)
  {
    self->_didCrossDefaultDraggingThreshold = v4;
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