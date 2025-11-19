@interface SBMedusaDecoratedDeviceApplicationSceneViewController
- (BOOL)_isChamoisOrFlexibleWindowingUIEnabled;
- (BOOL)_sceneViewHasMatchMoveAnimation;
- (BOOL)_wantsTopAffordance;
- (BOOL)applicationSceneViewControllerIsInNonrotatingWindow:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)contentReferenceSize;
- (SBHomeGrabberView)homeGrabberView;
- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithCoder:(id)a3;
- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithDeviceApplicationSceneHandle:(id)a3 layoutRole:(int64_t)a4;
- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithDeviceApplicationSceneHandle:(id)a3 layoutRole:(int64_t)a4 workspace:(id)a5 setupManager:(id)a6;
- (SBMedusaDecoratedDeviceApplicationSceneViewControllerDelegate)delegate;
- (SBWindowControlsLayout)windowControlsLayoutForApplicationSceneViewController:(SEL)a3;
- (double)blurViewIconScale;
- (id)hitTestToTopAffordance:(CGPoint)a3 window:(id)a4;
- (id)statusBarAssertionWithStatusBarHidden:(BOOL)a3 nubViewHidden:(int64_t)a4 atLevel:(unint64_t)a5;
- (void)_addSceneViewMatchMoveAnimation;
- (void)_beginRequiringSceneViewMatchMoveAnimationForReason:(id)a3;
- (void)_createOrDestroyTopAffordanceViewControllerAnimated:(BOOL)a3;
- (void)_elasticValueViewControllerWillPresent:(id)a3;
- (void)_endRequiringSceneViewMatchMoveAnimationForReason:(id)a3;
- (void)_handleSplitHomeScreenSwitcherKeyShortcut;
- (void)_handleTopAffordanceTapGestureRecognizerAction:(id)a3;
- (void)_removeSceneViewMatchMoveAnimation;
- (void)_sendStatusBarScrollToTopActionForGestureRecognizer:(id)a3;
- (void)_setBlurContentView:(id)a3;
- (void)_updateAsyncRendering;
- (void)_updateCurrentTopAffordanceAlpha;
- (void)_updateTopAffordanceHighlight;
- (void)_windowManagementStyleDidChange:(id)a3;
- (void)applicationSceneViewController:(id)a3 didUpdateStatusBarHidden:(BOOL)a4 withAnimation:(int64_t)a5;
- (void)applicationSceneViewController:(id)a3 statusBarDoubleTapped:(id)a4;
- (void)applicationSceneViewController:(id)a3 statusBarTapped:(id)a4 tapActionType:(int64_t)a5;
- (void)applicationSceneViewController:(id)a3 topAffordanceActionPerformed:(int64_t)a4;
- (void)applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)a3;
- (void)dealloc;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4;
- (void)loadView;
- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarStyleTo:(int64_t)a4 forPartWithIdentifier:(id)a5;
- (void)setBlurViewIconScale:(double)a3;
- (void)setContentReferenceSize:(CGSize)a3 withContentOrientation:(int64_t)a4 andContainerOrientation:(int64_t)a5;
- (void)setDarkenViewAlpha:(double)a3;
- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5;
- (void)setDropInteraction:(id)a3;
- (void)setLayoutRole:(int64_t)a3 spaceConfiguration:(int64_t)a4 floatingConfiguration:(int64_t)a5 sizingPolicy:(int64_t)a6;
- (void)setLiveContentBlurEnabled:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8;
- (void)setNubViewHidden:(BOOL)a3;
- (void)setNubViewHighlighted:(BOOL)a3;
- (void)setSceneFlattenMode:(id)a3;
- (void)setSceneFullyOccluded:(BOOL)a3;
- (void)setSceneMinificationFilter:(id)a3;
- (void)setSceneRendersAsynchronously:(BOOL)a3;
- (void)statusBarAssertionDidInvalidate:(id)a3;
- (void)topAffordanceViewController:(id)a3 requestsPerformShortcutActionWithType:(int64_t)a4;
- (void)topAffordanceViewControllerWillPresentMenu:(id)a3;
- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)a3 selectedActionType:(int64_t)a4 layout:(SBWindowControlsLayout *)a5 hidden:(BOOL)a6 interfaceOrientation:(int64_t)a7;
- (void)updateTopAffordanceOverrideUserInterfaceStyle;
- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation SBMedusaDecoratedDeviceApplicationSceneViewController

- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithDeviceApplicationSceneHandle:(id)a3 layoutRole:(int64_t)a4
{
  v6 = a3;
  v7 = +[SBWorkspace mainWorkspace];
  v8 = +[SBSetupManager sharedInstance];
  v9 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self initWithDeviceApplicationSceneHandle:v6 layoutRole:a4 workspace:v7 setupManager:v8];

  return v9;
}

- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithDeviceApplicationSceneHandle:(id)a3 layoutRole:(int64_t)a4 workspace:(id)a5 setupManager:(id)a6
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (([v12 isDeviceApplicationSceneHandle] & 1) == 0)
  {
    [SBMedusaDecoratedDeviceApplicationSceneViewController initWithDeviceApplicationSceneHandle:a2 layoutRole:self workspace:v12 setupManager:?];
  }

  v22.receiver = self;
  v22.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  v15 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v22 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    v15->_layoutRole = a4;
    objc_storeStrong(&v15->_workspace, a5);
    objc_storeStrong(&v16->_setupManager, a6);
    objc_storeStrong(&v16->_sceneFlattenMode, *MEMORY[0x277CDA9E8]);
    v16->_sceneFullyOccluded = [v12 sceneFullyOccluded];
    objc_storeStrong(&v16->_deviceApplicationSceneHandle, a3);
    [(SBDeviceApplicationSceneHandle *)v16->_deviceApplicationSceneHandle addObserver:v16];
    v17 = [(SBDeviceApplicationSceneHandle *)v16->_deviceApplicationSceneHandle statusBarStateProvider];
    [v17 addStatusBarObserver:v16];

    v16->_nubViewHidden = 1;
    v16->_nubViewHighlighted = 0;
    v16->_darkenViewAlpha = 0.0;
    v18 = [v12 newSceneViewController];
    deviceApplicationSceneViewController = v16->_deviceApplicationSceneViewController;
    v16->_deviceApplicationSceneViewController = v18;

    [(SBDeviceApplicationSceneViewController *)v16->_deviceApplicationSceneViewController setShouldDrawStatusBarInsideSceneView:1];
    [(SBDeviceApplicationSceneViewController *)v16->_deviceApplicationSceneViewController setDisplayMode:4 animationFactory:0 completion:0];
    [(SBDeviceApplicationSceneViewController *)v16->_deviceApplicationSceneViewController setDelegate:v16];
    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v16 selector:sel__elasticValueViewControllerWillPresent_ name:@"SBElasticValueViewControllerWillPresentNotificationName" object:0];
    [v20 addObserver:v16 selector:sel__elasticValueViewControllerWillDismiss_ name:@"SBElasticValueViewControllerWillDismissNotificationName" object:0];
    [v20 addObserver:v16 selector:sel__guidedAccessActivationChanged_ name:@"SBGuidedAccessActivationChangedNotification" object:0];
    [v20 addObserver:v16 selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"SBHardwareKeyboardAvailabilityChangedNotification" object:0];
    [v20 addObserver:v16 selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];
    [SBApp addActiveOrientationObserver:v16];
  }

  return v16;
}

