@interface SBMedusaDecoratedDeviceApplicationSceneViewController
- (BOOL)_isChamoisOrFlexibleWindowingUIEnabled;
- (BOOL)_sceneViewHasMatchMoveAnimation;
- (BOOL)_wantsTopAffordance;
- (BOOL)applicationSceneViewControllerIsInNonrotatingWindow:(id)window;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)contentReferenceSize;
- (SBHomeGrabberView)homeGrabberView;
- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithCoder:(id)coder;
- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithDeviceApplicationSceneHandle:(id)handle layoutRole:(int64_t)role;
- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithDeviceApplicationSceneHandle:(id)handle layoutRole:(int64_t)role workspace:(id)workspace setupManager:(id)manager;
- (SBMedusaDecoratedDeviceApplicationSceneViewControllerDelegate)delegate;
- (SBWindowControlsLayout)windowControlsLayoutForApplicationSceneViewController:(SEL)controller;
- (double)blurViewIconScale;
- (id)hitTestToTopAffordance:(CGPoint)affordance window:(id)window;
- (id)statusBarAssertionWithStatusBarHidden:(BOOL)hidden nubViewHidden:(int64_t)viewHidden atLevel:(unint64_t)level;
- (void)_addSceneViewMatchMoveAnimation;
- (void)_beginRequiringSceneViewMatchMoveAnimationForReason:(id)reason;
- (void)_createOrDestroyTopAffordanceViewControllerAnimated:(BOOL)animated;
- (void)_elasticValueViewControllerWillPresent:(id)present;
- (void)_endRequiringSceneViewMatchMoveAnimationForReason:(id)reason;
- (void)_handleSplitHomeScreenSwitcherKeyShortcut;
- (void)_handleTopAffordanceTapGestureRecognizerAction:(id)action;
- (void)_removeSceneViewMatchMoveAnimation;
- (void)_sendStatusBarScrollToTopActionForGestureRecognizer:(id)recognizer;
- (void)_setBlurContentView:(id)view;
- (void)_updateAsyncRendering;
- (void)_updateCurrentTopAffordanceAlpha;
- (void)_updateTopAffordanceHighlight;
- (void)_windowManagementStyleDidChange:(id)change;
- (void)applicationSceneViewController:(id)controller didUpdateStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation;
- (void)applicationSceneViewController:(id)controller statusBarDoubleTapped:(id)tapped;
- (void)applicationSceneViewController:(id)controller statusBarTapped:(id)tapped tapActionType:(int64_t)type;
- (void)applicationSceneViewController:(id)controller topAffordanceActionPerformed:(int64_t)performed;
- (void)applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)orientations;
- (void)dealloc;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context;
- (void)loadView;
- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to forPartWithIdentifier:(id)withIdentifier;
- (void)setBlurViewIconScale:(double)scale;
- (void)setContentReferenceSize:(CGSize)size withContentOrientation:(int64_t)orientation andContainerOrientation:(int64_t)containerOrientation;
- (void)setDarkenViewAlpha:(double)alpha;
- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion;
- (void)setDropInteraction:(id)interaction;
- (void)setLayoutRole:(int64_t)role spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)floatingConfiguration sizingPolicy:(int64_t)policy;
- (void)setLiveContentBlurEnabled:(BOOL)enabled duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion;
- (void)setNubViewHidden:(BOOL)hidden;
- (void)setNubViewHighlighted:(BOOL)highlighted;
- (void)setSceneFlattenMode:(id)mode;
- (void)setSceneFullyOccluded:(BOOL)occluded;
- (void)setSceneMinificationFilter:(id)filter;
- (void)setSceneRendersAsynchronously:(BOOL)asynchronously;
- (void)statusBarAssertionDidInvalidate:(id)invalidate;
- (void)topAffordanceViewController:(id)controller requestsPerformShortcutActionWithType:(int64_t)type;
- (void)topAffordanceViewControllerWillPresentMenu:(id)menu;
- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)options selectedActionType:(int64_t)type layout:(SBWindowControlsLayout *)layout hidden:(BOOL)hidden interfaceOrientation:(int64_t)orientation;
- (void)updateTopAffordanceOverrideUserInterfaceStyle;
- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)layout;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation SBMedusaDecoratedDeviceApplicationSceneViewController

- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithDeviceApplicationSceneHandle:(id)handle layoutRole:(int64_t)role
{
  handleCopy = handle;
  v7 = +[SBWorkspace mainWorkspace];
  v8 = +[SBSetupManager sharedInstance];
  v9 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self initWithDeviceApplicationSceneHandle:handleCopy layoutRole:role workspace:v7 setupManager:v8];

  return v9;
}

- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithDeviceApplicationSceneHandle:(id)handle layoutRole:(int64_t)role workspace:(id)workspace setupManager:(id)manager
{
  handleCopy = handle;
  workspaceCopy = workspace;
  managerCopy = manager;
  if (([handleCopy isDeviceApplicationSceneHandle] & 1) == 0)
  {
    [SBMedusaDecoratedDeviceApplicationSceneViewController initWithDeviceApplicationSceneHandle:a2 layoutRole:self workspace:handleCopy setupManager:?];
  }

  v22.receiver = self;
  v22.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  v15 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v22 initWithNibName:0 bundle:0];
  v16 = v15;
  if (v15)
  {
    v15->_layoutRole = role;
    objc_storeStrong(&v15->_workspace, workspace);
    objc_storeStrong(&v16->_setupManager, manager);
    objc_storeStrong(&v16->_sceneFlattenMode, *MEMORY[0x277CDA9E8]);
    v16->_sceneFullyOccluded = [handleCopy sceneFullyOccluded];
    objc_storeStrong(&v16->_deviceApplicationSceneHandle, handle);
    [(SBDeviceApplicationSceneHandle *)v16->_deviceApplicationSceneHandle addObserver:v16];
    statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)v16->_deviceApplicationSceneHandle statusBarStateProvider];
    [statusBarStateProvider addStatusBarObserver:v16];

    v16->_nubViewHidden = 1;
    v16->_nubViewHighlighted = 0;
    v16->_darkenViewAlpha = 0.0;
    newSceneViewController = [handleCopy newSceneViewController];
    deviceApplicationSceneViewController = v16->_deviceApplicationSceneViewController;
    v16->_deviceApplicationSceneViewController = newSceneViewController;

    [(SBDeviceApplicationSceneViewController *)v16->_deviceApplicationSceneViewController setShouldDrawStatusBarInsideSceneView:1];
    [(SBDeviceApplicationSceneViewController *)v16->_deviceApplicationSceneViewController setDisplayMode:4 animationFactory:0 completion:0];
    [(SBDeviceApplicationSceneViewController *)v16->_deviceApplicationSceneViewController setDelegate:v16];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v16 selector:sel__elasticValueViewControllerWillPresent_ name:@"SBElasticValueViewControllerWillPresentNotificationName" object:0];
    [defaultCenter addObserver:v16 selector:sel__elasticValueViewControllerWillDismiss_ name:@"SBElasticValueViewControllerWillDismissNotificationName" object:0];
    [defaultCenter addObserver:v16 selector:sel__guidedAccessActivationChanged_ name:@"SBGuidedAccessActivationChangedNotification" object:0];
    [defaultCenter addObserver:v16 selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"SBHardwareKeyboardAvailabilityChangedNotification" object:0];
    [defaultCenter addObserver:v16 selector:sel__windowManagementStyleDidChange_ name:@"SBSwitcherControllerWindowManagementStyleDidChangeNotification" object:0];
    [SBApp addActiveOrientationObserver:v16];
  }

  return v16;
}

- (void)dealloc
{
  [SBApp removeActiveOrientationObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle removeObserver:self];
  statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle statusBarStateProvider];
  [statusBarStateProvider removeStatusBarObserver:self];

  [(UIApplicationSceneClientSettingsDiffInspector *)self->_applicationSceneClientSettingsDiffInspector removeAllObservers];
  v5.receiver = self;
  v5.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v5 dealloc];
}

- (void)setLiveContentBlurEnabled:(BOOL)enabled duration:(double)duration blurDelay:(double)delay iconViewScale:(double)scale began:(id)began completion:(id)completion
{
  enabledCopy = enabled;
  beganCopy = began;
  completionCopy = completion;
  if (beganCopy && self->_isBlurred != enabledCopy)
  {
    beganCopy[2](beganCopy);
  }

  v16 = [MEMORY[0x277CF0D38] factoryWithDuration:duration];
  if (enabledCopy)
  {
    if (!self->_isBlurred)
    {
      self->_isBlurred = 1;
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke;
      v57[3] = &unk_2783A98A0;
      v57[4] = self;
      v58 = completionCopy;
      v17 = MEMORY[0x223D6F7F0](v57);
      _blurContentView = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];

      if (_blurContentView)
      {
        _blurContentView2 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
        [_blurContentView2 bs_setHitTestingDisabled:0];

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
        application = [(SBApplicationSceneHandle *)self->_deviceApplicationSceneHandle application];
        bundleIdentifier = [application bundleIdentifier];

        _sbWindowScene = [(UIViewController *)self _sbWindowScene];
        iconController = [_sbWindowScene iconController];

        iconModel = [iconController iconModel];
        application2 = [(SBApplicationSceneHandle *)self->_deviceApplicationSceneHandle application];
        isWebApplication = [application2 isWebApplication];

        if (isWebApplication)
        {
          sceneIdentifier = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle sceneIdentifier];
          v33 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:sceneIdentifier];

          v34 = [iconModel leafIconForIdentifier:v33];

          v21 = bundleIdentifier;
        }

        else
        {
          v21 = bundleIdentifier;
          v34 = [iconModel applicationIconForBundleIdentifier:bundleIdentifier];
        }

        v35 = [SBApplicationBlurContentView alloc];
        [(UIView *)self->_blurViewContainerView bounds];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        view = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
        scale = [(SBApplicationBlurContentView *)v35 initWithFrame:v21 bundleIdentifier:v34 icon:view targetViewToBlur:v37 initialIconScale:v39, v41, v43, scale];

        [(SBApplicationBlurContentView *)scale setBlurDelay:delay];
        [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _setBlurContentView:scale];
        ++self->_blurViewAnimationCount;
        _blurContentView3 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __133__SBMedusaDecoratedDeviceApplicationSceneViewController_setLiveContentBlurEnabled_duration_blurDelay_iconViewScale_began_completion___block_invoke_2;
        v55[3] = &unk_2783A9348;
        v56 = v17;
        v47 = v17;
        [_blurContentView3 generateAndAnimateToBlurredSnapshotWithAnimationFactory:v16 completion:v55];
      }

      v25 = v58;
      goto LABEL_15;
    }
  }

  else if (self->_isBlurred)
  {
    self->_isBlurred = 0;
    view2 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
    [view2 setHidden:0];

    ++self->_disableAsyncRenderingCount;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateAsyncRendering];
    _blurContentView4 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
    [_blurContentView4 bs_setHitTestingDisabled:1];

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
    v50 = completionCopy;
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
  _blurContentView = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
  [_blurContentView iconViewScale];
  v4 = v3;

  return v4;
}

