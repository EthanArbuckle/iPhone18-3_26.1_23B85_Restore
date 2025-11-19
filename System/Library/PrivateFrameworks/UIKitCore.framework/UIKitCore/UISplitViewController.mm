@interface UISplitViewController
+ (BOOL)_devicePrefersOverlayInRegularWidth;
+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation;
- (BOOL)_allowsDimmedSecondaryAsDeepestUnambiguousResponder;
- (BOOL)_canTileSidebarColumn:(int64_t)a3;
- (BOOL)_forceDisplayModeBarButtonHidden;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_ignoresSheetContext;
- (BOOL)_isViewControllerForObservableScrollViewAmbiguous;
- (BOOL)_navigationControllerShouldNotAdjustTransitioningSizeForChildContainer:(id)a3;
- (BOOL)_shouldUseFluidSidebarGestures;
- (BOOL)_shouldUseSeparateStatusBarStyles;
- (BOOL)_showsSeparators;
- (BOOL)_super_disableAutomaticKeyboardBehavior;
- (BOOL)_super_prefersHomeIndicatorAutoHidden;
- (BOOL)_super_prefersInterfaceOrientationLocked;
- (BOOL)_super_prefersPointerLocked;
- (BOOL)_super_shouldUpdateFocusInContext:(id)a3;
- (BOOL)_supplementaryColumnAdoptsPrimaryBackgroundStyle;
- (BOOL)_supportsGlobalSearchHosting;
- (BOOL)_visibleToggleButtonRequiresPresentsWithGesture;
- (BOOL)_wrapsNavigationController:(id *)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isShowingColumn:(int64_t)a3;
- (BOOL)showsSecondaryOnlyButton;
- (CGFloat)maximumSupplementaryColumnWidth;
- (CGFloat)minimumSupplementaryColumnWidth;
- (CGFloat)preferredPrimaryColumnWidth;
- (CGFloat)preferredSupplementaryColumnWidth;
- (CGFloat)preferredSupplementaryColumnWidthFraction;
- (CGFloat)supplementaryColumnWidth;
- (CGRect)_frameForChildContentContainer:(id)a3;
- (CGSize)_contentSizeForChildViewController:(id)a3 inPopoverController:(id)a4;
- (CGSize)_super_preferredContentSize;
- (CGSize)_super_sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (CGSize)preferredContentSize;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSArray)_primaryEdgeAdditionalBarButtonItemGroups;
- (NSArray)_secondaryEdgeAdditionalBarButtonItemGroups;
- (NSArray)possibleStates;
- (NSString)description;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)a3;
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
- (id)_navigationController:(id)a3 navigationBarAdditionalActionsForBackButtonMenu:(id)a4;
- (id)_navigationControllerForTriggeringToolbarCustomizationWithSender:(id)a3;
- (id)_nextResponderUsingTargetActionStrategyFromChildViewController:(id)a3 didTraverseToParentViewController:(BOOL *)a4;
- (id)_panelImpl;
- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)_sharedImpl;
- (id)_super_childViewControllerForStatusBarStyle;
- (id)_super_childViewControllersToSendViewWillTransitionToSize;
- (id)_super_deepestActionResponder;
- (id)_super_effectiveActivityItemsConfiguration;
- (id)_super_multitaskingDragExclusionRects;
- (id)_super_overridingPreferredFocusEnvironment;
- (id)_super_preferredFocusEnvironments;
- (id)_super_preferredFocusedView;
- (id)_topLevelViewControllerForColumn:(void *)a1;
- (id)_viewControllerForObservableScrollView;
- (id)transitionCoordinator;
- (int64_t)_columnForMonitoredNavigationController:(id)a3;
- (int64_t)_columnForViewController:(id)a3;
- (int64_t)_preferredModalPresentationStyle;
- (int64_t)_subclassPreferredFocusedViewPrioritizationType;
- (int64_t)_super_preferredInterfaceOrientationForPresentation;
- (unint64_t)_super_preferredScreenEdgesDeferringSystemGestures;
- (unint64_t)_super_supportedInterfaceOrientations;
- (void)_allowingMutationsInDelegateCallback:(id)a3;
- (void)_animateToRequest:(id)a3;
- (void)_commonInit;
- (void)_didChangeChildModalViewControllers;
- (void)_didChangeToFirstResponder:(id)a3;
- (void)_didEndSnapshotSession:(id)a3;
- (void)_intelligenceCollectSubelementsIn:(CGRect)a3 using:(id)a4 transformToRoot:(id)a5;
- (void)_navigationController:(id)a3 navigationBar:(id)a4 itemBackButtonUpdated:(id)a5;
- (void)_navigationController:(id)a3 navigationBar:(id)a4 topItemUpdatedContentLayout:(id)a5;
- (void)_navigationControllerDidChangeNavigationBarHidden:(id)a3;
- (void)_navigationControllerDidUpdateNavigationBarSize:(id)a3;
- (void)_navigationControllerDidUpdateStack:(id)a3;
- (void)_navigationControllerDidUpdateTopViewController:(id)a3;
- (void)_preparePresentationControllerForPresenting:(id)a3;
- (void)_safeAreaInsetsDidChangeForView;
- (void)_setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:(BOOL)a3;
- (void)_setDisplayModeButtonItemTitle:(id)a3;
- (void)_setForceDisplayModeBarButtonHidden:(BOOL)a3;
- (void)_setIgnoresSheetContext:(BOOL)a3;
- (void)_setPrefersOverlayInRegularWidthPhone:(BOOL)a3;
- (void)_setPrimaryEdgeAdditionalBarButtonItemGroups:(id)a3;
- (void)_setSecondaryEdgeAdditionalBarButtonItemGroups:(id)a3;
- (void)_setShowsSeparators:(BOOL)a3;
- (void)_setSupplementaryColumnAdoptsPrimaryBackgroundStyle:(BOOL)a3;
- (void)_setTabBarHostedView:(id)a3;
- (void)_setUsesDeviceOverlayPreferences:(BOOL)a3;
- (void)_setUsesExtraWidePrimaryColumn:(BOOL)a3;
- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)a3;
- (void)_super_didUpdateFocusInContext:(id)a3;
- (void)_super_removeChildViewController:(id)a3;
- (void)_super_setView:(id)a3;
- (void)_super_viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)_super_willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
- (void)_tabBarControllerDidChangeSelection:(id)a3;
- (void)_updateDisplayModeButtonItem;
- (void)_updateLayoutForStatusBarAndInterfaceOrientation;
- (void)_updateScrollEdgeBehaviorForDetailNavigationController;
- (void)_viewControllerChildViewControllersDidChange:(id)a3;
- (void)_willBeginSnapshotSession:(id)a3;
- (void)addChildViewController:(id)a3;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)hideColumn:(UISplitViewControllerColumn)column;
- (void)removeChildViewController:(id)a3;
- (void)removeFromParentViewController;
- (void)runToolbarCustomizationPalette:(id)a3;
- (void)setAutomaticallyAdjustsScrollViewInsets:(BOOL)a3;
- (void)setConfiguration:(id)a3;
- (void)setDefinesPresentationContext:(BOOL)a3;
- (void)setDelegate:(id)delegate;
- (void)setDisplayModeButtonVisibility:(UISplitViewControllerDisplayModeButtonVisibility)displayModeButtonVisibility;
- (void)setEdgesForExtendedLayout:(unint64_t)a3;
- (void)setExtendedLayoutIncludesOpaqueBars:(BOOL)a3;
- (void)setGutterWidth:(float)a3;
- (void)setHidesMasterViewInPortrait:(BOOL)a3;
- (void)setMaximumInspectorColumnWidth:(double)a3;
- (void)setMaximumPrimaryColumnWidth:(CGFloat)maximumPrimaryColumnWidth;
- (void)setMaximumSupplementaryColumnWidth:(CGFloat)maximumSupplementaryColumnWidth;
- (void)setMinimumInspectorColumnWidth:(double)a3;
- (void)setMinimumPrimaryColumnWidth:(CGFloat)minimumPrimaryColumnWidth;
- (void)setMinimumSecondaryColumnWidth:(double)a3;
- (void)setMinimumSupplementaryColumnWidth:(CGFloat)minimumSupplementaryColumnWidth;
- (void)setModalPresentationCapturesStatusBarAppearance:(BOOL)a3;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)setModalTransitionStyle:(int64_t)a3;
- (void)setOverrideTraitCollection:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)setPreferredDisplayMode:(UISplitViewControllerDisplayMode)preferredDisplayMode;
- (void)setPreferredInspectorColumnWidth:(double)a3;
- (void)setPreferredInspectorColumnWidthFraction:(double)a3;
- (void)setPreferredPrimaryColumnWidth:(CGFloat)preferredPrimaryColumnWidth;
- (void)setPreferredPrimaryColumnWidthFraction:(CGFloat)preferredPrimaryColumnWidthFraction;
- (void)setPreferredSecondaryColumnWidth:(double)a3;
- (void)setPreferredSecondaryColumnWidthFraction:(double)a3;
- (void)setPreferredSplitBehavior:(UISplitViewControllerSplitBehavior)preferredSplitBehavior;
- (void)setPreferredSupplementaryColumnWidth:(CGFloat)preferredSupplementaryColumnWidth;
- (void)setPreferredSupplementaryColumnWidthFraction:(CGFloat)preferredSupplementaryColumnWidthFraction;
- (void)setPrimaryBackgroundStyle:(UISplitViewControllerBackgroundStyle)primaryBackgroundStyle;
- (void)setPrimaryEdge:(UISplitViewControllerPrimaryEdge)primaryEdge;
- (void)setProvidesPresentationContextTransitionStyle:(BOOL)a3;
- (void)setRestoresFocusAfterTransition:(BOOL)a3;
- (void)setShowsSecondaryOnlyButton:(BOOL)showsSecondaryOnlyButton;
- (void)setStateRequest:(id)a3;
- (void)setStyle:(int64_t)a3;
- (void)setView:(id)a3;
- (void)setViewController:(UIViewController *)vc forColumn:(UISplitViewControllerColumn)column;
- (void)setViewControllers:(NSArray *)viewControllers;
- (void)setViewRespectsSystemMinimumLayoutMargins:(BOOL)a3;
- (void)showColumn:(UISplitViewControllerColumn)column;
- (void)toggleInspector:(id)a3;
- (void)toggleSidebar:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unloadViewForced:(BOOL)a3;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation UISplitViewController