- (void)dealloc
{
  [SBApp removeActiveOrientationObserver:self];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle removeObserver:self];
  v4 = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle statusBarStateProvider];
  [v4 removeStatusBarObserver:self];

  [(UIApplicationSceneClientSettingsDiffInspector *)self->_applicationSceneClientSettingsDiffInspector removeAllObservers];
  v5.receiver = self;
  v5.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v5 dealloc];
}

- (void)setLiveContentBlurEnabled:(BOOL)a3 duration:(double)a4 blurDelay:(double)a5 iconViewScale:(double)a6 began:(id)a7 completion:(id)a8
{
  v12 = a3;
  v14 = a7;
  v15 = a8;
  if (v14 && self->_isBlurred != v12)
  {
    v14[2](v14);
  }

  v16 = [MEMORY[0x277CF0D38] factoryWithDuration:a4];
  if (v12)
  {
    if (!self->_isBlurred)
    {
      self->_isBlurred = 1;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke;
      v57[3] = &unk_2783A98A0;
      v57[4] = self;
      v58 = v15;
      v17 = MEMORY[0x223D6F7F0](v57);
      v18 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];

      if (v18)
      {
        v19 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
        [v19 bs_setHitTestingDisabled:0];

        ++self->_blurViewAnimationCount;
        v20 = MEMORY[0x277CF0D38];
        v53 = v17;
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke_3;
        v54[3] = &unk_2783A8C18;
        v54[4] = self;
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke_4;
        v52[3] = &unk_2783A9C70;
        v21 = v17;
        [v20 animateWithFactory:v16 options:4 actions:v54 completion:v52];
      }

      else
      {
        v26 = [(SBApplicationSceneHandle *)self->_deviceApplicationSceneHandle application];
        v48 = [v26 bundleIdentifier];

        v27 = [(UIViewController *)self _sbWindowScene];
        v28 = [v27 iconController];

        v29 = [v28 iconModel];
        v30 = [(SBApplicationSceneHandle *)self->_deviceApplicationSceneHandle application];
        v31 = [v30 isWebApplication];

        if (v31)
        {
          v32 = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle sceneIdentifier];
          v33 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v32];

          v34 = [v29 leafIconForIdentifier:v33];

          v21 = v48;
        }

        else
        {
          v21 = v48;
          v34 = [v29 applicationIconForBundleIdentifier:v48];
        }

        v35 = [SBApplicationBlurContentView alloc];
        [(UIView *)self->_blurViewContainerView bounds];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v44 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
        v45 = [(SBApplicationBlurContentView *)v35 initWithFrame:v21 bundleIdentifier:v34 icon:v44 targetViewToBlur:v37 initialIconScale:v39, v41, v43, a6];

        [(SBApplicationBlurContentView *)v45 setBlurDelay:a5];
        [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _setBlurContentView:v45];
        ++self->_blurViewAnimationCount;
        v46 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke_2;
        v55[3] = &unk_2783A9348;
        v56 = v17;
        v47 = v17;
        [v46 generateAndAnimateToBlurredSnapshotWithAnimationFactory:v16 completion:v55];
      }

      v25 = v58;
      goto LABEL_15;
    }
  }

  else if (self->_isBlurred)
  {
    self->_isBlurred = 0;
    v22 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
    [v22 setHidden:0];

    ++self->_disableAsyncRenderingCount;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateAsyncRendering];
    v23 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
    [v23 bs_setHitTestingDisabled:1];

    v24 = MEMORY[0x277CF0D38];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke_5;
    v51[3] = &unk_2783A8C18;
    v51[4] = self;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke_6;
    v49[3] = &unk_2783A9C98;
    v49[4] = self;
    v50 = v15;
    [v24 animateWithFactory:v16 options:4 actions:v51 completion:v49];
    v25 = v50;
LABEL_15:
  }
}

uint64_t __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1096);
  v4 = v3 < 1;
  v5 = v3 - 1;
  if (!v4)
  {
    *(v2 + 1096) = v5;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 1080) == 1 && !*(v2 + 1096))
  {
    v6 = [*(v2 + 1016) view];
    [v6 setHidden:1];

    [*(a1 + 32) _updateAsyncRendering];
  }

  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) _blurContentView];
  [v1 setAlpha:1.0];
}

void __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) _blurContentView];
  [v1 setAlpha:0.0];
}

uint64_t __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 1080) & 1) == 0)
  {
    [v2 _setBlurContentView:0];
    v2 = *(a1 + 32);
  }

  --*(v2 + 1120);
  [*(a1 + 32) _updateAsyncRendering];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (double)blurViewIconScale
{
  v2 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
  [v2 iconViewScale];
  v4 = v3;

  return v4;
}

- (void)setBlurViewIconScale:(double)a3
{
  v4 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
  [v4 setIconViewScale:a3];
}

- (void)setLayoutRole:(int64_t)a3 spaceConfiguration:(int64_t)a4 floatingConfiguration:(int64_t)a5 sizingPolicy:(int64_t)a6
{
  self->_layoutRole = a3;
  self->_spaceConfiguration = a4;
  self->_floatingConfiguration = a5;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateTopAffordanceHighlight];
}

