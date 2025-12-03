@interface UITabBarController
+ (BOOL)_uip_isFloatingTabBarEnabled;
+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation;
- (BOOL)_allowsAutorotation;
- (BOOL)_allowsCustomizing;
- (BOOL)_canRestoreFocusAfterTransitionToRecalledItem:(id)item inViewController:(id)controller;
- (BOOL)_doAllViewControllersSupportInterfaceOrientation:(int64_t)orientation;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_isBarEffectivelyHidden;
- (BOOL)_isFocusedTabVisible;
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation;
- (BOOL)_isTabBarFocused;
- (BOOL)_isViewControllerContainedInSelected:(id)selected ignoresPresentations:(BOOL)presentations;
- (BOOL)_shouldUseOnePartRotation;
- (BOOL)_tvTabBarShouldTrackScrollView:(id)view;
- (BOOL)_uip_isSidebarVisible;
- (BOOL)_wrapsNavigationController:(id *)controller;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGRect)_frameForViewController:(id)controller;
- (CGRect)_frameForWrapperViewForViewController:(id)controller;
- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size;
- (NSArray)customizableViewControllers;
- (NSArray)tabs;
- (NSArray)viewControllers;
- (NSMapTable)_rememberedFocusedItemsByViewController;
- (NSString)customizationIdentifier;
- (NSUInteger)selectedIndex;
- (UIAction)_overrideTidebarButtonAction;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute;
- (UILayoutGuide)contentLayoutGuide;
- (UINavigationController)moreNavigationController;
- (UITab)selectedTab;
- (UITabBarController)initWithCoder:(id)coder;
- (UITabBarController)initWithNibName:(id)name bundle:(id)bundle;
- (UITabBarController)initWithTabs:(id)tabs;
- (UITabBarControllerSidebar)sidebar;
- (UIViewController)selectedViewController;
- (double)_leftContentMargin;
- (double)_rightContentMargin;
- (double)_sidebarOverlapAmountForZoom;
- (id)_additionalViewControllersToCheckForUserActivity;
- (id)_customAnimatorForFromViewController:(id)controller toViewController:(id)viewController;
- (id)_customInteractionControllerForAnimator:(id)animator;
- (id)_deepestActionResponder;
- (id)_displayedViewControllersForTab:(void *)tab proposedViewControllers:;
- (id)_effectiveInteractionActivityTrackingBaseName;
- (id)_existingMoreNavigationController;
- (id)_internalTabBar;
- (id)_navigationControllerForCustomizingToolbarWithSender:(id)sender;
- (id)_observingScrollView;
- (id)_overrideTraitCollectionToPassDuringTraitChangeToChildViewController:(id)controller;
- (id)_overridingPreferredFocusEnvironment;
- (id)_recallRememberedFocusedItemForViewController:(id)controller;
- (id)_resolvedPopoverPresentationControllerSourceItemForTab:(id *)tab;
- (id)_responderSelectionContainerViewForResponder:(id)responder;
- (id)_selectedViewControllerInTabBar;
- (id)_tabBarWindowForInterfaceOrientation:(id)orientation;
- (id)_tabCustomizationProxy;
- (id)_tabs_compactTabs;
- (id)_viewControllerForObservableScrollView;
- (id)_viewControllerForSelectAtIndex:(unint64_t)index;
- (id)_viewControllerForTabBarItem:(id)item;
- (id)_viewControllersForTabs;
- (id)_viewForViewController:(id)controller;
- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)context;
- (id)_visualStyle;
- (id)_wrapperViewForViewController:(id)controller;
- (id)allViewControllers;
- (id)delegate;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (id)rotatingFooterView;
- (id)rotatingHeaderView;
- (id)rotatingSnapshotViewForWindow:(id)window;
- (id)tabForIdentifier:(id)identifier;
- (id)transitionCoordinator;
- (int64_t)_effectiveTabBarPosition;
- (int64_t)_subclassPreferredFocusedViewPrioritizationType;
- (int64_t)_uip_preferredSidebarMode;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (uint64_t)_shouldSelectTab:(uint64_t)tab;
- (unint64_t)_effectiveMaxItems;
- (unint64_t)_relevantEdgeForScrollViewObservation;
- (unint64_t)supportedInterfaceOrientations;
- (void)__viewWillLayoutSubviews;
- (void)_childViewController:(id)controller updatedObservedScrollView:(id)view;
- (void)_compatibility_updateViewController:(id)controller forTabBarObservedScrollView:(id)view;
- (void)_configureTabModel;
- (void)_configureTargetActionForTabBarItem:(id)item;
- (void)_didChangeChildModalViewControllers;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_displayedViewControllerDidChangeForTab:(void *)tab previousViewController:;
- (void)_forceUpdateScrollViewIfNecessary;
- (void)_forgetFocusedItemForViewController:(id)controller;
- (void)_getRotationContentSettings:(id *)settings;
- (void)_handleObservingForScrollView:(id)view sharedWithNavigationController:(id)controller;
- (void)_hideBarWithTransition:(int)transition isExplicit:(BOOL)explicit duration:(double)duration reason:(unint64_t)reason;
- (void)_invalidateBarLayoutIfNecessary;
- (void)_layoutContainerView;
- (void)_layoutViewController:(id)controller;
- (void)_navigationController:(id)controller didUpdateAndObserveScrollView:(id)view forEdges:(unint64_t)edges;
- (void)_navigationControllerDidUpdateSearchController:(id)controller;
- (void)_navigationControllerDidUpdateStack:(id)stack;
- (void)_notifyDisplayOrderChangesForGroup:(uint64_t)group;
- (void)_notifyEditingStateChange:(id *)change;
- (void)_notifyVisibilityChangesForTabs:(id *)tabs;
- (void)_observableScrollViewDidChangeFrom:(id)from forViewController:(id)controller edges:(unint64_t)edges;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_performFocusGesture:(unint64_t)gesture;
- (void)_performWithIgnoringSelectionUpdate:(BOOL)update block:(id)block;
- (void)_populateArchivedChildViewControllers:(id)controllers;
- (void)_prepareTabBar;
- (void)_rebuildTabBarItemsAnimated:(BOOL)animated;
- (void)_rebuildTabBarItemsIfNeeded;
- (void)_rebuildTabModelAnimated:(BOOL)animated;
- (void)_rememberFocusedItem:(id)item forViewController:(id)controller;
- (void)_rememberPresentingFocusedItem:(id)item;
- (void)_resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary:(BOOL)necessary animated:(BOOL)animated;
- (void)_safeAreaInsetsDidChangeForView;
- (void)_scrollPocketCollectorInteraction;
- (void)_selectDefaultViewControllerIfNecessaryWithAppearanceTransitions:(BOOL)transitions;
- (void)_selectTabElementIfPossible:(id)possible;
- (void)_selectedElementDidChange:(void *)change previousElement:;
- (void)_selectedLeafDidChange:(void *)change previousLeaf:;
- (void)_setAccessoryView:(id)view;
- (void)_setBadgeValue:(id)value forTabBarItem:(id)item;
- (void)_setMaximumNumberOfItems:(unint64_t)items;
- (void)_setMoreNavigationControllerRestorationIdentifier;
- (void)_setNotifySplitViewControllerForSelectionChange:(BOOL)change;
- (void)_setOverrideTidebarButtonAction:(id)action;
- (void)_setPreferTabBarFocused:(BOOL)focused;
- (void)_setSelectedTabBarItem:(id)item;
- (void)_setSelectedViewController:(id)controller performUpdates:(BOOL)updates;
- (void)_setSelectedViewControllerAndNotify:(id)notify;
- (void)_setShouldCollapseTabBarOnScroll:(BOOL)scroll;
- (void)_setSuspendBarBackgroundUpdating:(BOOL)updating;
- (void)_setTabBarOffscreen:(BOOL)offscreen;
- (void)_setTabBarPosition:(int64_t)position;
- (void)_setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)_showBarWithTransition:(int)transition isExplicit:(BOOL)explicit duration:(double)duration reason:(unint64_t)reason;
- (void)_stopObservingScrollView:(id)view;
- (void)_suspendAllTabBarBackgroundUpdates;
- (void)_tab:(void *)_tab acceptItemsFromDropSession:;
- (void)_tab:(void *)_tab operationForAcceptingItemsFromDropSession:;
- (void)_tabBarDidChangeSelectionToItem:(id)item;
- (void)_tabBarVisibilityDidChange;
- (void)_tabDropSessionDidUpdate:(void *)update withDestinationTab:;
- (void)_tabs_rebuildMoreChildViewControllersIfNeeded;
- (void)_tabs_rebuildTabBarItemsAnimated:(BOOL)animated;
- (void)_uip_setPreferredSidebarMode:(int64_t)mode;
- (void)_uip_setSidebarVisible:(BOOL)visible;
- (void)_updateAndObserveScrollView:(id)view viewController:(id)controller updateBackgroundTransitionProgressForNilScrollView:(BOOL)scrollView;
- (void)_updateBackgroundTransitionProgressForScrollView:(id)view tabBar:(id)bar isNavigationTransitionUpdate:(BOOL)update forceTwoPartCrossfade:(BOOL)crossfade completion:(id)completion;
- (void)_updateBarHiddenByClientStateIfNecessary;
- (void)_updateContentLayoutGuideConstraints;
- (void)_updateLayoutForStatusBarAndInterfaceOrientation;
- (void)_updateLayoutForTraitCollection:(id)collection;
- (void)_updateObservingScrollViewWithScrollView:(id)view viewController:(id)controller getTabBarRequiresStandardBackground:(BOOL *)background;
- (void)_updateVisualStyleForTraitCollection:(id)collection;
- (void)_validateTabSelectionIfNeeded;
- (void)_viewControllerDidBeginDismissal:(id)dismissal;
- (void)_viewControllerObservableScrollViewAmbiguityStatusDidChange:(id)change;
- (void)_viewDidPerformLayout;
- (void)_viewSubtreeDidGainScrollView:(id)view enclosingViewController:(id)controller tvSearchController:(id)searchController;
- (void)_willChangeToIdiom:(int64_t)idiom onScreen:(id)screen;
- (void)animationDidStop:(id)stop finished:(id)finished context:(id)context;
- (void)applicationWillSuspend;
- (void)beginCustomizingTabBar:(id)bar;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)loadView;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)revealTabBarSelection;
- (void)runToolbarCustomizationPalette:(id)palette;
- (void)setBottomAccessory:(id)accessory animated:(BOOL)animated;
- (void)setCompactTabIdentifiers:(id)identifiers;
- (void)setCustomizableViewControllers:(NSArray *)customizableViewControllers;
- (void)setCustomizationIdentifier:(id)identifier;
- (void)setDelegate:(id)delegate;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setMode:(int64_t)mode;
- (void)setRestorationIdentifier:(id)identifier;
- (void)setSelectedIndex:(NSUInteger)selectedIndex;
- (void)setSelectedTab:(id)tab;
- (void)setSelectedViewController:(UIViewController *)selectedViewController;
- (void)setShowsEditButtonOnLeft:(BOOL)left;
- (void)setTabBar:(id)bar;
- (void)setTabBarMinimizeBehavior:(int64_t)behavior;
- (void)setTabs:(id)tabs animated:(BOOL)animated;
- (void)setTitle:(id)title;
- (void)setTransientViewController:(id)controller animated:(BOOL)animated;
- (void)setView:(id)view;
- (void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated;
- (void)tabBar:(id)bar didEndCustomizingItems:(id)items changed:(BOOL)changed;
- (void)tabBar:(id)bar willBeginCustomizingItems:(id)items;
- (void)tabBar:(id)bar willEndCustomizingItems:(id)items changed:(BOOL)changed;
- (void)tabBarSizingDidChange:(id)change;
- (void)toggleSidebar:(id)sidebar;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionFromViewController:(id)controller toViewController:(id)viewController transition:(int)transition shouldSetSelected:(BOOL)selected;
- (void)transitionViewDidComplete:(id)complete fromView:(id)view toView:(id)toView;
- (void)transitionViewDidStart:(id)start;
- (void)unwindForSegue:(id)segue towardsViewController:(id)controller;
- (void)updateTabBarItemForViewController:(id)controller;
- (void)updateViewConstraints;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation UITabBarController

- (void)_configureTabModel
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(_UITabModel);
  tabModel = self->_tabModel;
  self->_tabModel = v3;

  [(_UITabModel *)self->_tabModel setTabBarController:self];
  v7[0] = 0x1EFE323F8;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v6 = [(UIViewController *)self _registerForTraitTokenChanges:v5 withTarget:self action:sel__validateTabSelectionIfNeeded];
}

- (void)_prepareTabBar
{
  if ((*&self->_tabBarControllerFlags & 0x20) == 0)
  {
    _effectiveTabBarPosition = [(UITabBarController *)self _effectiveTabBarPosition];
    if (_effectiveTabBarPosition - 3 < 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    [(UITabBar *)self->_tabBar _setBarOrientation:v4];
    [(UITabBar *)self->_tabBar setLocked:0];
    [(UIView *)self->_tabBar sizeToFit];
    [(_UITabBarControllerVisualStyle *)self->_visualStyle updateTabBarLayout];
    if (_effectiveTabBarPosition > 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_18A679240[_effectiveTabBarPosition];
    }

    [(UITabBar *)self->_tabBar _setAccessoryView:self->_accessoryView];
    [(UIView *)self->_tabBar setAutoresizingMask:v5];
    tabBar = self->_tabBar;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__UITabBarController__prepareTabBar__block_invoke;
    v12[3] = &unk_1E70F3590;
    v12[4] = self;
    [(UITabBar *)tabBar _performWhileIgnoringLock:v12];
    [(UITabBar *)self->_tabBar _setHidesShadow:(*&self->_tabBarControllerFlags >> 13) & 1];
    tabBarView = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
    v8 = tabBarView;
    if (!tabBarView)
    {
      v8 = self->_tabBar;
    }

    v9 = v8;

    superview = [(UIView *)v9 superview];
    containerView = self->_containerView;

    if (superview != containerView)
    {
      [(UILayoutContainerView *)self->_containerView addSubview:v9];
    }

    [(UITabBar *)self->_tabBar setLocked:1];
    *&self->_tabBarControllerFlags |= 0x22u;
    [(UIView *)self->_containerView setNeedsLayout];
  }
}

- (NSUInteger)selectedIndex
{
  if (self->_transientViewController)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  selectedViewController = [(UITabBarController *)self selectedViewController];
  _existingMoreNavigationController = [(UITabBarController *)self _existingMoreNavigationController];
  if (selectedViewController == _existingMoreNavigationController)
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    _viewControllersInTabBar = [(UITabBarController *)self _viewControllersInTabBar];
    v2 = [_viewControllersInTabBar indexOfObjectIdenticalTo:selectedViewController];
  }

  _existingMoreNavigationController2 = [(UITabBarController *)self _existingMoreNavigationController];

  if (selectedViewController != _existingMoreNavigationController2 && v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSMutableArray *)self->_moreChildViewControllers indexOfObjectIdenticalTo:selectedViewController];
    v2 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v2 = v8 + [(UITabBarController *)self _effectiveMaxItems]- 1;
    }
  }

  return v2;
}

- (void)loadView
{
  [(UITabBarController *)self _layoutContainerView];
  visualStyle = self->_visualStyle;

  [(_UITabBarControllerVisualStyle *)visualStyle updateGestureRecognizers];
}

- (void)_layoutContainerView
{
  if (!self->_containerView)
  {
    [(UIViewController *)self _defaultInitialViewFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [[UILayoutContainerView alloc] initWithFrame:v4, v6, v8, v10];
    containerView = self->_containerView;
    self->_containerView = v12;

    [(UILayoutContainerView *)self->_containerView setDelegate:self];
    [(UILayoutContainerView *)self->_containerView setFrame:v5, v7, v9, v11];
    [(UIView *)self->_containerView setAutoresizingMask:18];
    [(UITabBarController *)self setView:self->_containerView];
    if (self->_contentLayoutGuide)
    {
      [(UIView *)self->_containerView addLayoutGuide:?];
    }

    visualStyle = self->_visualStyle;
    if (visualStyle)
    {
      [(_UITabBarControllerVisualStyle *)visualStyle loadViews];
    }

    else
    {
      traitCollection = [(UIViewController *)self traitCollection];
      [(UITabBarController *)self _updateVisualStyleForTraitCollection:traitCollection];
    }
  }

  [(UIView *)self->_containerView bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = self->_visualStyle;
  if (!v24)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:1183 description:@"_visualStyle must be created before we can layout the container view"];

    v24 = self->_visualStyle;
  }

  if ([(_UITabBarControllerVisualStyle *)v24 wantsDefaultTabBar]&& !self->_tabBar)
  {
    v25 = [[UITabBar alloc] initWithFrame:v17, v19, v21, v23];
    tabBar = self->_tabBar;
    self->_tabBar = v25;
  }

  [(UITabBarController *)self _prepareTabBar];
  if (dyld_program_sdk_at_least())
  {
    [(_UITabBarControllerVisualStyle *)self->_visualStyle updateTabBarLayout];
  }

  viewControllerTransitionView = self->_viewControllerTransitionView;
  if (viewControllerTransitionView)
  {
    superview = [(UIView *)viewControllerTransitionView superview];

    if (superview)
    {
      goto LABEL_20;
    }

    tabBarView = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
    [(UIView *)self->_containerView insertSubview:self->_viewControllerTransitionView belowSubview:tabBarView];
  }

  else
  {
    v30 = [UITransitionView alloc];
    v31 = [(UITransitionView *)v30 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v32 = self->_viewControllerTransitionView;
    self->_viewControllerTransitionView = v31;

    _transitionView = [(UITabBarController *)self _transitionView];
    [_transitionView setDelegate:self];

    _transitionView2 = [(UITabBarController *)self _transitionView];
    [_transitionView2 setShouldNotifyDidCompleteImmediately:1];

    [(UIView *)self->_viewControllerTransitionView setAutoresizingMask:18];
    v35 = self->_visualStyle;
    _transitionView3 = [(UITabBarController *)self _transitionView];
    [(_UITabBarControllerVisualStyle *)v35 configureTransitionView:_transitionView3];

    tabBarView = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
    [(UIView *)self->_containerView insertSubview:self->_viewControllerTransitionView belowSubview:tabBarView];
    if (self->_scrollPocketCollectorInteraction)
    {
      [(UIView *)self->_viewControllerTransitionView addInteraction:?];
    }
  }

LABEL_20:
  [(_UITabBarControllerVisualStyle *)self->_visualStyle adjustedTransitionViewFrame:v17, v19, v21, v23];
  [(UIView *)self->_viewControllerTransitionView setFrame:?];

  [(UITabBarController *)self _updateContentLayoutGuideConstraints];
}

- (void)_updateContentLayoutGuideConstraints
{
  v32[4] = *MEMORY[0x1E69E9840];
  v3 = self->_contentLayoutGuide;
  if (v3)
  {
    v4 = self->_contentLayoutGuideConstraints;
    if (!v4)
    {
      leftAnchor = [(UILayoutGuide *)v3 leftAnchor];
      leftAnchor2 = [(UIView *)self->_containerView leftAnchor];
      v29 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v32[0] = v29;
      topAnchor = [(UILayoutGuide *)v3 topAnchor];
      topAnchor2 = [(UIView *)self->_containerView topAnchor];
      v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v32[1] = v6;
      widthAnchor = [(UILayoutGuide *)v3 widthAnchor];
      v8 = [widthAnchor constraintEqualToConstant:0.0];
      v32[2] = v8;
      heightAnchor = [(UILayoutGuide *)v3 heightAnchor];
      v10 = [heightAnchor constraintEqualToConstant:0.0];
      v32[3] = v10;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];

      [MEMORY[0x1E69977A0] activateConstraints:v4];
      objc_storeStrong(&self->_contentLayoutGuideConstraints, v4);
    }

    v11 = self->_visualStyle;
    [(_UITabBarControllerVisualStyle *)v11 contentLayoutGuideFrame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v33.origin.x = v13;
    v33.origin.y = v15;
    v33.size.width = v17;
    v33.size.height = v19;
    MinX = CGRectGetMinX(v33);
    v21 = [(NSArray *)v4 objectAtIndexedSubscript:0];
    [v21 setConstant:MinX];

    v34.origin.x = v13;
    v34.origin.y = v15;
    v34.size.width = v17;
    v34.size.height = v19;
    MinY = CGRectGetMinY(v34);
    v23 = [(NSArray *)v4 objectAtIndexedSubscript:1];
    [v23 setConstant:MinY];

    v35.origin.x = v13;
    v35.origin.y = v15;
    v35.size.width = v17;
    v35.size.height = v19;
    Width = CGRectGetWidth(v35);
    v25 = [(NSArray *)v4 objectAtIndexedSubscript:2];
    [v25 setConstant:Width];

    v36.origin.x = v13;
    v36.origin.y = v15;
    v36.size.width = v17;
    v36.size.height = v19;
    Height = CGRectGetHeight(v36);
    v27 = [(NSArray *)v4 objectAtIndexedSubscript:3];
    [v27 setConstant:Height];
  }
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = UITabBarController;
  [(UIViewController *)&v4 viewDidLoad];
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle prefersTabBarFocusedOnViewDidLoad])
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFDFF | v3);
  [(_UITabBarControllerVisualStyle *)self->_visualStyle viewDidLoad];
}

- (NSArray)viewControllers
{
  if ((*(&self->_tabBarControllerFlags + 1) & 0x80) != 0)
  {
    v4 = 0;
  }

  else
  {
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    v4 = [mutableChildViewControllers mutableCopy];

    if (self->_moreNavigationController)
    {
      [v4 removeObject:?];
    }

    if ([(NSMutableArray *)self->_moreChildViewControllers count])
    {
      [v4 addObjectsFromArray:self->_moreChildViewControllers];
    }
  }

  return v4;
}

- (void)_safeAreaInsetsDidChangeForView
{
  v3.receiver = self;
  v3.super_class = UITabBarController;
  [(UIViewController *)&v3 _safeAreaInsetsDidChangeForView];
  if (dyld_program_sdk_at_least())
  {
    [(_UITabBarControllerVisualStyle *)self->_visualStyle updateTabBarLayout];
  }
}

- (void)__viewWillLayoutSubviews
{
  [(UITabBarController *)self _layoutContainerView];
  [(UITabBarController *)self _rebuildTabBarItemsIfNeeded];
  [(UITabBarController *)self _selectDefaultViewControllerIfNecessaryWithAppearanceTransitions:1];
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [(UITabBarController *)self _layoutViewController:_selectedViewControllerInTabBar];
}

- (void)_viewDidPerformLayout
{
  v11.receiver = self;
  v11.super_class = UITabBarController;
  [(UIViewController *)&v11 _viewDidPerformLayout];
  tabBarControllerFlags = self->_tabBarControllerFlags;
  if ((*&tabBarControllerFlags & 0x1000) != 0)
  {
    self->_tabBarControllerFlags = (*&tabBarControllerFlags & 0xFFFFEFFF);
    if (_UIViewControllerUseContentScrollViewAPI())
    {
      WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);
      if (!WeakRetained || (v5 = WeakRetained, v6 = objc_loadWeakRetained(&self->_observingScrollView), [v6 _viewControllerForAncestor], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[UITabBarController _isViewControllerContainedInSelected:ignoresPresentations:](self, "_isViewControllerContainedInSelected:ignoresPresentations:", v7, 0), v7, v6, v5, !v8))
      {
        v9 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:self->_selectedViewController];
        v10 = [v9 _contentOrObservableScrollViewForEdge:{-[UITabBarController _relevantEdgeForScrollViewObservation](self, "_relevantEdgeForScrollViewObservation")}];
        [(UITabBarController *)self _updateAndObserveScrollView:v10 viewController:v9 updateBackgroundTransitionProgressForNilScrollView:1];
      }
    }
  }
}

- (void)_updateLayoutForStatusBarAndInterfaceOrientation
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [_selectedViewControllerInTabBar _updateLayoutForStatusBarAndInterfaceOrientation];
  if (([objc_opt_class() _directlySetsContentOverlayInsetsForChildren] & 1) == 0)
  {
    [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
    [_selectedViewControllerInTabBar _updateContentOverlayInsetsFromParentIfNecessary];
  }

  [(UITabBarController *)self _layoutViewController:_selectedViewControllerInTabBar];
}

- (unint64_t)supportedInterfaceOrientations
{
  if ((*&self->_tabBarControllerFlags & 0x80) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained tabBarControllerSupportedInterfaceOrientations:self];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITabBarController;
    return [(UIViewController *)&v6 supportedInterfaceOrientations];
  }
}