- (id)_viewControllerForObservableScrollView
{
  if ([(UIViewController *)self _shouldRequestViewControllerForObservableScrollViewFromPresentedViewController])
  {
    v10.receiver = self;
    v10.super_class = UISplitViewController;
    v3 = [(UIViewController *)&v10 _viewControllerForObservableScrollView];
  }

  else
  {
    v4 = [(UISplitViewController *)self _sharedImpl];
    v5 = [v4 _viewControllerForObservableScrollView];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = UISplitViewController;
      v7 = [(UIViewController *)&v9 _viewControllerForObservableScrollView];
    }

    v3 = v7;
  }

  return v3;
}

- (BOOL)_supportsGlobalSearchHosting
{
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_SVCGlobalSearchEnabled, @"SVCGlobalSearchEnabled", _UIInternalPreferenceUpdateBool) & 1) == 0 && !byte_1EA95E294)
  {
    return 0;
  }

  v4 = [(UIViewController *)self _lastNotifiedTraitCollection];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIViewController *)self traitCollection];
  }

  v7 = v6;

  if (([v7 userInterfaceIdiom] | 4) == 5)
  {
    v3 = [(_UISplitViewControllerImplementing *)self->_impl supportsGlobalSearchHosting];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    v4 = [v3 userInterfaceIdiom];

    if (!v4)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"UISplitViewController is only supported when running under UIUserInterfaceIdiomPad"];
    }
  }

  v5 = +[UISplitViewControllerImplFactory sharedInstance];
  v6 = [v5 implClassForSplitViewController:self];

  v7 = [v6 _defaultVisualStyle];
  v8 = +[_UIVisualStyleRegistry defaultRegistry];
  [v8 registerVisualStyleClass:v7 forStylableClass:objc_opt_class()];

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
  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 addObserver:self selector:sel__willBeginSnapshotSession_ name:@"UISceneWillBeginSystemSnapshotSequence" object:0];
  [v16 addObserver:self selector:sel__didEndSnapshotSession_ name:@"UISceneDidCompleteSystemSnapshotSequence" object:0];
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
  v9 = [(UISplitViewController *)self masterViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [(UISplitViewController *)self detailViewController];
    goto LABEL_6;
  }

  v3 = [v9 navigationBar];
  v4 = [v3 prefersLargeTitles];

  v5 = [(UISplitViewController *)self detailViewController];
  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_6:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v6 = [v5 navigationBar];
  if (_UIBarAppearanceAPIVersion() >= 1 && (_UIBarsApplyChromelessEverywhere() & 1) == 0)
  {
    v7 = [(UIViewController *)self traitCollection];
    v8 = [v7 verticalSizeClass] != 1;

    [v6 _setForceScrollEdgeAppearance:v8];
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
  v3 = [(UISplitViewController *)self _sharedImpl];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _isViewControllerForObservableScrollViewAmbiguous];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UISplitViewController;
    v5 = [(UIViewController *)&v8 _isViewControllerForObservableScrollViewAmbiguous];
  }

  v6 = v5;

  return v6;
}