- (void)setBlurViewIconScale:(double)scale
{
  _blurContentView = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
  [_blurContentView setIconViewScale:scale];
}

- (void)setLayoutRole:(int64_t)role spaceConfiguration:(int64_t)configuration floatingConfiguration:(int64_t)floatingConfiguration sizingPolicy:(int64_t)policy
{
  self->_layoutRole = role;
  self->_spaceConfiguration = configuration;
  self->_floatingConfiguration = floatingConfiguration;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateTopAffordanceHighlight];
}

- (id)hitTestToTopAffordance:(CGPoint)affordance window:(id)window
{
  y = affordance.y;
  x = affordance.x;
  topAffordanceViewController = self->_topAffordanceViewController;
  windowCopy = window;
  effectiveWindowControlsView = [(SBTopAffordanceViewController *)topAffordanceViewController effectiveWindowControlsView];
  screen = [windowCopy screen];
  fixedCoordinateSpace = [screen fixedCoordinateSpace];

  [windowCopy convertPoint:fixedCoordinateSpace toCoordinateSpace:{x, y}];
  v12 = v11;
  v14 = v13;

  [effectiveWindowControlsView convertPoint:fixedCoordinateSpace fromCoordinateSpace:{v12, v14}];
  v15 = [effectiveWindowControlsView hitTest:0 withEvent:?];

  return v15;
}

- (SBMedusaDecoratedDeviceApplicationSceneViewController)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  coderCopy = coder;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  v9 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v11 initWithCoder:coderCopy];

  return v9;
}

- (void)updateTopAffordanceContextMenuWithOptions:(int64_t)options selectedActionType:(int64_t)type layout:(SBWindowControlsLayout *)layout hidden:(BOOL)hidden interfaceOrientation:(int64_t)orientation
{
  topAffordanceViewController = self->_topAffordanceViewController;
  margin = layout->margin;
  v9[0] = *&layout->style;
  v9[1] = margin;
  [(SBTopAffordanceViewController *)topAffordanceViewController updateTopAffordanceContextMenuWithOptions:options selectedActionType:type layout:v9 hidden:hidden interfaceOrientation:orientation];
}

- (void)updateWindowControlsLayout:(SBWindowControlsLayout *)layout
{
  topAffordanceViewController = self->_topAffordanceViewController;
  margin = layout->margin;
  v5[0] = *&layout->style;
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

- (void)setContentReferenceSize:(CGSize)size withContentOrientation:(int64_t)orientation andContainerOrientation:(int64_t)containerOrientation
{
  [(SBSceneViewController *)self->_deviceApplicationSceneViewController setContentReferenceSize:orientation withContentOrientation:containerOrientation andContainerOrientation:size.width, size.height];
  view = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [view setNeedsLayout];

  view2 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [view2 layoutIfNeeded];
}

- (void)setDisplayMode:(int64_t)mode animationFactory:(id)factory completion:(id)completion
{
  factoryCopy = factory;
  completionCopy = completion;
  v10 = completionCopy;
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
    [(SBDeviceApplicationSceneViewController *)v12 setDisplayMode:mode animationFactory:factoryCopy completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
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
  _sceneView = [(SBSceneViewController *)self->_deviceApplicationSceneViewController _sceneView];
  homeGrabberView = [_sceneView homeGrabberView];

  return homeGrabberView;
}

- (id)statusBarAssertionWithStatusBarHidden:(BOOL)hidden nubViewHidden:(int64_t)viewHidden atLevel:(unint64_t)level
{
  hiddenCopy = hidden;
  if (!self->_statusBarAssertions)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    statusBarAssertions = self->_statusBarAssertions;
    self->_statusBarAssertions = weakObjectsHashTable;
  }

  v11 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController statusBarAssertionWithStatusBarHidden:hiddenCopy atLevel:level];
  [v11 setNubViewHidden:viewHidden];
  [v11 addObserver:self];
  [(NSHashTable *)self->_statusBarAssertions addObject:v11];
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateCurrentTopAffordanceAlpha];

  return v11;
}