- (id)hitTestToTopAffordance:(CGPoint)a3 window:(id)a4
{
  y = a3.y;
  x = a3.x;
  topAffordanceViewController = self->_topAffordanceViewController;
  v7 = a4;
  v8 = [(SBTopAffordanceViewController *)topAffordanceViewController effectiveWindowControlsView];
  v9 = [v7 screen];
  v10 = [v9 fixedCoordinateSpace];

  [v7 convertPoint:v10 toCoordinateSpace:{x, y}];
  v12 = v11;
  v14 = v13;

  [v8 convertPoint:v10 fromCoordinateSpace:{v12, v14}];
  v15 = [v8 hitTest:0 withEvent:?];

  return v15;
}

- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  v9 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v11 initWithCoder:v6];

  return v9;
}

- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)a3 selectedActionType:(int64_t)a4 layout:(SBWindowControlsLayout *)a5 hidden:(BOOL)a6 interfaceOrientation:(int64_t)a7
{
  topAffordanceViewController = self->_topAffordanceViewController;
  margin = a5->margin;
  v9[0] = *&a5->style;
  v9[1] = margin;
  [(SBTopAffordanceViewController *)topAffordanceViewController updateTopAffordanceContextMenuWithOptions:a3 selectedActionType:a4 layout:v9 hidden:a6 interfaceOrientation:a7];
}

- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)a3
{
  topAffordanceViewController = self->_topAffordanceViewController;
  margin = a3->margin;
  v5[0] = *&a3->style;
  v5[1] = margin;
  [(SBTopAffordanceViewController *)topAffordanceViewController updateWindowControlsLayout:v5];
}

- (CGSize)contentReferenceSize
{
  [(SBSceneViewController *)self->_deviceApplicationSceneViewController contentReferenceSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentReferenceSize:(CGSize)a3 withContentOrientation:(int64_t)a4 andContainerOrientation:(int64_t)a5
{
  [(SBSceneViewController *)self->_deviceApplicationSceneViewController setContentReferenceSize:a4 withContentOrientation:a5 andContainerOrientation:a3.width, a3.height];
  v6 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [v6 setNeedsLayout];

  v7 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [v7 layoutIfNeeded];
}

- (void)setDisplayMode:(int64_t)a3 animationFactory:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  if (deviceApplicationSceneViewController)
  {
    objc_initWeak(&location, deviceApplicationSceneViewController);
    v12 = self->_deviceApplicationSceneViewController;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __100__SBMedusaDecoratedDeviceApplicationSceneViewController_setDisplayMode_animationFactory_completion___block_invoke;
    v13[3] = &unk_2783BE4D0;
    v13[4] = self;
    objc_copyWeak(&v15, &location);
    v14 = v10;
    [(SBDeviceApplicationSceneViewController *)v12 setDisplayMode:a3 animationFactory:v8 completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

uint64_t __100__SBMedusaDecoratedDeviceApplicationSceneViewController_setDisplayMode_animationFactory_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) displayMode] != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setCustomContentView:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (SBHomeGrabberView)homeGrabberView
{
  v2 = [(SBSceneViewController *)self->_deviceApplicationSceneViewController _sceneView];
  v3 = [v2 homeGrabberView];

  return v3;
}

- (id)statusBarAssertionWithStatusBarHidden:(BOOL)a3 nubViewHidden:(int64_t)a4 atLevel:(unint64_t)a5
{
  v7 = a3;
  if (!self->_statusBarAssertions)
  {
    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    statusBarAssertions = self->_statusBarAssertions;
    self->_statusBarAssertions = v9;
  }

  v11 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController statusBarAssertionWithStatusBarHidden:v7 atLevel:a5];
  [v11 setNubViewHidden:a4];
  [v11 addObserver:self];
  [(NSHashTable *)self->_statusBarAssertions addObject:v11];
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateCurrentTopAffordanceAlpha];

  return v11;
}

- (void)statusBarAssertionDidInvalidate:(id)a3
{
  [(NSHashTable *)self->_statusBarAssertions removeObject:a3];

  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateCurrentTopAffordanceAlpha];
}

- (void)_updateCurrentTopAffordanceAlpha
{
  if ([(NSHashTable *)self->_statusBarAssertions count])
  {
    v3 = [(NSHashTable *)self->_statusBarAssertions allObjects];
    v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_297];

    v5 = [v4 lastObject];
    if ([v5 nubViewHidden] == 0x7FFFFFFFFFFFFFFFLL)
    {
      nubViewHidden = self->_nubViewHidden;
    }

    else
    {
      nubViewHidden = BSSettingFlagIsYes();
    }
  }

  else
  {
    nubViewHidden = self->_nubViewHidden;
  }

  v7 = [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled];
  topAffordanceViewController = self->_topAffordanceViewController;

  [(SBTopAffordanceViewController *)topAffordanceViewController setHidden:nubViewHidden & 1 forReason:@"MedusaDecoratedVC" animated:v7];
}

uint64_t __89__SBMedusaDecoratedDeviceApplicationSceneViewController__updateCurrentTopAffordanceAlpha__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a2, "level")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 level];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)setNubViewHidden:(BOOL)a3
{
  if (self->_nubViewHidden != a3)
  {
    self->_nubViewHidden = a3;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateCurrentTopAffordanceAlpha];
  }
}