- (id)transitionCoordinator
{
  if (!-[_UISplitViewControllerImplementing style](self->_impl, "style") || (-[UISplitViewController _sharedImpl](self, "_sharedImpl"), v3 = objc_claimAutoreleasedReturnValue(), [v3 transitionCoordinator], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v6.receiver = self;
    v6.super_class = UISplitViewController;
    v4 = [(UIViewController *)&v6 transitionCoordinator];
  }

  return v4;
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
  v3 = [(UISplitViewController *)self _sharedImpl];
  v4 = [v3 preferredSplitBehavior];

  return v4;
}

- (CGFloat)preferredPrimaryColumnWidth
{
  v2 = [(UISplitViewController *)self _sharedImpl];
  [v2 preferredPrimaryColumnWidth];
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
  v3 = [(UISplitViewController *)self _sharedImpl];
  v4 = [v3 displayModeButtonVisibility];

  return v4;
}

- (void)_intelligenceCollectSubelementsIn:(CGRect)a3 using:(id)a4 transformToRoot:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = _Block_copy(a5);
  _Block_copy(v11);
  v12 = a4;
  v13 = self;
  sub_188E7DDA0(v12, v13, v11, x, y, width, height);
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
      v7 = [(UISplitViewController *)v6 _sharedImpl];
      if (!v7)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a2 object:v6 file:@"UISplitViewController.m" lineNumber:131 description:@"Wrong implementation class for column-style UISplitViewController support"];
      }

      [v7 setStyle:1];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  v4 = a3;
  [(UIViewController *)&v5 encodeWithCoder:v4];
  [(_UISplitViewControllerImplementing *)self->_impl encodeWithCoder:v4, v5.receiver, v5.super_class];
}

- (UISplitViewController)initWithStyle:(UISplitViewControllerStyle)style
{
  if (style == UISplitViewControllerStyleUnspecified)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UISplitViewController.m" lineNumber:162 description:@"API misuse. -initWithStyle: may not be used with UISplitViewControllerStyleUnspecified"];
  }

  v12.receiver = self;
  v12.super_class = UISplitViewController;
  v6 = [(UIViewController *)&v12 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v6->_initializerForcedColumnStyle = 1;
    [(UISplitViewController *)v6 _commonInit];
    v8 = [(UISplitViewController *)v7 _sharedImpl];
    if (!v8)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:v7 file:@"UISplitViewController.m" lineNumber:173 description:@"Wrong implementation class for column-style UISplitViewController support"];
    }

    [v8 setStyle:style];
  }

  return v7;
}

- (void)setStyle:(int64_t)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UISplitViewController.m" lineNumber:186 description:@"SPI misuse. -setStyle: should be used by IB to set up UISplitViewController for column-style behavior using UISplitViewControllerStyleDoubleColumn or -TripleColumn"];
  }

  v7 = [(UISplitViewController *)self _sharedImpl];
  [v7 setStyle:a3];
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

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setShowsSecondaryOnlyButton:v3];
}

- (BOOL)showsSecondaryOnlyButton
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  v4 = [v3 showsSecondaryOnlyButton];

  return v4;
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

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setPreferredSplitBehavior:preferredSplitBehavior];
}

- (UISplitViewControllerSplitBehavior)splitBehavior
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  v4 = [v3 splitBehavior];

  return v4;
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

  v17 = [(UISplitViewController *)self _sharedImpl];
  [v17 setViewController:v7 forColumn:column];
}

- (UIViewController)viewControllerForColumn:(UISplitViewControllerColumn)column
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v5 = [(UISplitViewController *)self _sharedImpl];
  v6 = [v5 viewControllerForColumn:column];

  return v6;
}

