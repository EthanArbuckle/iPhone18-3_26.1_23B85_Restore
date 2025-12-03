@interface UISplitViewController
+ (BOOL)_devicePrefersOverlayInRegularWidth;
+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation;
- (BOOL)_allowsDimmedSecondaryAsDeepestUnambiguousResponder;
- (BOOL)_canTileSidebarColumn:(int64_t)column;
- (BOOL)_forceDisplayModeBarButtonHidden;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_ignoresSheetContext;
- (BOOL)_isViewControllerForObservableScrollViewAmbiguous;
- (BOOL)_navigationControllerShouldNotAdjustTransitioningSizeForChildContainer:(id)container;
- (BOOL)_shouldUseFluidSidebarGestures;
- (BOOL)_shouldUseSeparateStatusBarStyles;
- (BOOL)_showsSeparators;
- (BOOL)_super_disableAutomaticKeyboardBehavior;
- (BOOL)_super_prefersHomeIndicatorAutoHidden;
- (BOOL)_super_prefersInterfaceOrientationLocked;
- (BOOL)_super_prefersPointerLocked;
- (BOOL)_super_shouldUpdateFocusInContext:(id)context;
- (BOOL)_supplementaryColumnAdoptsPrimaryBackgroundStyle;
- (BOOL)_supportsGlobalSearchHosting;
- (BOOL)_visibleToggleButtonRequiresPresentsWithGesture;
- (BOOL)_wrapsNavigationController:(id *)controller;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isShowingColumn:(int64_t)column;
- (BOOL)showsSecondaryOnlyButton;
- (CGFloat)maximumSupplementaryColumnWidth;
- (CGFloat)minimumSupplementaryColumnWidth;
- (CGFloat)preferredPrimaryColumnWidth;
- (CGFloat)preferredSupplementaryColumnWidth;
- (CGFloat)preferredSupplementaryColumnWidthFraction;
- (CGFloat)supplementaryColumnWidth;
- (CGRect)_frameForChildContentContainer:(id)container;
- (CGSize)_contentSizeForChildViewController:(id)controller inPopoverController:(id)popoverController;
- (CGSize)_super_preferredContentSize;
- (CGSize)_super_sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (CGSize)preferredContentSize;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NSArray)_primaryEdgeAdditionalBarButtonItemGroups;
- (NSArray)_secondaryEdgeAdditionalBarButtonItemGroups;
- (NSArray)possibleStates;
- (NSString)description;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)controller;
- (UIScreenEdgePanGestureRecognizer)_fluidOpenSidebarPresentationGestureRecognizer;
- (UISlidingBarConfiguration)configuration;
- (UISlidingBarState)currentState;
- (UISlidingBarStateRequest)stateRequest;
- (UISplitViewController)initWithCoder:(NSCoder *)coder;
- (UISplitViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (UISplitViewController)initWithStyle:(UISplitViewControllerStyle)style;
- (UISplitViewControllerDisplayModeButtonVisibility)displayModeButtonVisibility;
- (UISplitViewControllerSplitBehavior)preferredSplitBehavior;
- (UISplitViewControllerSplitBehavior)splitBehavior;
- (UIViewController)viewControllerForColumn:(UISplitViewControllerColumn)column;
- (_UITabContainerView)_tabBarHostedView;
- (double)effectiveMinimumInspectorColumnWidth;
- (double)maximumInspectorColumnWidth;
- (double)minimumInspectorColumnWidth;
- (double)minimumSecondaryColumnWidth;
- (double)preferredInspectorColumnWidth;
- (double)preferredInspectorColumnWidthFraction;
- (double)preferredSecondaryColumnWidth;
- (double)preferredSecondaryColumnWidthFraction;
- (id)_deepestActionResponder;
- (id)_effectiveInteractionActivityTrackingBaseName;
- (id)_navigationController:(id)controller navigationBarAdditionalActionsForBackButtonMenu:(id)menu;
- (id)_navigationControllerForTriggeringToolbarCustomizationWithSender:(id)sender;
- (id)_nextResponderUsingTargetActionStrategyFromChildViewController:(id)controller didTraverseToParentViewController:(BOOL *)viewController;
- (id)_panelImpl;
- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)_sharedImpl;
- (id)_super_childViewControllerForStatusBarStyle;
- (id)_super_childViewControllersToSendViewWillTransitionToSize;
- (id)_super_deepestActionResponder;
- (id)_super_effectiveActivityItemsConfiguration;
- (id)_super_multitaskingDragExclusionRects;
- (id)_super_overridingPreferredFocusEnvironment;
- (id)_super_preferredFocusEnvironments;
- (id)_super_preferredFocusedView;
- (id)_topLevelViewControllerForColumn:(void *)column;
- (id)_viewControllerForObservableScrollView;
- (id)transitionCoordinator;
- (int64_t)_columnForMonitoredNavigationController:(id)controller;
- (int64_t)_columnForViewController:(id)controller;
- (int64_t)_preferredModalPresentationStyle;
- (int64_t)_subclassPreferredFocusedViewPrioritizationType;
- (int64_t)_super_preferredInterfaceOrientationForPresentation;
- (unint64_t)_super_preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)_super_supportedInterfaceOrientations;
- (void)_allowingMutationsInDelegateCallback:(id)callback;
- (void)_animateToRequest:(id)request;
- (void)_commonInit;
- (void)_didChangeChildModalViewControllers;
- (void)_didChangeToFirstResponder:(id)responder;
- (void)_didEndSnapshotSession:(id)session;
- (void)_intelligenceCollectSubelementsIn:(CGRect)in using:(id)using transformToRoot:(id)root;
- (void)_navigationController:(id)controller navigationBar:(id)bar itemBackButtonUpdated:(id)updated;
- (void)_navigationController:(id)controller navigationBar:(id)bar topItemUpdatedContentLayout:(id)layout;
- (void)_navigationControllerDidChangeNavigationBarHidden:(id)hidden;
- (void)_navigationControllerDidUpdateNavigationBarSize:(id)size;
- (void)_navigationControllerDidUpdateStack:(id)stack;
- (void)_navigationControllerDidUpdateTopViewController:(id)controller;
- (void)_preparePresentationControllerForPresenting:(id)presenting;
- (void)_safeAreaInsetsDidChangeForView;
- (void)_setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:(BOOL)responder;
- (void)_setDisplayModeButtonItemTitle:(id)title;
- (void)_setForceDisplayModeBarButtonHidden:(BOOL)hidden;
- (void)_setIgnoresSheetContext:(BOOL)context;
- (void)_setPrefersOverlayInRegularWidthPhone:(BOOL)phone;
- (void)_setPrimaryEdgeAdditionalBarButtonItemGroups:(id)groups;
- (void)_setSecondaryEdgeAdditionalBarButtonItemGroups:(id)groups;
- (void)_setShowsSeparators:(BOOL)separators;
- (void)_setSupplementaryColumnAdoptsPrimaryBackgroundStyle:(BOOL)style;
- (void)_setTabBarHostedView:(id)view;
- (void)_setUsesDeviceOverlayPreferences:(BOOL)preferences;
- (void)_setUsesExtraWidePrimaryColumn:(BOOL)column;
- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)gesture;
- (void)_super_didUpdateFocusInContext:(id)context;
- (void)_super_removeChildViewController:(id)controller;
- (void)_super_setView:(id)view;
- (void)_super_viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)_super_willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
- (void)_tabBarControllerDidChangeSelection:(id)selection;
- (void)_updateDisplayModeButtonItem;
- (void)_updateLayoutForStatusBarAndInterfaceOrientation;
- (void)_updateScrollEdgeBehaviorForDetailNavigationController;
- (void)_viewControllerChildViewControllersDidChange:(id)change;
- (void)_willBeginSnapshotSession:(id)session;
- (void)addChildViewController:(id)controller;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)didMoveToParentViewController:(id)controller;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)hideColumn:(UISplitViewControllerColumn)column;
- (void)removeChildViewController:(id)controller;
- (void)removeFromParentViewController;
- (void)runToolbarCustomizationPalette:(id)palette;
- (void)setAutomaticallyAdjustsScrollViewInsets:(BOOL)insets;
- (void)setConfiguration:(id)configuration;
- (void)setDefinesPresentationContext:(BOOL)context;
- (void)setDelegate:(id)delegate;
- (void)setDisplayModeButtonVisibility:(UISplitViewControllerDisplayModeButtonVisibility)displayModeButtonVisibility;
- (void)setEdgesForExtendedLayout:(unint64_t)layout;
- (void)setExtendedLayoutIncludesOpaqueBars:(BOOL)bars;
- (void)setGutterWidth:(float)width;
- (void)setHidesMasterViewInPortrait:(BOOL)portrait;
- (void)setMaximumInspectorColumnWidth:(double)width;
- (void)setMaximumPrimaryColumnWidth:(CGFloat)maximumPrimaryColumnWidth;
- (void)setMaximumSupplementaryColumnWidth:(CGFloat)maximumSupplementaryColumnWidth;
- (void)setMinimumInspectorColumnWidth:(double)width;
- (void)setMinimumPrimaryColumnWidth:(CGFloat)minimumPrimaryColumnWidth;
- (void)setMinimumSecondaryColumnWidth:(double)width;
- (void)setMinimumSupplementaryColumnWidth:(CGFloat)minimumSupplementaryColumnWidth;
- (void)setModalPresentationCapturesStatusBarAppearance:(BOOL)appearance;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)setModalTransitionStyle:(int64_t)style;
- (void)setOverrideTraitCollection:(id)collection;
- (void)setPreferredContentSize:(CGSize)size;
- (void)setPreferredDisplayMode:(UISplitViewControllerDisplayMode)preferredDisplayMode;
- (void)setPreferredInspectorColumnWidth:(double)width;
- (void)setPreferredInspectorColumnWidthFraction:(double)fraction;
- (void)setPreferredPrimaryColumnWidth:(CGFloat)preferredPrimaryColumnWidth;
- (void)setPreferredPrimaryColumnWidthFraction:(CGFloat)preferredPrimaryColumnWidthFraction;
- (void)setPreferredSecondaryColumnWidth:(double)width;
- (void)setPreferredSecondaryColumnWidthFraction:(double)fraction;
- (void)setPreferredSplitBehavior:(UISplitViewControllerSplitBehavior)preferredSplitBehavior;
- (void)setPreferredSupplementaryColumnWidth:(CGFloat)preferredSupplementaryColumnWidth;
- (void)setPreferredSupplementaryColumnWidthFraction:(CGFloat)preferredSupplementaryColumnWidthFraction;
- (void)setPrimaryBackgroundStyle:(UISplitViewControllerBackgroundStyle)primaryBackgroundStyle;
- (void)setPrimaryEdge:(UISplitViewControllerPrimaryEdge)primaryEdge;
- (void)setProvidesPresentationContextTransitionStyle:(BOOL)style;
- (void)setRestoresFocusAfterTransition:(BOOL)transition;
- (void)setShowsSecondaryOnlyButton:(BOOL)showsSecondaryOnlyButton;
- (void)setStateRequest:(id)request;
- (void)setStyle:(int64_t)style;
- (void)setView:(id)view;
- (void)setViewController:(UIViewController *)vc forColumn:(UISplitViewControllerColumn)column;
- (void)setViewControllers:(NSArray *)viewControllers;
- (void)setViewRespectsSystemMinimumLayoutMargins:(BOOL)margins;
- (void)showColumn:(UISplitViewControllerColumn)column;
- (void)toggleInspector:(id)inspector;
- (void)toggleSidebar:(id)sidebar;
- (void)traitCollectionDidChange:(id)change;
- (void)unloadViewForced:(BOOL)forced;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation UISplitViewController