- (void)_scrollPocketCollectorInteraction
{
  if (self)
  {
    selfCopy = self;
    v3 = self[149];
    if (!v3)
    {
      v4 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
      v5 = selfCopy[149];
      selfCopy[149] = v4;

      [selfCopy[126] addInteraction:selfCopy[149]];
      v3 = selfCopy[149];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)_existingMoreNavigationController
{
  if (*&self->_tabBarControllerFlags)
  {
    v3 = self->_moreNavigationController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIViewController)selectedViewController
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  _existingMoreNavigationController = [(UITabBarController *)self _existingMoreNavigationController];
  v5 = _existingMoreNavigationController;
  if (_selectedViewControllerInTabBar == _existingMoreNavigationController)
  {
    displayedViewController = [_existingMoreNavigationController displayedViewController];

    _selectedViewControllerInTabBar = displayedViewController;
  }

  return _selectedViewControllerInTabBar;
}

void __52__UITabBarController__registerDefaultStylesIfNeeded__block_invoke()
{
  v0 = +[_UIVisualStyleRegistry defaultRegistry];
  v1 = objc_opt_class();
  [v0 registerVisualStyleClass:v1 forStylableClass:objc_opt_class()];

  v2 = [_UIVisualStyleRegistry registryForIdiom:3];
  v3 = objc_opt_class();
  [v2 registerVisualStyleClass:v3 forStylableClass:objc_opt_class()];

  v4 = [_UIVisualStyleRegistry registryForIdiom:2];
  v5 = objc_opt_class();
  [v4 registerVisualStyleClass:v5 forStylableClass:objc_opt_class()];

  v6 = [_UIVisualStyleRegistry registryForIdiom:8];
  v7 = objc_opt_class();
  [v6 registerVisualStyleClass:v7 forStylableClass:objc_opt_class()];

  if (_UISolariumEnabled())
  {
    v8 = [_UIVisualStyleRegistry registryForIdiom:0];
    v9 = objc_opt_class();
    [v8 registerVisualStyleClass:v9 forStylableClass:objc_opt_class()];
  }

  if (qword_1ED498E08 != -1)
  {
    dispatch_once(&qword_1ED498E08, &__block_literal_global_137);
  }

  if (_MergedGlobals_63_0 == 1)
  {
    v11 = [_UIVisualStyleRegistry registryForIdiom:1];
    v10 = objc_opt_class();
    [v11 registerVisualStyleClass:v10 forStylableClass:objc_opt_class()];
  }
}

- (void)_rebuildTabBarItemsIfNeeded
{
  if ((*&self->_tabBarControllerFlags & 2) != 0)
  {
    if (!self->_visualStyle)
    {
      traitCollection = [(UIViewController *)self traitCollection];
      [(UITabBarController *)self _updateVisualStyleForTraitCollection:traitCollection];
    }

    [(UITabBarController *)self _rebuildTabModelAnimated:0];
    *&self->_tabBarControllerFlags &= ~2u;
  }
}

- (id)_internalTabBar
{
  if (self)
  {
    self = self[124];
    v1 = vars8;
  }

  return self;
}

- (int64_t)_effectiveTabBarPosition
{
  if (self->_tabBarPosition <= 1uLL)
  {
    return 1;
  }

  else
  {
    return self->_tabBarPosition;
  }
}

- (id)_selectedViewControllerInTabBar
{
  transientViewController = self->_transientViewController;
  if (!transientViewController)
  {
    transientViewController = self->_selectedViewController;
  }

  return transientViewController;
}

- (unint64_t)_effectiveMaxItems
{
  customMaxItems = self->_customMaxItems;
  if (!customMaxItems)
  {
    return self->_defaultMaxItems;
  }

  return customMaxItems;
}

- (void)_validateTabSelectionIfNeeded
{
  traitCollection = [(UIViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  LODWORD(traitCollection) = [(_UITabBarControllerVisualStyle *)self->_visualStyle shouldEnforceChildSelectionInGroupTabs];
  v22 = self->_tabModel;
  if (traitCollection)
  {
    selectedItem = [(_UITabModel *)v22 selectedItem];
    v6 = selectedItem;
    if ([selectedItem _isGroup])
    {
      v6 = selectedItem;
      while (1)
      {
        v7 = v6;
        selectedChild = [v7 selectedChild];
        if (!selectedChild)
        {
          selectedChild = [v7 _defaultChildForSelection];
          if (!selectedChild)
          {
            break;
          }
        }

        v6 = selectedChild;

        if (([v6 _isGroup] & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v6 = v7;
    }

LABEL_9:
    selectedLeaf = [(_UITabModel *)self->_tabModel selectedLeaf];

    if (selectedLeaf != v6)
    {
      if (v6)
      {
        do
        {
          _parentGroup = [v6 _parentGroup];
          selectedChild2 = [_parentGroup selectedChild];

          if (selectedChild2 != v6)
          {
            break;
          }

          _parentGroup2 = [v6 _parentGroup];

          v6 = _parentGroup2;
        }

        while (_parentGroup2);
      }

      [(_UITabModel *)self->_tabModel selectTab:v6 notifyOnReselection:0];
    }

    if (-[_UITabBarControllerVisualStyle supportsShowingMoreItem](self->_visualStyle, "supportsShowingMoreItem") && [selectedItem _isMoreTab])
    {
      v13 = self->_moreNavigationController;
      displayedViewController = [(UIMoreNavigationController *)v13 displayedViewController];
      if (displayedViewController == v13)
      {
        moreViewControllers = [(UIMoreNavigationController *)v13 moreViewControllers];
        firstObject = [moreViewControllers firstObject];

        displayedViewController = firstObject;
      }

      _resolvedTab = [(UIMoreNavigationController *)displayedViewController _resolvedTab];
      [(_UITabModel *)v22 selectTab:_resolvedTab notifyOnReselection:0];
    }
  }

  v18 = self->_moreNavigationController;
  v19 = v18;
  if (horizontalSizeClass != 2)
  {
    if (v18)
    {
      selectedViewController = [(UITabBarController *)self selectedViewController];

      if (selectedViewController == v19)
      {
        _resolvedTab2 = [(UIMoreNavigationController *)v19 _resolvedTab];
        [(_UITabModel *)v22 selectTab:_resolvedTab2 notifyOnReselection:0];
      }
    }
  }
}

- (id)allViewControllers
{
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  if ([(NSMutableArray *)self->_moreChildViewControllers count])
  {
    v4 = [mutableChildViewControllers mutableCopy];
    v5 = v4;
    moreNavigationController = self->_moreNavigationController;
    if (moreNavigationController)
    {
      lastObject = [v4 lastObject];

      if (moreNavigationController != lastObject)
      {
        [v5 addObject:self->_moreNavigationController];
      }
    }

    [v5 addObjectsFromArray:self->_moreChildViewControllers];
  }

  else
  {
    v5 = mutableChildViewControllers;
  }

  return v5;
}

- (BOOL)_isBarEffectivelyHidden
{
  if ([(UITabBarController *)self _wantsBarHidden])
  {
    return 1;
  }

  visualStyle = self->_visualStyle;

  return [(_UITabBarControllerVisualStyle *)visualStyle isTabBarEffectivelyHidden];
}

- (unint64_t)_relevantEdgeForScrollViewObservation
{
  tabBarPosition = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarPosition];
  if ((_UIViewControllerUseContentScrollViewAPI() & (tabBarPosition == 2)) != 0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (double)_leftContentMargin
{
  v7.receiver = self;
  v7.super_class = UITabBarController;
  [(UIViewController *)&v7 _leftContentMargin];
  v4 = v3;
  [(_UITabBarControllerVisualStyle *)self->_visualStyle additionalContentMargins];
  return v4 + v5;
}

- (double)_rightContentMargin
{
  v7.receiver = self;
  v7.super_class = UITabBarController;
  [(UIViewController *)&v7 _rightContentMargin];
  v4 = v3;
  [(_UITabBarControllerVisualStyle *)self->_visualStyle additionalContentMargins];
  return v4 + v5;
}

- (id)_viewControllersForTabs
{
  if (self)
  {
    if ((*(self + 1129) & 0x80) != 0)
    {
      self = self[142];
    }

    else
    {
      self = [self viewControllers];
    }

    v1 = vars8;
  }

  return self;
}

- (UITabBarControllerSidebar)sidebar
{
  sidebar = self->_sidebar;
  if (!sidebar)
  {
    v4 = [[UITabBarControllerSidebar alloc] _initWithTabBarController:?];
    v5 = self->_sidebar;
    self->_sidebar = v4;

    sidebar = self->_sidebar;
  }

  return sidebar;
}

- (id)_visualStyle
{
  if (self)
  {
    self = self[138];
    v1 = vars8;
  }

  return self;
}

- (UITab)selectedTab
{
  if (self)
  {
    self = self->_tabModel;
  }

  return [(UITabBarController *)self selectedLeaf];
}

- (void)dealloc
{
  v31 = *MEMORY[0x1E69E9840];
  delegate = [(UILayoutContainerView *)self->_containerView delegate];

  if (delegate == self)
  {
    [(UILayoutContainerView *)self->_containerView setDelegate:0];
  }

  transientViewController = self->_transientViewController;
  self->_transientViewController = 0;

  containerView = self->_containerView;
  self->_containerView = 0;

  _transitionView = [(UITabBarController *)self _transitionView];
  delegate2 = [_transitionView delegate];

  if (delegate2 == self)
  {
    _transitionView2 = [(UITabBarController *)self _transitionView];
    [_transitionView2 setDelegate:0];
  }

  viewControllerTransitionView = self->_viewControllerTransitionView;
  self->_viewControllerTransitionView = 0;

  [(UITabBar *)self->_tabBar setLocked:0];
  delegate3 = [(UITabBar *)self->_tabBar delegate];

  if (delegate3 == self)
  {
    [(UITabBar *)self->_tabBar setDelegate:0];
  }

  tabBar = self->_tabBar;
  self->_tabBar = 0;

  tabBarItemsToViewControllers = self->_tabBarItemsToViewControllers;
  self->_tabBarItemsToViewControllers = 0;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_moreChildViewControllers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        if (*(v18 + 96) == self)
        {
          *(v18 + 96) = 0;
        }
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  moreNavigationController = self->_moreNavigationController;
  self->_moreNavigationController = 0;

  moreChildViewControllers = self->_moreChildViewControllers;
  self->_moreChildViewControllers = 0;

  selectedViewController = self->_selectedViewController;
  self->_selectedViewController = 0;

  customizableViewControllers = self->_customizableViewControllers;
  self->_customizableViewControllers = 0;

  accessoryView = self->_accessoryView;
  self->_accessoryView = 0;

  visualStyle = self->_visualStyle;
  self->_visualStyle = 0;

  v25.receiver = self;
  v25.super_class = UITabBarController;
  [(UIViewController *)&v25 dealloc];
}

- (id)_tabs_compactTabs
{
  selfCopy = self;
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_tabModel;
  }

  tabItems = [(UITabBarController *)self tabItems];
  compactTabIdentifiers = [(UITabBarController *)selfCopy compactTabIdentifiers];
  if ([compactTabIdentifiers count])
  {
    tabItems2 = [(_UITabModel *)selfCopy->_tabModel tabItems];

    if (tabItems2)
    {
      v16 = tabItems;
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(compactTabIdentifiers, "count")}];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = compactTabIdentifiers;
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v21;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v20 + 1) + 8 * i);
            tabItems3 = [(_UITabModel *)selfCopy->_tabModel tabItems];
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __39__UITabBarController__tabs_compactTabs__block_invoke;
            v19[3] = &unk_1E7101F18;
            v19[4] = v10;
            v12 = [tabItems3 indexOfObjectPassingTest:v19];

            if (v12 != 0x7FFFFFFFFFFFFFFFLL)
            {
              tabItems4 = [(_UITabModel *)selfCopy->_tabModel tabItems];
              v14 = [tabItems4 objectAtIndex:v12];

              [v17 addObject:v14];
            }
          }

          v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v7);
      }

      tabItems = [v17 copy];
    }
  }

  return tabItems;
}

- (NSArray)tabs
{
  if ((*(&self->_tabBarControllerFlags + 1) & 0x80) != 0)
  {
    tabItems = [(_UITabModel *)self->_tabModel tabItems];
  }

  else
  {
    tabItems = MEMORY[0x1E695E0F0];
  }

  return tabItems;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = UITabBarController;
  [(UIViewController *)&v3 updateViewConstraints];
  [(_UITabBarControllerVisualStyle *)self->_visualStyle updateConstraints];
}

- (void)_tabBarVisibilityDidChange
{
  selectedViewController = [(UITabBarController *)self selectedViewController];
  traitCollection = [(UIViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      style = [selectedViewController style];

      if (!style)
      {
        goto LABEL_6;
      }

      traitCollection = [selectedViewController view];
      [traitCollection setNeedsLayout];
    }
  }

LABEL_6:
  if (!_UIBarsApplyChromelessEverywhere())
  {
    goto LABEL_13;
  }

  v5 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:self->_selectedViewController];
  if ([(UITabBarController *)self _isBarEffectivelyHidden])
  {
    WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);
    v7 = WeakRetained;
  }

  else
  {
    v8 = [v5 _contentOrObservableScrollViewForEdge:4];
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      _scrollViewObservedBeforeHidingBar = [(UITabBarController *)self _scrollViewObservedBeforeHidingBar];
      v7 = _scrollViewObservedBeforeHidingBar;
      if (_scrollViewObservedBeforeHidingBar)
      {
        _viewControllerForAncestor = [_scrollViewObservedBeforeHidingBar _viewControllerForAncestor];
        v11 = [(UITabBarController *)self _isViewControllerContainedInSelected:_viewControllerForAncestor ignoresPresentations:0];

        if (!v11)
        {

          WeakRetained = 0;
          v7 = 0;
          goto LABEL_12;
        }
      }
    }

    WeakRetained = 0;
  }

LABEL_12:
  [(UITabBarController *)self _setScrollViewObservedBeforeHidingBar:WeakRetained];
  [(UITabBarController *)self _updateAndObserveScrollView:v7 viewController:v5];
  [(UITabBarController *)self _updateBarHiddenByClientStateIfNecessary];

LABEL_13:
}

void __62__UITabBarController__updateBarHiddenByClientStateIfNecessary__block_invoke()
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v0 = _UIMainBundleIdentifier();
    byte_1ED498E01 = [v0 isEqualToString:@"com.zhiliaoapp.musically"];
  }
}

- (void)_updateBarHiddenByClientStateIfNecessary
{
  if (qword_1ED498E20 != -1)
  {
    dispatch_once(&qword_1ED498E20, &__block_literal_global_247);
  }

  if (byte_1ED498E01 == 1)
  {
    if ([(UIView *)self->_tabBar isHidden])
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

    self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFFFB | v3);
  }
}

- (void)_setMoreNavigationControllerRestorationIdentifier
{
  if (self->_moreNavigationController)
  {
    restorationIdentifier = [(UIResponder *)self restorationIdentifier];
    if (restorationIdentifier)
    {
      v7 = restorationIdentifier;
      [(UIResponder *)self->_moreNavigationController setRestorationIdentifier:@"_$MoreNavigationController$_"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      restorationIdentifier = v7;
      if (isKindOfClass)
      {
        moreListController = [(UIMoreNavigationController *)self->_moreNavigationController moreListController];
        v6 = moreListController;
        if (moreListController)
        {
          [moreListController setRestorationIdentifier:@"_$MoreNavigationListController$_"];
        }

        restorationIdentifier = v7;
      }
    }
  }
}

+ (BOOL)_uip_isFloatingTabBarEnabled
{
  if (qword_1ED498E08 != -1)
  {
    dispatch_once(&qword_1ED498E08, &__block_literal_global_137);
  }

  return _MergedGlobals_63_0;
}

- (BOOL)becomeFirstResponder
{
  selectedViewController = [(UITabBarController *)self selectedViewController];

  if (selectedViewController)
  {
    selectedViewController2 = [(UITabBarController *)self selectedViewController];
    becomeFirstResponder = [selectedViewController2 becomeFirstResponder];

    return becomeFirstResponder;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UITabBarController;
    return [(UIResponder *)&v7 becomeFirstResponder];
  }
}

- (void)_invalidateBarLayoutIfNecessary
{
  traitCollection = [(UIView *)self->_tabBar traitCollection];
  if ([traitCollection userInterfaceIdiom])
  {
  }

  else
  {
    v3 = dyld_program_sdk_at_least();

    if (v3)
    {
      *&self->_tabBarControllerFlags &= ~0x20u;
    }
  }
}

- (BOOL)_allowsCustomizing
{
  customizableViewControllers = [(UITabBarController *)self customizableViewControllers];
  v3 = [customizableViewControllers count] != 0;

  return v3;
}

- (NSArray)customizableViewControllers
{
  v2 = [(NSArray *)self->_customizableViewControllers copy];

  return v2;
}

- (UINavigationController)moreNavigationController
{
  moreNavigationController = self->_moreNavigationController;
  if (!moreNavigationController)
  {
    v4 = objc_alloc_init([objc_opt_class() _moreNavigationControllerClass]);
    v5 = self->_moreNavigationController;
    self->_moreNavigationController = v4;

    v6 = _UINSLocalizedStringWithDefaultValue(@"More", @"More");
    moreListController = [(UIMoreNavigationController *)self->_moreNavigationController moreListController];
    [moreListController setTitle:v6];

    [(UITabBarController *)self _setMoreNavigationControllerRestorationIdentifier];
    [(UIMoreNavigationController *)self->_moreNavigationController setAllowsCustomizing:[(UITabBarController *)self _allowsCustomizing]];
    semanticContentAttribute = [(UIView *)self->_tabBar semanticContentAttribute];
    view = [(UIViewController *)self->_moreNavigationController view];
    [view setSemanticContentAttribute:semanticContentAttribute];

    semanticContentAttribute2 = [(UIView *)self->_tabBar semanticContentAttribute];
    topViewController = [(UINavigationController *)self->_moreNavigationController topViewController];
    view2 = [topViewController view];
    [view2 setSemanticContentAttribute:semanticContentAttribute2];

    semanticContentAttribute3 = [(UIView *)self->_tabBar semanticContentAttribute];
    navigationBar = [(UINavigationController *)self->_moreNavigationController navigationBar];
    [navigationBar setSemanticContentAttribute:semanticContentAttribute3];

    moreNavigationController = self->_moreNavigationController;
  }

  return moreNavigationController;
}

- (id)_additionalViewControllersToCheckForUserActivity
{
  v3 = MEMORY[0x1E695DEC8];
  selectedViewController = [(UITabBarController *)self selectedViewController];
  v5 = [v3 arrayWithObjects:{selectedViewController, self->_moreNavigationController, 0}];

  return v5;
}

- (id)_overridingPreferredFocusEnvironment
{
  v14.receiver = self;
  v14.super_class = UITabBarController;
  _overridingPreferredFocusEnvironment = [(UIViewController *)&v14 _overridingPreferredFocusEnvironment];
  if (!_overridingPreferredFocusEnvironment)
  {
    _existingView = [(UIViewController *)self _existingView];
    _window = [_existingView _window];
    if (!_window)
    {
      _overridingPreferredFocusEnvironment = 0;
LABEL_18:

      goto LABEL_19;
    }

    tabBarControllerFlags = self->_tabBarControllerFlags;

    if ((*&tabBarControllerFlags & 0x200) != 0)
    {
      _overridingPreferredFocusEnvironment = 0;
      goto LABEL_19;
    }

    _existingView = [(UITabBarController *)self selectedViewController];
    v7 = [(UITabBarController *)self _recallRememberedFocusedItemForViewController:_existingView];
    if (v7)
    {
      if ([(UITabBarController *)self _canRestoreFocusAfterTransitionToRecalledItem:v7 inViewController:_existingView])
      {
        _overridingPreferredFocusEnvironment = v7;
LABEL_17:

        goto LABEL_18;
      }

      [(UITabBarController *)self _forgetFocusedItemForViewController:_existingView];
    }

    else if ([(UITabBarController *)self _isModernTVTabBar]&& [(UITabBarController *)self _shouldFocusViewControllerAfterTransition])
    {
      preferredFocusEnvironments = [_existingView preferredFocusEnvironments];
      firstObject = [preferredFocusEnvironments firstObject];

      _focusSystem = [(UIViewController *)self _focusSystem];
      focusedItem = [_focusSystem focusedItem];
      v12 = focusedItem;
      if (!firstObject || firstObject == focusedItem || [_focusSystem _focusedItemIsContainedInEnvironment:firstObject includeSelf:1])
      {
        [(UITabBarController *)self set_shouldFocusViewControllerAfterTransition:0];
        _overridingPreferredFocusEnvironment = 0;
      }

      else
      {
        _overridingPreferredFocusEnvironment = firstObject;
      }

      goto LABEL_17;
    }

    _overridingPreferredFocusEnvironment = 0;
    goto LABEL_17;
  }

LABEL_19:

  return _overridingPreferredFocusEnvironment;
}

- (NSMapTable)_rememberedFocusedItemsByViewController
{
  rememberedFocusedItemsByViewController = self->_rememberedFocusedItemsByViewController;
  if (!rememberedFocusedItemsByViewController)
  {
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v5 = self->_rememberedFocusedItemsByViewController;
    self->_rememberedFocusedItemsByViewController = weakToWeakObjectsMapTable;

    rememberedFocusedItemsByViewController = self->_rememberedFocusedItemsByViewController;
  }

  return rememberedFocusedItemsByViewController;
}

- (BOOL)_isTabBarFocused
{
  tabBarView = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
  _focusSystem = [(UIViewController *)self _focusSystem];
  focusedItem = [_focusSystem focusedItem];
  v6 = _UIFocusEnvironmentContainingView(focusedItem);
  v7 = [v6 isDescendantOfView:tabBarView];

  return v7;
}

- (id)_effectiveInteractionActivityTrackingBaseName
{
  interactionActivityTrackingBaseName = [(UIViewController *)self interactionActivityTrackingBaseName];
  if ([(UITabBarController *)self isMemberOfClass:objc_opt_class()])
  {
    selectedViewController = [(UITabBarController *)self selectedViewController];
    _effectiveInteractionActivityTrackingBaseName = [selectedViewController _effectiveInteractionActivityTrackingBaseName];

    if (_effectiveInteractionActivityTrackingBaseName)
    {
      v6 = [@"UITBC-" stringByAppendingString:_effectiveInteractionActivityTrackingBaseName];

      interactionActivityTrackingBaseName = v6;
    }
  }

  else
  {
    v7 = objc_opt_class();
    NSStringFromClass(v7);
    interactionActivityTrackingBaseName = _effectiveInteractionActivityTrackingBaseName = interactionActivityTrackingBaseName;
  }

  return interactionActivityTrackingBaseName;
}

+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation
{
  v3 = objc_opt_class();

  return [self doesOverrideViewControllerMethod:sel_preferredInterfaceOrientationForPresentation inBaseClass:v3];
}

- (void)_updateVisualStyleForTraitCollection:(id)collection
{
  userInterfaceIdiom = [collection userInterfaceIdiom];
  v5 = userInterfaceIdiom;
  if (!self->_visualStyle || self->_visualStyleIdiom != userInterfaceIdiom)
  {
    objc_opt_self();
    if (_registerDefaultStylesIfNeeded___defaultRegistrationToken != -1)
    {
      dispatch_once(&_registerDefaultStylesIfNeeded___defaultRegistrationToken, &__block_literal_global_32_0);
    }

    v6 = [_UIVisualStyleRegistry registryForIdiom:v5];
    v7 = [v6 visualStyleClassForStylableClass:objc_opt_class()];

    if (!self->_visualStyle || ([(objc_class *)v7 isEqual:objc_opt_class()]& 1) == 0)
    {
      obj = [[v7 alloc] initWithTabBarController:self];
      visualStyle = self->_visualStyle;
      if (visualStyle)
      {
        tabBarView = [(_UITabBarControllerVisualStyle *)visualStyle tabBarView];
        [tabBarView removeFromSuperview];
        *&self->_tabBarControllerFlags &= ~0x20u;
        [(_UITabBarControllerVisualStyle *)self->_visualStyle teardown];
      }

      objc_storeStrong(&self->_visualStyle, obj);
      self->_visualStyleIdiom = v5;
      [(_UITabBarControllerVisualStyle *)self->_visualStyle prepare];
      if ([(UIViewController *)self isViewLoaded])
      {
        [(_UITabBarControllerVisualStyle *)self->_visualStyle loadViews];
        view = [(UIViewController *)self view];
        [view setNeedsLayout];
      }
    }
  }
}

- (UITabBarController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = UITabBarController;
  v4 = [(UIViewController *)&v10 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(UITabBarController *)v4 _configureTabModel];
    traitCollection = [(UIViewController *)v5 traitCollection];
    v5->_defaultMaxItems = _UITabBarDefaultMaxItemsForTraitCollection(traitCollection);

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    moreChildViewControllers = v5->_moreChildViewControllers;
    v5->_moreChildViewControllers = v7;

    [(UIViewController *)v5 setContainmentSupport:0];
    [(UITabBarController *)v5 loadView];
    [(UITabBarController *)v5 viewDidLoad];
  }

  return v5;
}

- (UITabBarController)initWithCoder:(id)coder
{
  v54 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v52.receiver = self;
  v52.super_class = UITabBarController;
  v5 = [(UIViewController *)&v52 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(UITabBarController *)v5 _configureTabModel];
    traitCollection = [(UIViewController *)v6 traitCollection];
    v6->_defaultMaxItems = _UITabBarDefaultMaxItemsForTraitCollection(traitCollection);

    _effectiveMaxItems = [(UITabBarController *)v6 _effectiveMaxItems];
    v9 = [coderCopy decodeObjectForKey:@"UITabBar"];
    tabBar = v6->_tabBar;
    v6->_tabBar = v9;

    [(UITabBar *)v6->_tabBar setLocked:1];
    v11 = [coderCopy decodeObjectForKey:@"UITabBarItemsToViewControllers"];
    tabBarItemsToViewControllers = v6->_tabBarItemsToViewControllers;
    v6->_tabBarItemsToViewControllers = v11;

    v13 = [coderCopy decodeObjectForKey:@"UICustomizableViewControllers"];
    customizableViewControllers = v6->_customizableViewControllers;
    v6->_customizableViewControllers = v13;

    v15 = [coderCopy decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v6->_delegate, v15);

    v16 = [coderCopy decodeObjectForKey:@"UIViewControllers"];
    v17 = [v16 mutableCopy];
    moreChildViewControllers = v6->_moreChildViewControllers;
    v6->_moreChildViewControllers = v17;

    mutableChildViewControllers = [(UIViewController *)v6 mutableChildViewControllers];
    v20 = _effectiveMaxItems - 1;
    v21 = [MEMORY[0x1E695DFD8] setWithArray:v6->_moreChildViewControllers];
    v22 = [MEMORY[0x1E695DFD8] setWithArray:mutableChildViewControllers];
    v23 = [v21 isEqualToSet:v22];

    v24 = [(NSMutableArray *)v6->_moreChildViewControllers count];
    v25 = v6->_moreChildViewControllers;
    if (v23)
    {
      if (v24 <= _effectiveMaxItems)
      {
        [mutableChildViewControllers setArray:v25];
        [(NSMutableArray *)v6->_moreChildViewControllers removeAllObjects];
      }

      else
      {
        v26 = [(NSMutableArray *)v6->_moreChildViewControllers subarrayWithRange:0, _effectiveMaxItems - 1];
        [mutableChildViewControllers setArray:v26];
        [(NSMutableArray *)v6->_moreChildViewControllers removeObjectsInRange:0, v20];
      }
    }

    else
    {
      if (v24 <= _effectiveMaxItems)
      {
        if (v25)
        {
          [(NSMutableArray *)v6->_moreChildViewControllers removeAllObjects];
        }

        else
        {
          v27 = objc_opt_new();
          v28 = v6->_moreChildViewControllers;
          v6->_moreChildViewControllers = v27;
        }
      }

      else
      {
        [(NSMutableArray *)v6->_moreChildViewControllers removeObjectsInRange:0, _effectiveMaxItems - 1];
      }

      v29 = [mutableChildViewControllers count];
      v30 = v29 >= _effectiveMaxItems;
      v31 = v29 - _effectiveMaxItems;
      if (v31 != 0 && v30 || !v31 && [(NSMutableArray *)v6->_moreChildViewControllers count])
      {
        [mutableChildViewControllers removeObjectsInRange:{v20, v31 + 1}];
      }
    }

    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(mutableChildViewControllers, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v33 = mutableChildViewControllers;
    v34 = [v33 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v49;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(v33);
          }

          _resolvedTab = [*(*(&v48 + 1) + 8 * i) _resolvedTab];
          [v32 addObject:_resolvedTab];
        }

        v35 = [v33 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v35);
    }

    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __36__UITabBarController_initWithCoder___block_invoke;
    v45 = &unk_1E70F35B8;
    v39 = v6;
    v46 = v39;
    v47 = v32;
    v40 = v32;
    [(UITabBarController *)v39 _performWithoutNotifyingSelectionChange:&v42];
    *&v39->_tabBarControllerFlags |= 2u;
    [(UIViewController *)v39 setContainmentSupport:0, v42, v43, v44, v45];
  }

  return v6;
}

void __36__UITabBarController_initWithCoder___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __36__UITabBarController_initWithCoder___block_invoke_2;
  v2[3] = &unk_1E70F35B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  [UIView performWithoutAnimation:v2];
}

uint64_t __36__UITabBarController_initWithCoder___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[150];
  }

  return [v1 setTabItems:*(a1 + 40) inferSelection:0];
}

- (void)_populateArchivedChildViewControllers:(id)controllers
{
  controllersCopy = controllers;
  v5.receiver = self;
  v5.super_class = UITabBarController;
  [(UIViewController *)&v5 _populateArchivedChildViewControllers:controllersCopy];
  [controllersCopy addObjectsFromArray:self->_moreChildViewControllers];
  if (self->_moreNavigationController)
  {
    [controllersCopy removeObject:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UITabBarController;
  [(UIViewController *)&v12 encodeWithCoder:coderCopy];
  tabBar = self->_tabBar;
  if (tabBar)
  {
    [coderCopy encodeObject:tabBar forKey:@"UITabBar"];
  }

  tabBarItemsToViewControllers = self->_tabBarItemsToViewControllers;
  if (tabBarItemsToViewControllers)
  {
    [coderCopy encodeObject:tabBarItemsToViewControllers forKey:@"UITabBarItemsToViewControllers"];
  }

  customizableViewControllers = self->_customizableViewControllers;
  if (customizableViewControllers)
  {
    [coderCopy encodeObject:customizableViewControllers forKey:@"UICustomizableViewControllers"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [coderCopy encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  if ([(UIViewController *)self childViewControllersCount])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[UIViewController childViewControllersCount](self, "childViewControllersCount") + -[NSMutableArray count](self->_moreChildViewControllers, "count")}];
    [(UITabBarController *)self _populateArchivedChildViewControllers:v9];
    if ([v9 count])
    {
      viewControllers = [(UITabBarController *)self viewControllers];
      v11 = UIArrayByKeepingObjectsInSet(viewControllers, v9);
      [coderCopy encodeObject:v11 forKey:@"UIViewControllers"];
    }
  }
}

- (UITabBarController)initWithTabs:(id)tabs
{
  tabsCopy = tabs;
  v5 = [(UITabBarController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(UITabBarController *)v5 setTabs:tabsCopy];
  }

  return v6;
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(_UITabBarControllerVisualStyle *)self->_visualStyle preferredSidebarModeDidChange];
  }
}

- (void)setCompactTabIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6 = self->_compactTabIdentifiers;
  v7 = identifiersCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSArray *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_compactTabIdentifiers, identifiers);
    [(UITabBarController *)self _tabs_rebuildMoreChildViewControllersIfNeeded];
    *&self->_tabBarControllerFlags |= 2u;
    [(UITabBarController *)self _rebuildTabBarItemsIfNeeded];
  }

LABEL_9:
}

- (void)setTabs:(id)tabs animated:(BOOL)animated
{
  tabsCopy = tabs;
  *&self->_tabBarControllerFlags |= 0x8000u;
  selectedTab = [(UITabBarController *)self selectedTab];
  v9 = self->_tabModel;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__UITabBarController_setTabs_animated___block_invoke;
  v13[3] = &unk_1E7101EF0;
  v14 = v9;
  v15 = tabsCopy;
  selfCopy = self;
  v17 = a2;
  animatedCopy = animated;
  v10 = tabsCopy;
  v11 = v9;
  [(UITabBarController *)self _performWithoutNotifyingSelectionChange:v13];
  _existingView = [(UIViewController *)self _existingView];
  [_existingView setNeedsLayout];
}