- (void)setNubViewHighlighted:(BOOL)a3
{
  if (self->_nubViewHighlighted != a3)
  {
    self->_nubViewHighlighted = a3;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateTopAffordanceHighlight];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidBeginWithTransitionContext:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController layoutStateTransitionCoordinator:v11 transitionDidBeginWithTransitionContext:v6];
  }

  v7 = objc_opt_class();
  v8 = [v6 toLayoutState];
  v9 = SBSafeCast(v7, v8);

  if (SBSpaceConfigurationIsSplitView([v9 spaceConfiguration]) && SBFloatingConfigurationIsValid(objc_msgSend(v9, "floatingConfiguration")) && ((v10 = -[SBMedusaDecoratedDeviceApplicationSceneViewController layoutRole](self, "layoutRole"), v10 == 1) && self->_floatingConfiguration == 1 || v10 == 2 && self->_floatingConfiguration == 2))
  {
    [(SBTopAffordanceViewController *)self->_topAffordanceViewController setHidden:1 forReason:@"MedusaDecoratedVCHidingForObscuringFloatingApp" animated:1];
    [(SBTopAffordanceViewController *)self->_topAffordanceViewController dismissAnimated:1];
  }

  else
  {
    [(SBTopAffordanceViewController *)self->_topAffordanceViewController setHidden:0 forReason:@"MedusaDecoratedVCHidingForObscuringFloatingApp" animated:1];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionWillEndWithTransitionContext:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController layoutStateTransitionCoordinator:v7 transitionWillEndWithTransitionContext:v6];
  }
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController layoutStateTransitionCoordinator:v7 transitionDidEndWithTransitionContext:v6];
  }
}

- (void)sceneHandle:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settingsDiff];
  applicationSceneClientSettingsDiffInspector = self->_applicationSceneClientSettingsDiffInspector;
  if (!applicationSceneClientSettingsDiffInspector)
  {
    v10 = objc_alloc_init(MEMORY[0x277D75160]);
    v11 = self->_applicationSceneClientSettingsDiffInspector;
    self->_applicationSceneClientSettingsDiffInspector = v10;

    objc_initWeak(&location, self);
    v12 = self->_applicationSceneClientSettingsDiffInspector;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __93__SBMedusaDecoratedDeviceApplicationSceneViewController_sceneHandle_didUpdateClientSettings___block_invoke;
    v16 = &unk_2783AC8A0;
    objc_copyWeak(&v17, &location);
    [(UIApplicationSceneClientSettingsDiffInspector *)v12 observeStatusBarStyleWithBlock:&v13];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    applicationSceneClientSettingsDiffInspector = self->_applicationSceneClientSettingsDiffInspector;
  }

  [(UIApplicationSceneClientSettingsDiffInspector *)applicationSceneClientSettingsDiffInspector inspectDiff:v8 withContext:0, v13, v14, v15, v16];
}

void __93__SBMedusaDecoratedDeviceApplicationSceneViewController_sceneHandle_didUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTopAffordanceOverrideUserInterfaceStyle];
}

- (void)updateTopAffordanceOverrideUserInterfaceStyle
{
  v3 = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle statusBarStateProvider];
  v4 = [v3 statusBarStyleForPartWithIdentifier:@"trafficLightPartIdentifier"];
  if (v4 == 4)
  {
    v4 = [v3 statusBarStyle];
  }

  topAffordanceViewController = self->_topAffordanceViewController;
  if ((v4 & 0x3F) != 0)
  {
    [(SBTopAffordanceViewController *)topAffordanceViewController setLumaTrackingEnabled:0];
    v6 = _SBStatusBarColorStyleFromStyle(v4) == 2;
    v7 = 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __102__SBMedusaDecoratedDeviceApplicationSceneViewController_updateTopAffordanceOverrideUserInterfaceStyle__block_invoke;
    v8[3] = &unk_2783A8BC8;
    if (!v6)
    {
      v7 = 2;
    }

    v8[4] = self;
    v8[5] = v7;
    [MEMORY[0x277D75D18] animateWithDuration:v8 animations:0.6];
  }

  else
  {
    [(SBTopAffordanceViewController *)topAffordanceViewController setLumaTrackingEnabled:1];
  }
}

- (void)topAffordanceViewController:(id)a3 requestsPerformShortcutActionWithType:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewController:self topAffordanceActionPerformed:a4];
}

- (void)topAffordanceViewControllerWillPresentMenu:(id)a3
{
  if (![(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _isChamoisOrFlexibleWindowingUIEnabled])
  {
    v4 = +[SBWorkspace mainWorkspace];
    v5 = [(UIViewController *)self _sbWindowScene];
    v6 = [v5 _fbsDisplayConfiguration];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __100__SBMedusaDecoratedDeviceApplicationSceneViewController_topAffordanceViewControllerWillPresentMenu___block_invoke_2;
    v7[3] = &unk_2783B0350;
    v7[4] = self;
    [v4 requestTransitionWithOptions:0 displayConfiguration:v6 builder:&__block_literal_global_60_2 validator:v7];
  }
}

uint64_t __100__SBMedusaDecoratedDeviceApplicationSceneViewController_topAffordanceViewControllerWillPresentMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sceneHandle];
  v5 = [v4 application];
  v30 = [v5 bundleIdentifier];

  v6 = [v4 sceneIdentifier];
  v7 = [v3 applicationContext];
  v8 = [v7 previousLayoutState];

  if ([*(a1 + 32) layoutRole] == 3)
  {
    [v3 modifyApplicationContext:{&__block_literal_global_63_0, v30}];
    v9 = [v8 elementWithRole:3];
    v10 = [v9 workspaceEntity];
    v11 = [v10 applicationSceneEntity];
    v12 = [v11 sceneHandle];
    v13 = [v12 sceneIdentifier];
    v14 = [v13 isEqual:v6];

    goto LABEL_12;
  }

  if ([*(a1 + 32) layoutRole] == 2)
  {
    [v3 modifyApplicationContext:{&__block_literal_global_65_1, v30}];
    v15 = v8;
    v16 = 2;
LABEL_8:
    v18 = [v15 elementWithRole:v16];
    v19 = [v18 workspaceEntity];
    v20 = [v19 applicationSceneEntity];
    v21 = [v20 sceneHandle];
    v22 = [v21 sceneIdentifier];
    v14 = [v22 isEqual:v6];

    goto LABEL_12;
  }

  if ([*(a1 + 32) layoutRole] == 1)
  {
    v17 = [v8 elementWithRole:{2, v30}];

    if (v17)
    {
      [v3 modifyApplicationContext:&__block_literal_global_67_1];
      v15 = v8;
      v16 = 1;
      goto LABEL_8;
    }
  }

  if ([*(a1 + 32) layoutRole] == 1 && (objc_msgSend(v8, "elementWithRole:", 2), v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __100__SBMedusaDecoratedDeviceApplicationSceneViewController_topAffordanceViewControllerWillPresentMenu___block_invoke_6;
    v31[3] = &unk_2783A98C8;
    v32 = v30;
    [v3 modifyApplicationContext:v31];
    v25 = [v8 elementWithRole:1];
    v26 = [v25 workspaceEntity];
    v27 = [v26 applicationSceneEntity];
    v28 = [v27 sceneHandle];
    v29 = [v28 sceneIdentifier];
    v14 = [v29 isEqual:v6];
  }

  else
  {
    v14 = 0;
  }

LABEL_12:

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (self->_topAffordanceTapGestureRecognizer != a3)
  {
    return 1;
  }

  topAffordanceViewController = self->_topAffordanceViewController;
  v6 = a4;
  v7 = [(SBTopAffordanceViewController *)topAffordanceViewController view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [v7 hitTest:0 withEvent:{v9, v11}];
  v4 = v12 != 0;

  return v4;
}

- (void)sceneWithIdentifier:(id)a3 didChangeStatusBarStyleTo:(int64_t)a4 forPartWithIdentifier:(id)a5
{
  if ([a5 isEqualToString:{*MEMORY[0x277D775B0], a4}])
  {

    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self updateTopAffordanceOverrideUserInterfaceStyle];
  }
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v19 viewWillLayoutSubviews];
  v3 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
  if ([(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _sceneViewHasMatchMoveAnimation])
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self contentReferenceSize];
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self contentOrientation];
    SBRectWithSize();
    v17 = v12;
  }

  else
  {
    v17 = v12;
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;
  }

  [v17 setBounds:{v13, v14, v15, v16}];
  UIRectGetCenter();
  [v12 setCenter:?];
  v18 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
  [v18 setFrame:{v5, v7, v9, v11}];
}