- (id)_viewControllerForObservableScrollView
{
  if ([(UIViewController *)self _shouldRequestViewControllerForObservableScrollViewFromPresentedViewController])
  {
    v10.receiver = self;
    v10.super_class = UISplitViewController;
    _viewControllerForObservableScrollView = [(UIViewController *)&v10 _viewControllerForObservableScrollView];
  }

  else
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    _viewControllerForObservableScrollView2 = [_sharedImpl _viewControllerForObservableScrollView];
    v6 = _viewControllerForObservableScrollView2;
    if (_viewControllerForObservableScrollView2)
    {
      _viewControllerForObservableScrollView3 = _viewControllerForObservableScrollView2;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = UISplitViewController;
      _viewControllerForObservableScrollView3 = [(UIViewController *)&v9 _viewControllerForObservableScrollView];
    }

    _viewControllerForObservableScrollView = _viewControllerForObservableScrollView3;
  }

  return _viewControllerForObservableScrollView;
}

- (BOOL)_supportsGlobalSearchHosting
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_SVCGlobalSearchEnabled, @"SVCGlobalSearchEnabled", _UIInternalPreferenceUpdateBool) & 1) == 0 && !byte_1EA95E294)
  {
    return 0;
  }

  _lastNotifiedTraitCollection = [(UIViewController *)self _lastNotifiedTraitCollection];
  v5 = _lastNotifiedTraitCollection;
  if (_lastNotifiedTraitCollection)
  {
    traitCollection = _lastNotifiedTraitCollection;
  }

  else
  {
    traitCollection = [(UIViewController *)self traitCollection];
  }

  v7 = traitCollection;

  if (([v7 userInterfaceIdiom] | 4) == 5)
  {
    supportsGlobalSearchHosting = [(_UISplitViewControllerImplementing *)self->_impl supportsGlobalSearchHosting];
  }

  else
  {
    supportsGlobalSearchHosting = 0;
  }

  return supportsGlobalSearchHosting;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 viewWillLayoutSubviews];
  [(_UISplitViewControllerImplementing *)self->_impl viewWillLayoutSubviews];
}

- (void)_commonInit
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"UISplitViewController is only supported when running under UIUserInterfaceIdiomPad"];
    }
  }

  v5 = +[UISplitViewControllerImplFactory sharedInstance];
  v6 = [v5 implClassForSplitViewController:self];

  _defaultVisualStyle = [v6 _defaultVisualStyle];
  v8 = +[_UIVisualStyleRegistry defaultRegistry];
  [v8 registerVisualStyleClass:_defaultVisualStyle forStylableClass:objc_opt_class()];

  v9 = +[UIDevice currentDevice];
  v10 = +[_UIVisualStyleRegistry registryForIdiom:](_UIVisualStyleRegistry, "registryForIdiom:", [v9 userInterfaceIdiom]);
  v11 = [v10 visualStyleClassForStylableClass:objc_opt_class()];

  v12 = [[v11 alloc] initWithSplitViewController:self];
  styleProvider = self->_styleProvider;
  self->_styleProvider = v12;

  v14 = [[v6 alloc] initWithSplitViewController:self];
  impl = self->_impl;
  self->_impl = v14;

  [(_UISplitViewControllerImplementing *)self->_impl _commonInit];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__willBeginSnapshotSession_ name:@"UISceneWillBeginSystemSnapshotSequence" object:0];
  [defaultCenter addObserver:self selector:sel__didEndSnapshotSession_ name:@"UISceneDidCompleteSystemSnapshotSequence" object:0];
}

- (id)_sharedImpl
{
  v2 = self->_impl;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (unint64_t)_super_supportedInterfaceOrientations
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  return [(UIViewController *)&v3 supportedInterfaceOrientations];
}

- (void)_updateLayoutForStatusBarAndInterfaceOrientation
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 _updateLayoutForStatusBarAndInterfaceOrientation];
  [(_UISplitViewControllerImplementing *)self->_impl _updateLayoutForStatusBarAndInterfaceOrientation];
}