void __39__UITabBarController_setTabs_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabItems];
  _UIArrayShallowEqual(v2, *(a1 + 40));

  v3 = [*(a1 + 32) selectedLeaf];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __39__UITabBarController_setTabs_animated___block_invoke_2;
  v12 = &unk_1E7101EC8;
  v13 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v17 = *(a1 + 56);
  v14 = v4;
  v15 = v5;
  v18 = *(a1 + 64);
  v6 = v3;
  v16 = v6;
  v7 = _Block_copy(&v9);
  v8 = v7;
  if (*(a1 + 64) == 1)
  {
    (*(v7 + 2))(v7);
  }

  else
  {
    [UIView performWithoutAnimation:v7, v9, v10, v11, v12, v13, v14, v15];
  }
}

void __39__UITabBarController_setTabs_animated___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setTabItems:*(a1 + 40) inferSelection:0];
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if ([v9 _isUniquelySPI])
        {
          v11 = [*(v7 + 2728) currentHandler];
          [v11 handleFailureInMethod:*(a1 + 64) object:*(a1 + 48) file:@"UITabBarController.m" lineNumber:626 description:{@"_UITabElement (%@) is not supported in setTabs:animated:", v9}];
        }

        v10 = [v9 _displayedViewController];
        if (!v10)
        {
          [*(v7 + 2728) currentHandler];
          v13 = v12 = v7;
          [v13 handleFailureInMethod:*(a1 + 64) object:*(a1 + 48) file:@"UITabBarController.m" lineNumber:629 description:{@"Every root UITab must have a non-nil UIViewController associated with it: %@", v9}];

          v7 = v12;
        }

        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];
  [*(a1 + 48) _setViewControllers:v14 animated:*(a1 + 72)];
  objc_storeStrong((*(a1 + 48) + 1136), v14);
  v15 = *(a1 + 32);
  v16 = [*(a1 + 56) identifier];
  v17 = [v15 tabForIdentifier:v16];

  if (v17)
  {
    v18 = *(a1 + 48);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __39__UITabBarController_setTabs_animated___block_invoke_3;
    v19[3] = &unk_1E70F35B8;
    v20 = *(a1 + 32);
    v21 = v17;
    [v18 _performWithIgnoringSelectionUpdate:0 block:v19];
  }
}

- (void)setSelectedTab:(id)tab
{
  if (self)
  {
    self = self->_tabModel;
  }

  [(UITabBarController *)self selectTab:tab notifyOnReselection:0];
}

- (id)tabForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:679 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  v6 = [(_UITabModel *)self->_tabModel tabForIdentifier:identifierCopy];

  return v6;
}

- (NSString)customizationIdentifier
{
  if (self)
  {
    self = self->_tabModel;
  }

  return [(UITabBarController *)self persistenceIdentifier];
}

- (void)setCustomizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  customizationIdentifier = [(UITabBarController *)self customizationIdentifier];
  v11 = identifierCopy;
  v6 = customizationIdentifier;
  v7 = v6;
  if (v6 == v11)
  {

    goto LABEL_12;
  }

  if (v11 && v6)
  {
    v8 = [v11 isEqual:v6];

    if (v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  [(_UITabModel *)tabModel setPersistenceIdentifier:v11];
  sidebar = self->_sidebar;
  if (sidebar)
  {
    [(UITabBarControllerSidebar *)sidebar _updateInitialSidebarVisibilityIfPossible];
  }

LABEL_12:
}

- (void)setBottomAccessory:(id)accessory animated:(BOOL)animated
{
  animatedCopy = animated;
  accessoryCopy = accessory;
  bottomAccessory = self->_bottomAccessory;
  if (bottomAccessory != accessoryCopy)
  {
    p_isa = &accessoryCopy->super.isa;
    [(UITabAccessory *)&bottomAccessory->super.isa _setTabBarController:?];
    [(UITabAccessory *)p_isa _setTabBarController:?];
    objc_storeStrong(&self->_bottomAccessory, accessory);
    tabBar = self->_tabBar;
    if (tabBar)
    {
      [(_UITabBarVisualProvider *)tabBar->_visualProvider setHostedElements:[(_UITabBarVisualProvider *)tabBar->_visualProvider hostedElements]& 0xFFFFFFFFFFFFFFFBLL | (4 * (p_isa != 0))];
    }

    *&self->_tabBarControllerFlags &= ~0x20u;
    [(_UITabBarControllerVisualStyle *)self->_visualStyle updateBottomAccessoryAnimated:animatedCopy];
    [(UITabBarController *)self _updateTabBarLayout];
    accessoryCopy = p_isa;
  }
}

- (UILayoutGuide)contentLayoutGuide
{
  contentLayoutGuide = self->_contentLayoutGuide;
  if (!contentLayoutGuide)
  {
    v4 = objc_opt_new();
    v5 = self->_contentLayoutGuide;
    self->_contentLayoutGuide = v4;

    [(UILayoutGuide *)self->_contentLayoutGuide setIdentifier:@"UITabBarController.contentLayoutGuide"];
    [(UIView *)self->_containerView addLayoutGuide:self->_contentLayoutGuide];
    [(UITabBarController *)self _updateContentLayoutGuideConstraints];
    contentLayoutGuide = self->_contentLayoutGuide;
  }

  return contentLayoutGuide;
}

- (id)_deepestActionResponder
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__UITabBarController__deepestActionResponder__block_invoke;
  v4[3] = &unk_1E71005E0;
  v4[4] = self;
  v2 = [(UIViewController *)self _deepestPresentedActionResponderOrBlock:v4];

  return v2;
}

id __45__UITabBarController__deepestActionResponder__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _selectedViewControllerInTabBar];
  if ([v2 _hasDeepestActionResponder])
  {
    v3 = [*(a1 + 32) _selectedViewControllerInTabBar];
    v4 = [v3 _deepestActionResponder];
  }

  else
  {
    v6.receiver = *(a1 + 32);
    v6.super_class = UITabBarController;
    v4 = objc_msgSendSuper2(&v6, sel__deepestActionResponder);
  }

  return v4;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_toggleSidebar_ == action)
  {
    _visualStyle = [(UITabBarController *)&self->super.super.super.isa _visualStyle];
    canToggleSidebar = [_visualStyle canToggleSidebar];
  }

  else if (sel_toggleInspector_ == action)
  {
    canToggleSidebar = 0;
  }

  else if (sel_runToolbarCustomizationPalette_ == action)
  {
    v9 = [(UITabBarController *)self _navigationControllerForCustomizingToolbarWithSender:senderCopy];
    canToggleSidebar = v9 != 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UITabBarController;
    canToggleSidebar = [(UIViewController *)&v11 canPerformAction:action withSender:senderCopy];
  }

  return canToggleSidebar;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy action] == sel_toggleSidebar_)
  {
    sidebar = [(UITabBarController *)self sidebar];
    isHidden = [sidebar isHidden];

    if (isHidden)
    {
      v7 = @"Show Sidebar";
    }

    else
    {
      v7 = @"Hide Sidebar";
    }

    v8 = _UINSLocalizedStringWithDefaultValue(v7, v7);
    [commandCopy setTitle:v8];
  }

  else if ([commandCopy action] != sel_toggleInspector_)
  {
    v9.receiver = self;
    v9.super_class = UITabBarController;
    [(UIResponder *)&v9 validateCommand:commandCopy];
  }
}

- (void)toggleSidebar:(id)sidebar
{
  _visualStyle = [(UITabBarController *)&self->super.super.super.isa _visualStyle];
  canToggleSidebar = [_visualStyle canToggleSidebar];

  if (canToggleSidebar)
  {
    sidebar = [(UITabBarController *)self sidebar];
    sidebar2 = [(UITabBarController *)self sidebar];
    -[UITabBarControllerSidebar _setHidden:source:](sidebar, [sidebar2 isHidden] ^ 1, 2);
  }
}

- (void)runToolbarCustomizationPalette:(id)palette
{
  v3 = [(UITabBarController *)self _navigationControllerForCustomizingToolbarWithSender:palette];
  [v3 _beginCustomizingBar];
}

- (id)_navigationControllerForCustomizingToolbarWithSender:(id)sender
{
  senderCopy = sender;
  selectedViewController = [(UITabBarController *)self selectedViewController];
  objc_opt_class();
  v6 = selectedViewController;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 _canPerformCustomizeBarActionWithSender:senderCopy];
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

- (void)_layoutViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(UITabBarController *)self _viewForViewController:controllerCopy];
  v5 = [UIViewControllerWrapperView existingWrapperViewForView:v4];
  [(UITabBarController *)self _frameForWrapperViewForViewController:controllerCopy];
  [v5 setFrame:?];
  [(UITabBarController *)self _frameForViewController:controllerCopy];
  [v4 setFrame:?];
  view = [(UIViewController *)controllerCopy view];

  if (v4 != view)
  {
    [v4 frame];
    v8 = v7;
    [v4 frame];
    v10 = v9;
    view2 = [(UIViewController *)controllerCopy view];
    [view2 setFrame:{0.0, 0.0, v8, v10}];
  }

  _bottomBarInsetGuideConstraint = [(UIViewController *)controllerCopy _bottomBarInsetGuideConstraint];

  if (_bottomBarInsetGuideConstraint)
  {
    view3 = [(UIViewController *)controllerCopy view];
    [view3 layoutIfNeeded];
  }

  if (self->_selectedViewController == controllerCopy)
  {
    [(UITabBarController *)self _compatibility_updateViewController:controllerCopy forTabBarObservedScrollView:0];
  }
}

- (id)_viewForViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  superview = [view superview];
  v5Superview = [superview superview];
  if (v5Superview)
  {
    v7 = v5Superview;
    modalPresentationStyle = [controllerCopy modalPresentationStyle];

    if (modalPresentationStyle != 6)
    {
      goto LABEL_5;
    }

    superview = [view superview];
    v5Superview2 = [superview superview];

    view = v5Superview2;
  }

LABEL_5:

  return view;
}

- (id)_wrapperViewForViewController:(id)controller
{
  controllerCopy = controller;
  [(UITabBarController *)self _frameForWrapperViewForViewController:controllerCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UITabBarController *)self _viewForViewController:controllerCopy];
  [v13 frame];
  v18 = [(UIViewControllerWrapperView *)v6 wrapperViewForView:v8 wrapperFrame:v10 viewFrame:v12, v14, v15, v16, v17, UIViewControllerWrapperView, v13];
  [(UITabBarController *)self _layoutViewController:controllerCopy];

  return v18;
}

- (void)_selectDefaultViewControllerIfNecessaryWithAppearanceTransitions:(BOOL)transitions
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (_selectedViewControllerInTabBar)
  {
  }

  else
  {
    viewControllers = [(UITabBarController *)self viewControllers];
    v11 = [viewControllers count];

    if (v11)
    {
      viewControllers2 = [(UITabBarController *)self viewControllers];
      v13 = [viewControllers2 objectAtIndex:0];

      if (!transitions)
      {
        [v13 setAppearanceTransitionsAreDisabled:1];
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __87__UITabBarController__selectDefaultViewControllerIfNecessaryWithAppearanceTransitions___block_invoke;
      v20[3] = &unk_1E70F35B8;
      v20[4] = self;
      v14 = v13;
      v21 = v14;
      [UIView performWithoutAnimation:v20];
      if (!transitions)
      {
        [v14 setAppearanceTransitionsAreDisabled:0];
      }

      return;
    }
  }

  _selectedViewControllerInTabBar2 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (!_selectedViewControllerInTabBar2)
  {
    return;
  }

  v7 = _selectedViewControllerInTabBar2;
  if ((*&self->_tabBarControllerFlags & 0x40) != 0)
  {
  }

  else
  {
    _selectedViewControllerInTabBar3 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    _existingView = [_selectedViewControllerInTabBar3 _existingView];

    if (_existingView)
    {
      return;
    }
  }

  _selectedViewControllerInTabBar4 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v19 = [(UITabBarController *)self _wrapperViewForViewController:_selectedViewControllerInTabBar4];

  _transitionView = [(UITabBarController *)self _transitionView];
  [_transitionView transition:0 toView:v19];

  if ((*&self->_tabBarControllerFlags & 0x40) != 0)
  {
    [(UITabBarController *)self _rebuildTabBarItemsIfNeeded];
    _selectedViewControllerInTabBar5 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    tabBarItem = [_selectedViewControllerInTabBar5 tabBarItem];
    [(UITabBarController *)self _setSelectedTabBarItem:tabBarItem];

    *&self->_tabBarControllerFlags &= ~0x40u;
  }
}

- (void)_setTabBarOffscreen:(BOOL)offscreen
{
  if (offscreen)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFDFFF | v3);
}

- (void)_didChangeChildModalViewControllers
{
  v4.receiver = self;
  v4.super_class = UITabBarController;
  [(UIViewController *)&v4 _didChangeChildModalViewControllers];
  _visualStyle = [(UITabBarController *)&self->super.super.super.isa _visualStyle];
  [_visualStyle childModalViewControllersDidChange];
}

- (void)_setAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_accessoryView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_accessoryView, view);
    *&self->_tabBarControllerFlags &= ~0x20u;
    [(UITabBarController *)self _prepareTabBar];
    viewCopy = v6;
  }
}

- (void)setTitle:(id)title
{
  v7.receiver = self;
  v7.super_class = UITabBarController;
  titleCopy = title;
  [(UIViewController *)&v7 setTitle:titleCopy];
  v5 = [(UITabBarController *)self sidebar:v7.receiver];
  v6 = v5;
  if (v5)
  {
    [(_UITabOutlineView *)*(v5 + 48) setTitle:titleCopy];
  }
}

- (void)setTabBar:(id)bar
{
  barCopy = bar;
  tabBar = self->_tabBar;
  if (tabBar != barCopy)
  {
    v7 = barCopy;
    [(UITabBar *)tabBar setLocked:0];
    [(UITabBar *)self->_tabBar setDelegate:0];
    [(UIView *)self->_tabBar removeFromSuperview];
    objc_storeStrong(&self->_tabBar, bar);
    *&self->_tabBarControllerFlags &= ~0x20u;
    [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarDidChange];
    [(UITabBarController *)self _prepareTabBar];
    barCopy = v7;
  }
}

- (void)setView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    delegate = [(UILayoutContainerView *)self->_containerView delegate];

    if (delegate == self)
    {
      [(UILayoutContainerView *)self->_containerView setDelegate:0];
    }

    owningView = [(UILayoutGuide *)self->_contentLayoutGuide owningView];
    containerView = self->_containerView;

    if (owningView == containerView)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:self->_contentLayoutGuideConstraints];
      [(UIView *)self->_containerView removeLayoutGuide:self->_contentLayoutGuide];
      contentLayoutGuideConstraints = self->_contentLayoutGuideConstraints;
      self->_contentLayoutGuideConstraints = 0;
    }

    transientViewController = self->_transientViewController;
    self->_transientViewController = 0;

    v10 = self->_containerView;
    self->_containerView = 0;

    _transitionView = [(UITabBarController *)self _transitionView];
    delegate2 = [_transitionView delegate];

    if (delegate2 == self)
    {
      _transitionView2 = [(UITabBarController *)self _transitionView];
      [_transitionView2 setDelegate:0];
    }

    viewControllerTransitionView = self->_viewControllerTransitionView;
    self->_viewControllerTransitionView = 0;

    [(UITabBar *)self->_tabBar setLocked:0];
    delegate3 = [(UITabBar *)self->_tabBar delegate];

    if (delegate3 == self)
    {
      [(UITabBar *)self->_tabBar setDelegate:0];
    }

    tabBar = self->_tabBar;
    self->_tabBar = 0;

    self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFF9D | 0x42);
  }

  v17.receiver = self;
  v17.super_class = UITabBarController;
  [(UIViewController *)&v17 setView:viewCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if ([(UIViewController *)self isViewLoaded])
  {
    _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
    _existingView = [_selectedViewControllerInTabBar _existingView];
    view = [(UIViewController *)self view];
    v8 = [_existingView isDescendantOfView:view];

    if ((v8 & 1) == 0)
    {
      [(UITabBarController *)self _selectDefaultViewControllerIfNecessaryWithAppearanceTransitions:0];
    }
  }

  v12.receiver = self;
  v12.super_class = UITabBarController;
  [(UIViewController *)&v12 viewWillAppear:appearCopy];
  _selectedViewControllerInTabBar2 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [(UIViewController *)_selectedViewControllerInTabBar2 __viewWillAppear:appearCopy];
  selectedViewControllerDuringWillAppear = self->_selectedViewControllerDuringWillAppear;
  self->_selectedViewControllerDuringWillAppear = _selectedViewControllerInTabBar2;
  v11 = _selectedViewControllerInTabBar2;

  [(_UITabBarControllerVisualStyle *)self->_visualStyle viewWillAppear:appearCopy];
  [(_UITabBarControllerVisualStyle *)self->_visualStyle prepare];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = UITabBarController;
  [(UIViewController *)&v7 viewDidAppear:?];
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v6 = _selectedViewControllerInTabBar;
  if (_selectedViewControllerInTabBar == self->_selectedViewControllerDuringWillAppear)
  {
    [(UIViewController *)_selectedViewControllerInTabBar __viewDidAppear:appearCopy];
    if (![(UIViewController *)v6 _containsFirstResponder])
    {
      [(UIViewController *)v6 _viewControllerWasSelected];
    }
  }

  [(_UITabBarControllerVisualStyle *)self->_visualStyle viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = UITabBarController;
  [(UIViewController *)&v6 viewWillDisappear:?];
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [(UIViewController *)_selectedViewControllerInTabBar __viewWillDisappear:disappearCopy];

  [(_UITabBarControllerVisualStyle *)self->_visualStyle viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = UITabBarController;
  [(UIViewController *)&v6 viewDidDisappear:?];
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [(UIViewController *)_selectedViewControllerInTabBar __viewDidDisappear:disappearCopy];

  [(_UITabBarControllerVisualStyle *)self->_visualStyle viewDidDisappear:disappearCopy];
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle removeTabBarFocusedOnViewDidDisappear])
  {
    *&self->_tabBarControllerFlags &= ~0x200u;
  }

  [(_UITabBarControllerVisualStyle *)self->_visualStyle teardown];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = UITabBarController;
  coordinatorCopy = coordinator;
  [(UIViewController *)&v11 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__UITabBarController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E70F4990;
  v9[4] = self;
  v10 = collectionCopy;
  v8 = collectionCopy;
  [coordinatorCopy animateAlongsideTransition:v9 completion:0];
}

uint64_t __80__UITabBarController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _updateLayoutForTraitCollection:v5];
  }

  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = UITabBarController;
  [(UIViewController *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(UIViewController *)self traitCollection];
  [(UITabBarController *)self _updateLayoutForTraitCollection:traitCollection];

  if (dyld_program_sdk_at_least())
  {
    horizontalSizeClass = [changeCopy horizontalSizeClass];
    traitCollection2 = [(UIViewController *)self traitCollection];
    horizontalSizeClass2 = [traitCollection2 horizontalSizeClass];

    if (horizontalSizeClass != horizontalSizeClass2)
    {
      *&self->_tabBarControllerFlags &= ~0x20u;
      [(UITabBarController *)self _prepareTabBar];
    }
  }
}

- (void)_setSelectedTabBarItem:(id)item
{
  itemCopy = item;
  tabBar = [(UITabBarController *)self tabBar];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__UITabBarController__setSelectedTabBarItem___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  [(UITabBar *)tabBar _performWhileIgnoringLock:v7];
}

void __45__UITabBarController__setSelectedTabBarItem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) tabBar];
  [v2 setSelectedItem:v1];
}

- (void)updateTabBarItemForViewController:(id)controller
{
  controllerCopy = controller;
  if ((*&self->_tabBarControllerFlags & 2) == 0)
  {
    mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
    v6 = [mutableChildViewControllers indexOfObjectIdenticalTo:controllerCopy] == 0x7FFFFFFFFFFFFFFFLL && -[NSMutableArray indexOfObjectIdenticalTo:](self->_moreChildViewControllers, "indexOfObjectIdenticalTo:", controllerCopy) == 0x7FFFFFFFFFFFFFFFLL;
    if (self->_transientViewController != controllerCopy || [mutableChildViewControllers count] == 1)
    {
      if (v6)
      {
        [(UITabBarController *)self _rebuildTabModelAnimated:1];
      }

      else
      {
        _resolvedTab = [(UIViewController *)controllerCopy _resolvedTab];
        if (([_resolvedTab _isMoreTab] & 1) == 0 && (*(&self->_tabBarControllerFlags + 1) & 0x80) == 0)
        {
          v8 = self->_tabModel;
          tabItems = [(_UITabModel *)v8 tabItems];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __56__UITabBarController_updateTabBarItemForViewController___block_invoke;
          v15[3] = &unk_1E7101F18;
          v10 = controllerCopy;

          v16 = v10;
          v11 = [tabItems indexOfObjectPassingTest:v15];

          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            *&self->_tabBarControllerFlags |= 2u;
            _existingView = [(UIViewController *)self _existingView];
            [_existingView setNeedsLayout];
          }

          else
          {
            [(_UITabModel *)self->_tabModel replaceItemAtIndex:v11 withItem:_resolvedTab];
          }
        }

        [(_UITabBarControllerVisualStyle *)self->_visualStyle updateTabForChildViewController:controllerCopy];
        _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];

        if (_selectedViewControllerInTabBar == controllerCopy)
        {
          tabBarItem = [(UIViewController *)controllerCopy tabBarItem];
          [(UITabBarController *)self _setSelectedTabBarItem:tabBarItem];
        }
      }
    }
  }
}

BOOL __56__UITabBarController_updateTabBarItemForViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _displayedViewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)_willChangeToIdiom:(int64_t)idiom onScreen:(id)screen
{
  v10.receiver = self;
  v10.super_class = UITabBarController;
  [(UIViewController *)&v10 _willChangeToIdiom:idiom onScreen:screen];
  traitCollection = [(UIViewController *)self traitCollection];
  v7 = [traitCollection _traitCollectionByReplacingNSIntegerValue:idiom forTraitToken:0x1EFE32398];

  [(UITabBarController *)self _updateVisualStyleForTraitCollection:v7];
  [(UITabBarController *)self _updateLayoutForTraitCollection:v7];
  _wantsBarHidden = [(UITabBarController *)self _wantsBarHidden];
  v9 = (self->_tabBarControllerFlags >> 2) & 3;
  if (_wantsBarHidden)
  {
    [(UITabBarController *)self _hideBarWithTransition:0 isExplicit:0 reason:v9];
  }

  else
  {
    [(UITabBarController *)self _showBarWithTransition:0 isExplicit:0 reason:v9];
  }
}

- (void)_updateLayoutForTraitCollection:(id)collection
{
  [(UITabBarController *)self _updateVisualStyleForTraitCollection:collection];
  defaultMaxItems = [(_UITabBarControllerVisualStyle *)self->_visualStyle defaultMaxItems];
  [(UITabBarController *)self _setTabBarPosition:[(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarPosition]];
  if (defaultMaxItems != self->_defaultMaxItems)
  {
    _viewControllersForTabs = [(UITabBarController *)&self->super.super.super.isa _viewControllersForTabs];
    v6 = [_viewControllersForTabs count];
    defaultMaxItems = self->_defaultMaxItems;
    if (defaultMaxItems < defaultMaxItems)
    {
      defaultMaxItems = defaultMaxItems;
    }

    self->_defaultMaxItems = defaultMaxItems;
    if (v6 > defaultMaxItems)
    {
      *&self->_tabBarControllerFlags |= 2u;
      [(UITabBarController *)self _setViewControllers:_viewControllersForTabs animated:0];
    }
  }

  v8 = _UINSLocalizedStringWithDefaultValue(@"More", @"More");
  moreListController = [(UIMoreNavigationController *)self->_moreNavigationController moreListController];
  [moreListController setTitle:v8];

  [(_UITabBarControllerVisualStyle *)self->_visualStyle updateGestureRecognizers];
  tabBarFocusSpeedBumpEdges = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarFocusSpeedBumpEdges];
  tabBar = self->_tabBar;

  [(UIView *)tabBar _setFocusSpeedBumpEdges:tabBarFocusSpeedBumpEdges];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  if (![(_UITabBarControllerVisualStyle *)self->_visualStyle shouldSuppressPresses:beganCopy withEvent:eventCopy])
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    [(UIResponder *)&v8 pressesBegan:beganCopy withEvent:eventCopy];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  eventCopy = event;
  if (![(_UITabBarControllerVisualStyle *)self->_visualStyle shouldSuppressPresses:cancelledCopy withEvent:eventCopy])
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    [(UIResponder *)&v8 pressesCancelled:cancelledCopy withEvent:eventCopy];
  }
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  changedCopy = changed;
  eventCopy = event;
  if (![(_UITabBarControllerVisualStyle *)self->_visualStyle shouldSuppressPresses:changedCopy withEvent:eventCopy])
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    [(UIResponder *)&v8 pressesChanged:changedCopy withEvent:eventCopy];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (![(_UITabBarControllerVisualStyle *)self->_visualStyle shouldSuppressPresses:endedCopy withEvent:eventCopy])
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    [(UIResponder *)&v8 pressesEnded:endedCopy withEvent:eventCopy];
  }
}

- (void)_performFocusGesture:(unint64_t)gesture
{
  _focusSystem = [(UIViewController *)self _focusSystem];
  selectedViewController = [(UITabBarController *)self selectedViewController];
  if ([selectedViewController isViewLoaded])
  {
    view = [selectedViewController view];
    v7 = [_focusSystem _focusedItemIsContainedInEnvironment:view includeSelf:1];

    if (v7)
    {
      focusedItem = [_focusSystem focusedItem];
      [(UITabBarController *)self _rememberFocusedItem:focusedItem forViewController:selectedViewController];
    }
  }

  *&self->_tabBarControllerFlags |= 0x200u;
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle updatesTabBarFocusHeadingOnChange])
  {
    tabBar = [(UITabBarController *)self tabBar];
    [tabBar _setPreferredFocusHeading:gesture];
  }

  [(UIViewController *)self _setNeedsNonDeferredFocusUpdate];
}

- (id)_responderSelectionContainerViewForResponder:(id)responder
{
  if ([(UITabBarController *)self _isTabBarFocused])
  {
    tabBar = [(UITabBarController *)self tabBar];
  }

  else
  {
    tabBar = self->_viewControllerTransitionView;
  }

  return tabBar;
}

- (void)_setPreferTabBarFocused:(BOOL)focused
{
  if (focused)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFDFF | v3);
}

- (void)unwindForSegue:(id)segue towardsViewController:(id)controller
{
  controllerCopy = controller;
  viewControllers = [(UITabBarController *)self viewControllers];
  v6 = [viewControllers containsObject:controllerCopy];

  if (v6)
  {
    [(UITabBarController *)self setSelectedViewController:controllerCopy];
  }
}

- (void)applicationWillSuspend
{
  v4.receiver = self;
  v4.super_class = UITabBarController;
  [(UIViewController *)&v4 applicationWillSuspend];
  v3 = +[_UITabAnalytics sharedInstance];
  [(_UITabAnalytics *)v3 updateStatusIfNeeded:?];
}

- (void)_selectTabElementIfPossible:(id)possible
{
  possibleCopy = possible;
  if ([(_UITabModel *)self->_tabModel shouldSelectTab:?])
  {
    [(_UITabModel *)self->_tabModel selectTab:possibleCopy notifyOnReselection:1];
  }
}