- (void)loadView
{
  v3 = [SBHitTestExtendedView alloc];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v56 = [(SBHitTestExtendedView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self setView:v56];
  v8 = [[SBHitTestExtendedView alloc] initWithFrame:v4, v5, v6, v7];
  containerView = self->_containerView;
  self->_containerView = &v8->super;

  [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBHitTestExtendedView *)v56 addSubview:self->_containerView];
  v10 = [(UIView *)self->_containerView leftAnchor];
  v11 = [(SBHitTestExtendedView *)v56 leftAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(UIView *)self->_containerView rightAnchor];
  v14 = [(SBHitTestExtendedView *)v56 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(UIView *)self->_containerView topAnchor];
  v17 = [(SBHitTestExtendedView *)v56 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(UIView *)self->_containerView bottomAnchor];
  v20 = [(SBHitTestExtendedView *)v56 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self dropInteraction];
  if (v22)
  {
    [(UIView *)self->_containerView addInteraction:v22];
  }

  v23 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
  [v23 setAutoresizingMask:0];

  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self bs_addChildViewController:self->_deviceApplicationSceneViewController withSuperview:self->_containerView];
  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  blurViewContainerView = self->_blurViewContainerView;
  self->_blurViewContainerView = v24;

  [(UIView *)self->_blurViewContainerView setUserInteractionEnabled:0];
  [(UIView *)self->_blurViewContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView addSubview:self->_blurViewContainerView];
  v26 = [(UIView *)self->_blurViewContainerView leftAnchor];
  v27 = [(UIView *)self->_containerView leftAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [(UIView *)self->_blurViewContainerView rightAnchor];
  v30 = [(UIView *)self->_containerView rightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  [v31 setActive:1];

  v32 = [(UIView *)self->_blurViewContainerView topAnchor];
  v33 = [(UIView *)self->_containerView topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [(UIView *)self->_blurViewContainerView bottomAnchor];
  v36 = [(UIView *)self->_containerView bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v37 setActive:1];

  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _createOrDestroyTopAffordanceViewControllerAnimated:0];
  v38 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  darkenView = self->_darkenView;
  self->_darkenView = v38;

  v40 = self->_darkenView;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self darkenViewAlpha];
  [(UIView *)v40 setAlpha:?];
  v41 = self->_darkenView;
  v42 = [MEMORY[0x277D75348] colorWithRed:0.0274509806 green:0.0431372561 blue:0.0666666701 alpha:0.5];
  [(UIView *)v41 setBackgroundColor:v42];

  [(UIView *)self->_darkenView setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = [(UIView *)self->_darkenView layer];
  [v43 setAllowsHitTesting:0];

  [(UIView *)self->_containerView addSubview:self->_darkenView];
  v44 = [(UIView *)self->_darkenView leftAnchor];
  v45 = [(UIView *)self->_containerView leftAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v46 setActive:1];

  v47 = [(UIView *)self->_darkenView rightAnchor];
  v48 = [(UIView *)self->_containerView rightAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = [(UIView *)self->_darkenView topAnchor];
  v51 = [(UIView *)self->_containerView topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  [v52 setActive:1];

  v53 = [(UIView *)self->_darkenView bottomAnchor];
  v54 = [(UIView *)self->_containerView bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
  [v55 setActive:1];
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self bs_removeChildViewController:self->_deviceApplicationSceneViewController];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  v7 = a4;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController viewWillTransitionToSize:v7 withTransitionCoordinator:width, height, v8.receiver, v8.super_class];
  [(SBTopAffordanceViewController *)self->_topAffordanceViewController viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (void)setDarkenViewAlpha:(double)a3
{
  if (self->_darkenViewAlpha != a3)
  {
    self->_darkenViewAlpha = a3;
    if ([(SBMedusaDecoratedDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      darkenView = self->_darkenView;

      [(UIView *)darkenView setAlpha:a3];
    }
  }
}

- (void)setDropInteraction:(id)a3
{
  v5 = a3;
  dropInteraction = self->_dropInteraction;
  v7 = v5;
  if (dropInteraction != v5)
  {
    if (dropInteraction && [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      [(UIView *)self->_containerView removeInteraction:self->_dropInteraction];
    }

    objc_storeStrong(&self->_dropInteraction, a3);
    if (self->_dropInteraction && [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      [(UIView *)self->_containerView addInteraction:self->_dropInteraction];
    }
  }
}

- (void)setSceneMinificationFilter:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    sceneMinificationFilter = self->_sceneMinificationFilter;
    self->_sceneMinificationFilter = v4;

    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateAsyncRendering];
  }
}

- (void)setSceneRendersAsynchronously:(BOOL)a3
{
  if (self->_sceneRendersAsynchronously != a3)
  {
    self->_sceneRendersAsynchronously = a3;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateAsyncRendering];
  }
}

- (void)setSceneFullyOccluded:(BOOL)a3
{
  if (self->_sceneFullyOccluded != a3)
  {
    self->_sceneFullyOccluded = a3;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateFullOcclusionState];
  }
}

- (void)setSceneFlattenMode:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)a2 setSceneFlattenMode:?];
    v5 = 0;
  }

  if (![(NSString *)self->_sceneFlattenMode isEqualToString:v5])
  {
    v6 = [v8 copy];
    sceneFlattenMode = self->_sceneFlattenMode;
    self->_sceneFlattenMode = v6;

    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateFlattenMode];
  }
}