- (void)statusBarAssertionDidInvalidate:(id)invalidate
{
  [(NSHashTable *)self->_statusBarAssertions removeObject:invalidate];

  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateCurrentTopAffordanceAlpha];
}

- (void)_updateCurrentTopAffordanceAlpha
{
  if ([(NSHashTable *)self->_statusBarAssertions count])
  {
    allObjects = [(NSHashTable *)self->_statusBarAssertions allObjects];
    v4 = [allObjects sortedArrayUsingComparator:&__block_literal_global_297];

    lastObject = [v4 lastObject];
    if ([lastObject nubViewHidden] == 0x7FFFFFFFFFFFFFFFLL)
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

  _isInAnimationBlockWithAnimationsEnabled = [MEMORY[0x277D75D18] _isInAnimationBlockWithAnimationsEnabled];
  topAffordanceViewController = self->_topAffordanceViewController;

  [(SBTopAffordanceViewController *)topAffordanceViewController setHidden:nubViewHidden & 1 forReason:@"MedusaDecoratedVC" animated:_isInAnimationBlockWithAnimationsEnabled];
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

- (void)setNubViewHidden:(BOOL)hidden
{
  if (self->_nubViewHidden != hidden)
  {
    self->_nubViewHidden = hidden;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateCurrentTopAffordanceAlpha];
  }
}

- (void)setNubViewHighlighted:(BOOL)highlighted
{
  if (self->_nubViewHighlighted != highlighted)
  {
    self->_nubViewHighlighted = highlighted;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateTopAffordanceHighlight];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidBeginWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController layoutStateTransitionCoordinator:coordinatorCopy transitionDidBeginWithTransitionContext:contextCopy];
  }

  v7 = objc_opt_class();
  toLayoutState = [contextCopy toLayoutState];
  v9 = SBSafeCast(v7, toLayoutState);

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

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionWillEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController layoutStateTransitionCoordinator:coordinatorCopy transitionWillEndWithTransitionContext:contextCopy];
  }
}

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  coordinatorCopy = coordinator;
  contextCopy = context;
  if (objc_opt_respondsToSelector())
  {
    [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController layoutStateTransitionCoordinator:coordinatorCopy transitionDidEndWithTransitionContext:contextCopy];
  }
}

- (void)sceneHandle:(id)handle didUpdateClientSettings:(id)settings
{
  handleCopy = handle;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
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

  [(UIApplicationSceneClientSettingsDiffInspector *)applicationSceneClientSettingsDiffInspector inspectDiff:settingsDiff withContext:0, v13, v14, v15, v16];
}

void __93__SBMedusaDecoratedDeviceApplicationSceneViewController_sceneHandle_didUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTopAffordanceOverrideUserInterfaceStyle];
}

- (void)updateTopAffordanceOverrideUserInterfaceStyle
{
  statusBarStateProvider = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle statusBarStateProvider];
  statusBarStyle = [statusBarStateProvider statusBarStyleForPartWithIdentifier:@"trafficLightPartIdentifier"];
  if (statusBarStyle == 4)
  {
    statusBarStyle = [statusBarStateProvider statusBarStyle];
  }

  topAffordanceViewController = self->_topAffordanceViewController;
  if ((statusBarStyle & 0x3F) != 0)
  {
    [(SBTopAffordanceViewController *)topAffordanceViewController setLumaTrackingEnabled:0];
    v6 = _SBStatusBarColorStyleFromStyle(statusBarStyle) == 2;
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

- (void)topAffordanceViewController:(id)controller requestsPerformShortcutActionWithType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewController:self topAffordanceActionPerformed:type];
}