- (uint64_t)_shouldSelectTab:(uint64_t)tab
{
  v3 = a2;
  if (tab)
  {
    delegate = [tab delegate];
    if (([v3 _isBridgedItem] & 1) != 0 || (v5 = objc_loadWeakRetained((tab + 1216)), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
    {
      tab = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((tab + 1216));
      tab = [WeakRetained tabBarController:tab shouldSelectTab:v3];
    }
  }

  return tab;
}

- (void)_rebuildTabModelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v32 = *MEMORY[0x1E69E9840];
  tabBarControllerFlags = self->_tabBarControllerFlags;
  if ((*&tabBarControllerFlags & 0x8000) != 0)
  {
    visualStyle = self->_visualStyle;

    [(_UITabBarControllerVisualStyle *)visualStyle updateViewControllers:?];
  }

  else
  {
    self->_tabBarControllerFlags = (*&tabBarControllerFlags & 0xFFFF7FFD);
    viewControllers = [(UITabBarController *)self viewControllers];
    v7 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(viewControllers, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = viewControllers;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          if (v13 != self->_transientViewController)
          {
            _resolvedTab = [(UIViewController *)v13 _resolvedTab];
            [v7 addObject:_resolvedTab];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    selectedViewController = [(UITabBarController *)self selectedViewController];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__UITabBarController__rebuildTabModelAnimated___block_invoke;
    v21[3] = &unk_1E70FF800;
    v22 = v7;
    selfCopy = self;
    v24 = selectedViewController;
    v25 = v8;
    v26 = animatedCopy;
    v16 = v8;
    v17 = selectedViewController;
    v18 = v7;
    [(UITabBarController *)self _performWithoutNotifyingSelectionChange:v21];
    [(_UITabBarControllerVisualStyle *)self->_visualStyle updateViewControllers:animatedCopy];
    _existingView = [(UIViewController *)self _existingView];
    [_existingView setNeedsLayout];
  }
}

void __47__UITabBarController__rebuildTabModelAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) array];
  v3 = *(a1 + 40);
  if (v3)
  {
    v3 = v3[150];
  }

  v4 = v3;
  v5 = [v4 tabItems];
  v6 = _UIArrayShallowEqual(v5, v2);

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__UITabBarController__rebuildTabModelAnimated___block_invoke_2;
  aBlock[3] = &unk_1E70FF800;
  aBlock[4] = *(a1 + 40);
  v7 = v2;
  v11 = v7;
  v14 = !v6;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (*(a1 + 64) == 1)
  {
    (*(v8 + 2))(v8);
  }

  else
  {
    [UIView performWithoutAnimation:v8];
  }
}

void __47__UITabBarController__rebuildTabModelAnimated___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 1200);
  }

  else
  {
    v4 = 0;
  }

  [v4 setTabItems:v2];
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 48))
    {
      if ([*(a1 + 56) containsObject:?])
      {
        v5 = *(a1 + 48);
        if (v5 != *(*(a1 + 32) + 1056))
        {
          v6 = [v5 _resolvedTab];
          v7 = *(a1 + 32);
          if (v7)
          {
            v8 = *(v7 + 1200);
          }

          else
          {
            v8 = 0;
          }

          v9 = v6;
          [v8 selectTab:v6 notifyOnReselection:0];
        }
      }
    }
  }
}

- (id)_resolvedPopoverPresentationControllerSourceItemForTab:(id *)tab
{
  if (tab)
  {
    tab = [tab[138] resolvedPopoverPresentationControllerSourceItemForTab:a2];
    v2 = vars8;
  }

  return tab;
}

- (void)_selectedElementDidChange:(void *)change previousElement:
{
  v9 = a2;
  changeCopy = change;
  if (self)
  {
    if (v9)
    {
      [self _validateTabSelectionIfNeeded];
      if ((*(self + 1129) & 0x40) == 0)
      {
        _displayedViewController = [v9 _displayedViewController];
        if (([*(self + 1136) containsObject:_displayedViewController] & 1) == 0 && _displayedViewController)
        {
          do
          {
            parentViewController = [_displayedViewController parentViewController];

            if (parentViewController == self)
            {
              break;
            }

            parentViewController2 = [_displayedViewController parentViewController];

            _displayedViewController = parentViewController2;
          }

          while (parentViewController2);
        }

        [self _setSelectedViewControllerAndNotify:_displayedViewController];
      }
    }
  }
}

- (void)_selectedLeafDidChange:(void *)change previousLeaf:
{
  v12 = a2;
  changeCopy = change;
  if (self)
  {
    selectedItem = [*(self + 1200) selectedItem];
    _isGroup = [selectedItem _isGroup];
    v8 = v12;
    if (v12 != changeCopy && _isGroup)
    {
      [selectedItem _updateManagingNavigationStackUsingTransition:2];
      v8 = v12;
    }

    if (v8)
    {
      if ((*(self + 1128) & 0x8000) != 0)
      {
        WeakRetained = objc_loadWeakRetained((self + 1216));
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = objc_loadWeakRetained((self + 1216));
          [v11 tabBarController:self didSelectTab:v12 previousTab:changeCopy];
        }
      }
    }
  }
}

- (void)_performWithIgnoringSelectionUpdate:(BOOL)update block:(id)block
{
  tabBarControllerFlags = self->_tabBarControllerFlags;
  if (update)
  {
    v6 = 0x4000;
  }

  else
  {
    v6 = 0;
  }

  self->_tabBarControllerFlags = (*&tabBarControllerFlags & 0xFFFFBFFF | v6);
  (*(block + 2))(block, a2);
  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFBFFF | (((*&tabBarControllerFlags >> 14) & 1) << 14));
}

- (void)_displayedViewControllerDidChangeForTab:(void *)tab previousViewController:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  tabCopy = tab;
  if (self && (*(self + 1129) & 0x80) != 0)
  {
    if ([v5 _isUniquelySPI])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__displayedViewControllerDidChangeForTab_previousViewController_ object:self file:@"UITabBarController.m" lineNumber:1763 description:{@"_UITabElement (%@) is not supported with displayedViewControllers", v5}];
    }

    _displayedViewController = [v5 _displayedViewController];
    v8 = &OBJC_IVAR____UIKeyboardStateManager_m_shouldEnableCapsLockLanguageSwitchByDefault;
    v9 = [*(self + 1136) mutableCopy];
    v10 = [*(self + 1136) indexOfObject:tabCopy];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      tabs = [self tabs];
      v12 = [tabs indexOfObject:v5];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v9 removeAllObjects];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        tabs2 = [self tabs];
        v14 = [tabs2 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          do
          {
            v17 = 0;
            do
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(tabs2);
              }

              _displayedViewController2 = [*(*(&v22 + 1) + 8 * v17) _displayedViewController];
              [v9 addObject:_displayedViewController2];

              ++v17;
            }

            while (v15 != v17);
            v15 = [tabs2 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v15);
        }

        v8 = &OBJC_IVAR____UIKeyboardStateManager_m_shouldEnableCapsLockLanguageSwitchByDefault;
        goto LABEL_17;
      }
    }

    else
    {
      v12 = v10;
    }

    [v9 replaceObjectAtIndex:v12 withObject:_displayedViewController];
LABEL_17:
    [self _setViewControllers:v9 animated:0];
    v19 = v8[936];
    v20 = *(self + v19);
    *(self + v19) = v9;
  }
}

- (id)_displayedViewControllersForTab:(void *)tab proposedViewControllers:
{
  v5 = a2;
  tabCopy = tab;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 152);
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0 || (v9 = objc_loadWeakRetained(self + 152), [v9 tabBarController:self displayedViewControllersForTab:v5 proposedViewControllers:tabCopy], self = objc_claimAutoreleasedReturnValue(), v9, !self))
    {
      self = tabCopy;
    }
  }

  return self;
}

- (id)preferredFocusedView
{
  if ((*(&self->_tabBarControllerFlags + 1) & 2) != 0)
  {
    tabBarView = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
    if (tabBarView)
    {
      goto LABEL_3;
    }
  }

  else
  {
    selectedViewController = [(UITabBarController *)self selectedViewController];
    tabBarView = [selectedViewController preferredFocusedItem];

    if (tabBarView)
    {
LABEL_3:
      preferredFocusedView = tabBarView;
      goto LABEL_6;
    }
  }

  v8.receiver = self;
  v8.super_class = UITabBarController;
  preferredFocusedView = [(UIViewController *)&v8 preferredFocusedView];
LABEL_6:
  v6 = preferredFocusedView;

  return v6;
}

- (int64_t)_subclassPreferredFocusedViewPrioritizationType
{
  if (!qword_1ED498E10)
  {
    qword_1ED498E10 = [UITabBarController instanceMethodForSelector:sel_preferredFocusedView];
    qword_1ED498E18 = [UITabBarController instanceMethodForSelector:sel_preferredFocusEnvironments];
  }

  v3 = [(UITabBarController *)self methodForSelector:sel_preferredFocusedView];
  v4 = [(UITabBarController *)self methodForSelector:sel_preferredFocusEnvironments];
  if (v3)
  {
    v5 = v3 == qword_1ED498E10;
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
    v7 = v4 == qword_1ED498E18;
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

- (id)preferredFocusEnvironments
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selectedViewController = [(UITabBarController *)self selectedViewController];
  tabBarView = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
  v6 = tabBarView;
  if ((*(&self->_tabBarControllerFlags + 1) & 2) == 0)
  {
    if (selectedViewController)
    {
      [v3 addObject:selectedViewController];
    }

    v7 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v3 addObject:v7];
    goto LABEL_10;
  }

  if (tabBarView)
  {
    [v3 addObject:tabBarView];
  }

  v7 = selectedViewController;
  if (selectedViewController)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11.receiver = self;
  v11.super_class = UITabBarController;
  preferredFocusEnvironments = [(UIViewController *)&v11 preferredFocusEnvironments];
  [v3 addObjectsFromArray:preferredFocusEnvironments];

  v9 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(self, v3, [(UITabBarController *)self _subclassPreferredFocusedViewPrioritizationType]);

  return v9;
}

- (void)_rememberPresentingFocusedItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = UITabBarController;
  [(UIViewController *)&v8 _rememberPresentingFocusedItem:itemCopy];
  selectedViewController = [(UITabBarController *)self selectedViewController];
  selectedViewController2 = selectedViewController;
  if (!itemCopy)
  {
    [(UITabBarController *)self _forgetFocusedItemForViewController:selectedViewController];
    goto LABEL_5;
  }

  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(selectedViewController, itemCopy);

  if (IsAncestorOfEnvironment)
  {
    selectedViewController2 = [(UITabBarController *)self selectedViewController];
    [(UITabBarController *)self _rememberFocusedItem:itemCopy forViewController:selectedViewController2];
LABEL_5:
  }
}

- (BOOL)_canRestoreFocusAfterTransitionToRecalledItem:(id)item inViewController:(id)controller
{
  itemCopy = item;
  controllerCopy = controller;
  if (dyld_program_sdk_at_least())
  {
    IsFocusedOrFocusable = [(UIViewController *)self _canRestoreFocusAfterTransitionToItem:itemCopy];
  }

  else if (-[UIViewController restoresFocusAfterTransition](self, "restoresFocusAfterTransition") && [controllerCopy restoresFocusAfterTransition])
  {
    view = [(UIViewController *)self view];
    if (_UIFocusEnvironmentIsAncestorOfEnvironment(view, itemCopy))
    {
      IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(itemCopy);
    }

    else
    {
      IsFocusedOrFocusable = 0;
    }
  }

  else
  {
    IsFocusedOrFocusable = 0;
  }

  return IsFocusedOrFocusable;
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = UITabBarController;
  [(UIViewController *)&v12 _didUpdateFocusInContext:contextCopy];
  selectedViewController = [(UITabBarController *)self selectedViewController];
  view = [selectedViewController view];
  nextFocusedItem = [contextCopy nextFocusedItem];
  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(view, nextFocusedItem);

  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle shouldForgetRememberedFocusItemForSelectedViewController:selectedViewController context:contextCopy])
  {
    [(UITabBarController *)self _forgetFocusedItemForViewController:selectedViewController];
  }

  v10 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:contextCopy];
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:1926 description:@"Received call to _didUpdateFocusInContext: outside of a focus update."];
  }

  [(UITabBarController *)self _setPreferTabBarFocused:[(UITabBarController *)self _isTabBarFocused]];
  [(_UITabBarControllerVisualStyle *)self->_visualStyle didUpdateFocusInContext:contextCopy withAnimationCoordinator:v10];
  if (IsAncestorOfEnvironment)
  {
    [(UITabBarController *)self set_shouldFocusViewControllerAfterTransition:0];
  }
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = UITabBarController;
  if (![(UIViewController *)&v31 shouldUpdateFocusInContext:contextCopy])
  {
    v5 = 0;
    goto LABEL_37;
  }

  if (([contextCopy focusHeading] & 0x330) == 0)
  {
    nextFocusedView = [contextCopy nextFocusedView];
    tabBar = [(UITabBarController *)self tabBar];
    v8 = [nextFocusedView isDescendantOfView:tabBar];

    previouslyFocusedView = [contextCopy previouslyFocusedView];
    tabBar2 = [(UITabBarController *)self tabBar];
    v11 = [previouslyFocusedView isDescendantOfView:tabBar2];

    v12 = 0;
    if (((v8 ^ 1) & 1) == 0 && (v11 & 1) == 0)
    {
      v12 = (*(&self->_tabBarControllerFlags + 1) >> 5) & 1;
    }

    v13 = (v8 ^ 1) & v11;
    if ((v12 & 1) == 0 && !v13)
    {
      v5 = 1;
LABEL_27:
      v19 = [(UIViewController *)self _splitViewControllerEnforcingClass:0];
      viewControllers = [v19 viewControllers];
      firstObject = [viewControllers firstObject];

      viewControllers2 = [v19 viewControllers];
      lastObject = [viewControllers2 lastObject];

      if (v13 && ([contextCopy focusHeading] & 2) == 0)
      {
        view = [(UIViewController *)self view];
        effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

        if (firstObject == self)
        {
          focusHeading = [contextCopy focusHeading];
          v27 = effectiveUserInterfaceLayoutDirection == 1;
          v28 = 8;
          v29 = 4;
          goto LABEL_33;
        }

        if (lastObject == self)
        {
          focusHeading = [contextCopy focusHeading];
          v27 = effectiveUserInterfaceLayoutDirection == 1;
          v28 = 4;
          v29 = 8;
LABEL_33:
          if (v27)
          {
            v28 = v29;
          }

          v5 = (focusHeading & v28) != 0;
        }
      }

      goto LABEL_37;
    }

    _effectiveTabBarPosition = [(UITabBarController *)self _effectiveTabBarPosition];
    v5 = 1;
    if (_effectiveTabBarPosition > 2)
    {
      if (_effectiveTabBarPosition == 3)
      {
        focusHeading2 = [contextCopy focusHeading];
        v17 = v12 == 0;
        v16 = 8;
        v18 = 4;
      }

      else
      {
        if (_effectiveTabBarPosition != 4)
        {
          goto LABEL_27;
        }

        focusHeading2 = [contextCopy focusHeading];
        v17 = v12 == 0;
        v16 = 4;
        v18 = 8;
      }

      if (!v17)
      {
        v16 = v18;
      }
    }

    else if (_effectiveTabBarPosition == 1)
    {
      focusHeading2 = [contextCopy focusHeading];
      v16 = 1;
      if (v12)
      {
        v16 = 2;
      }
    }

    else
    {
      if (_effectiveTabBarPosition != 2)
      {
        goto LABEL_27;
      }

      focusHeading2 = [contextCopy focusHeading];
      v16 = 1;
      if (!v12)
      {
        v16 = 2;
      }
    }

    v5 = (focusHeading2 & v16) != 0;
    goto LABEL_27;
  }

  v5 = 1;
LABEL_37:

  return v5;
}

- (void)_rememberFocusedItem:(id)item forViewController:(id)controller
{
  controllerCopy = controller;
  itemCopy = item;
  _rememberedFocusedItemsByViewController = [(UITabBarController *)self _rememberedFocusedItemsByViewController];
  [_rememberedFocusedItemsByViewController setObject:itemCopy forKey:controllerCopy];
}

- (void)_forgetFocusedItemForViewController:(id)controller
{
  controllerCopy = controller;
  _rememberedFocusedItemsByViewController = [(UITabBarController *)self _rememberedFocusedItemsByViewController];
  [_rememberedFocusedItemsByViewController removeObjectForKey:controllerCopy];
}

- (id)_recallRememberedFocusedItemForViewController:(id)controller
{
  controllerCopy = controller;
  _rememberedFocusedItemsByViewController = [(UITabBarController *)self _rememberedFocusedItemsByViewController];
  v6 = [_rememberedFocusedItemsByViewController objectForKey:controllerCopy];

  return v6;
}

- (BOOL)_isFocusedTabVisible
{
  _focusedIndex = [(UITabBar *)self->_tabBar _focusedIndex];
  viewControllers = [(UITabBarController *)self viewControllers];
  selectedViewController = [(UITabBarController *)self selectedViewController];
  v6 = [viewControllers indexOfObject:selectedViewController];

  if (_focusedIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    _focusedIndex = [(UITabBarController *)self selectedIndex];
  }

  return _focusedIndex == v6;
}

- (void)_compatibility_updateViewController:(id)controller forTabBarObservedScrollView:(id)view
{
  viewCopy = view;
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle isScrollViewObservationInCompatibilityMode])
  {
    if (_UIViewControllerUseContentScrollViewAPI())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:2045 description:@"Invalid code path for new API. This is a UIKit problem."];
    }

    v6 = viewCopy;
    WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained(&self->_observingScrollView);

      if (v9 != v6)
      {
        v10 = objc_loadWeakRetained(&self->_observingScrollView);
        [v10 _removeScrollViewScrollObserver:self];
      }
    }

    objc_storeWeak(&self->_observingScrollView, v6);
    if (v6)
    {
      [v6 _addScrollViewScrollObserver:self];
    }

    [(_UITabBarControllerVisualStyle *)self->_visualStyle adjustTabBarForContentScrollView:v6];
  }
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [(_UITabBarControllerVisualStyle *)self->_visualStyle overlayInsetsAdjustment];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_UITabBarControllerVisualStyle *)self->_visualStyle adjustTabBarForContentScrollView:scrollCopy];
  [(_UITabBarControllerVisualStyle *)self->_visualStyle overlayInsetsAdjustment];
  if (v7 != v15 || v5 != v12 || v11 != v14 || v9 != v13)
  {
    _window = [(UIViewController *)self _window];
    [_window _noteOverlayInsetsDidChange];
  }

  [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:scrollCopy tabBar:self->_tabBar];
}

- (void)_configureTargetActionForTabBarItem:(id)item
{
  itemCopy = item;
  [itemCopy setTarget:self];
  [itemCopy setAction:sel__tabBarItemClicked_];
}

uint64_t __39__UITabBarController__tabs_compactTabs__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqual:v6];
    }
  }

  return v8;
}

- (void)_tabs_rebuildTabBarItemsAnimated:(BOOL)animated
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle supportsShowingMoreItem])
  {
    v6 = [(NSMutableArray *)self->_moreChildViewControllers count]!= 0;
  }

  else
  {
    v6 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFFFC | v6);
  v7 = [(UITabBarController *)self _effectiveMaxItems]- (*&self->_tabBarControllerFlags & 1);
  _tabs_compactTabs = [(UITabBarController *)self _tabs_compactTabs];
  [_tabs_compactTabs count];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__UITabBarController__tabs_rebuildTabBarItemsAnimated___block_invoke;
  v25[3] = &unk_1E7101F40;
  v27 = v7;
  v25[4] = self;
  v10 = v5;
  v26 = v10;
  [_tabs_compactTabs enumerateObjectsUsingBlock:v25];
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle supportsShowingMoreItem]&& [(NSMutableArray *)self->_moreChildViewControllers count])
  {
    p_isa = [(UITabBarController *)self moreNavigationController];
    _parentViewController = [(UIViewController *)p_isa _parentViewController];

    if (_parentViewController != self)
    {
      [(UIViewController *)self addChildViewController:p_isa];
      [p_isa didMoveToParentViewController:self];
    }

    v13 = [(NSMutableArray *)self->_moreChildViewControllers copy];
    [p_isa setMoreViewControllers:v13];
    tabBarItem = [p_isa tabBarItem];
    [(UITabBarController *)self _configureTargetActionForTabBarItem:tabBarItem];
    [v10 addObject:tabBarItem];

    v15 = 1;
  }

  else
  {
    [(UIMoreNavigationController *)self->_moreNavigationController _restoreOriginalNavigationController];
    v15 = 0;
    p_isa = &self->_moreNavigationController->super.super.super.super.isa;
    self->_moreNavigationController = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFFFC | v15);
  tabBar = [(UITabBarController *)self tabBar];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __55__UITabBarController__tabs_rebuildTabBarItemsAnimated___block_invoke_2;
  v21 = &unk_1E70F5AF0;
  selfCopy = self;
  v23 = v10;
  animatedCopy = animated;
  v17 = v10;
  [(UITabBar *)tabBar _performWhileIgnoringLock:?];

  [(UIView *)self->_containerView setNeedsLayout:v18];
}

void __55__UITabBarController__tabs_rebuildTabBarItemsAnimated___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(a1 + 48) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v6 = [a2 _linkedTabBarItem];
    [*(a1 + 32) _configureTargetActionForTabBarItem:v6];
    [*(a1 + 40) addObject:v6];
  }
}

void __55__UITabBarController__tabs_rebuildTabBarItemsAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) tabBar];
  [v2 setItems:*(a1 + 40) animated:*(a1 + 48)];
}

- (void)_tabs_rebuildMoreChildViewControllersIfNeeded
{
  _tabs_compactTabs = [(UITabBarController *)self _tabs_compactTabs];
  _effectiveMaxItems = [(UITabBarController *)self _effectiveMaxItems];
  v4 = [_tabs_compactTabs count];
  [(NSMutableArray *)self->_moreChildViewControllers removeAllObjects];
  if (v4 >= _effectiveMaxItems)
  {
    for (i = _effectiveMaxItems - 1; i < [_tabs_compactTabs count]; ++i)
    {
      v6 = [_tabs_compactTabs objectAtIndex:i];
      _displayedViewController = [v6 _displayedViewController];
      [(NSMutableArray *)self->_moreChildViewControllers addObject:_displayedViewController];
    }
  }
}

- (void)_rebuildTabBarItemsAnimated:(BOOL)animated
{
  v38 = *MEMORY[0x1E69E9840];
  tabBarControllerFlags = self->_tabBarControllerFlags;
  if ((*&tabBarControllerFlags & 0x8000) != 0)
  {

    [(UITabBarController *)self _tabs_rebuildTabBarItemsAnimated:?];
  }

  else if ((*&tabBarControllerFlags & 2) != 0)
  {

    [(UITabBarController *)self _rebuildTabModelAnimated:?];
  }

  else
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(_UITabBarControllerVisualStyle *)self->_visualStyle supportsShowingMoreItem])
    {
      v5 = [(NSMutableArray *)self->_moreChildViewControllers count]!= 0;
    }

    else
    {
      v5 = 0;
    }

    self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFFFC | v5);
    _viewControllersInTabBar = [(UITabBarController *)self _viewControllersInTabBar];
    _effectiveMaxItems = [(UITabBarController *)self _effectiveMaxItems];
    v8 = self->_tabBarControllerFlags;
    v9 = [_viewControllersInTabBar count];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = _viewControllersInTabBar;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = _effectiveMaxItems - (*&v8 & 1);
      v15 = *v34;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          if (v17 != self->_transientViewController || v9 == 1)
          {
            if (v13 < v14)
            {
              tabBarItem = [(UIViewController *)v17 tabBarItem];
              [(UITabBarController *)self _configureTargetActionForTabBarItem:tabBarItem];
              [v29 addObject:tabBarItem];
            }

            ++v13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v12);
    }

    if (*&self->_tabBarControllerFlags)
    {
      p_isa = [(UITabBarController *)self moreNavigationController];
      _parentViewController = [(UIViewController *)p_isa _parentViewController];

      v22 = v29;
      if (_parentViewController != self)
      {
        [(UIViewController *)self addChildViewController:p_isa];
        [p_isa didMoveToParentViewController:self];
      }

      v24 = [(NSMutableArray *)self->_moreChildViewControllers copy];
      [p_isa setMoreViewControllers:v24];
      tabBarItem2 = [p_isa tabBarItem];
      [(UITabBarController *)self _configureTargetActionForTabBarItem:tabBarItem2];
      [v29 addObject:tabBarItem2];

      animatedCopy2 = animated;
    }

    else
    {
      [(UIMoreNavigationController *)self->_moreNavigationController _restoreOriginalNavigationController];
      p_isa = &self->_moreNavigationController->super.super.super.super.isa;
      self->_moreNavigationController = 0;
      animatedCopy2 = animated;
      v22 = v29;
    }

    tabBar = [(UITabBarController *)self tabBar];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __50__UITabBarController__rebuildTabBarItemsAnimated___block_invoke;
    v30[3] = &unk_1E70F5AF0;
    v30[4] = self;
    v31 = v22;
    v32 = animatedCopy2;
    v27 = v22;
    [(UITabBar *)tabBar _performWhileIgnoringLock:v30];

    [(UIView *)self->_containerView setNeedsLayout];
  }
}

void __50__UITabBarController__rebuildTabBarItemsAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabBar];
  [v2 setItems:*(a1 + 40) animated:*(a1 + 48)];
}

- (void)_setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  v94 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  [(_UITabBarControllerVisualStyle *)self->_visualStyle willUpdateViewControllers];
  selfCopy = self;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v8 = controllersCopy;
  v9 = [v8 countByEnumeratingWithState:&v87 objects:v93 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v88;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v88 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v87 + 1) + 8 * i) _setViewHostsLayoutEngine:1];
      }

      v10 = [v8 countByEnumeratingWithState:&v87 objects:v93 count:16];
    }

    while (v10);
  }

  v13 = selfCopy;
  transientViewController = [(UITabBarController *)selfCopy transientViewController];
  if (transientViewController)
  {
    v15 = [v8 indexOfObject:transientViewController];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      v17 = [v8 mutableCopy];
      [v17 removeObjectAtIndex:v16];

      v8 = v17;
      v13 = selfCopy;
    }

    [(UITabBarController *)v13 setTransientViewController:0 animated:0];
    animatedCopy = 0;
  }

  selectedViewController = [(UITabBarController *)v13 selectedViewController];
  v69 = selectedViewController;
  if (selectedViewController)
  {
    v66 = [(NSMutableArray *)v13->_moreChildViewControllers containsObject:selectedViewController];
  }

  else
  {
    v66 = 0;
  }

  selectedIndex = [(UITabBarController *)v13 selectedIndex];
  if (!v13->_visualStyle)
  {
    traitCollection = [(UIViewController *)v13 traitCollection];
    [(UITabBarController *)v13 _updateVisualStyleForTraitCollection:traitCollection];
  }

  v71 = [mutableChildViewControllers count];
  v70 = [(NSMutableArray *)v13->_moreChildViewControllers count];
  _effectiveMaxItems = [(UITabBarController *)v13 _effectiveMaxItems];
  if ([(_UITabBarControllerVisualStyle *)v13->_visualStyle supportsShowingMoreItem])
  {
    v21 = [v8 count] > _effectiveMaxItems;
  }

  else
  {
    v21 = 0;
  }

  if (!-[_UITabBarControllerVisualStyle supportsShowingMoreItem](v13->_visualStyle, "supportsShowingMoreItem") && [v8 count] > _effectiveMaxItems)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_effectiveMaxItems];
    NSLog(&cfstr_IsTryingToSetV.isa, selfCopy, v22, v23);

    v13 = selfCopy;
  }

  v67 = animatedCopy;
  v68 = transientViewController;
  v24 = _effectiveMaxItems - 1;
  v85 = 0u;
  v86 = 0u;
  v73 = _effectiveMaxItems - 1;
  if (!v21)
  {
    v24 = _effectiveMaxItems;
  }

  v75 = v24;
  v83 = 0uLL;
  v84 = 0uLL;
  obj = v8;
  v25 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = 0;
    v29 = *v84;
    v30 = v71;
    do
    {
      v31 = 0;
      do
      {
        if (*v84 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v83 + 1) + 8 * v31);
        if (v28 >= v75)
        {
          if (v28 < v30 && v73 == v28)
          {
            v38 = [mutableChildViewControllers objectAtIndex:v73];
            [mutableChildViewControllers removeObjectAtIndex:v73];
            if ([mutableChildViewControllers indexOfObjectIdenticalTo:v38] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v38 willMoveToParentViewController:0];
              [(UIViewController *)v13 _removeChildViewController:v38];
              [v38 didMoveToParentViewController:0];
            }

            v30 = v71;
          }

          moreChildViewControllers = v13->_moreChildViewControllers;
          if (v27 >= v70)
          {
            [(NSMutableArray *)moreChildViewControllers addObject:v32];
          }

          else
          {
            [(NSMutableArray *)moreChildViewControllers replaceObjectAtIndex:v27 withObject:v32];
          }

          ++v27;
        }

        else if (v28 >= v30)
        {
          [(UIMoreNavigationController *)v13->_moreNavigationController restoreOriginalNavigationControllerIfNecessary:*(*(&v83 + 1) + 8 * v31)];
          parentViewController = [v32 parentViewController];

          if (parentViewController == v13)
          {
            [mutableChildViewControllers addObject:v32];
          }

          else
          {
            [(UIViewController *)v13 addChildViewController:v32];
            [v32 didMoveToParentViewController:v13];
          }
        }

        else
        {
          v33 = [mutableChildViewControllers objectAtIndex:v28];
          if (v32 != v33)
          {
            v34 = mutableChildViewControllers;
            [mutableChildViewControllers replaceObjectAtIndex:v28 withObject:v32];
            [(UIMoreNavigationController *)selfCopy->_moreNavigationController restoreOriginalNavigationControllerIfNecessary:v32];
            if ([obj indexOfObjectIdenticalTo:v33] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [(UIViewController *)selfCopy _removeChildViewController:v33];
            }

            parentViewController2 = [v32 parentViewController];

            v36 = parentViewController2 == selfCopy;
            mutableChildViewControllers = v34;
            if (!v36)
            {
              parentViewController3 = [v32 parentViewController];

              if (parentViewController3)
              {
                [v32 willMoveToParentViewController:0];
                [v32 removeFromParentViewController];
              }

              [v32 willMoveToParentViewController:selfCopy];
              [(UIViewController *)selfCopy _addChildViewController:v32];
              [v32 didMoveToParentViewController:selfCopy];
              mutableChildViewControllers = v34;
            }
          }

          v13 = selfCopy;
          v30 = v71;
        }

        ++v28;
        ++v31;
      }

      while (v26 != v31);
      v41 = [obj countByEnumeratingWithState:&v83 objects:v92 count:16];
      v26 = v41;
    }

    while (v41);
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v30 = v71;
  }

  if (v28 < v30 && v28 < v75)
  {
    do
    {
      v42 = [mutableChildViewControllers objectAtIndex:v28];
      [mutableChildViewControllers removeObjectAtIndex:v28];
      if ([mutableChildViewControllers indexOfObjectIdenticalTo:v42] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v42 willMoveToParentViewController:0];
        [(UIViewController *)v13 _removeChildViewController:v42];
        [v42 didMoveToParentViewController:0];
      }

      --v30;
    }

    while (v28 < v30);
  }

  v43 = v70 - v27;
  if (v70 > v27)
  {
    [(NSMutableArray *)v13->_moreChildViewControllers removeObjectsInRange:v27, v43];
  }

  if ((*(&v13->_tabBarControllerFlags + 1) & 0x80) != 0 && [(NSArray *)v13->_compactTabIdentifiers count])
  {
    [(UITabBarController *)v13 _tabs_rebuildMoreChildViewControllersIfNeeded];
  }

  [(UITabBarController *)v13 _rebuildTabModelAnimated:v67, v43];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v44 = v13->_moreChildViewControllers;
  v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v79 objects:v91 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v80;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v80 != v47)
        {
          objc_enumerationMutation(v44);
        }

        [mutableChildViewControllers removeObject:*(*(&v79 + 1) + 8 * j)];
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v46);
  }

  v49 = selfCopy;
  _viewControllersInTabBar = [(UITabBarController *)selfCopy _viewControllersInTabBar];
  v51 = [_viewControllersInTabBar count];
  v52 = v69;
  if (v69 && v51)
  {
    _existingMoreNavigationController = [(UITabBarController *)selfCopy _existingMoreNavigationController];

    v52 = v69;
    if (v69 == _existingMoreNavigationController)
    {
      goto LABEL_114;
    }
  }

  else
  {
    if (!v51)
    {
      goto LABEL_114;
    }

    if (!v69)
    {
      v54 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_86;
    }
  }

  v54 = [_viewControllersInTabBar indexOfObject:v52];
  if (v54 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(NSMutableArray *)selfCopy->_moreChildViewControllers containsObject:v52])
    {
      v55 = v52;
    }

    else
    {
      v55 = 0;
    }

    v54 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_87;
  }