- (void)_handleTopAffordanceTapGestureRecognizerAction:(id)a3
{
  v10 = a3;
  if ([v10 state] == 3)
  {
    v4 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
    [v10 locationInView:v4];
    v6 = v5;
    v8 = v7;
    v9 = [(SBTopAffordanceViewController *)self->_topAffordanceViewController effectiveWindowControlsView];
    [v4 convertPoint:v9 toView:{v6, v8}];
    if (([v9 pointInside:0 withEvent:?] & 1) == 0)
    {
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _sendStatusBarScrollToTopActionForGestureRecognizer:v10];
    }
  }
}

- (void)_sendStatusBarScrollToTopActionForGestureRecognizer:(id)a3
{
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  v5 = a3;
  v6 = [(SBDeviceApplicationSceneViewController *)deviceApplicationSceneViewController view];
  [v5 locationInView:v6];
  v8 = v7;

  v12 = [objc_alloc(MEMORY[0x277D75AB0]) initWithType:0 xPosition:v8];
  v9 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self sceneHandle];
  v10 = [v9 sceneIfExists];
  v11 = [MEMORY[0x277CBEB98] setWithObject:v12];
  [v10 sendActions:v11];
}

- (void)_handleSplitHomeScreenSwitcherKeyShortcut
{
  v3 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self layoutRole];
  v4 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  if (v3 == 1)
  {
    v5 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:2];

    v6 = 3;
    v4 = v5;
  }

  else
  {
    v6 = 2;
  }

  v7 = +[SBWorkspace mainWorkspace];
  v8 = [(UIViewController *)self _sbWindowScene];
  v9 = [v8 _fbsDisplayConfiguration];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__SBMedusaDecoratedDeviceApplicationSceneViewController__handleSplitHomeScreenSwitcherKeyShortcut__block_invoke;
  v11[3] = &unk_2783B7368;
  v12 = v4;
  v13 = self;
  v14 = v6;
  v10 = v4;
  [v7 requestTransitionWithOptions:0 displayConfiguration:v9 builder:v11 validator:0];
}

void __98__SBMedusaDecoratedDeviceApplicationSceneViewController__handleSplitHomeScreenSwitcherKeyShortcut__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setSource:51];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__SBMedusaDecoratedDeviceApplicationSceneViewController__handleSplitHomeScreenSwitcherKeyShortcut__block_invoke_2;
  v7[3] = &unk_2783B4538;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v3 modifyApplicationContext:v7];
}

void __98__SBMedusaDecoratedDeviceApplicationSceneViewController__handleSplitHomeScreenSwitcherKeyShortcut__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  [v7 setEntity:v3 forLayoutRole:1];
  v4 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [v7 setEntity:v4 forLayoutRole:2];

  v5 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  [v7 setEntity:v5 forLayoutRole:3];

  v6 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  [v7 setEntity:v6 forLayoutRole:4];

  [v7 setRequestedSpaceConfiguration:{objc_msgSend(*(a1 + 40), "spaceConfiguration")}];
  [v7 setRequestedPeekConfiguration:*(a1 + 48)];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_topAffordanceTapGestureRecognizer == a3)
  {
    return ![(SBTopAffordanceViewController *)self->_topAffordanceViewController isExpanded:v3];
  }

  else
  {
    return 1;
  }
}

- (void)_elasticValueViewControllerWillPresent:(id)a3
{
  v4 = a3;
  if (*&self->_layoutRole == __PAIR128__(1, 1))
  {
    v5 = v4;
    [(SBTopAffordanceViewController *)self->_topAffordanceViewController setHidden:1 forReason:@"Elastic HUD" animated:1];
    v4 = v5;
  }
}

- (void)_windowManagementStyleDidChange:(id)a3
{
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _createOrDestroyTopAffordanceViewControllerAnimated:1];

  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self updateTopAffordanceOverrideUserInterfaceStyle];
}

- (void)applicationSceneViewController:(id)a3 statusBarTapped:(id)a4 tapActionType:(int64_t)a5
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewController:self statusBarTapped:v7 tapActionType:a5];
}

- (void)applicationSceneViewController:(id)a3 statusBarDoubleTapped:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewController:self statusBarDoubleTapped:v5];
}

- (void)applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:self];
}

- (void)applicationSceneViewController:(id)a3 topAffordanceActionPerformed:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewController:self topAffordanceActionPerformed:a4];
}

- (BOOL)applicationSceneViewControllerIsInNonrotatingWindow:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained medusaDecoratedDeviceApplicationSceneViewControllerIsInNonrotatingWindow:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SBWindowControlsLayout)windowControlsLayoutForApplicationSceneViewController:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained windowControlsLayoutForMedusaDecoratedDeviceApplicationSceneViewController:self];
    WeakRetained = v8;
  }

  else
  {
    *&retstr->style = 0u;
    retstr->margin = 0u;
  }

  return result;
}

- (void)applicationSceneViewController:(id)a3 didUpdateStatusBarHidden:(BOOL)a4 withAnimation:(int64_t)a5
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedApplicationSceneViewController:self didUpdateStatusBarHidden:v6 withAnimation:a5];
}