- (void)topAffordanceViewControllerWillPresentMenu:(id)menu
{
  if (![(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _isChamoisOrFlexibleWindowingUIEnabled])
  {
    v4 = +[SBWorkspace mainWorkspace];
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    _fbsDisplayConfiguration = [_sbWindowScene _fbsDisplayConfiguration];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __100__SBMedusaDecoratedDeviceApplicationSceneViewController_topAffordanceViewControllerWillPresentMenu___block_invoke_2;
    v7[3] = &unk_2783B0350;
    v7[4] = self;
    [v4 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:&__block_literal_global_60_2 validator:v7];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_topAffordanceTapGestureRecognizer != recognizer)
  {
    return 1;
  }

  topAffordanceViewController = self->_topAffordanceViewController;
  touchCopy = touch;
  view = [(SBTopAffordanceViewController *)topAffordanceViewController view];
  [touchCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  v12 = [view hitTest:0 withEvent:{v9, v11}];
  v4 = v12 != 0;

  return v4;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to forPartWithIdentifier:(id)withIdentifier
{
  if ([withIdentifier isEqualToString:{*MEMORY[0x277D775B0], to}])
  {

    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self updateTopAffordanceOverrideUserInterfaceStyle];
  }
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v19 viewWillLayoutSubviews];
  view = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  view2 = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
  if ([(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _sceneViewHasMatchMoveAnimation])
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self contentReferenceSize];
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self contentOrientation];
    SBRectWithSize();
    v17 = view2;
  }

  else
  {
    v17 = view2;
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v16 = v11;
  }

  [v17 setBounds:{v13, v14, v15, v16}];
  UIRectGetCenter();
  [view2 setCenter:?];
  _blurContentView = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _blurContentView];
  [_blurContentView setFrame:{v5, v7, v9, v11}];
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
  leftAnchor = [(UIView *)self->_containerView leftAnchor];
  leftAnchor2 = [(SBHitTestExtendedView *)v56 leftAnchor];
  v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v12 setActive:1];

  rightAnchor = [(UIView *)self->_containerView rightAnchor];
  rightAnchor2 = [(SBHitTestExtendedView *)v56 rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v15 setActive:1];

  topAnchor = [(UIView *)self->_containerView topAnchor];
  topAnchor2 = [(SBHitTestExtendedView *)v56 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  bottomAnchor = [(UIView *)self->_containerView bottomAnchor];
  bottomAnchor2 = [(SBHitTestExtendedView *)v56 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v21 setActive:1];

  dropInteraction = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self dropInteraction];
  if (dropInteraction)
  {
    [(UIView *)self->_containerView addInteraction:dropInteraction];
  }

  view = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
  [view setAutoresizingMask:0];

  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self bs_addChildViewController:self->_deviceApplicationSceneViewController withSuperview:self->_containerView];
  v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  blurViewContainerView = self->_blurViewContainerView;
  self->_blurViewContainerView = v24;

  [(UIView *)self->_blurViewContainerView setUserInteractionEnabled:0];
  [(UIView *)self->_blurViewContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_containerView addSubview:self->_blurViewContainerView];
  leftAnchor3 = [(UIView *)self->_blurViewContainerView leftAnchor];
  leftAnchor4 = [(UIView *)self->_containerView leftAnchor];
  v28 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  [v28 setActive:1];

  rightAnchor3 = [(UIView *)self->_blurViewContainerView rightAnchor];
  rightAnchor4 = [(UIView *)self->_containerView rightAnchor];
  v31 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  [v31 setActive:1];

  topAnchor3 = [(UIView *)self->_blurViewContainerView topAnchor];
  topAnchor4 = [(UIView *)self->_containerView topAnchor];
  v34 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v34 setActive:1];

  bottomAnchor3 = [(UIView *)self->_blurViewContainerView bottomAnchor];
  bottomAnchor4 = [(UIView *)self->_containerView bottomAnchor];
  v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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
  layer = [(UIView *)self->_darkenView layer];
  [layer setAllowsHitTesting:0];

  [(UIView *)self->_containerView addSubview:self->_darkenView];
  leftAnchor5 = [(UIView *)self->_darkenView leftAnchor];
  leftAnchor6 = [(UIView *)self->_containerView leftAnchor];
  v46 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  [v46 setActive:1];

  rightAnchor5 = [(UIView *)self->_darkenView rightAnchor];
  rightAnchor6 = [(UIView *)self->_containerView rightAnchor];
  v49 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  [v49 setActive:1];

  topAnchor5 = [(UIView *)self->_darkenView topAnchor];
  topAnchor6 = [(UIView *)self->_containerView topAnchor];
  v52 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v52 setActive:1];

  bottomAnchor5 = [(UIView *)self->_darkenView bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_containerView bottomAnchor];
  v55 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v55 setActive:1];
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self bs_removeChildViewController:self->_deviceApplicationSceneViewController];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = SBMedusaDecoratedDeviceApplicationSceneViewController;
  coordinatorCopy = coordinator;
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height, v8.receiver, v8.super_class];
  [(SBTopAffordanceViewController *)self->_topAffordanceViewController viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)setDarkenViewAlpha:(double)alpha
{
  if (self->_darkenViewAlpha != alpha)
  {
    self->_darkenViewAlpha = alpha;
    if ([(SBMedusaDecoratedDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      darkenView = self->_darkenView;

      [(UIView *)darkenView setAlpha:alpha];
    }
  }
}

- (void)setDropInteraction:(id)interaction
{
  interactionCopy = interaction;
  dropInteraction = self->_dropInteraction;
  v7 = interactionCopy;
  if (dropInteraction != interactionCopy)
  {
    if (dropInteraction && [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      [(UIView *)self->_containerView removeInteraction:self->_dropInteraction];
    }

    objc_storeStrong(&self->_dropInteraction, interaction);
    if (self->_dropInteraction && [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self isViewLoaded])
    {
      [(UIView *)self->_containerView addInteraction:self->_dropInteraction];
    }
  }
}

- (void)setSceneMinificationFilter:(id)filter
{
  filterCopy = filter;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [filterCopy copy];
    sceneMinificationFilter = self->_sceneMinificationFilter;
    self->_sceneMinificationFilter = v4;

    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateAsyncRendering];
  }
}

- (void)setSceneRendersAsynchronously:(BOOL)asynchronously
{
  if (self->_sceneRendersAsynchronously != asynchronously)
  {
    self->_sceneRendersAsynchronously = asynchronously;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateAsyncRendering];
  }
}