LABEL_86:
  v55 = 0;
  if (!selfCopy)
  {
    v56 = 1;
    tabModel = 0;
    goto LABEL_88;
  }

LABEL_87:
  v56 = 0;
  tabModel = selfCopy->_tabModel;
LABEL_88:
  selectedItem = [(_UITabModel *)tabModel selectedItem];
  v59 = selectedItem;
  if (v54 == 0x7FFFFFFFFFFFFFFFLL && selectedItem)
  {
    if (v56)
    {
      v60 = 0;
    }

    else
    {
      v60 = selfCopy->_tabModel;
    }

    tabItems = [(_UITabModel *)v60 tabItems];
    v54 = [tabItems indexOfObject:v59];
  }

  if (v55 || v54 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_97;
  }

  v54 = selectedIndex;
  if (selectedIndex < [_viewControllersInTabBar count])
  {
    v55 = [(UITabBarController *)selfCopy _viewControllerForSelectAtIndex:selectedIndex];
LABEL_97:
    if (v55)
    {
      v62 = [(NSMutableArray *)selfCopy->_moreChildViewControllers containsObject:v55];
    }

    else
    {
      v62 = 0;
    }

    goto LABEL_101;
  }

  v55 = 0;
  v62 = 0;
  v54 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_101:
  if (v66 != v62)
  {
    selectedViewController = selfCopy->_selectedViewController;
    selfCopy->_selectedViewController = 0;
  }

  if (v62)
  {
    if (v67)
    {
      [(UITabBarController *)selfCopy setSelectedViewController:v55];
    }

    else
    {
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __51__UITabBarController__setViewControllers_animated___block_invoke;
      v77[3] = &unk_1E70F35B8;
      v77[4] = selfCopy;
      v78 = v55;
      [UIView performWithoutAnimation:v77];
    }
  }

  else
  {
    if (v54 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v64 = 0;
    }

    else
    {
      v64 = v54;
    }

    if (v67)
    {
      [(UITabBarController *)selfCopy setSelectedIndex:v64];
    }

    else
    {
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __51__UITabBarController__setViewControllers_animated___block_invoke_2;
      v76[3] = &unk_1E70F32F0;
      v76[4] = selfCopy;
      v76[5] = v64;
      [UIView performWithoutAnimation:v76];
    }
  }

  v49 = selfCopy;
  v52 = v69;
LABEL_114:
  [(UITabBarController *)v49 setCustomizableViewControllers:obj];
  if (v68)
  {
    [(UITabBarController *)v49 setTransientViewController:v68 animated:0];
  }
}

- (void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated
{
  v4 = animated;
  v9 = viewControllers;
  *&self->_tabBarControllerFlags &= ~0x8000u;
  viewControllers = [(UITabBarController *)self viewControllers];
  v7 = [viewControllers isEqualToArray:v9];

  if (v7)
  {
    *&self->_tabBarControllerFlags |= 2u;
    _existingView = [(UIViewController *)self _existingView];
    [_existingView setNeedsLayout];
  }

  else
  {
    [(UITabBarController *)self _setViewControllers:v9 animated:v4];
  }
}

- (id)_viewControllerForSelectAtIndex:(unint64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL || self->_transientViewController == 0)
  {
    indexCopy = index;
    _effectiveMaxItems = [(UITabBarController *)self _effectiveMaxItems];
    if (indexCopy + 2 > _effectiveMaxItems && (*&self->_tabBarControllerFlags & 1) != 0)
    {
      indexCopy = indexCopy - _effectiveMaxItems + 1;
      _viewControllersInTabBar = self->_moreChildViewControllers;
    }

    else
    {
      _viewControllersInTabBar = [(UITabBarController *)self _viewControllersInTabBar];
    }

    v9 = _viewControllersInTabBar;
    if (indexCopy == 0x7FFFFFFFFFFFFFFFLL || indexCopy >= [(NSMutableArray *)_viewControllersInTabBar count])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(NSMutableArray *)v9 objectAtIndex:indexCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setSelectedIndex:(NSUInteger)selectedIndex
{
  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL || self->_transientViewController == 0)
  {
    [(UITabBarController *)self setTransientViewController:0];
    v7 = [(UITabBarController *)self _viewControllerForSelectAtIndex:selectedIndex];
    if (v7)
    {
      v8 = v7;
      [(UITabBarController *)self _setSelectedViewController:v7];
      v7 = v8;
    }
  }
}

- (void)setSelectedViewController:(UIViewController *)selectedViewController
{
  v6 = selectedViewController;
  allViewControllers = [(UITabBarController *)self allViewControllers];
  v5 = [allViewControllers containsObject:v6];

  if (v5)
  {
    [(UITabBarController *)self _setSelectedViewController:v6];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[UITabBarController setSelectedViewController:] only a view controller in the tab bar controller's list of view controllers can be selected."];
  }
}

- (void)_setSelectedViewController:(id)controller performUpdates:(BOOL)updates
{
  updatesCopy = updates;
  controllerCopy = controller;
  v9 = controllerCopy;
  if (updatesCopy)
  {
    transientViewController = self->_transientViewController;
    if (transientViewController)
    {
      v11 = transientViewController == controllerCopy;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      goto LABEL_39;
    }

    v12 = _UISetCurrentFallbackEnvironment(self);
    if (self->_selectedViewController == v9)
    {
      if (![(UIViewController *)v9 _containsFirstResponder])
      {
        [(UIViewController *)v9 _viewControllerWasSelected];
      }
    }

    else
    {
      [(UITabBarController *)self _rebuildTabBarItemsIfNeeded];
      if (*&self->_tabBarControllerFlags)
      {
        moreNavigationController = [(UITabBarController *)self moreNavigationController];
        moreViewControllers = [moreNavigationController moreViewControllers];
        v16 = [moreViewControllers containsObject:v9];

        if (v16)
        {
          v13 = v9;
          v9 = moreNavigationController;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      view = [(UIViewController *)self view];
      childModalViewController = [(UIViewController *)self->_selectedViewController childModalViewController];
      selectedViewController = childModalViewController;
      if (!childModalViewController)
      {
        selectedViewController = self->_selectedViewController;
      }

      childModalViewController2 = [(UIViewController *)v9 childModalViewController];
      v21 = childModalViewController2;
      if (childModalViewController2)
      {
        v22 = childModalViewController2;
      }

      else
      {
        v22 = v9;
      }

      [(UITabBarController *)self transitionFromViewController:selectedViewController toViewController:v22];

      if (v13)
      {
        moreNavigationController2 = [(UITabBarController *)self moreNavigationController];
        [moreNavigationController2 setDisplayedViewController:v13];
      }

      if ([(UITabBarController *)self _isModernTVTabBar])
      {
        if ([(UITabBarController *)self _shouldFocusViewControllerAfterTransition])
        {
          v24 = 0;
        }

        else
        {
          v24 = 512;
        }

        self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFDFF | v24);
      }

      [(UIViewController *)self setNeedsFocusUpdate];
      [(UIResponder *)self _didChangeDeepestActionResponder];
      if ([(UITabBarController *)self _notifySplitViewControllerForSelectionChange])
      {
        v25 = [(UIViewController *)self _splitViewControllerEnforcingClass:1];
        [v25 _tabBarControllerDidChangeSelection:self];
      }
    }

    _UIRestorePreviousFallbackEnvironment(v12);
    [UIApp _findBestActivityToMakeCurrent:self];
  }

  else
  {
    objc_storeStrong(&self->_selectedViewController, controller);
  }

  if ((*(&self->_tabBarControllerFlags + 1) & 0x80) == 0 || ([(UITabBarController *)self _existingMoreNavigationController], v26 = objc_claimAutoreleasedReturnValue(), v26, v9 == v26))
  {
    _resolvedTab = [(UIViewController *)v9 _resolvedTab];
  }

  else
  {
    _resolvedTab = [(UIViewController *)v9 tab];
  }

  v28 = _resolvedTab;
  if (!_resolvedTab)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:2745 description:{@"UITabBarController inconsistency; tried selecting a view controller without a valid tab: %@", v9}];
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __64__UITabBarController__setSelectedViewController_performUpdates___block_invoke;
  v31[3] = &unk_1E70F35B8;
  v31[4] = self;
  v32 = v28;
  v29 = v28;
  [(UITabBarController *)self _performWithoutNotifyingSelectionChange:v31];
  [(_UITabBarControllerVisualStyle *)self->_visualStyle selectedViewControllerDidChange];

LABEL_39:
}

void __64__UITabBarController__setSelectedViewController_performUpdates___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[150];
  }

  v7 = v2;
  v3 = [*(a1 + 40) _tabModel];

  v4 = v7;
  if (v3 == v7)
  {
    if ([*(a1 + 40) _isGroup])
    {
      v5 = [v7 selectedItem];
      v6 = *(a1 + 40);

      if (v5 != v6)
      {
        [*(a1 + 40) _updateManagingNavigationStackUsingTransition:0];
      }
    }

    [v7 selectTab:*(a1 + 40) notifyOnReselection:(*(*(a1 + 32) + 1128) >> 17) & 1];
    v4 = v7;
  }
}

- (void)setRestorationIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = UITabBarController;
  [(UIResponder *)&v4 setRestorationIdentifier:identifier];
  [(UITabBarController *)self _setMoreNavigationControllerRestorationIdentifier];
}

- (void)setCustomizableViewControllers:(NSArray *)customizableViewControllers
{
  if (self->_customizableViewControllers != customizableViewControllers)
  {
    v4 = customizableViewControllers;
    v5 = [(NSArray *)v4 copy];
    v6 = self->_customizableViewControllers;
    self->_customizableViewControllers = v5;

    v7 = [(NSArray *)v4 count];
    _existingMoreNavigationController = [(UITabBarController *)self _existingMoreNavigationController];
    [_existingMoreNavigationController setAllowsCustomizing:v7 != 0];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (!obj || WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFEFF | v6);
    v7 = objc_opt_respondsToSelector();
    v5 = obj;
    if (v7)
    {
      v8 = 128;
    }

    else
    {
      v8 = 0;
    }

    self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFF7F | v8);
  }
}

- (BOOL)_uip_isSidebarVisible
{
  sidebar = [(UITabBarController *)self sidebar];
  isHidden = [sidebar isHidden];

  return isHidden ^ 1;
}

- (void)_uip_setSidebarVisible:(BOOL)visible
{
  visibleCopy = visible;
  sidebar = [(UITabBarController *)self sidebar];
  [sidebar setHidden:!visibleCopy];
}

- (int64_t)_uip_preferredSidebarMode
{
  mode = [(UITabBarController *)self mode];
  if (mode == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (mode == 2);
  }
}

- (void)_uip_setPreferredSidebarMode:(int64_t)mode
{
  if (mode == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (mode == 2);
  }

  [(UITabBarController *)self setMode:v3];
}

- (void)_tab:(void *)_tab operationForAcceptingItemsFromDropSession:
{
  v5 = a2;
  _tabCopy = _tab;
  if (self)
  {
    _isUniquelySPI = [v5 _isUniquelySPI];
    delegate = [self delegate];
    if (_isUniquelySPI)
    {
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        delegate2 = [self delegate];
        v11 = [delegate2 _uip_tabBarController:self tab:v5 operationForAcceptingItemsFromDropSession:_tabCopy];
LABEL_7:
        self = v11;

        goto LABEL_9;
      }
    }

    else
    {
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        delegate2 = [self delegate];
        v11 = [delegate2 tabBarController:self tab:v5 operationForAcceptingItemsFromDropSession:_tabCopy];
        goto LABEL_7;
      }
    }

    self = 0;
  }

LABEL_9:

  return self;
}

- (void)_tab:(void *)_tab acceptItemsFromDropSession:
{
  v11 = a2;
  _tabCopy = _tab;
  if (self)
  {
    _isUniquelySPI = [v11 _isUniquelySPI];
    delegate = [self delegate];
    if (_isUniquelySPI)
    {
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }

      delegate2 = [self delegate];
      [delegate2 _uip_tabBarController:self tab:v11 acceptItemsFromDropSession:_tabCopy];
    }

    else
    {
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }

      delegate2 = [self delegate];
      [delegate2 tabBarController:self tab:v11 acceptItemsFromDropSession:_tabCopy];
    }
  }

LABEL_8:
}

- (void)_tabDropSessionDidUpdate:(void *)update withDestinationTab:
{
  v9 = a2;
  updateCopy = update;
  if (self)
  {
    delegate = [self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [self delegate];
      [delegate2 _uip_tabBarController:self dropSessionDidUpdate:v9 withDestinationTab:updateCopy];
    }
  }
}

- (double)_sidebarOverlapAmountForZoom
{
  if (!self)
  {
    return 0.0;
  }

  sidebar = [self sidebar];
  _outlineView = [sidebar _outlineView];
  _outlineView2 = _outlineView;
  if (_outlineView)
  {
    Width = 0.0;
    if (*(_outlineView + 424))
    {
      goto LABEL_7;
    }
  }

  Width = 0.0;
  if ([(UITabBarControllerSidebar *)sidebar _resolvedLayout]!= 1)
  {
    goto LABEL_7;
  }

  _isSidebarSupportedAndVisible = [(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible];

  if (_isSidebarSupportedAndVisible)
  {
    _outlineView2 = [sidebar _outlineView];
    [_outlineView2 frame];
    Width = CGRectGetWidth(v7);
LABEL_7:
  }

  return Width;
}

- (void)beginCustomizingTabBar:(id)bar
{
  v23 = *MEMORY[0x1E69E9840];
  weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  tabBarItemsToViewControllers = self->_tabBarItemsToViewControllers;
  self->_tabBarItemsToViewControllers = weakToWeakObjectsMapTable;

  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  viewControllers = [(UITabBarController *)self viewControllers];
  v8 = [viewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(viewControllers);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        tabBarItem = [v12 tabBarItem];
        [self->_tabBarItemsToViewControllers setObject:v12 forKey:tabBarItem];
        customizableViewControllers = [(UITabBarController *)self customizableViewControllers];
        LODWORD(v12) = [customizableViewControllers containsObject:v12];

        if (v12)
        {
          [array addObject:tabBarItem];
        }
      }

      v9 = [viewControllers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  tabBar = [(UITabBarController *)self tabBar];
  [tabBar setLocked:0];

  tabBar2 = [(UITabBarController *)self tabBar];
  [tabBar2 beginCustomizingItems:array];

  tabBar3 = [(UITabBarController *)self tabBar];
  [tabBar3 setLocked:1];
}

- (void)tabBar:(id)bar willBeginCustomizingItems:(id)items
{
  v6 = [(UITabBarController *)self delegate:bar];
  if (objc_opt_respondsToSelector())
  {
    viewControllers = [(UITabBarController *)self viewControllers];
    [v6 tabBarController:self willBeginCustomizingViewControllers:viewControllers];
  }
}

- (void)tabBarSizingDidChange:(id)change
{
  *&self->_tabBarControllerFlags &= ~0x20u;
  _existingView = [(UIViewController *)self _existingView];

  if (_existingView)
  {

    [(UITabBarController *)self _prepareTabBar];
  }
}

- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)context
{
  v6.receiver = self;
  v6.super_class = UITabBarController;
  v4 = [(UIViewController *)&v6 _viewsWithDisabledInteractionGivenTransitionContext:context];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  if (self->_tabBar)
  {
    [v4 addObject:?];
  }

  return v4;
}

- (void)tabBar:(id)bar willEndCustomizingItems:(id)items changed:(BOOL)changed
{
  changedCopy = changed;
  v35 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  mutableChildViewControllers = [(UIViewController *)self mutableChildViewControllers];
  if (!changedCopy)
  {
    goto LABEL_23;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __61__UITabBarController_tabBar_willEndCustomizingItems_changed___block_invoke;
  v32[3] = &unk_1E7101F68;
  v32[4] = self;
  v9 = v8;
  v33 = v9;
  [itemsCopy enumerateObjectsUsingBlock:v32];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v9;
  v26 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (!v26)
  {
    goto LABEL_20;
  }

  v10 = 0;
  v24 = *v29;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v29 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      v13 = [itemsCopy objectAtIndex:v10];
      v14 = [mutableChildViewControllers objectAtIndex:v10];
      if (v14 != v12)
      {
        *&self->_tabBarControllerFlags |= 2u;
        v15 = [(NSMutableArray *)self->_moreChildViewControllers indexOfObjectIdenticalTo:v12];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([obj indexOfObjectIdenticalTo:v14] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSMutableArray *)self->_moreChildViewControllers addObject:v14];
            goto LABEL_15;
          }
        }

        else
        {
          v16 = v15;
          [v12 willMoveToParentViewController:self];
          [(UIViewController *)self _addChildViewController:v12];
          [v12 didMoveToParentViewController:self];
          if ([obj indexOfObjectIdenticalTo:v14] == 0x7FFFFFFFFFFFFFFFLL)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [v14 popToRootViewControllerAnimated:0];
            }

            [(NSMutableArray *)self->_moreChildViewControllers replaceObjectAtIndex:v16 withObject:v14];
LABEL_15:
            [v14 willMoveToParentViewController:0];
            [(UIViewController *)self _removeChildViewController:v14];
            [v14 didMoveToParentViewController:0];
          }

          else
          {
            [(NSMutableArray *)self->_moreChildViewControllers removeObjectAtIndex:v16];
          }
        }

        [mutableChildViewControllers replaceObjectAtIndex:v10 withObject:v12];
        [(UITabBarController *)self _configureTargetActionForTabBarItem:v13];
      }

      ++v10;
    }

    v26 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  }

  while (v26);
LABEL_20:

  v18 = [mutableChildViewControllers count];
  if (v18 > [(UITabBarController *)self _effectiveMaxItems])
  {
    _existingMoreNavigationController = [(UITabBarController *)self _existingMoreNavigationController];
    [_existingMoreNavigationController setMoreViewControllersChanged:1];

    _existingMoreNavigationController2 = [(UITabBarController *)self _existingMoreNavigationController];
    [_existingMoreNavigationController2 setMoreViewControllers:self->_moreChildViewControllers];
  }

  tabBarItemsToViewControllers = self->_tabBarItemsToViewControllers;
  self->_tabBarItemsToViewControllers = 0;

  [(UITabBarController *)self _rebuildTabBarItemsIfNeeded];
  changedCopy = changedCopy;
LABEL_23:
  delegate = [(UITabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    viewControllers = [(UITabBarController *)self viewControllers];
    [delegate tabBarController:self willEndCustomizingViewControllers:viewControllers changed:changedCopy];
  }
}

void __61__UITabBarController_tabBar_willEndCustomizingItems_changed___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 1016) objectForKey:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

- (void)tabBar:(id)bar didEndCustomizingItems:(id)items changed:(BOOL)changed
{
  changedCopy = changed;
  v8 = [(UITabBarController *)self delegate:bar];
  if (objc_opt_respondsToSelector())
  {
    viewControllers = [(UITabBarController *)self viewControllers];
    [v8 tabBarController:self didEndCustomizingViewControllers:viewControllers changed:changedCopy];
  }
}

- (void)animationDidStop:(id)stop finished:(id)finished context:(id)context
{
  bOOLValue = [finished BOOLValue];
  _wantsBarHidden = [(UITabBarController *)self _wantsBarHidden];
  if (stop == @"UITabBarControllerHideBar" || (bOOLValue & 1) == 0)
  {
    [(UITabBar *)self->_tabBar setHidden:_wantsBarHidden];
  }

  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (stop == @"UITabBarControllerShowBar")
  {
    if (bOOLValue)
    {
      [(UIView *)self->_containerView setNeedsLayout];
    }
  }

  else
  {
    if (stop != @"UITabBarControllerHideBar")
    {
      goto LABEL_16;
    }

    if (bOOLValue)
    {
      if (objc_opt_respondsToSelector())
      {
        [_selectedViewControllerInTabBar _tabBarControllerDidFinishShowingTabBar:self isHidden:_wantsBarHidden];
      }

      [(UITabBar *)self->_tabBar setAlpha:1.0];
      goto LABEL_16;
    }

    [(UIView *)self->_viewControllerTransitionView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(UIView *)self->_containerView bounds];
    v16 = v15;
    [(UIView *)self->_tabBar frame];
    [(UIView *)self->_viewControllerTransitionView setFrame:v10, v12, v14, v16 - v17];
  }

  if (objc_opt_respondsToSelector())
  {
    [_selectedViewControllerInTabBar _tabBarControllerDidFinishShowingTabBar:self isHidden:_wantsBarHidden];
  }

LABEL_16:
  [(UITabBarController *)self _updateContentLayoutGuideConstraints];
  [_selectedViewControllerInTabBar _updateContentOverlayInsetsForSelfAndChildren];
}

- (void)_hideBarWithTransition:(int)transition isExplicit:(BOOL)explicit duration:(double)duration reason:(unint64_t)reason
{
  explicitCopy = explicit;
  _wantsBarHidden = [(UITabBarController *)self _wantsBarHidden];
  *&self->_tabBarControllerFlags |= 4 * (reason & 3);
  if (!_wantsBarHidden)
  {
    _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
    objc_opt_class();
    objc_opt_isKindOfClass();
    visualStyle = self->_visualStyle;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke;
    v67[3] = &unk_1E7101F90;
    v67[4] = self;
    v67[5] = reason;
    v68 = transition != 0;
    [(_UITabBarControllerVisualStyle *)visualStyle performWithoutNotifyingTabBarController:v67];
    v14 = objc_opt_class();
    v15 = _selectedViewControllerInTabBar;
    if (v14)
    {
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    _didExplicitlyHideTabBar = [v17 _didExplicitlyHideTabBar];
    if (v17)
    {
      if (explicitCopy)
      {
        [v17 _setDidExplicitlyHideTabBar:1];
      }

      if (transition == 6)
      {
        [v17 _setCrossfadingOutTabBar:1];
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_2;
    aBlock[3] = &unk_1E7101FB8;
    aBlock[4] = self;
    reasonCopy = reason;
    v65 = reason != 2;
    v19 = v17;
    v63 = v19;
    v66 = _didExplicitlyHideTabBar;
    v20 = _Block_copy(aBlock);
    if ([(_UITabBarControllerVisualStyle *)self->_visualStyle ignoresDefaultTabBarVisibilityAnimation])
    {
      if (reason != 2)
      {
LABEL_45:

        return;
      }

      transitionCoordinator = [v15 transitionCoordinator];
      [v19 _setCrossfadingOutTabBar:1];
      if (transition)
      {
        [transitionCoordinator animateAlongsideTransition:0 completion:v20];
      }

      else
      {
        [(UITabBarController *)self animationDidStop:@"UITabBarControllerHideBar" finished:MEMORY[0x1E695E118] context:0];
      }

LABEL_44:

      goto LABEL_45;
    }

    v52 = v20;
    if ([(_UITabBarControllerVisualStyle *)self->_visualStyle canDisplayUITabBar])
    {
      transitionCopy = transition;
    }

    else
    {
      transitionCopy = 0;
    }

    [(UIView *)self->_viewControllerTransitionView frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(UIView *)self->_containerView bounds];
    [(UIView *)self->_viewControllerTransitionView setFrame:v24, v26, v28];
    _selectedViewControllerInTabBar2 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    transitionCoordinator = [_selectedViewControllerInTabBar2 transitionCoordinator];

    if ((transitionCopy - 1) <= 1)
    {
      _mainContext = [transitionCoordinator _mainContext];
      _animator = [_mainContext _animator];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        _animator2 = [_mainContext _animator];

        if (_animator2)
        {
          resizedFromContainerView = [_animator2 resizedFromContainerView];
          [(UIView *)self->_tabBar frame];
          v36 = v35;
          v38 = v37;
          v39 = resizedFromContainerView;
          [resizedFromContainerView bounds];
          [(UITabBar *)self->_tabBar setFrame:0.0, v40 - v38, v36, v38];
          v41 = 0;
LABEL_26:
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_4;
          v59[3] = &unk_1E70F79E8;
          v59[4] = self;
          v42 = _animator2;
          v60 = v42;
          v61 = transitionCopy;
          v43 = _Block_copy(v59);
          if ((v41 & 1) != 0 || ([(UIView *)self->_tabBar superview], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
          {
            if (transitionCopy)
            {
              v46 = v39;
              if (duration < 0.0)
              {
                [objc_opt_class() durationForTransition:transitionCopy];
                duration = v47;
              }

              v20 = v52;
              if (transitionCoordinator)
              {
                v53[0] = MEMORY[0x1E69E9820];
                v53[1] = 3221225472;
                v53[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_7;
                v53[3] = &unk_1E70F3770;
                v54 = v43;
                v48 = _Block_copy(v53);
                if (([transitionCoordinator animateAlongsideTransitionInView:self->_tabBar animation:v48 completion:v52] & 1) == 0)
                {
                  v48[2](v48, 0);
                }
              }

              else
              {
                v55[0] = MEMORY[0x1E69E9820];
                v55[1] = 3221225472;
                v55[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_6;
                v55[3] = &unk_1E70F5AC0;
                v55[4] = self;
                [UIView animateWithDuration:4 delay:v43 options:v55 animations:duration completion:0.0];
              }

              goto LABEL_41;
            }

            v43[2](v43);
            v46 = v39;
            v20 = v52;
          }

          else
          {
            superview = [(UIView *)self->_tabBar superview];
            [(UITabBar *)self->_tabBar set_expectedSuperviewFollowingAnimation:superview];

            v46 = v39;
            [v39 addSubview:self->_tabBar];
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_5;
            v56[3] = &unk_1E7101FE0;
            v56[4] = self;
            v57 = v43;
            v20 = v52;
            v58 = v52;
            [transitionCoordinator animateAlongsideTransition:0 completion:v56];

            if (transitionCopy)
            {
LABEL_41:
              traitCollection = [(UIViewController *)self traitCollection];
              userInterfaceIdiom = [traitCollection userInterfaceIdiom];

              if (userInterfaceIdiom == 6)
              {
                [(UITabBarController *)self _rebuildTabModelAnimated:1];
              }

              goto LABEL_44;
            }
          }

          v49 = [MEMORY[0x1E696AD98] numberWithBool:1];
          [(UITabBarController *)self animationDidStop:@"UITabBarControllerHideBar" finished:v49 context:0];

          goto LABEL_41;
        }

LABEL_25:
        v39 = 0;
        v41 = 1;
        goto LABEL_26;
      }
    }

    _animator2 = 0;
    goto LABEL_25;
  }
}

uint64_t __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 == 2)
  {
    return [*(*(result + 32) + 1104) setBottomBarSuppressedByNavigation:1 animated:*(result + 48)];
  }

  if (v1 == 1)
  {
    return [*(*(result + 32) + 1104) setBarHidden:1 animated:*(result + 48)];
  }

  return result;
}

void __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCancelled])
  {
    *(*(a1 + 32) + 1128) = *(*(a1 + 32) + 1128) & 0xFFFFFFF3 | (4 * (((*(*(a1 + 32) + 1128) & (4 * ~*(a1 + 48))) >> 2) & 3));
    if (*(a1 + 56) == 1)
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 1104);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_3;
      v8[3] = &unk_1E70F3590;
      v8[4] = v4;
      [v5 performWithoutNotifyingTabBarController:v8];
    }

    [*(a1 + 40) _setDidExplicitlyHideTabBar:*(a1 + 57)];
    [*(a1 + 40) _setCrossfadingOutTabBar:0];
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "isCancelled") ^ 1}];
  [v6 animationDidStop:@"UITabBarControllerHideBar" finished:v7 context:0];
}