- (id)_topLevelViewControllerForColumn:(void *)a1
{
  if (a1)
  {
    v3 = [a1 _sharedImpl];
    v4 = [v3 _topLevelViewControllerForColumn:a2];
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
  v9 = [(UISplitViewController *)self _sharedImpl];
  if (([v9 inCollapsingToProposedTopColumnCallback] & 1) == 0 && (objc_msgSend(v9, "inExpandingToProposedDisplayModeCallback") & 1) == 0 && -[_UISplitViewControllerImplementing lockedForDelegateCallback](self->_impl, "lockedForDelegateCallback"))
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

  [v9 hideColumn:column];
}

- (void)showColumn:(UISplitViewControllerColumn)column
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v6 = [(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback];
  v7 = MEMORY[0x1E695D940];
  if (v6)
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

  v11 = [(UISplitViewController *)self _sharedImpl];
  [v11 showColumn:column];
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

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setPreferredSupplementaryColumnWidth:preferredSupplementaryColumnWidth];
}

- (CGFloat)preferredSupplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 preferredSupplementaryColumnWidth];
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

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setPreferredSupplementaryColumnWidthFraction:preferredSupplementaryColumnWidthFraction];
}

- (CGFloat)preferredSupplementaryColumnWidthFraction
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 preferredSupplementaryColumnWidthFraction];
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

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setMinimumSupplementaryColumnWidth:minimumSupplementaryColumnWidth];
}

- (CGFloat)minimumSupplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 minimumSupplementaryColumnWidth];
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

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setMaximumSupplementaryColumnWidth:maximumSupplementaryColumnWidth];
}

- (CGFloat)maximumSupplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 maximumSupplementaryColumnWidth];
  v5 = v4;

  return v5;
}

- (CGFloat)supplementaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  _supplementaryColumnWidthSupportCheck(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 supplementaryColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setPreferredSecondaryColumnWidthFraction:(double)a3
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setPreferredSecondaryColumnWidthFraction:a3];
}

- (double)preferredSecondaryColumnWidthFraction
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 preferredSecondaryColumnWidthFraction];
  v5 = v4;

  return v5;
}

- (void)setPreferredSecondaryColumnWidth:(double)a3
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setPreferredSecondaryColumnWidth:a3];
}

- (double)preferredSecondaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 preferredSecondaryColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setMinimumSecondaryColumnWidth:(double)a3
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setMinimumSecondaryColumnWidth:a3];
}

- (double)minimumSecondaryColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 minimumSecondaryColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setPreferredInspectorColumnWidthFraction:(double)a3
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setPreferredInspectorColumnWidthFraction:a3];
}

- (double)preferredInspectorColumnWidthFraction
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 preferredInspectorColumnWidthFraction];
  v5 = v4;

  return v5;
}

- (void)setPreferredInspectorColumnWidth:(double)a3
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setPreferredInspectorColumnWidth:a3];
}

- (double)preferredInspectorColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 preferredInspectorColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setMinimumInspectorColumnWidth:(double)a3
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setMinimumInspectorColumnWidth:a3];
}

- (double)effectiveMinimumInspectorColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 effectiveMinimumInspectorColumnWidth];
  v5 = v4;

  return v5;
}

- (double)minimumInspectorColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 minimumInspectorColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setMaximumInspectorColumnWidth:(double)a3
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setMaximumInspectorColumnWidth:a3];
}

- (double)maximumInspectorColumnWidth
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v3 = [(UISplitViewController *)self _sharedImpl];
  [v3 maximumInspectorColumnWidth];
  v5 = v4;

  return v5;
}

- (void)setDisplayModeButtonVisibility:(UISplitViewControllerDisplayModeButtonVisibility)displayModeButtonVisibility
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 setDisplayModeButtonVisibility:displayModeButtonVisibility];
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

- (void)_setVisibleToggleButtonRequiresPresentsWithGesture:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v5 = [(UISplitViewController *)self _sharedImpl];
    [v5 _setVisibleToggleButtonRequiresPresentsWithGesture:v3];
  }
}

- (BOOL)_visibleToggleButtonRequiresPresentsWithGesture
{
  v3 = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (v3)
  {
    v4 = [(UISplitViewController *)self _sharedImpl];
    v5 = [v4 _visibleToggleButtonRequiresPresentsWithGesture];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)_setForceDisplayModeBarButtonHidden:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v5 = [(UISplitViewController *)self _sharedImpl];
    [v5 _setForceDisplayModeBarButtonHidden:v3];
  }
}

- (BOOL)_forceDisplayModeBarButtonHidden
{
  v3 = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (v3)
  {
    v4 = [(UISplitViewController *)self _sharedImpl];
    v5 = [v4 _forceDisplayModeBarButtonHidden];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)_setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v5 = [(UISplitViewController *)self _sharedImpl];
    [v5 _setAllowsDimmedSecondaryAsDeepestUnambiguousResponder:v3];
  }
}

- (BOOL)_allowsDimmedSecondaryAsDeepestUnambiguousResponder
{
  v3 = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (v3)
  {
    v4 = [(UISplitViewController *)self _sharedImpl];
    v5 = [v4 _allowsDimmedSecondaryAsDeepestUnambiguousResponder];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)_setIgnoresSheetContext:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v5 = [(UISplitViewController *)self _sharedImpl];
    [v5 _setIgnoresSheetContext:v3];
  }
}

- (BOOL)_ignoresSheetContext
{
  v3 = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (v3)
  {
    v4 = [(UISplitViewController *)self _sharedImpl];
    v5 = [v4 _ignoresSheetContext];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)_setShowsSeparators:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISplitViewController *)self _sharedImpl];
  [v4 _setShowsSeparators:v3];
}