- (void)setSceneFullyOccluded:(BOOL)occluded
{
  if (self->_sceneFullyOccluded != occluded)
  {
    self->_sceneFullyOccluded = occluded;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateFullOcclusionState];
  }
}

- (void)setSceneFlattenMode:(id)mode
{
  modeCopy = mode;
  v8 = modeCopy;
  if (!modeCopy)
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)a2 setSceneFlattenMode:?];
    modeCopy = 0;
  }

  if (![(NSString *)self->_sceneFlattenMode isEqualToString:modeCopy])
  {
    v6 = [v8 copy];
    sceneFlattenMode = self->_sceneFlattenMode;
    self->_sceneFlattenMode = v6;

    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _updateFlattenMode];
  }
}

- (void)_handleTopAffordanceTapGestureRecognizerAction:(id)action
{
  actionCopy = action;
  if ([actionCopy state] == 3)
  {
    view = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
    [actionCopy locationInView:view];
    v6 = v5;
    v8 = v7;
    effectiveWindowControlsView = [(SBTopAffordanceViewController *)self->_topAffordanceViewController effectiveWindowControlsView];
    [view convertPoint:effectiveWindowControlsView toView:{v6, v8}];
    if (([effectiveWindowControlsView pointInside:0 withEvent:?] & 1) == 0)
    {
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _sendStatusBarScrollToTopActionForGestureRecognizer:actionCopy];
    }
  }
}

- (void)_sendStatusBarScrollToTopActionForGestureRecognizer:(id)recognizer
{
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  recognizerCopy = recognizer;
  view = [(SBDeviceApplicationSceneViewController *)deviceApplicationSceneViewController view];
  [recognizerCopy locationInView:view];
  v8 = v7;

  v12 = [objc_alloc(MEMORY[0x277D75AB0]) initWithType:0 xPosition:v8];
  sceneHandle = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self sceneHandle];
  sceneIfExists = [sceneHandle sceneIfExists];
  v11 = [MEMORY[0x277CBEB98] setWithObject:v12];
  [sceneIfExists sendActions:v11];
}

- (void)_handleSplitHomeScreenSwitcherKeyShortcut
{
  layoutRole = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self layoutRole];
  v4 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  if (layoutRole == 1)
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
  _sbWindowScene = [(UIViewController *)self _sbWindowScene];
  _fbsDisplayConfiguration = [_sbWindowScene _fbsDisplayConfiguration];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__SBMedusaDecoratedDeviceApplicationSceneViewController__handleSplitHomeScreenSwitcherKeyShortcut__block_invoke;
  v11[3] = &unk_2783B7368;
  v12 = v4;
  selfCopy = self;
  v14 = v6;
  v10 = v4;
  [v7 requestTransitionWithOptions:0 displayConfiguration:_fbsDisplayConfiguration builder:v11 validator:0];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_topAffordanceTapGestureRecognizer == begin)
  {
    return ![(SBTopAffordanceViewController *)self->_topAffordanceViewController isExpanded:v3];
  }

  else
  {
    return 1;
  }
}

- (void)_elasticValueViewControllerWillPresent:(id)present
{
  presentCopy = present;
  if (*&self->_layoutRole == __PAIR128__(1, 1))
  {
    v5 = presentCopy;
    [(SBTopAffordanceViewController *)self->_topAffordanceViewController setHidden:1 forReason:@"Elastic HUD" animated:1];
    presentCopy = v5;
  }
}

- (void)_windowManagementStyleDidChange:(id)change
{
  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _createOrDestroyTopAffordanceViewControllerAnimated:1];

  [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self updateTopAffordanceOverrideUserInterfaceStyle];
}

- (void)applicationSceneViewController:(id)controller statusBarTapped:(id)tapped tapActionType:(int64_t)type
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewController:self statusBarTapped:tappedCopy tapActionType:type];
}

- (void)applicationSceneViewController:(id)controller statusBarDoubleTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewController:self statusBarDoubleTapped:tappedCopy];
}

- (void)applicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:(id)orientations
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewControllerDidUpdateHomeAffordanceSupportedOrientations:self];
}

- (void)applicationSceneViewController:(id)controller topAffordanceActionPerformed:(int64_t)performed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedDeviceApplicationSceneViewController:self topAffordanceActionPerformed:performed];
}

- (BOOL)applicationSceneViewControllerIsInNonrotatingWindow:(id)window
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

- (SBWindowControlsLayout)windowControlsLayoutForApplicationSceneViewController:(SEL)controller
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

- (void)applicationSceneViewController:(id)controller didUpdateStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation
{
  hiddenCopy = hidden;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained medusaDecoratedApplicationSceneViewController:self didUpdateStatusBarHidden:hiddenCopy withAnimation:animation];
}