uint64_t __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _wantsBarHidden];
  v3 = *(*(a1 + 32) + 1104);

  return [v3 setBarHidden:v2];
}

void __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_4(uint64_t a1)
{
  v2 = transitionGapGivenTabController(*(a1 + 32));
  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 992) frame];
    v4 = v3;
    v6 = v5;
    v7 = [*(*(a1 + 32) + 992) superview];
    [v7 bounds];
    v9 = v8 - v6;

    v10 = *(*(a1 + 32) + 992);
    v11 = 0.0;
    v12 = v9;
    v13 = v4;
    v14 = v6;
LABEL_3:

    [v10 setFrame:{v11, v12, v13, v14}];
    return;
  }

  v15 = *(a1 + 48);
  if (v15 <= 5)
  {
    v16 = v2;
    if (v15 == 1)
    {
      [*(*(a1 + 32) + 992) frame];
      v10 = *(*(a1 + 32) + 992);
      v11 = v19 - (v16 + v13);
    }

    else
    {
      if (v15 != 2)
      {
        return;
      }

      [*(*(a1 + 32) + 992) frame];
      v10 = *(*(a1 + 32) + 992);
      v11 = v17 + v16 + v13;
    }

    goto LABEL_3;
  }

  if (v15 == 7)
  {
    [*(*(a1 + 32) + 992) frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [*(*(a1 + 32) + 992) bounds];
    v10 = *(*(a1 + 32) + 992);
    v12 = v23 + v28;
    v11 = v21;
    v13 = v25;
    v14 = v27;
    goto LABEL_3;
  }

  if (v15 == 6)
  {
    v18 = *(*(a1 + 32) + 992);

    [v18 setAlpha:0.0];
  }
}

void __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_5(void *a1, void *a2)
{
  v3 = *(a1[4] + 992);
  v5 = a2;
  v4 = [v3 _expectedSuperviewFollowingAnimation];
  [v4 addSubview:*(a1[4] + 992)];

  [*(a1[4] + 992) set_expectedSuperviewFollowingAnimation:0];
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();
}

void __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v2 animationDidStop:@"UITabBarControllerHideBar" finished:v3 context:0];
}

uint64_t __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 transitionDuration];
  v5 = v4;
  v6 = [v3 isInteractive];

  if (v6)
  {
    v7 = 196704;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);

  return [UIView animateWithDuration:v7 delay:v8 options:0 animations:v5 completion:0.0];
}

- (void)_showBarWithTransition:(int)transition isExplicit:(BOOL)explicit duration:(double)duration reason:(unint64_t)reason
{
  tabBarControllerFlags = self->_tabBarControllerFlags;
  v8 = (*&tabBarControllerFlags >> 2) & 3;
  v9 = v8 & ~reason;
  self->_tabBarControllerFlags = (*&tabBarControllerFlags & 0xFFFFFFF3 | (4 * (v9 & 3)));
  if (v8 != v9)
  {
    explicitCopy = explicit;
    LODWORD(v12) = transition;
    if (![(UITabBarController *)self _wantsBarHidden])
    {
      _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      visualStyle = self->_visualStyle;
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke;
      v92[3] = &unk_1E7101F90;
      v92[4] = self;
      v92[5] = reason;
      v93 = v12 != 0;
      [(_UITabBarControllerVisualStyle *)visualStyle performWithoutNotifyingTabBarController:v92];
      v17 = objc_opt_class();
      v18 = _selectedViewControllerInTabBar;
      if (v17)
      {
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      _didExplicitlyHideTabBar = [v20 _didExplicitlyHideTabBar];
      if (explicitCopy)
      {
        [v20 _setDidExplicitlyHideTabBar:0];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_2;
      aBlock[3] = &unk_1E7102008;
      aBlock[4] = self;
      reasonCopy = reason;
      v22 = v20;
      v89 = v22;
      v91 = _didExplicitlyHideTabBar;
      v23 = _Block_copy(aBlock);
      if ([(_UITabBarControllerVisualStyle *)self->_visualStyle ignoresDefaultTabBarVisibilityAnimation])
      {
        if (reason != 2)
        {
LABEL_54:

          return;
        }

        transitionCoordinator = [v18 transitionCoordinator];
        transitionCoordinator2 = transitionCoordinator;
        if (v12)
        {
          [transitionCoordinator animateAlongsideTransition:0 completion:v23];
        }

        else
        {
          [(UITabBarController *)self animationDidStop:@"UITabBarControllerShowBar" finished:MEMORY[0x1E695E118] context:0];
        }

LABEL_53:

        goto LABEL_54;
      }

      v77 = isKindOfClass;
      _selectedViewControllerInTabBar2 = [(UITabBarController *)self _selectedViewControllerInTabBar];
      transitionCoordinator2 = [_selectedViewControllerInTabBar2 transitionCoordinator];

      if ((v12 - 1) <= 1)
      {
        _mainContext = [transitionCoordinator2 _mainContext];
        _animator = [_mainContext _animator];
        objc_opt_class();
        v29 = objc_opt_isKindOfClass();

        if (v29)
        {
          _animator2 = [_mainContext _animator];

          if (_animator2)
          {
            v78 = _animator2;
            resizedToContainerView = [_animator2 resizedToContainerView];
            v32 = 0;
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v78 = 0;
      resizedToContainerView = 0;
      v32 = 1;
LABEL_20:
      [(UITabBar *)self->_tabBar setHidden:0];
      if ([(_UITabBarControllerVisualStyle *)self->_visualStyle canDisplayUITabBar])
      {
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      v33 = transitionGapGivenTabController(self);
      if (v32)
      {
        if (v12 <= 2)
        {
          v34 = v33;
          if (v12 == 1)
          {
            [(UIView *)self->_tabBar frame];
            v47 = v34 + v49;
            tabBar = self->_tabBar;
          }

          else
          {
            if (v12 != 2)
            {
LABEL_31:
              v86[0] = MEMORY[0x1E69E9820];
              v86[1] = 3221225472;
              v86[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_4;
              v86[3] = &unk_1E7102030;
              v87 = v12;
              v86[4] = self;
              v56 = _Block_copy(v86);
              if ((v32 & 1) != 0 || ([(UIView *)self->_tabBar superview], v57 = objc_claimAutoreleasedReturnValue(), v57, !v57))
              {
                if (v12)
                {
                  if (duration < 0.0)
                  {
                    [objc_opt_class() durationForTransition:v12];
                    duration = v60;
                  }

                  if (transitionCoordinator2)
                  {
                    v79[0] = MEMORY[0x1E69E9820];
                    v79[1] = 3221225472;
                    v79[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_7;
                    v79[3] = &unk_1E70F3770;
                    v80 = v56;
                    v61 = _Block_copy(v79);
                    if (([transitionCoordinator2 animateAlongsideTransitionInView:self->_tabBar animation:v61 completion:v23] & 1) == 0)
                    {
                      v61[2](v61, 0);
                    }
                  }

                  else
                  {
                    v81[0] = MEMORY[0x1E69E9820];
                    v81[1] = 3221225472;
                    v81[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_6;
                    v81[3] = &unk_1E70F5AC0;
                    v81[4] = self;
                    [UIView animateWithDuration:0 delay:v56 options:v81 animations:duration completion:0.0];
                  }

                  v59 = v78;
                  goto LABEL_52;
                }

                v56[2](v56);
                v59 = v78;
              }

              else
              {
                superview = [(UIView *)self->_tabBar superview];
                [(UITabBar *)self->_tabBar set_expectedSuperviewFollowingAnimation:superview];

                LOBYTE(superview) = [(UIView *)self->_tabBar _safeAreaInsetsFrozen];
                [(UIView *)self->_tabBar _setSafeAreaInsetsFrozen:1];
                [resizedToContainerView addSubview:self->_tabBar];
                v82[0] = MEMORY[0x1E69E9820];
                v82[1] = 3221225472;
                v82[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_5;
                v82[3] = &unk_1E7102058;
                v82[4] = self;
                v85 = superview;
                v83 = v56;
                v84 = v23;
                [transitionCoordinator2 animateAlongsideTransition:0 completion:v82];

                v59 = v78;
                if (v12)
                {
LABEL_52:

                  goto LABEL_53;
                }
              }

              v62 = [MEMORY[0x1E696AD98] numberWithBool:1];
              [(UITabBarController *)self animationDidStop:@"UITabBarControllerShowBar" finished:v62 context:0];

              goto LABEL_52;
            }

            [(UIView *)self->_tabBar frame];
            v36 = v35;
            v38 = v37;
            v40 = v39;
            superview2 = [(UIView *)self->_tabBar superview];
            [superview2 frame];
            v43 = v42;
            [(UIView *)self->_tabBar bounds];
            v45 = v43 - v44 - v34;

            tabBar = self->_tabBar;
            v47 = v45;
            v48 = v36;
            v49 = v38;
            v50 = v40;
          }

LABEL_30:
          [(UITabBar *)tabBar setFrame:v47, v48, v49, v50];
          goto LABEL_31;
        }

        if (v12 == 3)
        {
          [(UIView *)self->_tabBar frame];
          v69 = v68;
          v71 = v70;
          v73 = v72;
          superview3 = [(UIView *)self->_tabBar superview];
          [superview3 bounds];
          v76 = v75;

          tabBar = self->_tabBar;
          v47 = v69;
          v48 = v76;
          v49 = v71;
          v50 = v73;
          goto LABEL_30;
        }

        if (v12 != 6)
        {
          goto LABEL_31;
        }

        if (v77)
        {
          [v18 _setCrossfadingInTabBar:{1, v33}];
        }

        [(UITabBar *)self->_tabBar setAlpha:0.0];
        [(UIView *)self->_tabBar frame];
        v52 = v63;
        v54 = v64;
        superview4 = [(UIView *)self->_tabBar superview];
        [superview4 bounds];
        v67 = v66 - v54;

        tabBar = self->_tabBar;
        v47 = 0.0;
        v48 = v67;
      }

      else
      {
        [(UIView *)self->_tabBar frame];
        v52 = v51;
        v54 = v53;
        [resizedToContainerView bounds];
        v48 = v55 - v54;
        tabBar = self->_tabBar;
        v47 = 0.0;
      }

      v49 = v52;
      v50 = v54;
      goto LABEL_30;
    }
  }
}

uint64_t __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 == 2)
  {
    return [*(*(result + 32) + 1104) setBottomBarSuppressedByNavigation:0 animated:*(result + 48)];
  }

  if (v1 == 1)
  {
    return [*(*(result + 32) + 1104) setBarHidden:0 animated:*(result + 48)];
  }

  return result;
}

void __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCancelled])
  {
    *(*(a1 + 32) + 1128) |= 4 * (*(a1 + 48) & 3);
    v4 = *(a1 + 32);
    if ((*(v4 + 1128) & 4) != 0)
    {
      v5 = *(v4 + 1104);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_3;
      v8[3] = &unk_1E70F3590;
      v8[4] = v4;
      [v5 performWithoutNotifyingTabBarController:v8];
    }

    [*(a1 + 40) _setDidExplicitlyHideTabBar:*(a1 + 56)];
    [*(a1 + 40) _setCrossfadingInTabBar:0];
  }

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "isCancelled") ^ 1}];
  [v6 animationDidStop:@"UITabBarControllerShowBar" finished:v7 context:0];
}

uint64_t __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _wantsBarHidden];
  v3 = *(*(a1 + 32) + 1104);

  return [v3 setBarHidden:v2];
}

uint64_t __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 992);
  if (v2 == 6)
  {

    return [v3 setAlpha:1.0];
  }

  else
  {
    [v3 frame];
    v6 = v5;
    v8 = v7;
    v9 = [*(*(a1 + 32) + 992) superview];
    [v9 bounds];
    v11 = v10 - v8;

    v12 = *(*(a1 + 32) + 992);

    return [v12 setFrame:{0.0, v11, v6, v8}];
  }
}

void __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 992);
  v5 = a2;
  v4 = [v3 _expectedSuperviewFollowingAnimation];
  [v4 addSubview:*(*(a1 + 32) + 992)];

  [*(*(a1 + 32) + 992) set_expectedSuperviewFollowingAnimation:0];
  [*(*(a1 + 32) + 992) _setSafeAreaInsetsFrozen:*(a1 + 56)];
  (*(*(a1 + 40) + 16))();
  (*(*(a1 + 48) + 16))();
}

void __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v2 animationDidStop:@"UITabBarControllerShowBar" finished:v3 context:0];
}

uint64_t __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 transitionDuration];
  v5 = v4;
  v6 = [v3 isInteractive];

  if (v6)
  {
    v7 = 196704;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);

  return [UIView animateWithDuration:v7 delay:v8 options:0 animations:v5 completion:0.0];
}

- (void)setTabBarMinimizeBehavior:(int64_t)behavior
{
  if (self->_tabBarMinimizeBehavior != behavior)
  {
    self->_tabBarMinimizeBehavior = behavior;
    tabBar = self->_tabBar;
    if (tabBar)
    {
      if (tabBar->__minimizeBehavior != behavior)
      {
        tabBar->__minimizeBehavior = behavior;
        [(_UITabBarVisualProvider *)tabBar->_visualProvider minimizeBehaviorDidChange];
      }
    }
  }
}

- (void)_setShouldCollapseTabBarOnScroll:(BOOL)scroll
{
  if (scroll)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(UITabBarController *)self setTabBarMinimizeBehavior:v3];
}

- (id)_observingScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);

  return WeakRetained;
}

- (BOOL)_isViewControllerContainedInSelected:(id)selected ignoresPresentations:(BOOL)presentations
{
  selectedCopy = selected;
  v7 = selectedCopy;
  while (v7)
  {
    parentViewController = [(UIViewController *)v7 parentViewController];
    v9 = parentViewController;
    if (parentViewController || presentations)
    {
      presentingViewController = v7;
      v7 = parentViewController;
    }

    else
    {
      presentingViewController = [(UIViewController *)v7 presentingViewController];
      presentationController = [presentingViewController presentationController];
      if ([presentationController _presentedViewControllerProvidesContentScrollView])
      {
        v12 = presentingViewController;
      }

      else
      {
        v12 = 0;
      }

      v7 = v12;
    }

    selectedViewController = self->_selectedViewController;
    if (v7 == selectedViewController)
    {
      if (v7)
      {
        v14 = v7 == self->_selectedViewController;

        goto LABEL_14;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (void)_viewSubtreeDidGainScrollView:(id)view enclosingViewController:(id)controller tvSearchController:(id)searchController
{
  viewCopy = view;
  controllerCopy = controller;
  v8 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:self->_selectedViewController];
  _relevantEdgeForScrollViewObservation = [(UITabBarController *)self _relevantEdgeForScrollViewObservation];
  v10 = [v8 _contentOrObservableScrollViewForEdge:_relevantEdgeForScrollViewObservation];
  if (v10)
  {
    goto LABEL_6;
  }

  v11 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:controllerCopy];
  v12 = [v11 _contentOrObservableScrollViewForEdge:_relevantEdgeForScrollViewObservation];
  if (v12 != viewCopy)
  {

    goto LABEL_6;
  }

  v13 = [(UITabBarController *)self _isViewControllerContainedInSelected:controllerCopy ignoresPresentations:0];

  if (!v13)
  {
LABEL_6:
    if (v10 != viewCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = viewCopy;
LABEL_7:
  *&self->_tabBarControllerFlags |= 0x40000u;
  [(UITabBarController *)self _updateAndObserveScrollView:v10 viewController:v8];
LABEL_8:
}

- (void)_forceUpdateScrollViewIfNecessary
{
  if (_UIViewControllerUseContentScrollViewAPI())
  {
    tabBarControllerFlags = self->_tabBarControllerFlags;
    if ((*&tabBarControllerFlags & 0x40000) == 0)
    {
      self->_tabBarControllerFlags = (*&tabBarControllerFlags | 0x40000);
      v5 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:self->_selectedViewController];
      v4 = [v5 _contentOrObservableScrollViewForEdge:{-[UITabBarController _relevantEdgeForScrollViewObservation](self, "_relevantEdgeForScrollViewObservation")}];
      [(UITabBarController *)self _updateAndObserveScrollView:v4 viewController:v5 updateBackgroundTransitionProgressForNilScrollView:1];
    }
  }
}

- (void)_viewControllerObservableScrollViewAmbiguityStatusDidChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (changeCopy)
  {
    if ((*(changeCopy + 94) & 3u) - 1 <= 1)
    {
      v10 = changeCopy;
      if ((_UIBarsApplyChromelessEverywhere() & 1) != 0 || (v6 = _UIViewControllerUseContentScrollViewAPI(), v5 = v10, v6))
      {
        _relevantEdgeForScrollViewObservation = [(UITabBarController *)self _relevantEdgeForScrollViewObservation];
        v8 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:v10];
        v9 = [v8 _contentOrObservableScrollViewForEdge:_relevantEdgeForScrollViewObservation];
        [(UITabBarController *)self _updateAndObserveScrollView:v9 viewController:v8];

        v5 = v10;
      }
    }
  }
}

- (void)_handleObservingForScrollView:(id)view sharedWithNavigationController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  if (_UIBarsApplyChromelessEverywhere())
  {
    if (!controllerCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = _UIViewControllerUseContentScrollViewAPI();
    if (!controllerCopy || (v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ((controllerCopy[94] & 3u) - 1 <= 1)
  {
    presentedViewController = [controllerCopy presentedViewController];

    if (!presentedViewController)
    {
      if (viewCopy)
      {
        _viewControllerForObservableScrollView = [controllerCopy _viewControllerForObservableScrollView];
        [(UITabBarController *)self _updateAndObserveScrollView:viewCopy viewController:_viewControllerForObservableScrollView];
      }

      else
      {
        [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:0 tabBar:self->_tabBar];
      }
    }
  }

LABEL_11:
}

- (void)_navigationController:(id)controller didUpdateAndObserveScrollView:(id)view forEdges:(unint64_t)edges
{
  controllerCopy = controller;
  viewCopy = view;
  if (([(UITabBarController *)self _relevantEdgeForScrollViewObservation]& edges) != 0)
  {
    [(UITabBarController *)self _handleObservingForScrollView:viewCopy sharedWithNavigationController:controllerCopy];
  }
}

- (void)_navigationControllerDidUpdateStack:(id)stack
{
  stackCopy = stack;
  if (_UIBarsApplyChromelessEverywhere())
  {
    _relevantEdgeForScrollViewObservation = [(UITabBarController *)self _relevantEdgeForScrollViewObservation];
    topViewController = [(UIViewController *)stackCopy topViewController];
    v6 = [topViewController _contentOrObservableScrollViewForEdge:_relevantEdgeForScrollViewObservation];

    [(UITabBarController *)self _handleObservingForScrollView:v6 sharedWithNavigationController:stackCopy];
  }

  if (self->_selectedViewController == stackCopy || [(UITabBarController *)self _isViewControllerContainedInSelected:stackCopy ignoresPresentations:1])
  {
    v7 = self->_visualStyle;
    [(_UITabBarControllerVisualStyle *)v7 navigationControllerDidUpdate:stackCopy];
  }
}

- (void)_navigationControllerDidUpdateSearchController:(id)controller
{
  controllerCopy = controller;
  if (self->_selectedViewController == controllerCopy || [(UITabBarController *)self _isViewControllerContainedInSelected:controllerCopy ignoresPresentations:1])
  {
    v4 = self->_visualStyle;
    [(_UITabBarControllerVisualStyle *)v4 navigationControllerDidUpdate:controllerCopy];
  }
}

- (void)_setSuspendBarBackgroundUpdating:(BOOL)updating
{
  if (updating)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFF7FF | v3);
}

- (void)_suspendAllTabBarBackgroundUpdates
{
  backgroundUpdatesSuspendCount = self->_backgroundUpdatesSuspendCount;
  self->_backgroundUpdatesSuspendCount = backgroundUpdatesSuspendCount + 1;
  if (!backgroundUpdatesSuspendCount)
  {
    [(UITabBar *)self->_tabBar _setSuspendBackgroundUpdates:1];
  }
}

- (void)_resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary:(BOOL)necessary animated:(BOOL)animated
{
  backgroundUpdatesSuspendCount = self->_backgroundUpdatesSuspendCount;
  if (backgroundUpdatesSuspendCount)
  {
    v6 = backgroundUpdatesSuspendCount - 1;
    self->_backgroundUpdatesSuspendCount = v6;
    if (!v6)
    {
      if (!necessary || (*(&self->_tabBarControllerFlags + 2) & 8) != 0)
      {
        tabBar = self->_tabBar;

        [(UITabBar *)tabBar _setSuspendBackgroundUpdates:0, animated];
      }

      else
      {
        animatedCopy = animated;
        objc_initWeak(location, self);
        _observingScrollView = [(UITabBarController *)self _observingScrollView];
        tabBar = [(UITabBarController *)self tabBar];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __85__UITabBarController__resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary_animated___block_invoke;
        v13[3] = &unk_1E70F3668;
        objc_copyWeak(&v14, location);
        [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:_observingScrollView tabBar:tabBar isNavigationTransitionUpdate:0 forceTwoPartCrossfade:animatedCopy completion:v13];

        objc_destroyWeak(&v14);
        objc_destroyWeak(location);
      }
    }
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v12 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_fault_impl(&dword_188A29000, v12, OS_LOG_TYPE_FAULT, "Over-release of backgorund updates on tab bar controller.", location, 2u);
    }
  }

  else
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &_resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary_animated____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Over-release of backgorund updates on tab bar controller.", location, 2u);
    }
  }
}

void __85__UITabBarController__resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && !WeakRetained[140])
  {
    v2 = WeakRetained;
    [WeakRetained[124] _setSuspendBackgroundUpdates:0];
    WeakRetained = v2;
  }
}

- (void)_updateBackgroundTransitionProgressForScrollView:(id)view tabBar:(id)bar isNavigationTransitionUpdate:(BOOL)update forceTwoPartCrossfade:(BOOL)crossfade completion:(id)completion
{
  crossfadeCopy = crossfade;
  updateCopy = update;
  viewCopy = view;
  barCopy = bar;
  completionCopy = completion;
  if (!self->_backgroundUpdatesSuspendCount)
  {
    tabBarControllerFlags = self->_tabBarControllerFlags;
    if ((*&tabBarControllerFlags & 0x800) == 0 || updateCopy)
    {
      if ((*&tabBarControllerFlags & 0x800) != 0 && updateCopy)
      {
        self->_tabBarControllerFlags = (*&tabBarControllerFlags & 0xFFFFF7FF);
      }

      v39 = 0.0;
      if (_UIBarsGetBottomBarBackgroundTransitionProgressForScrollView(viewCopy, barCopy, &v39))
      {
        [barCopy _backgroundTransitionProgress];
        v17 = v16;
        if (v39 == 1.0)
        {
          selectedItem = [barCopy selectedItem];
          scrollEdgeAppearance = [selectedItem scrollEdgeAppearance];
          v20 = scrollEdgeAppearance;
          if (scrollEdgeAppearance)
          {
            scrollEdgeAppearance2 = scrollEdgeAppearance;
          }

          else
          {
            scrollEdgeAppearance2 = [barCopy scrollEdgeAppearance];
          }

          v23 = scrollEdgeAppearance2;

          if (v17 == 1.0)
          {
            _backgroundData = [v23 _backgroundData];
            _backgroundData2 = [(UIBarAppearance *)self->_lastUsedScrollEdgeAppearance _backgroundData];
            v26 = _backgroundData;
            v27 = _backgroundData2;
            v28 = v27;
            if (v26 == v27)
            {
              v22 = 0;
            }

            else
            {
              v22 = 1;
              if (v26 && v27)
              {
                v22 = [v26 isEqual:v27] ^ 1;
              }
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        v29 = v17 != v39 && updateCopy;
        if ((v29 || crossfadeCopy) && +[UIView _isInAnimationBlockWithAnimationsEnabled])
        {
          selectedItem2 = [(UITabBar *)self->_tabBar selectedItem];
          scrollEdgeAppearance3 = [selectedItem2 scrollEdgeAppearance];
          if (scrollEdgeAppearance3)
          {
            scrollEdgeAppearance4 = scrollEdgeAppearance3;
          }

          else
          {
            scrollEdgeAppearance4 = [(UITabBar *)self->_tabBar scrollEdgeAppearance];

            if (!scrollEdgeAppearance4)
            {
LABEL_34:
              v34 = v39;
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v35[2] = __140__UITabBarController__updateBackgroundTransitionProgressForScrollView_tabBar_isNavigationTransitionUpdate_forceTwoPartCrossfade_completion___block_invoke;
              v35[3] = &unk_1E7101F90;
              v36 = barCopy;
              v37 = v34;
              v38 = v22;
              _UIBarsTwoPartCrossfadeTransitionProgress(v35, completionCopy, v34);

LABEL_37:
              if (v39 == 1.0 && (v17 != 1.0) | v22 & 1)
              {
                objc_storeStrong(&self->_lastUsedScrollEdgeAppearance, v23);
              }

              goto LABEL_13;
            }
          }

          _hasTransparentBackground = [scrollEdgeAppearance4 _hasTransparentBackground];

          if (_hasTransparentBackground)
          {
            goto LABEL_34;
          }
        }

        [barCopy _setBackgroundTransitionProgress:v22 forceUpdate:0 animated:v39];
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, 1);
        }

        goto LABEL_37;
      }
    }
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }

LABEL_13:
}

- (void)_stopObservingScrollView:(id)view
{
  viewCopy = view;
  if ([viewCopy _isScrollViewScrollObserver:self])
  {
    [viewCopy _removeScrollViewScrollObserver:self];
  }
}

- (BOOL)_tvTabBarShouldTrackScrollView:(id)view
{
  if (!view)
  {
    return 0;
  }

  _viewControllerForAncestor = [view _viewControllerForAncestor];
  v4 = objc_opt_class();
  v5 = [(UIViewController *)_viewControllerForAncestor _ancestorViewControllerOfClass:v4 allowModalParent:0];
  v6 = v5;
  if (v5)
  {
    _tvShouldScrollWithObservedScrollViewIfPossible = [v5 _tvShouldScrollWithObservedScrollViewIfPossible];
  }

  else
  {
    _tvShouldScrollWithObservedScrollViewIfPossible = 1;
  }

  return _tvShouldScrollWithObservedScrollViewIfPossible;
}

- (void)_viewControllerDidBeginDismissal:(id)dismissal
{
  dismissalCopy = dismissal;
  if (_UIBarsApplyChromelessEverywhere())
  {
    _viewControllerForObservableScrollView = [dismissalCopy _viewControllerForObservableScrollView];
    if (![(UITabBarController *)self _isViewControllerContainedInSelected:_viewControllerForObservableScrollView ignoresPresentations:0])
    {
LABEL_15:

      goto LABEL_16;
    }

    v6 = [_viewControllerForObservableScrollView _contentOrObservableScrollViewForEdge:4];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__UITabBarController__viewControllerDidBeginDismissal___block_invoke;
    aBlock[3] = &unk_1E7101978;
    aBlock[4] = self;
    v7 = v6;
    v19 = v7;
    v8 = dismissalCopy;
    v20 = v8;
    v9 = _Block_copy(aBlock);
    transitionCoordinator = [v8 transitionCoordinator];
    if (!transitionCoordinator)
    {
      goto LABEL_13;
    }

    [(UITabBar *)self->_tabBar _backgroundTransitionProgress];
    v12 = v11;
    v13 = v11 == 1.0;
    v17 = 0;
    [(UITabBarController *)self _updateObservingScrollViewWithScrollView:v7 viewController:v8 getTabBarRequiresStandardBackground:&v17];
    v14 = 0;
    if ((v17 & 1) == 0)
    {
      if (v7)
      {
        WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);

        v14 = v13;
        if (v7 == WeakRetained)
        {
          v16 = 0.0;
          if (_UIBarsGetBottomBarBackgroundTransitionProgressForScrollView(v7, self->_tabBar, &v16))
          {
            v14 = v16 == 1.0;
          }

          else
          {
            v14 = v12 == 1.0;
          }
        }
      }

      else
      {
        v14 = v13;
      }
    }

    self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFF7FFFF | ((v17 & 1) << 19));
    if ((v12 == 1.0) == v14)
    {
      goto LABEL_14;
    }

    if (v12 != 1.0)
    {
      [transitionCoordinator animateAlongsideTransition:0 completion:v9];
    }

    else
    {
LABEL_13:
      v9[2](v9, 0);
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_16:
}

- (void)_updateObservingScrollViewWithScrollView:(id)view viewController:(id)controller getTabBarRequiresStandardBackground:(BOOL *)background
{
  viewCopy = view;
  controllerCopy = controller;
  if ([controllerCopy _isViewControllerForObservableScrollViewAmbiguous])
  {
    _isViewControllerForObservableScrollViewAmbiguous = 1;
  }

  else
  {
    v10 = [controllerCopy _splitViewControllerEnforcingClass:1];
    if (!v10 || ([(UIViewController *)self _splitViewControllerEnforcingClass:1], v11 = objc_claimAutoreleasedReturnValue(), v11, v10 == v11))
    {
      _isViewControllerForObservableScrollViewAmbiguous = 0;
    }

    else
    {
      _isViewControllerForObservableScrollViewAmbiguous = [v10 _isViewControllerForObservableScrollViewAmbiguous];
    }
  }

  if (!viewCopy || (_UIViewControllerUseContentScrollViewAPI() & 1) == 0)
  {
    if (([viewCopy _isScrollViewScrollObserver:self] & 1) == 0)
    {
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

LABEL_15:
    [(UITabBarController *)self _stopObservingScrollView:viewCopy];
    goto LABEL_16;
  }

  v12 = [(_UITabBarControllerVisualStyle *)self->_visualStyle shouldTrackContentScrollView:viewCopy viewController:controllerCopy tabBarBackgroundRequired:_isViewControllerForObservableScrollViewAmbiguous];
  v13 = [viewCopy _isScrollViewScrollObserver:self];
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v13 & 1) == 0)
  {
    [viewCopy _addScrollViewScrollObserver:self];
  }

  v14 = 1;
LABEL_17:
  WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v17 = objc_loadWeakRetained(&self->_observingScrollView);
    v18 = v17 == viewCopy ? v14 : 0;

    if ((v18 & 1) == 0)
    {
      v19 = objc_loadWeakRetained(&self->_observingScrollView);
      [(UITabBarController *)self _stopObservingScrollView:v19];
    }
  }

  if (v14)
  {
    v20 = viewCopy;
  }

  else
  {
    v20 = 0;
  }

  objc_storeWeak(&self->_observingScrollView, v20);
  tabBar = [(UITabBarController *)self tabBar];
  v22 = objc_loadWeakRetained(&self->_observingScrollView);
  if (tabBar)
  {
    [tabBar[59] observeContentScrollView:v22];
  }

  if (background)
  {
    *background = _isViewControllerForObservableScrollViewAmbiguous;
  }
}