- (BOOL)_showsSeparators
{
  v2 = [(UISplitViewController *)self _sharedImpl];
  v3 = [v2 _showsSeparators];

  return v3;
}

- (void)setPreferredDisplayMode:(UISplitViewControllerDisplayMode)preferredDisplayMode
{
  v6 = [(_UISplitViewControllerImplementing *)self->_impl style];
  v7 = 6;
  if (!v6)
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

  v9 = [(UISplitViewController *)self _sharedImpl];
  [v9 setPreferredPrimaryColumnWidth:preferredPrimaryColumnWidth];
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

- (void)didMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 didMoveToParentViewController:a3];
}

- (BOOL)isShowingColumn:(int64_t)a3
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v5 = [(UISplitViewController *)self _sharedImpl];
  LOBYTE(a3) = [v5 isShowingColumn:a3];

  return a3;
}

- (id)_effectiveInteractionActivityTrackingBaseName
{
  v3 = [(UIViewController *)self interactionActivityTrackingBaseName];
  if (!v3)
  {
    if ([(UISplitViewController *)self isMemberOfClass:objc_opt_class()])
    {
      v4 = [(UISplitViewController *)self masterViewController];
      v5 = [v4 _effectiveInteractionActivityTrackingBaseName];

      if (v5)
      {
        v3 = [@"UISVC-" stringByAppendingString:v5];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v6 = objc_opt_class();
      v3 = NSStringFromClass(v6);
    }
  }

  return v3;
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

- (void)setGutterWidth:(float)a3
{
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v9}];
  }

  impl = self->_impl;
  *&v6 = a3;

  [(_UISplitViewControllerImplementing *)impl setGutterWidth:v6];
}

- (void)setHidesMasterViewInPortrait:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setHidesMasterViewInPortrait:v3];
}

- (void)_setDisplayModeButtonItemTitle:(id)a3
{
  v8 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v7}];
  }

  [(_UISplitViewControllerImplementing *)self->_impl _setDisplayModeButtonItemTitle:v8];
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

- (void)_setPrefersOverlayInRegularWidthPhone:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setPrefersOverlayInRegularWidthPhone:v3];
}

- (void)_setUsesDeviceOverlayPreferences:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl setUsesDeviceOverlayPreferences:v3];
}

- (void)_setUsesExtraWidePrimaryColumn:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  impl = self->_impl;

  [(_UISplitViewControllerImplementing *)impl _setUsesExtraWidePrimaryColumn:v3];
}

- (void)_allowingMutationsInDelegateCallback:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([(_UISplitViewControllerImplementing *)self->_impl style])
    {
      v5 = [(UISplitViewController *)self _sharedImpl];
      [v5 _allowingMutationsInDelegateCallback:v6];
    }

    else
    {
      v6[2]();
    }

    v4 = v6;
  }
}

- (BOOL)_canTileSidebarColumn:(int64_t)a3
{
  _UISplitViewControllerCheckSupportColumnStyleRaiseIfNot(self);
  v5 = [(UISplitViewController *)self _sharedImpl];
  LOBYTE(a3) = [v5 canTileSidebarColumn:a3];

  return a3;
}

- (void)_setPrimaryEdgeAdditionalBarButtonItemGroups:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 setPrimaryEdgeAdditionalBarButtonItemGroups:v4];
}

- (NSArray)_primaryEdgeAdditionalBarButtonItemGroups
{
  v2 = [(UISplitViewController *)self _sharedImpl];
  v3 = [v2 primaryEdgeAdditionalBarButtonItemGroups];

  return v3;
}

- (void)_setSecondaryEdgeAdditionalBarButtonItemGroups:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 setSecondaryEdgeAdditionalBarButtonItemGroups:v4];
}

- (NSArray)_secondaryEdgeAdditionalBarButtonItemGroups
{
  v2 = [(UISplitViewController *)self _sharedImpl];
  v3 = [v2 secondaryEdgeAdditionalBarButtonItemGroups];

  return v3;
}

- (void)_preparePresentationControllerForPresenting:(id)a3
{
  v6.receiver = self;
  v6.super_class = UISplitViewController;
  v4 = a3;
  [(UIViewController *)&v6 _preparePresentationControllerForPresenting:v4];
  v5 = [(UISplitViewController *)self _sharedImpl:v6.receiver];
  [v5 _preparePresentationControllerForPresenting:v4];
}

- (void)_viewControllerChildViewControllersDidChange:(id)a3
{
  v5 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v4 = [(UISplitViewController *)self _sharedImpl];
    [v4 _viewControllerChildViewControllersDidChange:v5];
  }
}

- (void)_tabBarControllerDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 _tabBarControllerDidChangeSelection:v4];
}

- (void)_navigationControllerDidUpdateStack:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 _navigationControllerDidUpdateStack:v4];
}

- (void)_navigationControllerDidUpdateTopViewController:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 _navigationControllerDidUpdateTopViewController:v4];
}

- (void)_navigationControllerDidUpdateNavigationBarSize:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 _navigationControllerDidUpdateNavigationBarSize:v4];
}

- (void)_navigationControllerDidChangeNavigationBarHidden:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 _navigationControllerDidChangeNavigationBarHidden:v4];
}

- (void)_navigationController:(id)a3 navigationBar:(id)a4 topItemUpdatedContentLayout:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v10 = [(UISplitViewController *)self _sharedImpl];
    [v10 _navigationController:v11 navigationBar:v8 topItemUpdatedContentLayout:v9];
  }
}

- (void)_navigationController:(id)a3 navigationBar:(id)a4 itemBackButtonUpdated:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v10 = [(UISplitViewController *)self _sharedImpl];
    [v10 _navigationController:v11 navigationBar:v8 itemBackButtonUpdated:v9];
  }
}