- (void)_setBlurContentView:(id)view
{
  viewCopy = view;
  blurView = self->_blurView;
  if (blurView != viewCopy)
  {
    v8 = viewCopy;
    [(SBApplicationBlurContentView *)blurView removeFromSuperview];
    objc_storeStrong(&self->_blurView, view);
    if (self->_blurView)
    {
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _beginRequiringSceneViewMatchMoveAnimationForReason:@"SBMedusaDecoratedDeviceApplicationSceneViewControllerBlurredReason"];
      [(SBApplicationBlurContentView *)self->_blurView setClipsToBounds:1];
      layer = [(SBApplicationBlurContentView *)self->_blurView layer];
      [layer setAllowsGroupOpacity:1];

      [(UIView *)self->_blurViewContainerView addSubview:self->_blurView];
    }

    else
    {
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _endRequiringSceneViewMatchMoveAnimationForReason:@"SBMedusaDecoratedDeviceApplicationSceneViewControllerBlurredReason"];
    }

    self->_isBlurred = self->_blurView != 0;
    viewCopy = v8;
  }
}

- (BOOL)_sceneViewHasMatchMoveAnimation
{
  view = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
  layer = [view layer];
  v4 = [layer animationForKey:@"SceneViewMatchMoveAnimation"];
  v5 = v4 != 0;

  return v5;
}

- (void)_addSceneViewMatchMoveAnimation
{
  v18[4] = *MEMORY[0x277D85DE8];
  application = [(SBApplicationSceneHandle *)self->_deviceApplicationSceneHandle application];
  classicAppPhoneAppRunningOnPad = [application classicAppPhoneAppRunningOnPad];

  if ((classicAppPhoneAppRunningOnPad & 1) == 0)
  {
    if (!SBFIsFullScreenLetterboxingAvailable() || ([(SBMedusaDecoratedDeviceApplicationSceneViewController *)self sceneHandle], v5 = objc_claimAutoreleasedReturnValue(), v6 = [SBDeviceApplicationSceneClassicWrapperView shouldUseWrapperViewForSceneHandle:v5], v5, !v6))
    {
      animation = [MEMORY[0x277CD9EE8] animation];
      layer = [(UIView *)self->_containerView layer];
      [animation setSourceLayer:layer];

      [animation setDuration:INFINITY];
      [animation setFillMode:*MEMORY[0x277CDA230]];
      [animation setRemovedOnCompletion:0];
      [animation setAppliesX:0];
      [animation setAppliesY:0];
      [animation setAppliesScale:1];
      [animation setUsesNormalizedCoordinates:1];
      v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 0.0}];
      v18[0] = v9;
      v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 0.0}];
      v18[1] = v10;
      v11 = [MEMORY[0x277CCAE60] valueWithCGPoint:{1.0, 1.0}];
      v18[2] = v11;
      v12 = [MEMORY[0x277CCAE60] valueWithCGPoint:{0.0, 1.0}];
      v18[3] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
      [animation setSourcePoints:v13];

      view = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
      layer2 = [view layer];
      [layer2 addAnimation:animation forKey:@"SceneViewMatchMoveAnimation"];

      view2 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
      [view2 setNeedsLayout];

      view3 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
      [view3 layoutIfNeeded];
    }
  }
}

- (void)_removeSceneViewMatchMoveAnimation
{
  view = [(SBDeviceApplicationSceneViewController *)self->_deviceApplicationSceneViewController view];
  layer = [view layer];
  [layer removeAnimationForKey:@"SceneViewMatchMoveAnimation"];

  view2 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [view2 setNeedsLayout];

  view3 = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self view];
  [view3 layoutIfNeeded];
}

- (void)_beginRequiringSceneViewMatchMoveAnimationForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
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
    [(NSMutableSet *)self->_matchMoveAnimationRequiringReasons addObject:reasonCopy];
    if (!v8 || ![(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _sceneViewHasMatchMoveAnimation])
    {
      [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _addSceneViewMatchMoveAnimation];
    }
  }
}

- (void)_endRequiringSceneViewMatchMoveAnimationForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)a2 _endRequiringSceneViewMatchMoveAnimationForReason:?];
  }

  v5 = [(NSMutableSet *)self->_matchMoveAnimationRequiringReasons count];
  [(NSMutableSet *)self->_matchMoveAnimationRequiringReasons removeObject:reasonCopy];
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
  _windowScene = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle _windowScene];
  supportsMultitasking = [_windowScene supportsMultitasking];

  if ([(SBSetupManager *)self->_setupManager isInSetupMode])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    IsActive = SBGuidedAccessIsActive();
    LOBYTE(v5) = 0;
    if (supportsMultitasking && (IsActive & 1) == 0)
    {
      sceneHandle = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self sceneHandle];
      application = [sceneHandle application];

      if ([application alwaysMaximizedInChamois])
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = [application restrictedToTheEmbeddedDisplayInChamois] ^ 1;
      }
    }
  }

  return v5;
}

- (void)_createOrDestroyTopAffordanceViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v44[4] = *MEMORY[0x277D85DE8];
  _wantsTopAffordance = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self _wantsTopAffordance];
  topAffordanceViewController = self->_topAffordanceViewController;
  if (_wantsTopAffordance && !topAffordanceViewController)
  {
    v7 = [SBTopAffordanceViewController alloc];
    sceneHandle = [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self sceneHandle];
    v9 = [(SBTopAffordanceViewController *)v7 initWithDeviceApplicationSceneHandle:sceneHandle];
    v10 = self->_topAffordanceViewController;
    self->_topAffordanceViewController = v9;

    [(SBTopAffordanceViewController *)self->_topAffordanceViewController setDelegate:self];
    [(SBTopAffordanceViewController *)self->_topAffordanceViewController setHidden:self->_nubViewHidden forReason:@"MedusaDecoratedVC" animated:animatedCopy];
    v11 = self->_topAffordanceViewController;
    if ([(SBMedusaDecoratedDeviceApplicationSceneViewController *)self isNubViewHighlighted])
    {
      isHardwareKeyboardAttached = [SBApp isHardwareKeyboardAttached];
    }

    else
    {
      isHardwareKeyboardAttached = 0;
    }

    [(SBTopAffordanceViewController *)v11 setHighlighted:isHardwareKeyboardAttached];
    v19 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleTopAffordanceTapGestureRecognizerAction_];
    topAffordanceTapGestureRecognizer = self->_topAffordanceTapGestureRecognizer;
    self->_topAffordanceTapGestureRecognizer = v19;

    [(UITapGestureRecognizer *)self->_topAffordanceTapGestureRecognizer setDelegate:self];
    view = [(SBTopAffordanceViewController *)self->_topAffordanceViewController view];
    [view setAlpha:0.0];
    [view addGestureRecognizer:self->_topAffordanceTapGestureRecognizer];
    v22 = self->_topAffordanceViewController;
    containerView = self->_containerView;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke;
    v41[3] = &unk_2783BE4F8;
    v43 = animatedCopy;
    v42 = view;
    v16 = view;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self bs_addChildViewController:v22 withSuperview:containerView animated:animatedCopy transitionBlock:v41];
    v32 = self->_containerView;
    leftAnchor = [v16 leftAnchor];
    leftAnchor2 = [(UIView *)self->_containerView leftAnchor];
    v35 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v44[0] = v35;
    rightAnchor = [v16 rightAnchor];
    rightAnchor2 = [(UIView *)self->_containerView rightAnchor];
    v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v44[1] = v24;
    topAnchor = [v16 topAnchor];
    topAnchor2 = [(UIView *)self->_containerView topAnchor];
    v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v44[2] = v27;
    bottomAnchor = [v16 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_containerView bottomAnchor];
    v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v44[3] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
    [(UIView *)v32 addConstraints:v31];

    v15 = &v42;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self updateTopAffordanceOverrideUserInterfaceStyle];
    goto LABEL_11;
  }

  if (!topAffordanceViewController)
  {
    LOBYTE(_wantsTopAffordance) = 1;
  }

  if (!_wantsTopAffordance)
  {
    view2 = [(SBTopAffordanceViewController *)topAffordanceViewController view];
    v14 = self->_topAffordanceViewController;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __109__SBMedusaDecoratedDeviceApplicationSceneViewController__createOrDestroyTopAffordanceViewControllerAnimated___block_invoke_4;
    v38[3] = &unk_2783BE4F8;
    v40 = animatedCopy;
    v15 = &v39;
    v39 = view2;
    v16 = view2;
    [(SBMedusaDecoratedDeviceApplicationSceneViewController *)self bs_removeChildViewController:v14 animated:animatedCopy transitionBlock:v38];
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
    windowSceneManager = [SBApp windowSceneManager];
    connectedWindowScenes = [windowSceneManager connectedWindowScenes];
    v7 = [connectedWindowScenes count] > 1;

    v8 = v4 & [SBApp isHardwareKeyboardAttached];
    _sbWindowScene = [(UIViewController *)self _sbWindowScene];
    switcherController = [_sbWindowScene switcherController];
    windowManagementContext = [switcherController windowManagementContext];
    isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

    topAffordanceViewController = self->_topAffordanceViewController;

    [(SBTopAffordanceViewController *)topAffordanceViewController setHighlighted:nubViewHighlighted & (isFlexibleWindowingEnabled | v8 | v7)];
  }
}

- (void)_updateAsyncRendering
{
  sceneRendersAsynchronously = self->_sceneRendersAsynchronously;
  deviceApplicationSceneViewController = self->_deviceApplicationSceneViewController;
  if (sceneRendersAsynchronously)
  {
    view = [(SBDeviceApplicationSceneViewController *)deviceApplicationSceneViewController view];
    v6 = ([view isHidden] & 1) == 0 && self->_disableAsyncRenderingCount == 0;

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
  _windowScene = [(SBDeviceApplicationSceneHandle *)self->_deviceApplicationSceneHandle _windowScene];
  switcherController = [_windowScene switcherController];
  windowManagementContext = [switcherController windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  return isChamoisOrFlexibleWindowing;
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