- (void)_updateAndObserveScrollView:(id)view viewController:(id)controller updateBackgroundTransitionProgressForNilScrollView:(BOOL)scrollView
{
  scrollViewCopy = scrollView;
  viewCopy = view;
  v13 = 0;
  [(UITabBarController *)self _updateObservingScrollViewWithScrollView:viewCopy viewController:controller getTabBarRequiresStandardBackground:&v13];
  if (viewCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);

    if (WeakRetained == viewCopy)
    {
      [(_UITabBarControllerVisualStyle *)self->_visualStyle adjustTabBarForContentScrollView:viewCopy];
      [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:viewCopy tabBar:self->_tabBar];
    }
  }

  v10 = v13;
  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFF7FFFF | ((v13 & 1) << 19));
  if (v10 == 1)
  {
    [(UITabBar *)self->_tabBar _setBackgroundTransitionProgress:0.0];
  }

  v11 = objc_loadWeakRetained(&self->_observingScrollView);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = !scrollViewCopy;
  }

  if (v12)
  {
  }

  else if ((v13 & 1) == 0)
  {
    [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:0 tabBar:self->_tabBar];
  }
}

- (void)_observableScrollViewDidChangeFrom:(id)from forViewController:(id)controller edges:(unint64_t)edges
{
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = UITabBarController;
  [(UIViewController *)&v23 _observableScrollViewDidChangeFrom:from forViewController:controllerCopy edges:edges];
  if (controllerCopy)
  {
    if ((controllerCopy[94] & 3u) - 1 <= 1)
    {
      _relevantEdgeForScrollViewObservation = [(UITabBarController *)self _relevantEdgeForScrollViewObservation];
      if ((_relevantEdgeForScrollViewObservation & edges) != 0)
      {
        v10 = _relevantEdgeForScrollViewObservation;
        WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);
        v12 = [controllerCopy _contentOrObservableScrollViewForEdge:v10];
        v13 = objc_loadWeakRetained(&self->_observingScrollView);

        if (v12 != v13)
        {
          v14 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:self->_selectedViewController];
          v15 = [v14 _contentOrObservableScrollViewForEdge:v10];

          if (v15)
          {
            v16 = v12 == v15;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            _viewControllerForAncestor = [v12 _viewControllerForAncestor];
            presentingViewController = [_viewControllerForAncestor presentingViewController];
            tabBarController = [presentingViewController tabBarController];
            v20 = tabBarController;
            if (tabBarController)
            {
              tabBarController2 = tabBarController;
            }

            else
            {
              tabBarController2 = [_viewControllerForAncestor tabBarController];
            }

            v22 = tabBarController2;

            if (v22 == self)
            {
              [(UITabBarController *)self _updateAndObserveScrollView:v12 viewController:controllerCopy];
            }
          }
        }
      }
    }
  }
}

- (id)_overrideTraitCollectionToPassDuringTraitChangeToChildViewController:(id)controller
{
  controllerCopy = controller;
  if (_overrideUISplitViewControllerToCompact_onceToken != -1)
  {
    dispatch_once(&_overrideUISplitViewControllerToCompact_onceToken, &__block_literal_global_903);
  }

  if (_overrideUISplitViewControllerToCompact_override == 1 && -[_UITabBarControllerVisualStyle overrideUISplitViewControllerToCompact](self->_visualStyle, "overrideUISplitViewControllerToCompact") && !-[UITabBarController _isBarEffectivelyHidden](self, "_isBarEffectivelyHidden") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [controllerCopy style])
  {
    v5 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setNotifySplitViewControllerForSelectionChange:(BOOL)change
{
  if (change)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFBFF | v3);
}

- (BOOL)_wrapsNavigationController:(id *)controller
{
  if (controller)
  {
    *controller = 0;
  }

  return 0;
}

- (void)_setTabBarPosition:(int64_t)position
{
  if (self->_tabBarPosition != position)
  {
    if (position >= 5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:4338 description:{@"Invalid parameter not satisfying: %@", @"UITabBarControllerBarPositionUnspecified <= position && position <= UITabBarControllerBarPositionRight"}];
    }

    _effectiveTabBarPosition = [(UITabBarController *)self _effectiveTabBarPosition];
    self->_tabBarPosition = position;
    if (_effectiveTabBarPosition != [(UITabBarController *)self _effectiveTabBarPosition])
    {
      *&self->_tabBarControllerFlags &= ~0x20u;
      containerView = self->_containerView;

      [(UIView *)containerView setNeedsLayout];
    }
  }
}

- (id)_viewControllerForTabBarItem:(id)item
{
  itemCopy = item;
  tabBar = [(UITabBarController *)self tabBar];
  items = [tabBar items];

  _viewControllersInTabBar = [(UITabBarController *)self _viewControllersInTabBar];
  v9 = MEMORY[0x1E696AE18];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __51__UITabBarController__viewControllerForTabBarItem___block_invoke;
  v22 = &unk_1E7102080;
  v10 = itemCopy;
  v23 = v10;
  v11 = [v9 predicateWithBlock:&v19];
  v12 = [_viewControllersInTabBar filteredArrayUsingPredicate:v11];

  if ([v12 count] != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:4363 description:{@"Inconsistency in UITabBar items and view controllers detected. No view controller matches the UITabBarItem '%@'.", v10, v19, v20, v21, v22}];
  }

  firstObject = [v12 firstObject];
  tabBarItem = [firstObject tabBarItem];
  v15 = [items containsObject:tabBarItem];

  if ((v15 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:4367 description:{@"Inconsistency in UITabBar items and view controllers detected. The matching UITabBarItem '%@' is not available in the UITabBar.", v10}];
  }

  return firstObject;
}

uint64_t __51__UITabBarController__viewControllerForTabBarItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabBarItem];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_tabBarDidChangeSelectionToItem:(id)item
{
  v4 = [(UITabBarController *)self _viewControllerForTabBarItem:item];
  v15 = v4;
  if ((*(&self->_tabBarControllerFlags + 1) & 0x80) == 0)
  {
    _uip_tabElement = [v4 _uip_tabElement];
    if (_uip_tabElement)
    {
      v6 = _uip_tabElement;
      isEnabled = [_uip_tabElement isEnabled];

      if (!isEnabled)
      {
        goto LABEL_10;
      }
    }

LABEL_8:
    *&self->_tabBarControllerFlags |= 0x20000u;
    [(UITabBarController *)self _setSelectedViewControllerAndNotify:v15];
    v11 = v15;
    *&self->_tabBarControllerFlags &= ~0x20000u;
    goto LABEL_13;
  }

  v8 = [v4 tab];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if ([v8 isEnabled])
  {
    v10 = [(UITabBarController *)self _shouldSelectTab:v9];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

LABEL_10:
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v13 = _selectedViewControllerInTabBar;
  if (_selectedViewControllerInTabBar)
  {
    tabBarItem = [_selectedViewControllerInTabBar tabBarItem];
    [(UITabBarController *)self _setSelectedTabBarItem:tabBarItem];
  }

  [(UIViewController *)self setNeedsFocusUpdate];

  v11 = v15;
LABEL_13:
}

- (void)_setSelectedViewControllerAndNotify:(id)notify
{
  notifyCopy = notify;
  tabBarControllerFlags = self->_tabBarControllerFlags;
  delegate = [(UITabBarController *)self delegate];
  if ((*&tabBarControllerFlags & 0x8000) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && ([delegate tabBarController:self shouldSelectViewController:notifyCopy] & 1) == 0)
  {
    _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
    _selectedViewControllerInTabBar2 = _selectedViewControllerInTabBar;
    if (_selectedViewControllerInTabBar)
    {
      tabBarItem = [(UIViewController *)_selectedViewControllerInTabBar tabBarItem];
      [(UITabBarController *)self _setSelectedTabBarItem:tabBarItem];

      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __58__UITabBarController__setSelectedViewControllerAndNotify___block_invoke;
      v14 = &unk_1E70F35B8;
      v15 = _selectedViewControllerInTabBar2;
      selfCopy = self;
      [(UITabBarController *)self _performWithoutNotifyingSelectionChange:&v11];
    }

    [(UIViewController *)self setNeedsFocusUpdate:v11];
    goto LABEL_15;
  }

  if (self->_transientViewController != notifyCopy)
  {
    _selectedViewControllerInTabBar2 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    if (_selectedViewControllerInTabBar2 == notifyCopy)
    {
      [(_UITabBarControllerVisualStyle *)self->_visualStyle updateViewControllerForReselection:notifyCopy];
    }

    [(_UITabBarControllerVisualStyle *)self->_visualStyle updateFocusForSelectedViewControllerChange];
    if ((*&tabBarControllerFlags & 0x8000) != 0)
    {
      [(UITabBarController *)self _setSelectedViewController:notifyCopy performUpdates:1];
    }

    else
    {
      [(UITabBarController *)self setTransientViewController:0];
      [(UITabBarController *)self setSelectedViewController:notifyCopy];
      if (objc_opt_respondsToSelector())
      {
        selectedViewController = [(UITabBarController *)self selectedViewController];
        [delegate tabBarController:self didSelectViewController:selectedViewController];
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  [(UITabBarController *)self concealTabBarSelection];
LABEL_16:
}

void __58__UITabBarController__setSelectedViewControllerAndNotify___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolvedTab];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(v3 + 1200);
  }

  else
  {
    v4 = 0;
  }

  v5 = v2;
  [v4 selectTab:v2 notifyOnReselection:0];
}

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)controller insetsAreAbsolute:(BOOL *)absolute
{
  controllerCopy = controller;
  _viewControllersForTabs = [(UITabBarController *)&self->super.super.super.isa _viewControllersForTabs];
  if ([_viewControllersForTabs indexOfObjectIdenticalTo:controllerCopy] != 0x7FFFFFFFFFFFFFFFLL || self->_moreNavigationController == controllerCopy)
  {
    [(_UITabBarControllerVisualStyle *)self->_visualStyle edgeInsetsForChildViewController:controllerCopy];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
    *absolute = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = UITabBarController;
    [(UIViewController *)&v24 _edgeInsetsForChildViewController:controllerCopy insetsAreAbsolute:absolute];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  v20 = v9;
  v21 = v11;
  v22 = v13;
  v23 = v15;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (CGRect)_frameForViewController:(id)controller
{
  controllerCopy = controller;
  [(UIView *)self->_viewControllerTransitionView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIViewController *)self _statusBarHeightForCurrentInterfaceOrientation];
  v14 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _effectiveTabBarPosition = [(UITabBarController *)self _effectiveTabBarPosition];
    _isTranslucent = [(UITabBar *)self->_tabBar _isTranslucent];
    edgesForExtendedLayout = [controllerCopy edgesForExtendedLayout];
    if ([(UIView *)self->_tabBar isHidden])
    {
      v18 = 0;
    }

    else
    {
      v19 = 4;
      if (_effectiveTabBarPosition == 2)
      {
        v19 = 1;
      }

      v18 = (edgesForExtendedLayout & v19) == 0;
      if (((v18 | _isTranslucent) & 1) == 0)
      {
        v18 = [controllerCopy extendedLayoutIncludesOpaqueBars] ^ 1;
      }
    }

    v20 = [(UIView *)self->_tabBar isHidden]| v18;
    if ((v18 & 1) != 0 || (v21 = 0.0, (v20 & 1) == 0))
    {
      [(UITabBar *)self->_tabBar sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      v21 = v22;
    }

    if ([(UITabBarController *)self _isModernTVTabBar])
    {
      v21 = 157.0;
    }

    if (v18)
    {
      v6 = v6 + 0.0;
      v12 = v12 - (v21 + 0.0);
      if ([(UITabBarController *)self _effectiveTabBarPosition]== 2)
      {
        v8 = v8 + v21;
      }

      else
      {
        v8 = v8 + 0.0;
      }
    }

    if ([objc_opt_class() _directlySetsContentOverlayInsetsForChildren])
    {
      v23 = v14 + v21;
      if (v20)
      {
        v23 = v14;
      }

      if (_effectiveTabBarPosition != 2)
      {
        v23 = v14;
      }

      if ((_effectiveTabBarPosition == 2) | v20 & 1)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v21;
      }

      [controllerCopy _setContentOverlayInsets:v23 andLeftMargin:0.0 rightMargin:{v24, 0.0, -1.79769313e308, -1.79769313e308}];
    }
  }

  [(_UITabBarControllerVisualStyle *)self->_visualStyle adjustedContentViewFrame:controllerCopy viewController:v6, v8, v10, v12];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = v26;
  v34 = v28;
  v35 = v30;
  v36 = v32;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (id)transitionCoordinator
{
  _animator = [(UITabBarController *)self _animator];

  if (_animator)
  {
    _animator2 = [(UITabBarController *)self _animator];
    v5 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:_animator2];

    _transitionCoordinator = [v5 _transitionCoordinator];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    _transitionCoordinator = [(UIViewController *)&v8 transitionCoordinator];
  }

  return _transitionCoordinator;
}

- (CGRect)_frameForWrapperViewForViewController:(id)controller
{
  _transitionView = [(UITabBarController *)self _transitionView];
  [_transitionView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)_customInteractionControllerForAnimator:(id)animator
{
  animatorCopy = animator;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained tabBarController:self interactionControllerUsingAnimator:animatorCopy];
LABEL_6:
      v7 = v6;
      goto LABEL_8;
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained tabBarController:self interactionControllerForAnimationController:animatorCopy];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)_customAnimatorForFromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [WeakRetained tabBarController:self animatorForFromViewController:controllerCopy toViewController:viewControllerCopy];
      goto LABEL_6;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [WeakRetained tabBarController:self animationControllerForTransitionFromViewController:controllerCopy toViewController:viewControllerCopy];
LABEL_6:
      v10 = v9;
      if (v9)
      {
        goto LABEL_8;
      }
    }
  }

  v10 = [(_UITabBarControllerVisualStyle *)self->_visualStyle defaultAnimatorForFromViewController:controllerCopy toViewController:viewControllerCopy];
LABEL_8:

  return v10;
}

- (id)_viewControllerForObservableScrollView
{
  visualStyle = self->_visualStyle;
  selectedViewController = [(UITabBarController *)self selectedViewController];
  v4 = [(_UITabBarControllerVisualStyle *)visualStyle viewControllerForObservableScrollViewFromViewController:selectedViewController];

  return v4;
}

- (void)transitionFromViewController:(id)controller toViewController:(id)viewController transition:(int)transition shouldSetSelected:(BOOL)selected
{
  selectedCopy = selected;
  v155 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v121 = controllerCopy;
  if (controllerCopy == viewControllerCopy)
  {
    goto LABEL_117;
  }

  v112 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(UIViewControllerAnimatedTransitioning *)self->__animator interruptTabBarControllerTransition];
  }

  transitionCopy = transition;
  if (objc_opt_respondsToSelector())
  {
    v13 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:self->__animator];
    v14 = self->__animator;
    v15 = v14;
    if (v13 && [(UIViewControllerAnimatedTransitioning *)v14 shouldPreemptWithContext:v13])
    {
      v115 = [(UIViewControllerAnimatedTransitioning *)self->__animator preemptWithContext:v13];
    }

    else
    {
      v115 = 0;
    }
  }

  else
  {
    v115 = 0;
  }

  v16 = controllerCopy;
  if (controllerCopy)
  {
    v17 = [(UITabBarController *)self _viewForViewController:controllerCopy];
    superview = [v17 superview];
    if (superview)
    {
      layer = [v17 layer];
      hasBeenCommitted = [layer hasBeenCommitted];

      v21 = hasBeenCommitted ^ 1;
    }

    else
    {
      v21 = 1;
    }

    v16 = controllerCopy;
  }

  else
  {
    v21 = 1;
  }

  if (+[UIView areAnimationsEnabled]&& !(((*&self->super._viewControllerFlags & 3u) - 3 < 0xFFFFFFFE) | v21 & 1))
  {
    v22 = [(UITabBarController *)self _customAnimatorForFromViewController:v16 toViewController:viewControllerCopy];
    [(UITabBarController *)self _setAnimator:v22];
  }

  if (self->__animator)
  {
    v23 = [(UITabBarController *)self _customInteractionControllerForAnimator:?];
    [(UITabBarController *)self _setInteractor:v23];

    animator = self->__animator;
  }

  else
  {
    animator = 0;
  }

  interactor = self->__interactor;
  v108 = objc_opt_respondsToSelector();
  v107 = objc_opt_respondsToSelector();
  parentModalViewController = [viewControllerCopy parentModalViewController];
  tabBarItem = [parentModalViewController tabBarItem];
  v27 = tabBarItem;
  if (tabBarItem)
  {
    tabBarItem2 = tabBarItem;
  }

  else
  {
    tabBarItem2 = [viewControllerCopy tabBarItem];
  }

  if (animator)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UITabBarController", &qword_1ED498E28);
    v29 = *(CategoryCachedImpl + 8);
    v30 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
    if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v31 = v30;
      if (os_signpost_enabled(v29))
      {
        v32 = objc_opt_class();
        Name = class_getName(v32);
        v34 = objc_opt_class();
        *buf = 136446466;
        *&buf[4] = Name;
        *&buf[12] = 2082;
        *&buf[14] = class_getName(v34);
        _os_signpost_emit_with_name_impl(&dword_188A29000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v31, "SwitchTabs", " enableTelemetry=YES  isAnimation=YES from=%{signpost.telemetry:string1,public}s to=%{signpost.telemetry:string2,public}s", buf, 0x16u);
      }
    }
  }

  else
  {
    v35 = __UILogGetCategoryCachedImpl("UITabBarController", &qword_1ED498E30);
    v36 = *(v35 + 8);
    v37 = os_signpost_id_make_with_pointer(*(v35 + 8), self);
    if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v38 = v37;
      if (os_signpost_enabled(v36))
      {
        v39 = objc_opt_class();
        v40 = class_getName(v39);
        v41 = objc_opt_class();
        *buf = 136446466;
        *&buf[4] = v40;
        *&buf[12] = 2082;
        *&buf[14] = class_getName(v41);
        _os_signpost_emit_with_name_impl(&dword_188A29000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v38, "SwitchTabs", " enableTelemetry=YES from=%{signpost.telemetry:string1,public}s to=%{public, signpost.telemetry:string2,public}s", buf, 0x16u);
      }
    }

    [(UITabBarController *)self _setSelectedTabBarItem:tabBarItem2];
  }

  if ([v121 modalPresentationStyle] == 6)
  {
    parentModalViewController2 = [v121 parentModalViewController];
    v43 = [(UITabBarController *)self _wrapperViewForViewController:parentModalViewController2];

    superview2 = [v43 superview];
    [v43 frame];
    v49 = [(UIViewControllerWrapperView *)v45 wrapperViewForView:v46 frame:v47, v48, UIViewControllerWrapperView, v43];
    [superview2 addSubview:v49];
  }

  v120 = [(UITabBarController *)self _viewForViewController:viewControllerCopy];
  if ([viewControllerCopy modalPresentationStyle] != 6 || (objc_msgSend(viewControllerCopy, "presentationController"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "containerView"), v51 = objc_claimAutoreleasedReturnValue(), v50, !v51))
  {
    if (animator)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  [v51 addSubview:v120];
  parentModalViewController3 = [viewControllerCopy parentModalViewController];
  v53 = [(UITabBarController *)self _wrapperViewForViewController:parentModalViewController3];

  [v53 addSubview:v51];
  v54 = v53;

  if (animator)
  {

    v120 = v54;
LABEL_42:
    v55 = [(UITabBarController *)self _viewForViewController:v121];
    superview3 = [v55 superview];

    [(UITabBarController *)self _layoutViewController:viewControllerCopy];
    goto LABEL_46;
  }

  v120 = v54;

  superview3 = v120;
  if (!v120)
  {
    v120 = 0;
LABEL_45:
    superview3 = [(UITabBarController *)self _wrapperViewForViewController:viewControllerCopy];
  }

LABEL_46:
  v56 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:viewControllerCopy];
  v57 = [v56 _contentOrObservableScrollViewForEdge:1];

  if (v57)
  {
    navigationController = [(UIViewController *)self navigationController];
    view = [navigationController view];
    [view setNeedsLayout];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v154 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke;
  aBlock[3] = &unk_1E71020A8;
  v60 = viewControllerCopy;
  v147 = v60;
  v151 = animator != 0;
  v118 = v121;
  v148 = v118;
  selfCopy = self;
  v150 = buf;
  v117 = _Block_copy(aBlock);
  if ((*&self->super._viewControllerFlags & 3u) - 3 >= 0xFFFFFFFE && animator == 0)
  {
    v117[2]();
  }

  if (!v120 || ([(UITabBarController *)self _viewForViewController:v60], v61 = objc_claimAutoreleasedReturnValue(), v62 = v120 == v61, v61, !v62))
  {
    v63 = [(UITabBarController *)self _wrapperViewForViewController:v60];

    superview3 = v63;
  }

  v114 = self->_selectedViewController;
  if (!selectedCopy)
  {
    goto LABEL_67;
  }

  allViewControllers = [(UITabBarController *)self allViewControllers];
  if ([allViewControllers containsObject:v60])
  {
    presentingViewController2 = v60;
  }

  else
  {
    presentingViewController = [(UIViewController *)v60 presentingViewController];
    if ([allViewControllers containsObject:presentingViewController])
    {
      presentingViewController2 = [(UIViewController *)v60 presentingViewController];
    }

    else
    {
      presentingViewController2 = 0;
    }
  }

  if (dyld_program_sdk_at_least())
  {
    if (presentingViewController2)
    {
      goto LABEL_64;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v112 object:self file:@"UITabBarController.m" lineNumber:4787 description:@"Attempting to select a view controller that isn't a child! %@", 0];
  }

  else
  {
    if (presentingViewController2)
    {
      goto LABEL_64;
    }

    currentHandler = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498E38) + 8);
    if (os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = 0;
      _os_log_impl(&dword_188A29000, currentHandler, OS_LOG_TYPE_ERROR, "Attempting to select a view controller that isn't a child! %@", location, 0xCu);
    }
  }

LABEL_64:
  objc_storeStrong(&self->_selectedViewController, presentingViewController2);
  [(UITabBarController *)self _compatibility_updateViewController:self->_selectedViewController forTabBarObservedScrollView:0];
  WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);
  v69 = WeakRetained == 0;

  if (!v69 && (_UIViewControllerUseContentScrollViewAPI() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v105 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_fault_impl(&dword_188A29000, v105, OS_LOG_TYPE_FAULT, "Unexpected non-nil _observingScrollView only accessible on tvOS for this OS version", location, 2u);
      }
    }

    else
    {
      v105 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498E40) + 8);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_188A29000, v105, OS_LOG_TYPE_ERROR, "Unexpected non-nil _observingScrollView only accessible on tvOS for this OS version", location, 2u);
      }
    }
  }

  *&self->_tabBarControllerFlags |= 0x1000u;