- (void)_safeAreaInsetsDidChangeForView
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 _safeAreaInsetsDidChangeForView];
  [(_UISplitViewControllerImplementing *)self->_impl viewSafeAreaInsetsDidChange];
}

- (int64_t)_preferredModalPresentationStyle
{
  if (!self)
  {
    return 4;
  }

  if (!dyld_program_sdk_at_least())
  {
    return 4;
  }

  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    return 2;
  }

  return 4;
}

- (void)_updateScrollEdgeBehaviorForDetailNavigationController
{
  masterViewController = [(UISplitViewController *)self masterViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    detailViewController = [(UISplitViewController *)self detailViewController];
    goto LABEL_6;
  }

  navigationBar = [masterViewController navigationBar];
  prefersLargeTitles = [navigationBar prefersLargeTitles];

  detailViewController = [(UISplitViewController *)self detailViewController];
  if (!prefersLargeTitles || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_6:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  navigationBar2 = [detailViewController navigationBar];
  if (_UIBarAppearanceAPIVersion() >= 1 && (_UIBarsApplyChromelessEverywhere() & 1) == 0)
  {
    traitCollection = [(UIViewController *)self traitCollection];
    v8 = [traitCollection verticalSizeClass] != 1;

    [navigationBar2 _setForceScrollEdgeAppearance:v8];
  }

LABEL_11:
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = UISplitViewController;
  v3 = [(UISplitViewController *)&v6 description];
  v4 = [v3 mutableCopy];

  if (os_variant_has_internal_diagnostics())
  {
    [v4 appendFormat:@" impl=%p", self->_impl];
  }

  return v4;
}

- (BOOL)_isViewControllerForObservableScrollViewAmbiguous
{
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  v4 = _sharedImpl;
  if (_sharedImpl)
  {
    _isViewControllerForObservableScrollViewAmbiguous = [_sharedImpl _isViewControllerForObservableScrollViewAmbiguous];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UISplitViewController;
    _isViewControllerForObservableScrollViewAmbiguous = [(UIViewController *)&v8 _isViewControllerForObservableScrollViewAmbiguous];
  }

  v6 = _isViewControllerForObservableScrollViewAmbiguous;

  return v6;
}

- (id)transitionCoordinator
{
  if (!-[_UISplitViewControllerImplementing style](self->_impl, "style") || (-[UISplitViewController _sharedImpl](self, "_sharedImpl"), v3 = objc_claimAutoreleasedReturnValue(), [v3 transitionCoordinator], transitionCoordinator = objc_claimAutoreleasedReturnValue(), v3, !transitionCoordinator))
  {
    v6.receiver = self;
    v6.super_class = UISplitViewController;
    transitionCoordinator = [(UIViewController *)&v6 transitionCoordinator];
  }

  return transitionCoordinator;
}

- (id)_panelImpl
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    impl = self->_impl;
  }

  else
  {
    impl = 0;
  }

  return impl;
}

- (UISplitViewControllerSplitBehavior)preferredSplitBehavior
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  preferredSplitBehavior = [_sharedImpl preferredSplitBehavior];

  return preferredSplitBehavior;
}

- (CGFloat)preferredPrimaryColumnWidth
{
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl preferredPrimaryColumnWidth];
  v4 = v3;

  return v4;
}

- (CGSize)preferredContentSize
{
  v12.receiver = self;
  v12.super_class = UISplitViewController;
  [(UIViewController *)&v12 preferredContentSize];
  v4 = v3;
  v6 = v5;
  if (((dyld_program_sdk_at_least() & 1) != 0 || [(UISplitViewController *)self _alwaysAllowsSystemPreferredContentSize]) && v4 == *MEMORY[0x1E695F060] && v6 == *(MEMORY[0x1E695F060] + 8))
  {
    [(_UISplitViewControllerImplementing *)self->_impl _preferredContentSize];
    v4 = v8;
    v6 = v9;
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (BOOL)_super_disableAutomaticKeyboardBehavior
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  return [(UIResponder *)&v3 _disableAutomaticKeyboardBehavior];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 viewDidLayoutSubviews];
  [(_UISplitViewControllerImplementing *)self->_impl viewDidLayoutSubviews];
}

- (UISplitViewControllerDisplayModeButtonVisibility)displayModeButtonVisibility
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  displayModeButtonVisibility = [_sharedImpl displayModeButtonVisibility];

  return displayModeButtonVisibility;
}

- (void)_intelligenceCollectSubelementsIn:(CGRect)in using:(id)using transformToRoot:(id)root
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v11 = _Block_copy(root);
  _Block_copy(v11);
  usingCopy = using;
  selfCopy = self;
  sub_188E7DDA0(usingCopy, selfCopy, v11, x, y, width, height);
  _Block_release(v11);
  _Block_release(v11);
}

- (UISplitViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  v10.receiver = self;
  v10.super_class = UISplitViewController;
  v5 = [(UIViewController *)&v10 initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  v6 = v5;
  if (v5)
  {
    [(UISplitViewController *)v5 _commonInit];
    if ([(UISplitViewController *)v6 _shouldInitializeColumnStyle])
    {
      _sharedImpl = [(UISplitViewController *)v6 _sharedImpl];
      if (!_sharedImpl)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v6 file:@"UISplitViewController.m" lineNumber:131 description:@"Wrong implementation class for column-style UISplitViewController support"];
      }

      [_sharedImpl setStyle:1];
    }
  }

  return v6;
}

- (UISplitViewController)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v8.receiver = self;
  v8.super_class = UISplitViewController;
  v5 = [(UIViewController *)&v8 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UISplitViewController *)v5 _commonInit];
    [(_UISplitViewControllerImplementing *)v6->_impl _initWithCoder:v4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  coderCopy = coder;
  [(UIViewController *)&v5 encodeWithCoder:coderCopy];
  [(_UISplitViewControllerImplementing *)self->_impl encodeWithCoder:coderCopy, v5.receiver, v5.super_class];
}

- (UISplitViewController)initWithStyle:(UISplitViewControllerStyle)style
{
  if (style == UISplitViewControllerStyleUnspecified)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewController.m" lineNumber:162 description:@"API misuse. -initWithStyle: may not be used with UISplitViewControllerStyleUnspecified"];
  }

  v12.receiver = self;
  v12.super_class = UISplitViewController;
  v6 = [(UIViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_initializerForcedColumnStyle = 1;
    [(UISplitViewController *)v6 _commonInit];
    _sharedImpl = [(UISplitViewController *)v7 _sharedImpl];
    if (!_sharedImpl)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:v7 file:@"UISplitViewController.m" lineNumber:173 description:@"Wrong implementation class for column-style UISplitViewController support"];
    }

    [_sharedImpl setStyle:style];
  }

  return v7;
}

- (void)setStyle:(int64_t)style
{
  if (!style)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISplitViewController.m" lineNumber:186 description:@"SPI misuse. -setStyle: should be used by IB to set up UISplitViewController for column-style behavior using UISplitViewControllerStyleDoubleColumn or -TripleColumn"];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setStyle:style];
}

- (void)setShowsSecondaryOnlyButton:(BOOL)showsSecondaryOnlyButton
{
  v3 = showsSecondaryOnlyButton;
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setShowsSecondaryOnlyButton:v3];
}

- (BOOL)showsSecondaryOnlyButton
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  showsSecondaryOnlyButton = [_sharedImpl showsSecondaryOnlyButton];

  return showsSecondaryOnlyButton;
}

- (void)setPreferredSplitBehavior:(UISplitViewControllerSplitBehavior)preferredSplitBehavior
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setPreferredSplitBehavior:preferredSplitBehavior];
}