- (void)_setBlurContentView:(id)a3
{
  v5 = a3;
  blurView = self->_blurView;
  if (blurView != v5)
  {
    v8 = v5;
    [(SBApplicationBlurContentView *)blurView removeFromSuperview];
    objc_storeStrong(&self->_blurView, a3);
    if (self->_blurView)
    {
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _beginRequiringSceneViewMatchMoveAnimationForReason:@"SBMedusaDecoratedDeviceApplicationSceneViewControllerBlurredReason"];
      [(SBApplicationBlurContentView *)self->_blurView setClipsToBounds:1];
      v7 = [(SBApplicationBlurContentView *)self->_blurView layer];
      [v7 setAllowsGroupOpacity:1];

      [(UIView *)self->_blurViewContainerView addSubview:self->_blurView];
    }

    else
    {
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _endRequiringSceneViewMatchMoveAnimationForReason:@"SBMedusaDecoratedDeviceApplicationSceneViewControllerBlurredReason"];
    }

    self->_isBlurred = self->_blurView != 0;
    v5 = v8;
  }
}

- (BOOL)_sceneViewHasMatchMoveAnimation
{
  v2 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
  v3 = [v2 layer];
  v4 = [v3 animationForKey:@"SceneViewMatchMoveAnimation"];
  v5 = v4 != 0;

  return v5;
}

- (void)_addSceneViewMatchMoveAnimation
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = [(SBApplicationSceneHandle *)self->_deviceApplicationSceneHandle application];
  v4 = [v3 classicAppPhoneAppRunningOnPad];

  if ((v4 & 1) == 0)
  {
    if (!SBFIsFullScreenLetterboxingAvailable() || ([(SBMedusaDecoratedDeviceApplicationSceneViewController *)self sceneHandle], v5 = objc_claimAutoreleasedReturnValue(), v6 = [SBDeviceApplicationSceneClassicWrapperView shouldUseWrapperViewForSceneHandle:v5], v5, !v6))
    {
      v7 = [MEMORY[0x277CD9EE8] animation];
      v8 = [(UIView *)self->_containerView layer];
      [v7 setSourceLayer:v8];

      [v7 setDuration:INFINITY];
      [v7 setFillMode:*MEMORY[0x277CDA230]];
      [v7 setRemovedOnCompletion:0];
      [v7 setAppliesX:0];
      [v7 setAppliesY:0];
      [v7 setAppliesScale:1];
      [v7 setUsesNormalizedCoordinates:1];
      v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
      v18[0] = v9;
      v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 0.0}];
      v18[1] = v10;
      v11 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 1.0}];
      v18[2] = v11;
      v12 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 1.0}];
      v18[3] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
      [v7 setSourcePoints:v13];

      v14 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
      v15 = [v14 layer];
      [v15 addAnimation:v7 forKey:@"SceneViewMatchMoveAnimation"];

      v16 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
      [v16 setNeedsLayout];

      v17 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
      [v17 layoutIfNeeded];
    }
  }
}

- (void)_removeSceneViewMatchMoveAnimation
{
  v3 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
  v4 = [v3 layer];
  [v4 removeAnimationForKey:@"SceneViewMatchMoveAnimation"];

  v5 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [v5 setNeedsLayout];

  v6 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [v6 layoutIfNeeded];
}

- (void)_beginRequiringSceneViewMatchMoveAnimationForReason:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)a2 _beginRequiringSceneViewMatchMoveAnimationForReason:?];
  }

  if (SBSceneLiveResizeStretchingEnabled())
  {
    matchMoveAnimationRequiringReasons = self->_matchMoveAnimationRequiringReasons;
    if (!matchMoveAnimationRequiringReasons)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = self->_matchMoveAnimationRequiringReasons;
      self->_matchMoveAnimationRequiringReasons = v6;

      matchMoveAnimationRequiringReasons = self->_matchMoveAnimationRequiringReasons;
    }

    v8 = [(NSMutableSet *)matchMoveAnimationRequiringReasons count];
    [(NSMutableSet *)self->_matchMoveAnimationRequiringReasons addObject:v9];
    if (!v8 || ![(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _sceneViewHasMatchMoveAnimation])
    {
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _addSceneViewMatchMoveAnimation];
    }
  }
}

- (void)_endRequiringSceneViewMatchMoveAnimationForReason:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)a2 _endRequiringSceneViewMatchMoveAnimationForReason:?];
  }

  v5 = [(NSMutableSet *)self->_matchMoveAnimationRequiringReasons count];
  [(NSMutableSet *)self->_matchMoveAnimationRequiringReasons removeObject:v8];
  v6 = [(NSMutableSet *)self->_matchMoveAnimationRequiringReasons count];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _removeSceneViewMatchMoveAnimation];
  }
}

- (BOOL)_wantsTopAffordance
{
  v3 = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle _windowScene];
  v4 = [v3 supportsMultitasking];

  if ([(SBSetupManager *)self->_setupManager isInSetupMode])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    IsActive = SBGuidedAccessIsActive();
    LOBYTE(v5) = 0;
    if (v4 && (IsActive & 1) == 0)
    {
      v7 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self sceneHandle];
      v8 = [v7 application];

      if ([v8 alwaysMaximizedInChamois])
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = [v8 restrictedToTheEmbeddedDisplayInChamois] ^ 1;
      }
    }
  }

  return v5;
}

- (void)_createOrDestroyTopAffordanceViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v44[4] = *MEMORY[0x277D85DE8];
  v5 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _wantsTopAffordance];
  topAffordanceViewController = self->_topAffordanceViewController;
  if (v5 && !topAffordanceViewController)
  {
    v7 = [SBTopAffordanceViewController alloc];
    v8 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self sceneHandle];
    v9 = [(SBTopAffordanceViewController *)v7 initWithDeviceApplicationSceneHandle:v8];
    v10 = self->_topAffordanceViewController;
    self->_topAffordanceViewController = v9;

    [(SBTopAffordanceViewController *)self->_topAffordanceViewController setDelegate:self];
    [(SBTopAffordanceViewController *)self->_topAffordanceViewController setHidden:self->_nubViewHidden forReason:@"MedusaDecoratedVC" animated:v3];
    v11 = self->_topAffordanceViewController;
    if ([(SBMedusaDecoratedDeviceApplicationSceneViewController *)self isNubViewHighlighted])
    {
      v12 = [SBApp isHardwareKeyboardAttached];
    }

    else
    {
      v12 = 0;
    }

    [(SBTopAffordanceViewController *)v11 setHighlighted:v12];
    v19 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTopAffordanceTapGestureRecognizerAction_];
    topAffordanceTapGestureRecognizer = self->_topAffordanceTapGestureRecognizer;
    self->_topAffordanceTapGestureRecognizer = v19;

    [(UITapGestureRecognizer *)self->_topAffordanceTapGestureRecognizer setDelegate:self];
    v21 = [(SBTopAffordanceViewController *)self->_topAffordanceViewController view];
    [v21 setAlpha:0.0];
    [v21 addGestureRecognizer:self->_topAffordanceTapGestureRecognizer];
    v22 = self->_topAffordanceViewController;
    containerView = self->_containerView;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke;
    v41[3] = &unk_2783BE4F8;
    v43 = v3;
    v42 = v21;
    v16 = v21;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self bs_addChildViewController:v22 withSuperview:containerView animated:v3 transitionBlock:v41];
    v32 = self->_containerView;
    v37 = [v16 leftAnchor];
    v36 = [(UIView *)self->_containerView leftAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v44[0] = v35;
    v34 = [v16 rightAnchor];
    v33 = [(UIView *)self->_containerView rightAnchor];
    v24 = [v34 constraintEqualToAnchor:v33];
    v44[1] = v24;
    v25 = [v16 topAnchor];
    v26 = [(UIView *)self->_containerView topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    v44[2] = v27;
    v28 = [v16 bottomAnchor];
    v29 = [(UIView *)self->_containerView bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v44[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    [(UIView *)v32 addConstraints:v31];

    v15 = &v42;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self updateTopAffordanceOverrideUserInterfaceStyle];
    goto LABEL_11;
  }

  if (!topAffordanceViewController)
  {
    LOBYTE(v5) = 1;
  }

  if (!v5)
  {
    v13 = [(SBTopAffordanceViewController *)topAffordanceViewController view];
    v14 = self->_topAffordanceViewController;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke_4;
    v38[3] = &unk_2783BE4F8;
    v40 = v3;
    v15 = &v39;
    v39 = v13;
    v16 = v13;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self bs_removeChildViewController:v14 animated:v3 transitionBlock:v38];
    v17 = self->_topAffordanceViewController;
    self->_topAffordanceViewController = 0;

    v18 = self->_topAffordanceTapGestureRecognizer;
    self->_topAffordanceTapGestureRecognizer = 0;

LABEL_11:
  }
}

void __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D75D18];
  if (*(a1 + 40))
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 0.0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke_2;
  v9[3] = &unk_2783A8C18;
  v10 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke_3;
  v7[3] = &unk_2783A9C70;
  v8 = v3;
  v6 = v3;
  [v4 animateWithDuration:v9 animations:v7 completion:v5];
}

void __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D75D18];
  if (*(a1 + 40))
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 0.0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke_5;
  v9[3] = &unk_2783A8C18;
  v10 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke_6;
  v7[3] = &unk_2783A9C70;
  v8 = v3;
  v6 = v3;
  [v4 animateWithDuration:v9 animations:v7 completion:v5];
}

- (void)_updateTopAffordanceHighlight
{
  if ([(SBMedusaDecoratedDeviceApplicationSceneViewController *)self isViewLoaded])
  {
    nubViewHighlighted = self->_nubViewHighlighted;
    v4 = SBSpaceConfigurationIsSplitView(self->_spaceConfiguration) || (self->_floatingConfiguration - 1) < 2;
    v5 = [SBApp windowSceneManager];
    v6 = [v5 connectedWindowScenes];
    v7 = [v6 count] > 1;

    v8 = v4 & [SBApp isHardwareKeyboardAttached];
    v9 = [(UIViewController *)self _sbWindowScene];
    v10 = [v9 switcherController];
    v11 = [v10 windowManagementContext];
    v12 = [v11 isFlexibleWindowingEnabled];

    topAffordanceViewController = self->_topAffordanceViewController;

    [(SBTopAffordanceViewController *)topAffordanceViewController setHighlighted:nubViewHighlighted & (v12 | v8 | v7)];
  }
}

- (void)_updateAsyncRendering
{
  sceneRendersAsynchronously = self->_sceneRendersAsynchronously;
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  if (sceneRendersAsynchronously)
  {
    v5 = [(SBDeviceApplicationSceneViewController *)deviceApplicationSceneViewController view];
    v6 = ([v5 isHidden] & 1) == 0 && self->_disableAsyncRenderingCount == 0;

    [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController setSceneRendersAsynchronously:v6];
    v8 = self->_deviceApplicationSceneViewController;
    if (v6)
    {
      sceneMinificationFilter = self->_sceneMinificationFilter;
    }

    else
    {
      sceneMinificationFilter = 0;
    }
  }

  else
  {
    [(SBDeviceApplicationSceneViewController *)deviceApplicationSceneViewController setSceneRendersAsynchronously:0];
    sceneMinificationFilter = 0;
    v8 = self->_deviceApplicationSceneViewController;
  }

  [(SBDeviceApplicationSceneViewController *)v8 setSceneMinificationFilter:sceneMinificationFilter];
}

- (BOOL)_isChamoisOrFlexibleWindowingUIEnabled
{
  v2 = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle _windowScene];
  v3 = [v2 switcherController];
  v4 = [v3 windowManagementContext];
  v5 = [v4 isChamoisOrFlexibleWindowing];

  return v5;
}

- (SBMedusaDecoratedDeviceApplicationSceneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDeviceApplicationSceneHandle:(uint64_t)a3 layoutRole:workspace:setupManager:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBMedusaDecoratedDeviceApplicationSceneViewController.m" lineNumber:142 description:{@"Scene handle must be a device application scene handle, but was of type: %@", a3}];
}

- (void)setSceneFlattenMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMedusaDecoratedDeviceApplicationSceneViewController.m" lineNumber:935 description:{@"Invalid parameter not satisfying: %@", @"sceneFlattenMode"}];
}

- (void)_beginRequiringSceneViewMatchMoveAnimationForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMedusaDecoratedDeviceApplicationSceneViewController.m" lineNumber:1145 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)_endRequiringSceneViewMatchMoveAnimationForReason:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMedusaDecoratedDeviceApplicationSceneViewController.m" lineNumber:1164 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

@end