LABEL_67:
  if (dyld_program_sdk_at_least() && *(*&buf[8] + 24) == 1 && self->_selectedViewController == v60)
  {
    objc_initWeak(location, self);
    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_305;
    v144[3] = &unk_1E71020D0;
    objc_copyWeak(&v145, location);
    [(UIViewController *)v60 _performAtViewIsAppearing:v144];
    objc_destroyWeak(&v145);
    objc_destroyWeak(location);
    v113 = 1;
  }

  else
  {
    v113 = 0;
  }

  visualStyle = self->_visualStyle;
  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 3221225472;
  v143[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_2;
  v143[3] = &unk_1E70F5AC0;
  v143[4] = self;
  if ([(_UITabBarControllerVisualStyle *)visualStyle transitionFromViewController:v118 toViewController:v60 animated:animator != 0 completion:v143])
  {
    v71 = 0;
  }

  else
  {
    if (animator)
    {
      v72 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
      [(_UIViewControllerTransitionContext *)v72 _setIsAnimated:1];
      [(_UIViewControllerOneToOneTransitionContext *)v72 _setFromViewController:v118];
      [(_UIViewControllerOneToOneTransitionContext *)v72 _setToViewController:v60];
      v73 = [(UITabBarController *)self _viewForViewController:v118];
      [(_UIViewControllerOneToOneTransitionContext *)v72 _setFromView:v73];

      v74 = [(UITabBarController *)self _viewForViewController:v60];
      [(_UIViewControllerOneToOneTransitionContext *)v72 _setToView:v74];

      [(_UIViewControllerTransitionContext *)v72 _setContainerView:superview3];
      view2 = [(UIViewController *)v60 view];
      [view2 frame];
      [(_UIViewControllerOneToOneTransitionContext *)v72 _setToEndFrame:?];

      view3 = [v118 view];
      [view3 frame];
      [(_UIViewControllerOneToOneTransitionContext *)v72 _setFromStartFrame:?];

      v77 = *MEMORY[0x1E695F058];
      v78 = *(MEMORY[0x1E695F058] + 8);
      v79 = *(MEMORY[0x1E695F058] + 16);
      v80 = *(MEMORY[0x1E695F058] + 24);
      [(_UIViewControllerOneToOneTransitionContext *)v72 _setToStartFrame:*MEMORY[0x1E695F058], v78, v79, v80];
      [(_UIViewControllerOneToOneTransitionContext *)v72 _setFromEndFrame:v77, v78, v79, v80];
      [(_UIViewControllerTransitionContext *)v72 _setAnimator:self->__animator];
      [(_UIViewControllerTransitionContext *)v72 _setInteractor:self->__interactor];
      [(UITabBarController *)self _suspendAllTabBarBackgroundUpdates];
      *&self->_tabBarControllerFlags &= ~0x40000u;
      v109 = (interactor != 0) | v108 | v107;
      if ((v109 & 1) == 0)
      {
        view4 = [(UIViewController *)self view];
        [view4 setUserInteractionEnabled:0];
      }

      v82 = MEMORY[0x1E696AEC0];
      selfCopy2 = self;
      v84 = MEMORY[0x1E696AEC0];
      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      selfCopy2 = [v84 stringWithFormat:@"<%@: %p>", v86, selfCopy2];

      v110 = [v82 stringWithFormat:@"UITabBarControllerTransition: %@", selfCopy2];

      view5 = [(UIViewController *)selfCopy2 view];
      window = [view5 window];
      v90 = [(UIWindow *)window _acquireOrientationLockAssertionWithReason:v110];

      if (interactor)
      {
        transitionCoordinator = [(UITabBarController *)selfCopy2 transitionCoordinator];
        v141[0] = MEMORY[0x1E69E9820];
        v141[1] = 3221225472;
        v141[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_3;
        v141[3] = &unk_1E70F4990;
        v141[4] = selfCopy2;
        v142 = tabBarItem2;
        [transitionCoordinator notifyWhenInteractionChangesUsingBlock:v141];
      }

      else
      {
        [(UITabBarController *)selfCopy2 _setSelectedTabBarItem:tabBarItem2];
      }

      v133[0] = MEMORY[0x1E69E9820];
      v133[1] = 3221225472;
      v133[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_4;
      v133[3] = &unk_1E71020F8;
      v133[4] = selfCopy2;
      v134 = v118;
      v139 = buf;
      v135 = v60;
      v136 = v114;
      v137 = v120;
      v93 = v90;
      v138 = v93;
      v140 = (v109 & 1) == 0;
      [(_UIViewControllerTransitionContext *)v72 _setCompletionHandler:v133];
      [(UIViewControllerAnimatedTransitioning *)self->__animator transitionDuration:v72];
      [(_UIViewControllerTransitionContext *)v72 _setDuration:?];
      v94 = UIApp;
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_315;
      v126[3] = &unk_1E7102120;
      v127 = v115;
      v128 = selfCopy2;
      v71 = v72;
      v129 = v71;
      v131 = buf;
      v130 = v117;
      v132 = interactor != 0;
      [v94 _performBlockAfterCATransactionCommits:v126];
    }

    else
    {
      _transitionView = [(UITabBarController *)self _transitionView];
      [_transitionView transition:transitionCopy toView:superview3];

      [(UITabBarController *)self set_shouldFocusViewControllerAfterTransition:0];
      v71 = 0;
    }

    if (!transitionCopy)
    {
      [superview3 frame];
      [superview3 setFrame:?];
    }
  }

  objc_opt_class();
  v95 = v118;
  if (objc_opt_isKindOfClass())
  {
    v96 = v95;
  }

  else
  {
    v96 = 0;
  }

  v97 = v96;

  objc_opt_class();
  v98 = v60;
  if (objc_opt_isKindOfClass())
  {
    v99 = v98;
  }

  else
  {
    v99 = 0;
  }

  v100 = v99;

  if (v97)
  {
    [(UIViewController *)v100 _updateBottomBarHiddenStateFromOtherNavigationController:v97];
    [v97 _resetBottomBarHiddenState];
    [(UITabBarController *)self _showBarWithTransition:0 isExplicit:0 reason:2];
  }

  if (v100)
  {
    [(UIViewController *)v100 _updateBottomBarHiddenState];
  }

  if (!animator && (*&self->super._viewControllerFlags & 3u) - 1 <= 1)
  {
    if (v121 && ([v95 appearanceTransitionsAreDisabled] & 1) == 0)
    {
      objc_initWeak(location, v95);
      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v124[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_5;
      v124[3] = &unk_1E70F5A28;
      objc_copyWeak(&v125, location);
      [v95 setAfterAppearanceBlock:v124];
      if (+[UIViewController _shouldDeferTransitions])
      {
        [UIApp _addAfterCACommitBlockForViewController:v95];
      }

      else
      {
        [v95 _executeAfterAppearanceBlock];
      }

      objc_destroyWeak(&v125);
      objc_destroyWeak(location);
    }

    if (v98 && [(UIViewController *)self _hasAppeared]&& ![(UIViewController *)v98 appearanceTransitionsAreDisabled])
    {
      objc_initWeak(location, v98);
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_6;
      v122[3] = &unk_1E70F5A28;
      objc_copyWeak(&v123, location);
      [(UIViewController *)v98 setAfterAppearanceBlock:v122];
      if (+[UIViewController _shouldDeferTransitions])
      {
        [UIApp _addAfterCACommitBlockForViewController:v98];
      }

      else
      {
        [(UIViewController *)v98 _executeAfterAppearanceBlock];
      }

      objc_destroyWeak(&v123);
      objc_destroyWeak(location);
    }
  }

  if ((v113 & 1) == 0)
  {
    [(UIViewController *)self _invalidatePreferences:0 excluding:?];
  }

  if (!animator)
  {
    v101 = __UILogGetCategoryCachedImpl("UITabBarController", &qword_1ED498E48);
    v102 = *(v101 + 8);
    v103 = os_signpost_id_make_with_pointer(*(v101 + 8), self);
    if (v103 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v104 = v103;
      if (os_signpost_enabled(v102))
      {
        LOWORD(location[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v102, OS_SIGNPOST_INTERVAL_END, v104, "SwitchTabs", "", location, 2u);
      }
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_117:
}

void __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginAppearanceTransition:1 animated:*(a1 + 64)];
  [*(a1 + 40) beginAppearanceTransition:0 animated:*(a1 + 64)];
  objc_storeStrong((*(a1 + 48) + 1048), *(a1 + 32));
  *(*(*(a1 + 56) + 8) + 24) = 1;
}

void __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_305(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(UIViewController *)WeakRetained _invalidatePreferences:0 excluding:?];
    WeakRetained = v2;
  }
}

uint64_t __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _setSelectedTabBarItem:v5];
  }

  return result;
}

void __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  [*(a1 + 32) set_shouldFocusViewControllerAfterTransition:0];
  v6 = v5;
  if (a3)
  {
    v7 = [*(a1 + 32) _viewForViewController:*(a1 + 40)];
    [v7 removeFromSuperview];

    v8 = [*(a1 + 40) view];
    [v8 removeFromSuperview];

    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      [*(a1 + 48) endAppearanceTransition];
      [*(a1 + 40) endAppearanceTransition];
    }

    if (([*(a1 + 48) _containsFirstResponder] & 1) == 0)
    {
      [*(a1 + 48) _viewControllerWasSelected];
    }
  }

  else
  {
    if (*(*(*(a1 + 80) + 8) + 24) == 1)
    {
      [*(a1 + 48) cancelBeginAppearanceTransition];
      [*(a1 + 40) cancelBeginAppearanceTransition];
      objc_storeStrong((*(a1 + 32) + 1048), *(a1 + 40));
    }

    v9 = [*(a1 + 32) _viewForViewController:*(a1 + 48)];
    [v9 removeFromSuperview];

    v10 = [*(a1 + 48) view];
    [v10 removeFromSuperview];

    objc_storeStrong((*(a1 + 32) + 1024), *(a1 + 56));
    [*(a1 + 32) _compatibility_updateViewController:*(*(a1 + 32) + 1024) forTabBarObservedScrollView:0];
  }

  if ([*(a1 + 48) modalPresentationStyle] == 6)
  {
    v11 = *(a1 + 64);
    v12 = [*(a1 + 64) superview];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = [*(a1 + 64) subviews];
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v12 insertSubview:*(*(&v25 + 1) + 8 * v17++) belowSubview:v11];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v15);
    }

    [*(a1 + 64) removeFromSuperview];
  }

  v18 = [v6 _postInteractiveCompletionHandler];

  if (v18)
  {
    v19 = [v6 _postInteractiveCompletionHandler];
    v19[2]();

    [v6 _setPostInteractiveCompletionHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 1256) animationEnded:a3];
  }

  [v6 _setTransitionIsInFlight:0];
  [v6 _setInteractor:0];
  [v6 _setAnimator:0];
  [*(a1 + 32) _setAnimator:0];
  [*(a1 + 32) _setInteractor:0];
  [*(a1 + 72) _invalidate];
  if (*(a1 + 88) == 1)
  {
    v20 = [*(a1 + 32) view];
    [v20 setUserInteractionEnabled:1];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UITabBarController", _UIInternalPreference_IgnoreFloatingTabBarLinkCheck_block_invoke___s_category);
  v22 = *(CategoryCachedImpl + 8);
  v23 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), *(a1 + 32));
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v24 = v23;
    if (os_signpost_enabled(v22))
    {
      *buf = 67109120;
      v30 = a3;
      _os_signpost_emit_with_name_impl(&dword_188A29000, v22, OS_SIGNPOST_INTERVAL_END, v24, "SwitchTabs", "didComplete=%{attribute}d done with transition", buf, 8u);
    }
  }
}

void __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_315(uint64_t a1)
{
  if (*(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(*(a1 + 40) + 1256) willBeginAfterPreemptionWithContext:*(a1 + 48) data:*(a1 + 32)];
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
  }

  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_2_318;
  v10 = &unk_1E70F35B8;
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v11 = v2;
  v12 = v3;
  [UIView _setAlongsideAnimations:&v7];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (*(a1 + 72) == 1)
  {
    [*(v5 + 1264) startInteractiveTransition:{v4, v7, v8, v9, v10}];
  }

  else
  {
    [*(v5 + 1256) animateTransition:{v4, v7, v8, v9, v10}];
  }

  v6 = +[UIView _alongsideAnimations];

  if (v6)
  {
    [*(a1 + 48) __runAlongsideAnimations];
    [*(a1 + 40) _forceUpdateScrollViewIfNecessary];
    [*(a1 + 40) _resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary:1 animated:0];
    [UIView _setAlongsideAnimations:0];
  }

  [*(a1 + 48) _setTransitionIsInFlight:1];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 48) _setInterruptible:1];
  }
}

uint64_t __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_2_318(uint64_t a1)
{
  [*(a1 + 32) __runAlongsideAnimations];
  [*(a1 + 40) _forceUpdateScrollViewIfNecessary];
  v2 = [*(a1 + 40) _observingScrollView];

  if (v2)
  {
    [*(a1 + 32) _duration];
    v4 = *(a1 + 40);

    return [v4 _resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary:1 animated:v3 > 0.0];
  }

  else
  {
    +[UIView _currentAnimationDuration];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_3_319;
    v7[3] = &unk_1E70F32F0;
    v7[4] = *(a1 + 40);
    v7[5] = v6;
    return [UIApp _performBlockAfterCATransactionCommits:v7];
  }
}

uint64_t __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_3_319(uint64_t a1)
{
  [*(a1 + 32) _forceUpdateScrollViewIfNecessary];
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_4_320;
  v4[3] = &unk_1E70F3590;
  v4[4] = *(a1 + 32);
  return [UIView animateWithDuration:v4 animations:v2];
}

void __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endAppearanceTransition];
}

void __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained endAppearanceTransition];
  if (([WeakRetained _containsFirstResponder] & 1) == 0)
  {
    [WeakRetained _viewControllerWasSelected];
  }
}

- (void)transitionViewDidStart:(id)start
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (_selectedViewControllerInTabBar)
  {
    v5 = _selectedViewControllerInTabBar;
    [_selectedViewControllerInTabBar _prepareForContainerTransition:self];
    _selectedViewControllerInTabBar = v5;
  }
}

- (void)transitionViewDidComplete:(id)complete fromView:(id)view toView:(id)toView
{
  viewCopy = view;
  toViewCopy = toView;
  if (self->_viewControllerTransitionView == complete)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      view = [(UIViewController *)self view];
      v10 = [viewCopy isDescendantOfView:view];

      if (viewCopy != toViewCopy && (v10 & 1) == 0)
      {
        [(UIViewControllerWrapperView *)viewCopy unwrapView];
      }
    }

    if ((*(&self->_tabBarControllerFlags + 1) & 0x10) != 0)
    {
      view2 = [(UIViewController *)self view];
      [view2 setNeedsLayout];
    }
  }
}

- (void)setTransientViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (controllerCopy && (*&self->_tabBarControllerFlags & 0x8000) != 0)
  {
    v17 = controllerCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:5115 description:@"transientViewController isn't support with UITab."];

    controllerCopy = v17;
  }

  if (self->_transientViewController != controllerCopy)
  {
    v16 = controllerCopy;
    v9 = _UISetCurrentFallbackEnvironment(self);
    if (animatedCopy)
    {
      v10 = 6;
    }

    else
    {
      v10 = 0;
    }

    transientViewController = self->_transientViewController;
    if (v16)
    {
      if (transientViewController)
      {
        [(UIViewController *)transientViewController willMoveToParentViewController:0];
        [(UIViewController *)self->_transientViewController removeFromParentViewController];
      }

      objc_storeStrong(&self->_transientViewController, controller);
      [(UIViewController *)self addChildViewController:self->_transientViewController];
      [(UIViewController *)self->_transientViewController setNeedsDidMoveCleanup:1];
      [(UITabBarController *)self concealTabBarSelection];
      [(UITabBarController *)self transitionFromViewController:self->_selectedViewController toViewController:self->_transientViewController transition:v10 shouldSetSelected:0];
      v12 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:v16];
      v13 = [v12 _contentOrObservableScrollViewForEdge:{-[UITabBarController _relevantEdgeForScrollViewObservation](self, "_relevantEdgeForScrollViewObservation")}];
      [(UITabBarController *)self _updateAndObserveScrollView:v13 viewController:v12];
    }

    else
    {
      self->_transientViewController = 0;
      v13 = transientViewController;

      v12 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:v13];
      v14 = [v12 _contentOrObservableScrollViewForEdge:4];
      [(UITabBarController *)self _stopObservingScrollView:v14];

      [(UITabBarController *)self revealTabBarSelection];
      [(UIViewController *)v13 willMoveToParentViewController:0];
      [(UITabBarController *)self transitionFromViewController:v13 toViewController:self->_selectedViewController transition:v10 shouldSetSelected:0];
      [(UIViewController *)v13 removeFromParentViewController];
    }

    _UIRestorePreviousFallbackEnvironment(v9);
    controllerCopy = v16;
  }
}

- (void)revealTabBarSelection
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (_selectedViewControllerInTabBar)
  {
    v5 = _selectedViewControllerInTabBar;
    tabBarItem = [_selectedViewControllerInTabBar tabBarItem];
    [(UITabBarController *)self _setSelectedTabBarItem:tabBarItem];

    _selectedViewControllerInTabBar = v5;
  }
}

- (void)setShowsEditButtonOnLeft:(BOOL)left
{
  if (left)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFFEF | v3);
}

- (void)_setMaximumNumberOfItems:(unint64_t)items
{
  if (items <= 1)
  {
    itemsCopy = 1;
  }

  else
  {
    itemsCopy = items;
  }

  if (self->_customMaxItems != itemsCopy)
  {
    self->_customMaxItems = itemsCopy;
    *&self->_tabBarControllerFlags |= 2u;
    [(UIView *)self->_containerView setNeedsLayout];
  }
}

- (void)_childViewController:(id)controller updatedObservedScrollView:(id)view
{
  if (self->_selectedViewController == controller)
  {
    [UITabBarController _compatibility_updateViewController:"_compatibility_updateViewController:forTabBarObservedScrollView:" forTabBarObservedScrollView:?];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v6.receiver = self;
  v6.super_class = UITabBarController;
  [(UIViewController *)&v6 setEditing:editing animated:animated];
  [(_UITabModel *)self->_tabModel setEditing:editingCopy];
}

- (void)_notifyEditingStateChange:(id *)change
{
  if (change)
  {
    if (a2)
    {
      WeakRetained = objc_loadWeakRetained(change + 152);
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        sidebar = objc_loadWeakRetained(change + 152);
        [sidebar tabBarControllerWillBeginEditing:change];
      }

      else
      {
        sidebar = [change sidebar];
        [(UITabBarControllerSidebar *)sidebar _editingStateDidChange:?];
      }

      [change setEditing:1];
      v8 = change[138];

      [v8 editingStateDidChange];
    }

    else
    {
      [change setEditing:0];
      [change[138] editingStateDidChange];
      v6 = objc_loadWeakRetained(change + 152);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        sidebar2 = objc_loadWeakRetained(change + 152);
        [sidebar2 tabBarControllerDidEndEditing:change];
      }

      else
      {
        sidebar2 = [change sidebar];
        [(UITabBarControllerSidebar *)sidebar2 _editingStateDidChange:?];
      }
    }
  }
}

- (void)_notifyVisibilityChangesForTabs:(id *)tabs
{
  v7 = a2;
  if (tabs)
  {
    WeakRetained = objc_loadWeakRetained(tabs + 152);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      allObjects = [v7 allObjects];
      v6 = objc_loadWeakRetained(tabs + 152);
      [v6 tabBarController:tabs visibilityDidChangeForTabs:allObjects];
    }

    else
    {
      allObjects = [tabs sidebar];
      [(UITabBarControllerSidebar *)allObjects _visibilityDidChangeForTabs:v7];
    }
  }
}

- (void)_notifyDisplayOrderChangesForGroup:(uint64_t)group
{
  v6 = a2;
  if (group)
  {
    WeakRetained = objc_loadWeakRetained((group + 1216));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((group + 1216));
      [v5 tabBarController:group displayOrderDidChangeForGroup:v6];
    }
  }
}

- (BOOL)_allowsAutorotation
{
  v9.receiver = self;
  v9.super_class = UITabBarController;
  _allowsAutorotation = [(UIViewController *)&v9 _allowsAutorotation];
  tabBar = [(UITabBarController *)self tabBar];
  v5 = _allowsAutorotation & ([tabBar isCustomizing] ^ 1);

  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v7 = _selectedViewControllerInTabBar;
  if (_selectedViewControllerInTabBar)
  {
    v5 &= [_selectedViewControllerInTabBar _allowsAutorotation];
  }

  return v5;
}

- (BOOL)_doAllViewControllersSupportInterfaceOrientation:(int64_t)orientation
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  viewControllers = [(UITabBarController *)self viewControllers];
  v5 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(viewControllers);
        }

        if (![*(*(&v11 + 1) + 8 * i) _isSupportedInterfaceOrientation:orientation])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [viewControllers countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (BOOL)_hasPreferredInterfaceOrientationForPresentation
{
  v5.receiver = self;
  v5.super_class = UITabBarController;
  if ([(UIViewController *)&v5 _hasPreferredInterfaceOrientationForPresentation])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = dyld_program_sdk_at_least();
    if (v3)
    {
      LOBYTE(v3) = *(&self->_tabBarControllerFlags + 1) & 1;
    }
  }

  return v3;
}

- (int64_t)preferredInterfaceOrientationForPresentation
{
  if (*(&self->_tabBarControllerFlags + 1))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained tabBarControllerPreferredInterfaceOrientationForPresentation:self];

    return v5;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITabBarController;
    return [(UIViewController *)&v6 preferredInterfaceOrientationForPresentation];
  }
}

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation
{
  if ([objc_opt_class() _doesOverrideLegacyShouldAutorotateMethod])
  {

    return [(UITabBarController *)self shouldAutorotateToInterfaceOrientation:orientation];
  }

  else
  {

    return [(UITabBarController *)self _doAllViewControllersSupportInterfaceOrientation:orientation];
  }
}

- (id)rotatingHeaderView
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  rotatingHeaderView = [_selectedViewControllerInTabBar rotatingHeaderView];

  return rotatingHeaderView;
}

- (id)rotatingFooterView
{
  if ([(UITabBarController *)self _wantsBarHidden])
  {
    _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
    rotatingFooterView = [_selectedViewControllerInTabBar rotatingFooterView];
  }

  else
  {
    rotatingFooterView = [(UITabBarController *)self tabBar];
  }

  return rotatingFooterView;
}

- (BOOL)_shouldUseOnePartRotation
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  _shouldUseOnePartRotation = [_selectedViewControllerInTabBar _shouldUseOnePartRotation];

  return _shouldUseOnePartRotation;
}

- (void)_getRotationContentSettings:(id *)settings
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [_selectedViewControllerInTabBar _getRotationContentSettings:settings];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  [(UITabBarController *)self _invalidateBarLayoutIfNecessary];
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [_selectedViewControllerInTabBar willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = UITabBarController;
  [(UIViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(UITabBarController *)self _invalidateBarLayoutIfNecessary];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [_selectedViewControllerInTabBar willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (CGSize)sizeForChildContentContainer:(id)container withParentContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = containerCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9 && ([v9 _existingView], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, -[UITabBarController _selectedViewControllerInTabBar](self, "_selectedViewControllerInTabBar"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v10 == v13))
  {
    view = [(UIViewController *)self view];
    [view frame];
    v22 = v21;
    v24 = v23;

    view2 = [v10 view];
    [view2 frame];
    v27 = v26;
    v29 = v28;

    v15 = width - v22 + v27;
    v17 = height - v24 + v29;
  }

  else
  {
    v30.receiver = self;
    v30.super_class = UITabBarController;
    [(UIViewController *)&v30 sizeForChildContentContainer:containerCopy withParentContainerSize:width, height];
    v15 = v14;
    v17 = v16;
  }

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [_selectedViewControllerInTabBar willAnimateFirstHalfOfRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)orientation
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [_selectedViewControllerInTabBar didAnimateFirstHalfOfRotationToInterfaceOrientation:orientation];
}

- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [_selectedViewControllerInTabBar willAnimateSecondHalfOfRotationFromInterfaceOrientation:orientation duration:duration];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [_selectedViewControllerInTabBar didRotateFromInterfaceOrientation:orientation];
}

- (id)rotatingSnapshotViewForWindow:(id)window
{
  _selectedViewControllerInTabBar = [(UITabBarController *)self _selectedViewControllerInTabBar];
  view = [_selectedViewControllerInTabBar view];

  return view;
}

- (id)_tabBarWindowForInterfaceOrientation:(id)orientation
{
  if (self->_tabBar == orientation)
  {
    [(UIViewController *)self _window];
  }

  else
  {
    [orientation window];
  }
  v3 = ;

  return v3;
}

- (void)_setBadgeValue:(id)value forTabBarItem:(id)item
{
  if (item)
  {
    [item setBadgeValue:value];
    _existingMoreNavigationController = [(UITabBarController *)self _existingMoreNavigationController];
    [_existingMoreNavigationController _redisplayMoreTableView];
  }
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  _ignoreUnselectedTabsForStateRestoration = [(UITabBarController *)self _ignoreUnselectedTabsForStateRestoration];
  tabBar = [(UITabBarController *)self tabBar];
  isCustomizing = [tabBar isCustomizing];

  if (isCustomizing)
  {
    [coderCopy encodeBool:1 forKey:@"kTabBarIsCustomizingKey"];
    [UIApp ignoreSnapshotOnNextApplicationLaunch];
  }

  if (!_ignoreUnselectedTabsForStateRestoration)
  {
    allViewControllers = [(UITabBarController *)self allViewControllers];
    _UISaveReferencedChildViewControllers(allViewControllers, 0);
  }

  selectedViewController = [(UITabBarController *)self selectedViewController];
  _restorationIdentifierPath = [selectedViewController _restorationIdentifierPath];
  v11 = _UIStateRestorationDebugLogEnabled();
  if (_restorationIdentifierPath)
  {
    if (v11)
    {
      NSLog(&cfstr_SSelectedViewC.isa, "[UITabBarController(StateRestoration) encodeRestorableStateWithCoder:]", _restorationIdentifierPath, selectedViewController);
    }

    [coderCopy encodeObject:selectedViewController forKey:@"kTabBarSelectedViewControllerKey"];
    if (_ignoreUnselectedTabsForStateRestoration)
    {
      goto LABEL_20;
    }

LABEL_13:
    if (selectedViewController && self->_moreNavigationController && ([(NSMutableArray *)self->_moreChildViewControllers containsObject:selectedViewController]& 1) == 0)
    {
      displayedViewController = [(UIMoreNavigationController *)self->_moreNavigationController displayedViewController];
      v13 = displayedViewController;
      if (displayedViewController != self->_moreNavigationController)
      {
        restorationIdentifier = [(UIResponder *)displayedViewController restorationIdentifier];

        if (restorationIdentifier)
        {
          [coderCopy encodeObject:v13 forKey:@"kTabBarMoreDisplayedViewControllerKey"];
        }
      }
    }

    goto LABEL_20;
  }

  if (v11)
  {
    NSLog(&cfstr_SSelectedViewC_0.isa, "[UITabBarController(StateRestoration) encodeRestorableStateWithCoder:]", selectedViewController);
  }

  [UIApp ignoreSnapshotOnNextApplicationLaunch];
  if (!_ignoreUnselectedTabsForStateRestoration)
  {
    goto LABEL_13;
  }

LABEL_20:
  v15.receiver = self;
  v15.super_class = UITabBarController;
  [(UIViewController *)&v15 encodeRestorableStateWithCoder:coderCopy];
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTabBarSelectedViewControllerKey"];
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_STabBarControl.isa, "[UITabBarController(StateRestoration) decodeRestorableStateWithCoder:]", v5);
  }

  if (v5)
  {
    allViewControllers = [(UITabBarController *)self allViewControllers];
    v7 = [allViewControllers containsObject:v5];

    if (v7)
    {
      [(UITabBarController *)self setSelectedViewController:v5];
    }

    else if (_UIStateRestorationDebugLogEnabled())
    {
      NSLog(&cfstr_STabbarcontrol.isa, "[UITabBarController(StateRestoration) decodeRestorableStateWithCoder:]", v5);
    }
  }

  if (self->_moreNavigationController)
  {
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kTabBarMoreDisplayedViewControllerKey"];
    if (v8)
    {
      selectedViewController = [(UITabBarController *)self selectedViewController];
      v10 = selectedViewController;
      if (v8 == selectedViewController)
      {
      }

      else
      {
        v11 = [(NSMutableArray *)self->_moreChildViewControllers containsObject:v8];

        if (v11)
        {
          [(UIMoreNavigationController *)self->_moreNavigationController setDisplayedViewController:v8];
        }
      }
    }
  }

  v12.receiver = self;
  v12.super_class = UITabBarController;
  [(UIResponder *)&v12 decodeRestorableStateWithCoder:coderCopy];
}

- (UIAction)_overrideTidebarButtonAction
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    overrideTidebarButtonAction = [(_UITabBarControllerVisualStyle *)self->_visualStyle overrideTidebarButtonAction];
  }

  else
  {
    overrideTidebarButtonAction = 0;
  }

  return overrideTidebarButtonAction;
}

- (void)_setOverrideTidebarButtonAction:(id)action
{
  actionCopy = action;
  currentHandler = _UIMainBundleIdentifier();
  if (([currentHandler isEqualToString:@"com.apple.DocumentsApp"] & 1) == 0)
  {
    v6 = _UIMainBundleIdentifier();
    v7 = [v6 isEqualToString:@"com.apple.DocumentManagerUICore.Service"];

    if (v7)
    {
      goto LABEL_5;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:5599 description:@"This may only be used by Files."];
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UITabBarControllerVisualStyle *)self->_visualStyle setOverrideTidebarButtonAction:actionCopy];
  }
}

- (id)_tabCustomizationProxy
{
  _visualStyle = [(UITabBarController *)&self->super.super.super.isa _visualStyle];
  _tabCustomizationProxy = [_visualStyle _tabCustomizationProxy];

  return _tabCustomizationProxy;
}

@end