- (UISplitViewControllerSplitBehavior)splitBehavior
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  splitBehavior = [_sharedImpl splitBehavior];

  return splitBehavior;
}

- (void)setViewController:(UIViewController *)vc forColumn:(UISplitViewControllerColumn)column
{
  v7 = vc;
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if (column != UISplitViewControllerColumnCompact || (-[UISplitViewController _sharedImpl](self, "_sharedImpl"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 inCollapsingToProposedTopColumnCallback], v8, (v9 & 1) == 0))
  {
    if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
    {
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D940];
      v12 = NSStringFromSelector(a2);
      [v10 raise:v11 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v12}];
    }
  }

  if (v7 && (column - 2) >= 3 && column && (column != UISplitViewControllerColumnSupplementary || [(_UISplitViewControllerImplementing *)self->_impl style]!= 2))
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v15 = _UISplitViewControllerColumnDescription(column);
    v16 = _UISplitViewControllerStyleDescription([(_UISplitViewControllerImplementing *)self->_impl style]);
    [v13 raise:v14 format:{@"Non-nil view controller not accepted for %@ column in %@ UISplitViewController", v15, v16}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setViewController:v7 forColumn:column];
}

- (UIViewController)viewControllerForColumn:(UISplitViewControllerColumn)column
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  v6 = [_sharedImpl viewControllerForColumn:column];

  return v6;
}

- (id)_topLevelViewControllerForColumn:(void *)column
{
  if (column)
  {
    _sharedImpl = [column _sharedImpl];
    v4 = [_sharedImpl _topLevelViewControllerForColumn:a2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)hideColumn:(UISplitViewControllerColumn)column
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  if (([_sharedImpl inCollapsingToProposedTopColumnCallback] & 1) == 0 && (objc_msgSend(_sharedImpl, "inExpandingToProposedDisplayModeCallback") & 1) == 0 && -[_UISplitViewControllerImplementing lockedForDelegateCallback](self->_impl, "lockedForDelegateCallback"))
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  if (column == UISplitViewControllerColumnCompact)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Programmatic column hiding not supported for Compact column of UISplitViewController"];
  }

  [_sharedImpl hideColumn:column];
}

- (void)showColumn:(UISplitViewControllerColumn)column
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  lockedForDelegateCallback = [(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback];
  v7 = MEMORY[0x1E695D940];
  if (lockedForDelegateCallback)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = NSStringFromSelector(a2);
    [v8 raise:v9 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v10}];
  }

  if (column == UISplitViewControllerColumnCompact)
  {
    [MEMORY[0x1E695DF30] raise:*v7 format:@"Programmatic column showing not supported for Compact column of UISplitViewController"];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl showColumn:column];
}

- (void)setPreferredSupplementaryColumnWidth:(CGFloat)preferredSupplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setPreferredSupplementaryColumnWidth:preferredSupplementaryColumnWidth];
}

- (CGFloat)preferredSupplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl preferredSupplementaryColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setPreferredSupplementaryColumnWidthFraction:(CGFloat)preferredSupplementaryColumnWidthFraction
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setPreferredSupplementaryColumnWidthFraction:preferredSupplementaryColumnWidthFraction];
}

- (CGFloat)preferredSupplementaryColumnWidthFraction
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl preferredSupplementaryColumnWidthFraction];
  v5 = v4;

  return v5;
}

- (void)setMinimumSupplementaryColumnWidth:(CGFloat)minimumSupplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setMinimumSupplementaryColumnWidth:minimumSupplementaryColumnWidth];
}

- (CGFloat)minimumSupplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl minimumSupplementaryColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setMaximumSupplementaryColumnWidth:(CGFloat)maximumSupplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setMaximumSupplementaryColumnWidth:maximumSupplementaryColumnWidth];
}

- (CGFloat)maximumSupplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl maximumSupplementaryColumnWidth];
  v5 = v4;

  return v5;
}

- (CGFloat)supplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl supplementaryColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setPreferredSecondaryColumnWidthFraction:(double)fraction
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setPreferredSecondaryColumnWidthFraction:fraction];
}

- (double)preferredSecondaryColumnWidthFraction
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl preferredSecondaryColumnWidthFraction];
  v5 = v4;

  return v5;
}

- (void)setPreferredSecondaryColumnWidth:(double)width
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setPreferredSecondaryColumnWidth:width];
}

- (double)preferredSecondaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl preferredSecondaryColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setMinimumSecondaryColumnWidth:(double)width
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setMinimumSecondaryColumnWidth:width];
}

- (double)minimumSecondaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl minimumSecondaryColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setPreferredInspectorColumnWidthFraction:(double)fraction
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setPreferredInspectorColumnWidthFraction:fraction];
}

- (double)preferredInspectorColumnWidthFraction
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl preferredInspectorColumnWidthFraction];
  v5 = v4;

  return v5;
}

- (void)setPreferredInspectorColumnWidth:(double)width
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setPreferredInspectorColumnWidth:width];
}

- (double)preferredInspectorColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl preferredInspectorColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setMinimumInspectorColumnWidth:(double)width
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setMinimumInspectorColumnWidth:width];
}

- (double)effectiveMinimumInspectorColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl effectiveMinimumInspectorColumnWidth];
  v5 = v4;

  return v5;
}

- (double)minimumInspectorColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl minimumInspectorColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setMaximumInspectorColumnWidth:(double)width
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setMaximumInspectorColumnWidth:width];
}

- (double)maximumInspectorColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl maximumInspectorColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setDisplayModeButtonVisibility:(UISplitViewControllerDisplayModeButtonVisibility)displayModeButtonVisibility
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setDisplayModeButtonVisibility:displayModeButtonVisibility];
}

- (void)setViewControllers:(NSArray *)viewControllers
{
  v8 = viewControllers;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v7}];
  }

  [(_UISplitViewControllerImplementing *)self->_impl setViewControllers:v8];
}

- (void)setDelegate:(id)delegate
{
  v8 = delegate;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v7}];
  }

  [(_UISplitViewControllerImplementing *)self->_impl setDelegate:v8];
}

- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _setVisibleToggleButtonRequiresPresentsWithGesture:gestureCopy];
  }
}

- (BOOL)_visibleToggleButtonRequiresPresentsWithGesture
{
  style = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (style)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    _visibleToggleButtonRequiresPresentsWithGesture = [_sharedImpl _visibleToggleButtonRequiresPresentsWithGesture];

    LOBYTE(style) = _visibleToggleButtonRequiresPresentsWithGesture;
  }

  return style;
}

- (void)_setForceDisplayModeBarButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _setForceDisplayModeBarButtonHidden:hiddenCopy];
  }
}

- (BOOL)_forceDisplayModeBarButtonHidden
{
  style = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (style)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    _forceDisplayModeBarButtonHidden = [_sharedImpl _forceDisplayModeBarButtonHidden];

    LOBYTE(style) = _forceDisplayModeBarButtonHidden;
  }

  return style;
}

- (void)_setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:(BOOL)responder
{
  responderCopy = responder;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:responderCopy];
  }
}

- (BOOL)_allowsDimmedSecondaryAsDeepestUnambiguousResponder
{
  style = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (style)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    _allowsDimmedSecondaryAsDeepestUnambiguousResponder = [_sharedImpl _allowsDimmedSecondaryAsDeepestUnambiguousResponder];

    LOBYTE(style) = _allowsDimmedSecondaryAsDeepestUnambiguousResponder;
  }

  return style;
}

- (void)_setIgnoresSheetContext:(BOOL)context
{
  contextCopy = context;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _setIgnoresSheetContext:contextCopy];
  }
}

- (BOOL)_ignoresSheetContext
{
  style = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (style)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    _ignoresSheetContext = [_sharedImpl _ignoresSheetContext];

    LOBYTE(style) = _ignoresSheetContext;
  }

  return style;
}