- (id)_navigationController:(id)a3 navigationBarAdditionalActionsForBackButtonMenu:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v8 = [(UISplitViewController *)self _sharedImpl];
    v9 = [v8 _navigationController:v6 navigationBarAdditionalActionsForBackButtonMenu:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_navigationControllerShouldNotAdjustTransitioningSizeForChildContainer:(id)a3
{
  v4 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v5 = [(UISplitViewController *)self _sharedImpl];
    v6 = [v5 _navigationControllerShouldNotAdjustTransitioningSizeForChildContainer:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_columnForViewController:(id)a3
{
  v4 = a3;
  if (v4 && [(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v5 = [(UISplitViewController *)self _sharedImpl];
    v6 = [v5 _columnForViewController:v4];
  }

  else
  {
    v6 = 999;
  }

  return v6;
}

- (int64_t)_columnForMonitoredNavigationController:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  if (v5)
  {
    v6 = [(UISplitViewController *)self _sharedImpl];
    v7 = [v6 _columnForMonitoredNavigationController:v4];
  }

  else
  {
    v7 = 999;
  }

  return v7;
}

- (UIEdgeInsets)_tvOSColumnStyleExtraInsetsForChildViewController:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if (v4)
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if ([(_UISplitViewControllerImplementing *)self->_impl style])
    {
      v9 = [(UISplitViewController *)self _sharedImpl];
      [v9 _tvOSColumnStyleExtraInsetsForChildViewController:v4];
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
  v2 = [(UISplitViewController *)self _sharedImpl];
  v3 = [v2 _fluidOpenSidebarPresentationGestureRecognizer];

  return v3;
}

- (BOOL)_shouldUseFluidSidebarGestures
{
  v3 = [(_UISplitViewControllerImplementing *)self->_impl style];
  if (v3)
  {
    v4 = [(UISplitViewController *)self _sharedImpl];
    v5 = [v4 _shouldUseFluidSidebarGestures];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (CGSize)_contentSizeForChildViewController:(id)a3 inPopoverController:(id)a4
{
  [(_UISplitViewControllerImplementing *)self->_impl _contentSizeForChildViewController:a3 inPopoverController:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_willBeginSnapshotSession:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v8 = v4;
    v5 = [(UIViewController *)self viewIfLoaded];
    v6 = [v5 window];
    v7 = [v6 windowScene];

    v4 = v8;
    if (v8 == v7)
    {
      [(_UISplitViewControllerImplementing *)self->_impl _willBeginSnapshotSession];
      v4 = v8;
    }
  }
}

- (void)_didEndSnapshotSession:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v8 = v4;
    v5 = [(UIViewController *)self viewIfLoaded];
    v6 = [v5 window];
    v7 = [v6 windowScene];

    v4 = v8;
    if (v8 == v7)
    {
      [(_UISplitViewControllerImplementing *)self->_impl _didEndSnapshotSession];
      v4 = v8;
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

- (void)_setSupplementaryColumnAdoptsPrimaryBackgroundStyle:(BOOL)a3
{
  v3 = a3;
  v4 = [(UISplitViewController *)self _sharedImpl];
  [v4 setSupplementaryColumnAdoptsPrimaryBackgroundStyle:v3];
}

- (BOOL)_supplementaryColumnAdoptsPrimaryBackgroundStyle
{
  v2 = [(UISplitViewController *)self _sharedImpl];
  v3 = [v2 supplementaryColumnAdoptsPrimaryBackgroundStyle];

  return v3;
}

- (void)toggleSidebar:(id)a3
{
  v5 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v4 = [(UISplitViewController *)self _sharedImpl];
    [v4 _triggerSidebarKeyCommandAction:v5];
  }
}

- (void)toggleInspector:(id)a3
{
  v5 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v4 = [(UISplitViewController *)self _sharedImpl];
    [v4 _triggerInspectorKeyCommandAction:v5];
  }
}

- (void)runToolbarCustomizationPalette:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 _triggerToolbarCustomizationCommandAction:v4];
}

- (id)_navigationControllerForTriggeringToolbarCustomizationWithSender:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  v6 = [v5 _navigationControllerForTriggeringToolbarCustomizationWithSender:v4];

  return v6;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_toggleSidebar_ == a3)
  {
    v8 = [(UISplitViewController *)self _sharedImpl];
    v9 = [v8 _allowsTriggeringSidebarKeyCommandAction];
LABEL_8:
    v7 = v9;

    goto LABEL_9;
  }

  if (sel_toggleInspector_ == a3)
  {
    v8 = [(UISplitViewController *)self _sharedImpl];
    v9 = [v8 _allowsTriggeringInspectorKeyCommandAction];
    goto LABEL_8;
  }

  if (sel_runToolbarCustomizationPalette_ == a3)
  {
    v8 = [(UISplitViewController *)self _sharedImpl];
    v9 = [v8 _allowsTriggeringToolbarCustomizationCommandActionWithSender:v6];
    goto LABEL_8;
  }

  v11.receiver = self;
  v11.super_class = UISplitViewController;
  v7 = [(UIViewController *)&v11 canPerformAction:a3 withSender:v6];
LABEL_9:

  return v7;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  if ([v4 action] == sel_toggleSidebar_)
  {
    v5 = [(UISplitViewController *)self _sharedImpl];
    [v5 _validateTriggerSidebarKeyCommand:v4];
LABEL_6:

    goto LABEL_7;
  }

  if ([v4 action] == sel_toggleInspector_)
  {
    v5 = [(UISplitViewController *)self _sharedImpl];
    [v5 _validateTriggerInspectorKeyCommand:v4];
    goto LABEL_6;
  }

  v6.receiver = self;
  v6.super_class = UISplitViewController;
  [(UIResponder *)&v6 validateCommand:v4];
LABEL_7:
}

- (void)setView:(id)a3
{
  v8 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v7}];
  }

  [(_UISplitViewControllerImplementing *)self->_impl setView:v8];
}