- (void)_setShowsSeparators:(BOOL)separators
{
  separatorsCopy = separators;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl _setShowsSeparators:separatorsCopy];
}

- (BOOL)_showsSeparators
{
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  _showsSeparators = [_sharedImpl _showsSeparators];

  return _showsSeparators;
}

- (void)setPreferredDisplayMode:(UISplitViewControllerDisplayMode)preferredDisplayMode
{
  style = [(_UISplitViewControllerImplementing *)self->_impl style];
  v7 = 6;
  if (!style)
  {
    v7 = 3;
  }

  if (preferredDisplayMode < 0 || v7 < preferredDisplayMode)
  {
    NSLog(&cfstr_SCallerIsTryin.isa, "[UISplitViewController setPreferredDisplayMode:]", preferredDisplayMode, self);
  }

  else
  {
    if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = NSStringFromSelector(a2);
      [v8 raise:v9 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v10}];
    }

    impl = self->_impl;

    [(_UISplitViewControllerImplementing *)impl setPreferredDisplayMode:preferredDisplayMode];
  }
}

- (void)setPreferredPrimaryColumnWidth:(CGFloat)preferredPrimaryColumnWidth
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setPreferredPrimaryColumnWidth:preferredPrimaryColumnWidth];
}

- (void)setPreferredPrimaryColumnWidthFraction:(CGFloat)preferredPrimaryColumnWidthFraction
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setPreferredPrimaryColumnWidthFraction:preferredPrimaryColumnWidthFraction];
}

- (void)setMinimumPrimaryColumnWidth:(CGFloat)minimumPrimaryColumnWidth
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setMinimumPrimaryColumnWidth:minimumPrimaryColumnWidth];
}

- (void)setMaximumPrimaryColumnWidth:(CGFloat)maximumPrimaryColumnWidth
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setMaximumPrimaryColumnWidth:maximumPrimaryColumnWidth];
}

- (void)didMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 didMoveToParentViewController:controller];
}

- (BOOL)isShowingColumn:(int64_t)column
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  LOBYTE(column) = [_sharedImpl isShowingColumn:column];

  return column;
}

- (id)_effectiveInteractionActivityTrackingBaseName
{
  interactionActivityTrackingBaseName = [(UIViewController *)self interactionActivityTrackingBaseName];
  if (!interactionActivityTrackingBaseName)
  {
    if ([(UISplitViewController *)self isMemberOfClass:objc_opt_class()])
    {
      masterViewController = [(UISplitViewController *)self masterViewController];
      _effectiveInteractionActivityTrackingBaseName = [masterViewController _effectiveInteractionActivityTrackingBaseName];

      if (_effectiveInteractionActivityTrackingBaseName)
      {
        interactionActivityTrackingBaseName = [@"UISVC-" stringByAppendingString:_effectiveInteractionActivityTrackingBaseName];
      }

      else
      {
        interactionActivityTrackingBaseName = 0;
      }
    }

    else
    {
      v6 = objc_opt_class();
      interactionActivityTrackingBaseName = NSStringFromClass(v6);
    }
  }

  return interactionActivityTrackingBaseName;
}

- (void)setPrimaryEdge:(UISplitViewControllerPrimaryEdge)primaryEdge
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setPrimaryEdge:primaryEdge];
}

- (void)setGutterWidth:(float)width
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v9}];
  }

  impl = self->_impl;
  *&v6 = width;

  [(_UISplitViewControllerImplementing *)impl setGutterWidth:v6];
}

- (void)setHidesMasterViewInPortrait:(BOOL)portrait
{
  portraitCopy = portrait;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setHidesMasterViewInPortrait:portraitCopy];
}

- (void)_setDisplayModeButtonItemTitle:(id)title
{
  titleCopy = title;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v7}];
  }

  [(_UISplitViewControllerImplementing *)self->_impl _setDisplayModeButtonItemTitle:titleCopy];
}

+ (BOOL)_devicePrefersOverlayInRegularWidth
{
  if (qword_1ED49BFB0 != -1)
  {
    dispatch_once(&qword_1ED49BFB0, &__block_literal_global_151);
  }

  return _MergedGlobals_15_1;
}

void __60__UISplitViewController__devicePrefersOverlayInRegularWidth__block_invoke()
{
  v0 = +[UIScreen _embeddedScreen];
  _MergedGlobals_15_1 = _UIScreenIsPhyiscallyLargePhone([v0 _screenType]);
}

- (void)_setPrefersOverlayInRegularWidthPhone:(BOOL)phone
{
  phoneCopy = phone;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setPrefersOverlayInRegularWidthPhone:phoneCopy];
}

- (void)_setUsesDeviceOverlayPreferences:(BOOL)preferences
{
  preferencesCopy = preferences;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setUsesDeviceOverlayPreferences:preferencesCopy];
}

- (void)_setUsesExtraWidePrimaryColumn:(BOOL)column
{
  columnCopy = column;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl _setUsesExtraWidePrimaryColumn:columnCopy];
}

- (void)_allowingMutationsInDelegateCallback:(id)callback
{
  callbackCopy = callback;
  if (callbackCopy)
  {
    v6 = callbackCopy;
    if ([(_UISplitViewControllerImplementing *)self->_impl style])
    {
      _sharedImpl = [(UISplitViewController *)self _sharedImpl];
      [_sharedImpl _allowingMutationsInDelegateCallback:v6];
    }

    else
    {
      v6[2]();
    }

    callbackCopy = v6;
  }
}

- (BOOL)_canTileSidebarColumn:(int64_t)column
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  LOBYTE(column) = [_sharedImpl canTileSidebarColumn:column];

  return column;
}

- (void)_setPrimaryEdgeAdditionalBarButtonItemGroups:(id)groups
{
  groupsCopy = groups;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setPrimaryEdgeAdditionalBarButtonItemGroups:groupsCopy];
}

- (NSArray)_primaryEdgeAdditionalBarButtonItemGroups
{
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  primaryEdgeAdditionalBarButtonItemGroups = [_sharedImpl primaryEdgeAdditionalBarButtonItemGroups];

  return primaryEdgeAdditionalBarButtonItemGroups;
}

- (void)_setSecondaryEdgeAdditionalBarButtonItemGroups:(id)groups
{
  groupsCopy = groups;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setSecondaryEdgeAdditionalBarButtonItemGroups:groupsCopy];
}

- (NSArray)_secondaryEdgeAdditionalBarButtonItemGroups
{
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  secondaryEdgeAdditionalBarButtonItemGroups = [_sharedImpl secondaryEdgeAdditionalBarButtonItemGroups];

  return secondaryEdgeAdditionalBarButtonItemGroups;
}

- (void)_preparePresentationControllerForPresenting:(id)presenting
{
  v6.receiver = self;
  v6.super_class = UISplitViewController;
  presentingCopy = presenting;
  [(UIViewController *)&v6 _preparePresentationControllerForPresenting:presentingCopy];
  v5 = [(UISplitViewController *)self _sharedImpl:v6.receiver];
  [v5 _preparePresentationControllerForPresenting:presentingCopy];
}

- (void)_viewControllerChildViewControllersDidChange:(id)change
{
  changeCopy = change;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _viewControllerChildViewControllersDidChange:changeCopy];
  }
}

- (void)_tabBarControllerDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl _tabBarControllerDidChangeSelection:selectionCopy];
}

- (void)_navigationControllerDidUpdateStack:(id)stack
{
  stackCopy = stack;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl _navigationControllerDidUpdateStack:stackCopy];
}

- (void)_navigationControllerDidUpdateTopViewController:(id)controller
{
  controllerCopy = controller;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl _navigationControllerDidUpdateTopViewController:controllerCopy];
}

- (void)_navigationControllerDidUpdateNavigationBarSize:(id)size
{
  sizeCopy = size;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl _navigationControllerDidUpdateNavigationBarSize:sizeCopy];
}

- (void)_navigationControllerDidChangeNavigationBarHidden:(id)hidden
{
  hiddenCopy = hidden;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl _navigationControllerDidChangeNavigationBarHidden:hiddenCopy];
}

- (void)_navigationController:(id)controller navigationBar:(id)bar topItemUpdatedContentLayout:(id)layout
{
  controllerCopy = controller;
  barCopy = bar;
  layoutCopy = layout;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _navigationController:controllerCopy navigationBar:barCopy topItemUpdatedContentLayout:layoutCopy];
  }
}

- (void)_navigationController:(id)controller navigationBar:(id)bar itemBackButtonUpdated:(id)updated
{
  controllerCopy = controller;
  barCopy = bar;
  updatedCopy = updated;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _navigationController:controllerCopy navigationBar:barCopy itemBackButtonUpdated:updatedCopy];
  }
}

- (id)_navigationController:(id)controller navigationBarAdditionalActionsForBackButtonMenu:(id)menu
{
  controllerCopy = controller;
  menuCopy = menu;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    v9 = [_sharedImpl _navigationController:controllerCopy navigationBarAdditionalActionsForBackButtonMenu:menuCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_navigationControllerShouldNotAdjustTransitioningSizeForChildContainer:(id)container
{
  containerCopy = container;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    v6 = [_sharedImpl _navigationControllerShouldNotAdjustTransitioningSizeForChildContainer:containerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_columnForViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy && [(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    v6 = [_sharedImpl _columnForViewController:controllerCopy];
  }

  else
  {
    v6 = 999;
  }

  return v6;
}

- (int64_t)_columnForMonitoredNavigationController:(id)controller
{
  controllerCopy = controller;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  if (_sharedImpl)
  {
    _sharedImpl2 = [(UISplitViewController *)self _sharedImpl];
    v7 = [_sharedImpl2 _columnForMonitoredNavigationController:controllerCopy];
  }

  else
  {
    v7 = 999;
  }

  return v7;
}

- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)controller
{
  controllerCopy = controller;
  v5 = 0.0;
  if (controllerCopy)
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ([(_UISplitViewControllerImplementing *)self->_impl style])
    {
      _sharedImpl = [(UISplitViewController *)self _sharedImpl];
      [_sharedImpl _tvOSColumnStyleExtraInsetsForChildViewController:controllerCopy];
      v5 = v10;
      v6 = v11;
      v7 = v12;
      v8 = v13;
    }
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIScreenEdgePanGestureRecognizer)_fluidOpenSidebarPresentationGestureRecognizer
{
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  _fluidOpenSidebarPresentationGestureRecognizer = [_sharedImpl _fluidOpenSidebarPresentationGestureRecognizer];

  return _fluidOpenSidebarPresentationGestureRecognizer;
}

- (BOOL)_shouldUseFluidSidebarGestures
{
  style = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (style)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    _shouldUseFluidSidebarGestures = [_sharedImpl _shouldUseFluidSidebarGestures];

    LOBYTE(style) = _shouldUseFluidSidebarGestures;
  }

  return style;
}

- (CGSize)_contentSizeForChildViewController:(id)controller inPopoverController:(id)popoverController
{
  [(_UISplitViewControllerImplementing *)self->_impl _contentSizeForChildViewController:controller inPopoverController:popoverController];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_willBeginSnapshotSession:(id)session
{
  object = [session object];
  if (object)
  {
    v8 = object;
    viewIfLoaded = [(UIViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    windowScene = [window windowScene];

    object = v8;
    if (v8 == windowScene)
    {
      [(_UISplitViewControllerImplementing *)self->_impl _willBeginSnapshotSession];
      object = v8;
    }
  }
}

- (void)_didEndSnapshotSession:(id)session
{
  object = [session object];
  if (object)
  {
    v8 = object;
    viewIfLoaded = [(UIViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    windowScene = [window windowScene];

    object = v8;
    if (v8 == windowScene)
    {
      [(_UISplitViewControllerImplementing *)self->_impl _didEndSnapshotSession];
      object = v8;
    }
  }
}

- (void)setPrimaryBackgroundStyle:(UISplitViewControllerBackgroundStyle)primaryBackgroundStyle
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setPrimaryBackgroundStyle:primaryBackgroundStyle];
}

- (void)_setSupplementaryColumnAdoptsPrimaryBackgroundStyle:(BOOL)style
{
  styleCopy = style;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setSupplementaryColumnAdoptsPrimaryBackgroundStyle:styleCopy];
}

- (BOOL)_supplementaryColumnAdoptsPrimaryBackgroundStyle
{
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  supplementaryColumnAdoptsPrimaryBackgroundStyle = [_sharedImpl supplementaryColumnAdoptsPrimaryBackgroundStyle];

  return supplementaryColumnAdoptsPrimaryBackgroundStyle;
}

- (void)toggleSidebar:(id)sidebar
{
  sidebarCopy = sidebar;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _triggerSidebarKeyCommandAction:sidebarCopy];
  }
}

- (void)toggleInspector:(id)inspector
{
  inspectorCopy = inspector;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _triggerInspectorKeyCommandAction:inspectorCopy];
  }
}

- (void)runToolbarCustomizationPalette:(id)palette
{
  paletteCopy = palette;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl _triggerToolbarCustomizationCommandAction:paletteCopy];
}

- (id)_navigationControllerForTriggeringToolbarCustomizationWithSender:(id)sender
{
  senderCopy = sender;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  v6 = [_sharedImpl _navigationControllerForTriggeringToolbarCustomizationWithSender:senderCopy];

  return v6;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_toggleSidebar_ == action)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    _allowsTriggeringSidebarKeyCommandAction = [_sharedImpl _allowsTriggeringSidebarKeyCommandAction];
LABEL_8:
    v7 = _allowsTriggeringSidebarKeyCommandAction;

    goto LABEL_9;
  }

  if (sel_toggleInspector_ == action)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    _allowsTriggeringSidebarKeyCommandAction = [_sharedImpl _allowsTriggeringInspectorKeyCommandAction];
    goto LABEL_8;
  }

  if (sel_runToolbarCustomizationPalette_ == action)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    _allowsTriggeringSidebarKeyCommandAction = [_sharedImpl _allowsTriggeringToolbarCustomizationCommandActionWithSender:senderCopy];
    goto LABEL_8;
  }

  v11.receiver = self;
  v11.super_class = UISplitViewController;
  v7 = [(UIViewController *)&v11 canPerformAction:action withSender:senderCopy];
LABEL_9:

  return v7;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == sel_toggleSidebar_)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _validateTriggerSidebarKeyCommand:commandCopy];
LABEL_6:

    goto LABEL_7;
  }

  if ([commandCopy action] == sel_toggleInspector_)
  {
    _sharedImpl = [(UISplitViewController *)self _sharedImpl];
    [_sharedImpl _validateTriggerInspectorKeyCommand:commandCopy];
    goto LABEL_6;
  }

  v6.receiver = self;
  v6.super_class = UISplitViewController;
  [(UIResponder *)&v6 validateCommand:commandCopy];
LABEL_7:
}

- (void)setView:(id)view
{
  viewCopy = view;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v7}];
  }

  [(_UISplitViewControllerImplementing *)self->_impl setView:viewCopy];
}

- (void)_super_setView:(id)view
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 setView:view];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 viewWillAppear:?];
  [(_UISplitViewControllerImplementing *)self->_impl viewWillAppear:appearCopy];
  [(UISplitViewController *)self _updateScrollEdgeBehaviorForDetailNavigationController];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 viewDidAppear:?];
  [(_UISplitViewControllerImplementing *)self->_impl viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 viewWillDisappear:?];
  [(_UISplitViewControllerImplementing *)self->_impl viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 viewDidDisappear:?];
  [(_UISplitViewControllerImplementing *)self->_impl viewDidDisappear:disappearCopy];
}