- (void)_super_setView:(id)a3
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 setView:a3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 viewWillAppear:?];
  [(_UISplitViewControllerImplementing *)self->_impl viewWillAppear:v3];
  [(UISplitViewController *)self _updateScrollEdgeBehaviorForDetailNavigationController];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 viewDidAppear:?];
  [(_UISplitViewControllerImplementing *)self->_impl viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 viewWillDisappear:?];
  [(_UISplitViewControllerImplementing *)self->_impl viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 viewDidDisappear:?];
  [(_UISplitViewControllerImplementing *)self->_impl viewDidDisappear:v3];
}

- (void)addChildViewController:(id)a3
{
  v5 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 addChildViewController:v5];
  [(UISplitViewController *)self _updateScrollEdgeBehaviorForDetailNavigationController];
}

- (void)setDefinesPresentationContext:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setDefinesPresentationContext:v3];
}

- (void)setProvidesPresentationContextTransitionStyle:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setProvidesPresentationContextTransitionStyle:v3];
}

- (void)setRestoresFocusAfterTransition:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setRestoresFocusAfterTransition:v3];
}

- (void)setModalTransitionStyle:(int64_t)a3
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
  [(UIViewController *)&v9 setModalTransitionStyle:a3];
}

- (void)setModalPresentationStyle:(int64_t)a3
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
  [(UIViewController *)&v9 setModalPresentationStyle:a3];
}

- (void)setModalPresentationCapturesStatusBarAppearance:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setModalPresentationCapturesStatusBarAppearance:v3];
}

- (void)setEdgesForExtendedLayout:(unint64_t)a3
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
  [(UIViewController *)&v9 setEdgesForExtendedLayout:a3];
}

- (void)setExtendedLayoutIncludesOpaqueBars:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setExtendedLayoutIncludesOpaqueBars:v3];
}

- (void)setAutomaticallyAdjustsScrollViewInsets:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setAutomaticallyAdjustsScrollViewInsets:v3];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)setOverrideTraitCollection:(id)a3
{
  v5 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setOverrideTraitCollection:v5];
}

- (void)setViewRespectsSystemMinimumLayoutMargins:(BOOL)a3
{
  v3 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = NSStringFromSelector(a2);
    [v6 raise:v7 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v8}];
  }

  v9.receiver = self;
  v9.super_class = UISplitViewController;
  [(UIViewController *)&v9 setViewRespectsSystemMinimumLayoutMargins:v3];
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

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  [(_UISplitViewControllerImplementing *)self->_impl sizeForChildContentContainer:a3 withParentContainerSize:a4.width, a4.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_super_sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  v6.receiver = self;
  v6.super_class = UISplitViewController;
  [(UIViewController *)&v6 sizeForChildContentContainer:a3 withParentContainerSize:a4.width, a4.height];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_super_willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  [(UIViewController *)&v4 willTransitionToTraitCollection:a3 withTransitionCoordinator:a4];
}

- (void)traitCollectionDidChange:(id)a3
{
  [(_UISplitViewControllerImplementing *)self->_impl traitCollectionDidChange:a3];

  [(UISplitViewController *)self _updateScrollEdgeBehaviorForDetailNavigationController];
}

- (void)_super_viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  [(UIViewController *)&v4 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
}

- (id)_super_preferredFocusedView
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  v2 = [(UIViewController *)&v4 preferredFocusedView];

  return v2;
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
  v2 = [(UIViewController *)&v4 preferredFocusEnvironments];

  return v2;
}

- (id)_super_overridingPreferredFocusEnvironment
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  v2 = [(UIViewController *)&v4 _overridingPreferredFocusEnvironment];

  return v2;
}

- (BOOL)_super_shouldUpdateFocusInContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  return [(UIViewController *)&v4 shouldUpdateFocusInContext:a3];
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

  v5 = [(UISplitViewController *)self viewControllers];
  v3 = [v5 count] == 2;

  return v3;
}

- (id)_super_childViewControllerForStatusBarStyle
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  v2 = [(UIViewController *)&v4 childViewControllerForStatusBarStyle];

  return v2;
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

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    impl = self->_impl;

    [(_UISplitViewControllerImplementing *)impl willRotateToInterfaceOrientation:a3 duration:a4];
  }
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    impl = self->_impl;

    [(_UISplitViewControllerImplementing *)impl willAnimateRotationToInterfaceOrientation:a3 duration:a4];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    impl = self->_impl;

    [(_UISplitViewControllerImplementing *)impl didRotateFromInterfaceOrientation:a3];
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

- (void)removeChildViewController:(id)a3
{
  v8 = a3;
  if ([(_UISplitViewControllerImplementing *)self->_impl lockedForDelegateCallback])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v7}];
  }

  [(_UISplitViewControllerImplementing *)self->_impl removeChildViewController:v8];
}

- (void)_super_removeChildViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 removeChildViewController:a3];
}

- (void)unloadViewForced:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  [(UIViewController *)&v5 unloadViewForced:?];
  [(_UISplitViewControllerImplementing *)self->_impl unloadViewForced:v3];
}

- (void)_super_didUpdateFocusInContext:(id)a3
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 _didUpdateFocusInContext:a3];
}

- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self && dyld_program_sdk_at_least() && [(_UISplitViewControllerImplementing *)self->_impl style])
  {
    v13.receiver = self;
    v13.super_class = UISplitViewController;
    v11 = [(UIViewController *)&v13 _presentationControllerForPresentedController:v8 presentingController:v9 sourceController:v10];
  }

  else
  {
    v11 = [[_UISheetPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v9];
    [(UISheetPresentationController *)v11 _setWantsBottomAttached:1];
  }

  return v11;
}