- (void)addChildViewController:(id)controller
{
  controllerCopy = controller;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 addChildViewController:controllerCopy];
  [(UISplitViewController *)self _updateScrollEdgeBehaviorForDetailNavigationController];
}

- (void)setDefinesPresentationContext:(BOOL)context
{
  contextCopy = context;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setDefinesPresentationContext:contextCopy];
}

- (void)setProvidesPresentationContextTransitionStyle:(BOOL)style
{
  styleCopy = style;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setProvidesPresentationContextTransitionStyle:styleCopy];
}

- (void)setRestoresFocusAfterTransition:(BOOL)transition
{
  transitionCopy = transition;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setRestoresFocusAfterTransition:transitionCopy];
}

- (void)setModalTransitionStyle:(int64_t)style
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setModalTransitionStyle:style];
}

- (void)setModalPresentationStyle:(int64_t)style
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setModalPresentationStyle:style];
}

- (void)setModalPresentationCapturesStatusBarAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setModalPresentationCapturesStatusBarAppearance:appearanceCopy];
}

- (void)setEdgesForExtendedLayout:(unint64_t)layout
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setEdgesForExtendedLayout:layout];
}

- (void)setExtendedLayoutIncludesOpaqueBars:(BOOL)bars
{
  barsCopy = bars;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setExtendedLayoutIncludesOpaqueBars:barsCopy];
}

- (void)setAutomaticallyAdjustsScrollViewInsets:(BOOL)insets
{
  insetsCopy = insets;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setAutomaticallyAdjustsScrollViewInsets:insetsCopy];
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v9}];
  }

  v10.receiver = self;
  v10.super_class = UISplitViewController;
  [(UIViewController *)&v10 setPreferredContentSize:width, height];
}

- (CGSize)_super_preferredContentSize
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  [(UIViewController *)&v4 preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setOverrideTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setOverrideTraitCollection:collectionCopy];
}

- (void)setViewRespectsSystemMinimumLayoutMargins:(BOOL)margins
{
  marginsCopy = margins;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setViewRespectsSystemMinimumLayoutMargins:marginsCopy];
}

- (void)removeFromParentViewController
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = NSStringFromSelector(a2);
    [v4 raise:v5 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v6}];
  }

  v7.receiver = self;
  v7.super_class = UISplitViewController;
  [(UIViewController *)&v7 removeFromParentViewController];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  [(_UISplitViewControllerImplementing *)self->_impl sizeForChildContentContainer:container withParentContainerSize:size.width, size.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_super_sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  v6.receiver = self;
  v6.super_class = UISplitViewController;
  [(UIViewController *)&v6 sizeForChildContentContainer:container withParentContainerSize:size.width, size.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_super_willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  [(UIViewController *)&v4 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
}

- (void)traitCollectionDidChange:(id)change
{
  [(_UISplitViewControllerImplementing *)self->_impl traitCollectionDidChange:change];

  [(UISplitViewController *)self _updateScrollEdgeBehaviorForDetailNavigationController];
}

- (void)_super_viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  [(UIViewController *)&v4 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
}

- (id)_super_preferredFocusedView
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  preferredFocusedView = [(UIViewController *)&v4 preferredFocusedView];

  return preferredFocusedView;
}

- (int64_t)_subclassPreferredFocusedViewPrioritizationType
{
  if (!qword_1ED49BFB8)
  {
    qword_1ED49BFB8 = [UISplitViewController instanceMethodForSelector:sel_preferredFocusedView];
    qword_1ED49BFC0 = [UISplitViewController instanceMethodForSelector:sel_preferredFocusEnvironments];
  }

  v3 = [(UISplitViewController *)self methodForSelector:sel_preferredFocusedView];
  v4 = [(UISplitViewController *)self methodForSelector:sel_preferredFocusEnvironments];
  if (v3)
  {
    v5 = v3 == qword_1ED49BFB8;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (v4)
  {
    v7 = v4 == qword_1ED49BFC0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)_super_preferredFocusEnvironments
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  preferredFocusEnvironments = [(UIViewController *)&v4 preferredFocusEnvironments];

  return preferredFocusEnvironments;
}

- (id)_super_overridingPreferredFocusEnvironment
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  _overridingPreferredFocusEnvironment = [(UIViewController *)&v4 _overridingPreferredFocusEnvironment];

  return _overridingPreferredFocusEnvironment;
}

- (BOOL)_super_shouldUpdateFocusInContext:(id)context
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  return [(UIViewController *)&v4 shouldUpdateFocusInContext:context];
}

- (BOOL)_shouldUseSeparateStatusBarStyles
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISplitViewAutomaticStatusBarStyleSeparationMode, @"UISplitViewAutomaticStatusBarStyleSeparationMode", _UIInternalPreferenceUpdateInteger) & 1) != 0 || !qword_1ED48AC70)
  {
    if (![(UISplitViewController *)self _shouldUseNewStatusBarBehavior])
    {
      return 0;
    }
  }

  else if (qword_1ED48AC70 < 1)
  {
    return 0;
  }

  if ([(UISplitViewController *)self isCollapsed])
  {
    return 0;
  }

  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    return 1;
  }

  viewControllers = [(UISplitViewController *)self viewControllers];
  v3 = [viewControllers count] == 2;

  return v3;
}

- (id)_super_childViewControllerForStatusBarStyle
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  childViewControllerForStatusBarStyle = [(UIViewController *)&v4 childViewControllerForStatusBarStyle];

  return childViewControllerForStatusBarStyle;
}

- (BOOL)_super_prefersPointerLocked
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  return [(UIViewController *)&v3 prefersPointerLocked];
}

- (BOOL)_super_prefersInterfaceOrientationLocked
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  return [(UIViewController *)&v3 prefersInterfaceOrientationLocked];
}

- (BOOL)_super_prefersHomeIndicatorAutoHidden
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  return [(UIViewController *)&v3 prefersHomeIndicatorAutoHidden];
}

- (unint64_t)_super_preferredScreenEdgesDeferringSystemGestures
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  return [(UIViewController *)&v3 preferredScreenEdgesDeferringSystemGestures];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    impl = self->_impl;

    [(_UISplitViewControllerImplementing *)impl willRotateToInterfaceOrientation:orientation duration:duration];
  }
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    impl = self->_impl;

    [(_UISplitViewControllerImplementing *)impl willAnimateRotationToInterfaceOrientation:orientation duration:duration];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    impl = self->_impl;

    [(_UISplitViewControllerImplementing *)impl didRotateFromInterfaceOrientation:orientation];
  }
}

- (BOOL)_hasPreferredInterfaceOrientationForPresentation
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  if ([(UIViewController *)&v4 _hasPreferredInterfaceOrientationForPresentation])
  {
    return 1;
  }

  else
  {
    return [(_UISplitViewControllerImplementing *)self->_impl _hasPreferredInterfaceOrientationForPresentation];
  }
}

- (int64_t)_super_preferredInterfaceOrientationForPresentation
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  return [(UIViewController *)&v3 preferredInterfaceOrientationForPresentation];
}

- (void)removeChildViewController:(id)controller
{
  controllerCopy = controller;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v7}];
  }

  [(_UISplitViewControllerImplementing *)self->_impl removeChildViewController:controllerCopy];
}

- (void)_super_removeChildViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 removeChildViewController:controller];
}

- (void)unloadViewForced:(BOOL)forced
{
  forcedCopy = forced;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 unloadViewForced:?];
  [(_UISplitViewControllerImplementing *)self->_impl unloadViewForced:forcedCopy];
}

- (void)_super_didUpdateFocusInContext:(id)context
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 _didUpdateFocusInContext:context];
}

- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  if (self && dyld_program_sdk_at_least() && [(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v13.receiver = self;
    v13.super_class = UISplitViewController;
    v11 = [(UIViewController *)&v13 _presentationControllerForPresentedController:controllerCopy presentingController:presentingControllerCopy sourceController:sourceControllerCopy];
  }

  else
  {
    v11 = [[_UISheetPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];
    [(UISheetPresentationController *)v11 _setWantsBottomAttached:1];
  }

  return v11;
}

- (id)_super_multitaskingDragExclusionRects
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  _multitaskingDragExclusionRects = [(UIViewController *)&v4 _multitaskingDragExclusionRects];

  return _multitaskingDragExclusionRects;
}

- (CGRect)_frameForChildContentContainer:(id)container
{
  [(_UISplitViewControllerImplementing *)self->_impl _frameForChildContentContainer:container];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation
{
  v3 = objc_opt_class();

  return [self doesOverrideViewControllerMethod:sel_preferredInterfaceOrientationForPresentation inBaseClass:v3];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  [(_UISplitViewControllerImplementing *)self->_impl _edgeInsetsForChildViewController:controller insetsAreAbsolute:absolute];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)_super_childViewControllersToSendViewWillTransitionToSize
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  _childViewControllersToSendViewWillTransitionToSize = [(UIViewController *)&v4 _childViewControllersToSendViewWillTransitionToSize];

  return _childViewControllersToSendViewWillTransitionToSize;
}

- (void)_didChangeChildModalViewControllers
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 _didChangeChildModalViewControllers];
  [(_UISplitViewControllerImplementing *)self->_impl _didChangeChildModalViewControllers];
}

- (BOOL)_wrapsNavigationController:(id *)controller
{
  if (controller)
  {
    *controller = 0;
  }

  return 0;
}

- (_UITabContainerView)_tabBarHostedView
{
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  tabBarHostedView = [_sharedImpl tabBarHostedView];

  return tabBarHostedView;
}

- (void)_setTabBarHostedView:(id)view
{
  viewCopy = view;
  _sharedImpl = [(UISplitViewController *)self _sharedImpl];
  [_sharedImpl setTabBarHostedView:viewCopy];
}

- (void)_didChangeToFirstResponder:(id)responder
{
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  responderCopy = responder;
  [(UIResponder *)&v5 _didChangeToFirstResponder:responderCopy];
  [(_UISplitViewControllerImplementing *)self->_impl _didChangeToFirstResponder:responderCopy, v5.receiver, v5.super_class];
}

- (id)_deepestActionResponder
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__UISplitViewController__deepestActionResponder__block_invoke;
  v4[3] = &unk_1E71005E0;
  v4[4] = self;
  v2 = [(UIViewController *)self _deepestPresentedActionResponderOrBlock:v4];

  return v2;
}

- (id)_super_deepestActionResponder
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  _deepestActionResponder = [(UIViewController *)&v4 _deepestActionResponder];

  return _deepestActionResponder;
}

- (id)_nextResponderUsingTargetActionStrategyFromChildViewController:(id)controller didTraverseToParentViewController:(BOOL *)viewController
{
  controllerCopy = controller;
  if (qword_1ED49BFC8 != -1)
  {
    dispatch_once(&qword_1ED49BFC8, &__block_literal_global_178);
  }

  if ((byte_1ED49BFA9 & 1) == 0 && dyld_program_sdk_at_least())
  {
    v7 = controllerCopy;
    if (v7)
    {
      v8 = v7;
      while (1)
      {
        v9 = [(_UISplitViewControllerImplementing *)self->_impl _nextVisibleViewControllerForResponderAfterChildViewController:v8];
        if ([v9 _hasDeepestActionResponder])
        {
          break;
        }

        v8 = v9;
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      _deepestActionResponder = [v9 _deepestActionResponder];

      if (!viewController)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_9:
      _deepestActionResponder = 0;
      if (!viewController)
      {
        goto LABEL_11;
      }
    }

    *viewController = 1;
LABEL_11:
    if (!_deepestActionResponder)
    {
      _existingView = [(UIViewController *)self _existingView];
      window = [_existingView window];

      if (window)
      {
        selfCopy = [_existingView _deepestActionResponder];
      }

      else
      {
        selfCopy = self;
      }

      _deepestActionResponder = selfCopy;
    }

    goto LABEL_17;
  }

  if (viewController)
  {
    *viewController = 1;
  }

  _deepestActionResponder = [controllerCopy nextResponder];
LABEL_17:

  return _deepestActionResponder;
}

void __122__UISplitViewController__nextResponderUsingTargetActionStrategyFromChildViewController_didTraverseToParentViewController___block_invoke()
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UISplitViewControllerSkipTargetActionBundleChecks, @"UISplitViewControllerSkipTargetActionBundleChecks", _UIInternalPreferenceUpdateBool) & 1) != 0 || !byte_1ED48AC7C)
  {
    v0 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v0 bundleIdentifier];

    v1 = v3;
    if (v3)
    {
      v2 = [&unk_1EFE2BB48 containsObject:v3];
      v1 = v3;
      if (v2)
      {
        byte_1ED49BFA9 = 1;
      }
    }
  }
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  impl = self->_impl;
  coderCopy = coder;
  [(_UISplitViewControllerImplementing *)impl encodeRestorableStateWithCoder:coderCopy];
  v6.receiver = self;
  v6.super_class = UISplitViewController;
  [(UIViewController *)&v6 encodeRestorableStateWithCoder:coderCopy];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  impl = self->_impl;
  coderCopy = coder;
  [(_UISplitViewControllerImplementing *)impl decodeRestorableStateWithCoder:coderCopy];
  v6.receiver = self;
  v6.super_class = UISplitViewController;
  [(UIResponder *)&v6 decodeRestorableStateWithCoder:coderCopy];
}

- (id)_super_effectiveActivityItemsConfiguration
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  _effectiveActivityItemsConfiguration = [(UIResponder *)&v4 _effectiveActivityItemsConfiguration];

  return _effectiveActivityItemsConfiguration;
}

- (UISlidingBarConfiguration)configuration
{
  _panelImpl = [(UISplitViewController *)self _panelImpl];
  configuration = [_panelImpl configuration];

  return configuration;
}

- (void)setConfiguration:(id)configuration
{
  impl = self->_impl;
  configurationCopy = configuration;
  if ([(_UISplitViewControllerImplementing *)impl lockedForDelegateCallback])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v9}];
  }

  _panelImpl = [(UISplitViewController *)self _panelImpl];
  [_panelImpl setConfiguration:configurationCopy];
}

- (UISlidingBarState)currentState
{
  _panelImpl = [(UISplitViewController *)self _panelImpl];
  currentState = [_panelImpl currentState];

  return currentState;
}

- (NSArray)possibleStates
{
  _panelImpl = [(UISplitViewController *)self _panelImpl];
  possibleStates = [_panelImpl possibleStates];

  return possibleStates;
}

- (UISlidingBarStateRequest)stateRequest
{
  _panelImpl = [(UISplitViewController *)self _panelImpl];
  stateRequest = [_panelImpl stateRequest];

  return stateRequest;
}

- (void)setStateRequest:(id)request
{
  impl = self->_impl;
  requestCopy = request;
  if ([(_UISplitViewControllerImplementing *)impl lockedForDelegateCallback])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v9}];
  }

  _panelImpl = [(UISplitViewController *)self _panelImpl];
  [_panelImpl setStateRequest:requestCopy];
}

- (void)_animateToRequest:(id)request
{
  requestCopy = request;
  _panelImpl = [(UISplitViewController *)self _panelImpl];
  [_panelImpl animateToRequest:requestCopy];
}

- (void)_updateDisplayModeButtonItem
{
  _panelImpl = [(UISplitViewController *)self _panelImpl];
  [_panelImpl updateDisplayModeButtonItem];
}

@end