- (id)_super_multitaskingDragExclusionRects
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  v2 = [(UIViewController *)&v4 _multitaskingDragExclusionRects];

  return v2;
}

- (CGRect)_frameForChildContentContainer:(id)a3
{
  [(_UISplitViewControllerImplementing *)self->_impl _frameForChildContentContainer:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation
{
  v3 = objc_opt_class();

  return [a1 doesOverrideViewControllerMethod:sel_preferredInterfaceOrientationForPresentation inBaseClass:v3];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  [(_UISplitViewControllerImplementing *)self->_impl _edgeInsetsForChildViewController:a3 insetsAreAbsolute:a4];
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
  v2 = [(UIViewController *)&v4 _childViewControllersToSendViewWillTransitionToSize];

  return v2;
}

- (void)_didChangeChildModalViewControllers
{
  v3.receiver = self;
  v3.super_class = UISplitViewController;
  [(UIViewController *)&v3 _didChangeChildModalViewControllers];
  [(_UISplitViewControllerImplementing *)self->_impl _didChangeChildModalViewControllers];
}

- (BOOL)_wrapsNavigationController:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

- (_UITabContainerView)_tabBarHostedView
{
  v2 = [(UISplitViewController *)self _sharedImpl];
  v3 = [v2 tabBarHostedView];

  return v3;
}

- (void)_setTabBarHostedView:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _sharedImpl];
  [v5 setTabBarHostedView:v4];
}

- (void)_didChangeToFirstResponder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UISplitViewController;
  v4 = a3;
  [(UIResponder *)&v5 _didChangeToFirstResponder:v4];
  [(_UISplitViewControllerImplementing *)self->_impl _didChangeToFirstResponder:v4, v5.receiver, v5.super_class];
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
  v2 = [(UIViewController *)&v4 _deepestActionResponder];

  return v2;
}

- (id)_nextResponderUsingTargetActionStrategyFromChildViewController:(id)a3 didTraverseToParentViewController:(BOOL *)a4
{
  v6 = a3;
  if (qword_1ED49BFC8 != -1)
  {
    dispatch_once(&qword_1ED49BFC8, &__block_literal_global_178);
  }

  if ((byte_1ED49BFA9 & 1) == 0 && dyld_program_sdk_at_least())
  {
    v7 = v6;
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

      v10 = [v9 _deepestActionResponder];

      if (!a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_9:
      v10 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    *a4 = 1;
LABEL_11:
    if (!v10)
    {
      v11 = [(UIViewController *)self _existingView];
      v12 = [v11 window];

      if (v12)
      {
        v13 = [v11 _deepestActionResponder];
      }

      else
      {
        v13 = self;
      }

      v10 = v13;
    }

    goto LABEL_17;
  }

  if (a4)
  {
    *a4 = 1;
  }

  v10 = [v6 nextResponder];
LABEL_17:

  return v10;
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

- (void)encodeRestorableStateWithCoder:(id)a3
{
  impl = self->_impl;
  v5 = a3;
  [(_UISplitViewControllerImplementing *)impl encodeRestorableStateWithCoder:v5];
  v6.receiver = self;
  v6.super_class = UISplitViewController;
  [(UIViewController *)&v6 encodeRestorableStateWithCoder:v5];
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  impl = self->_impl;
  v5 = a3;
  [(_UISplitViewControllerImplementing *)impl decodeRestorableStateWithCoder:v5];
  v6.receiver = self;
  v6.super_class = UISplitViewController;
  [(UIResponder *)&v6 decodeRestorableStateWithCoder:v5];
}

- (id)_super_effectiveActivityItemsConfiguration
{
  v4.receiver = self;
  v4.super_class = UISplitViewController;
  v2 = [(UIResponder *)&v4 _effectiveActivityItemsConfiguration];

  return v2;
}

- (UISlidingBarConfiguration)configuration
{
  v2 = [(UISplitViewController *)self _panelImpl];
  v3 = [v2 configuration];

  return v3;
}

- (void)setConfiguration:(id)a3
{
  impl = self->_impl;
  v6 = a3;
  if ([(_UISplitViewControllerImplementing *)impl lockedForDelegateCallback])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v9}];
  }

  v10 = [(UISplitViewController *)self _panelImpl];
  [v10 setConfiguration:v6];
}

- (UISlidingBarState)currentState
{
  v2 = [(UISplitViewController *)self _panelImpl];
  v3 = [v2 currentState];

  return v3;
}

- (NSArray)possibleStates
{
  v2 = [(UISplitViewController *)self _panelImpl];
  v3 = [v2 possibleStates];

  return v3;
}

- (UISlidingBarStateRequest)stateRequest
{
  v2 = [(UISplitViewController *)self _panelImpl];
  v3 = [v2 stateRequest];

  return v3;
}

- (void)setStateRequest:(id)a3
{
  impl = self->_impl;
  v6 = a3;
  if ([(_UISplitViewControllerImplementing *)impl lockedForDelegateCallback])
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"Mutating UISplitViewController with -%@ is not allowed during a delegate callback.", v9}];
  }

  v10 = [(UISplitViewController *)self _panelImpl];
  [v10 setStateRequest:v6];
}

- (void)_animateToRequest:(id)a3
{
  v4 = a3;
  v5 = [(UISplitViewController *)self _panelImpl];
  [v5 animateToRequest:v4];
}

- (void)_updateDisplayModeButtonItem
{
  v2 = [(UISplitViewController *)self _panelImpl];
  [v2 updateDisplayModeButtonItem];
}

@end