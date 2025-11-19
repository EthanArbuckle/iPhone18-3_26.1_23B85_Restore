@interface UITabBarController
+ (BOOL)_uip_isFloatingTabBarEnabled;
+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation;
- (BOOL)_allowsAutorotation;
- (BOOL)_allowsCustomizing;
- (BOOL)_canRestoreFocusAfterTransitionToRecalledItem:(id)a3 inViewController:(id)a4;
- (BOOL)_doAllViewControllersSupportInterfaceOrientation:(int64_t)a3;
- (BOOL)_hasPreferredInterfaceOrientationForPresentation;
- (BOOL)_isBarEffectivelyHidden;
- (BOOL)_isFocusedTabVisible;
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3;
- (BOOL)_isTabBarFocused;
- (BOOL)_isViewControllerContainedInSelected:(id)a3 ignoresPresentations:(BOOL)a4;
- (BOOL)_shouldUseOnePartRotation;
- (BOOL)_tvTabBarShouldTrackScrollView:(id)a3;
- (BOOL)_uip_isSidebarVisible;
- (BOOL)_wrapsNavigationController:(id *)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (CGRect)_frameForViewController:(id)a3;
- (CGRect)_frameForWrapperViewForViewController:(id)a3;
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (NSArray)customizableViewControllers;
- (NSArray)tabs;
- (NSArray)viewControllers;
- (NSMapTable)_rememberedFocusedItemsByViewController;
- (NSString)customizationIdentifier;
- (NSUInteger)selectedIndex;
- (UIAction)_overrideTidebarButtonAction;
- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4;
- (UILayoutGuide)contentLayoutGuide;
- (UINavigationController)moreNavigationController;
- (UITab)selectedTab;
- (UITabBarController)initWithCoder:(id)a3;
- (UITabBarController)initWithNibName:(id)a3 bundle:(id)a4;
- (UITabBarController)initWithTabs:(id)a3;
- (UITabBarControllerSidebar)sidebar;
- (UIViewController)selectedViewController;
- (double)_leftContentMargin;
- (double)_rightContentMargin;
- (double)_sidebarOverlapAmountForZoom;
- (id)_additionalViewControllersToCheckForUserActivity;
- (id)_customAnimatorForFromViewController:(id)a3 toViewController:(id)a4;
- (id)_customInteractionControllerForAnimator:(id)a3;
- (id)_deepestActionResponder;
- (id)_displayedViewControllersForTab:(void *)a3 proposedViewControllers:;
- (id)_effectiveInteractionActivityTrackingBaseName;
- (id)_existingMoreNavigationController;
- (id)_internalTabBar;
- (id)_navigationControllerForCustomizingToolbarWithSender:(id)a3;
- (id)_observingScrollView;
- (id)_overrideTraitCollectionToPassDuringTraitChangeToChildViewController:(id)a3;
- (id)_overridingPreferredFocusEnvironment;
- (id)_recallRememberedFocusedItemForViewController:(id)a3;
- (id)_resolvedPopoverPresentationControllerSourceItemForTab:(id *)a1;
- (id)_responderSelectionContainerViewForResponder:(id)a3;
- (id)_selectedViewControllerInTabBar;
- (id)_tabBarWindowForInterfaceOrientation:(id)a3;
- (id)_tabCustomizationProxy;
- (id)_tabs_compactTabs;
- (id)_viewControllerForObservableScrollView;
- (id)_viewControllerForSelectAtIndex:(unint64_t)a3;
- (id)_viewControllerForTabBarItem:(id)a3;
- (id)_viewControllersForTabs;
- (id)_viewForViewController:(id)a3;
- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)a3;
- (id)_visualStyle;
- (id)_wrapperViewForViewController:(id)a3;
- (id)allViewControllers;
- (id)delegate;
- (id)preferredFocusEnvironments;
- (id)preferredFocusedView;
- (id)rotatingFooterView;
- (id)rotatingHeaderView;
- (id)rotatingSnapshotViewForWindow:(id)a3;
- (id)tabForIdentifier:(id)a3;
- (id)transitionCoordinator;
- (int64_t)_effectiveTabBarPosition;
- (int64_t)_subclassPreferredFocusedViewPrioritizationType;
- (int64_t)_uip_preferredSidebarMode;
- (int64_t)preferredInterfaceOrientationForPresentation;
- (uint64_t)_shouldSelectTab:(uint64_t)a1;
- (unint64_t)_effectiveMaxItems;
- (unint64_t)_relevantEdgeForScrollViewObservation;
- (unint64_t)supportedInterfaceOrientations;
- (void)__viewWillLayoutSubviews;
- (void)_childViewController:(id)a3 updatedObservedScrollView:(id)a4;
- (void)_compatibility_updateViewController:(id)a3 forTabBarObservedScrollView:(id)a4;
- (void)_configureTabModel;
- (void)_configureTargetActionForTabBarItem:(id)a3;
- (void)_didChangeChildModalViewControllers;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_displayedViewControllerDidChangeForTab:(void *)a3 previousViewController:;
- (void)_forceUpdateScrollViewIfNecessary;
- (void)_forgetFocusedItemForViewController:(id)a3;
- (void)_getRotationContentSettings:(id *)a3;
- (void)_handleObservingForScrollView:(id)a3 sharedWithNavigationController:(id)a4;
- (void)_hideBarWithTransition:(int)a3 isExplicit:(BOOL)a4 duration:(double)a5 reason:(unint64_t)a6;
- (void)_invalidateBarLayoutIfNecessary;
- (void)_layoutContainerView;
- (void)_layoutViewController:(id)a3;
- (void)_navigationController:(id)a3 didUpdateAndObserveScrollView:(id)a4 forEdges:(unint64_t)a5;
- (void)_navigationControllerDidUpdateSearchController:(id)a3;
- (void)_navigationControllerDidUpdateStack:(id)a3;
- (void)_notifyDisplayOrderChangesForGroup:(uint64_t)a1;
- (void)_notifyEditingStateChange:(id *)a1;
- (void)_notifyVisibilityChangesForTabs:(id *)a1;
- (void)_observableScrollViewDidChangeFrom:(id)a3 forViewController:(id)a4 edges:(unint64_t)a5;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_performFocusGesture:(unint64_t)a3;
- (void)_performWithIgnoringSelectionUpdate:(BOOL)a3 block:(id)a4;
- (void)_populateArchivedChildViewControllers:(id)a3;
- (void)_prepareTabBar;
- (void)_rebuildTabBarItemsAnimated:(BOOL)a3;
- (void)_rebuildTabBarItemsIfNeeded;
- (void)_rebuildTabModelAnimated:(BOOL)a3;
- (void)_rememberFocusedItem:(id)a3 forViewController:(id)a4;
- (void)_rememberPresentingFocusedItem:(id)a3;
- (void)_resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary:(BOOL)a3 animated:(BOOL)a4;
- (void)_safeAreaInsetsDidChangeForView;
- (void)_scrollPocketCollectorInteraction;
- (void)_selectDefaultViewControllerIfNecessaryWithAppearanceTransitions:(BOOL)a3;
- (void)_selectTabElementIfPossible:(id)a3;
- (void)_selectedElementDidChange:(void *)a3 previousElement:;
- (void)_selectedLeafDidChange:(void *)a3 previousLeaf:;
- (void)_setAccessoryView:(id)a3;
- (void)_setBadgeValue:(id)a3 forTabBarItem:(id)a4;
- (void)_setMaximumNumberOfItems:(unint64_t)a3;
- (void)_setMoreNavigationControllerRestorationIdentifier;
- (void)_setNotifySplitViewControllerForSelectionChange:(BOOL)a3;
- (void)_setOverrideTidebarButtonAction:(id)a3;
- (void)_setPreferTabBarFocused:(BOOL)a3;
- (void)_setSelectedTabBarItem:(id)a3;
- (void)_setSelectedViewController:(id)a3 performUpdates:(BOOL)a4;
- (void)_setSelectedViewControllerAndNotify:(id)a3;
- (void)_setShouldCollapseTabBarOnScroll:(BOOL)a3;
- (void)_setSuspendBarBackgroundUpdating:(BOOL)a3;
- (void)_setTabBarOffscreen:(BOOL)a3;
- (void)_setTabBarPosition:(int64_t)a3;
- (void)_setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)_showBarWithTransition:(int)a3 isExplicit:(BOOL)a4 duration:(double)a5 reason:(unint64_t)a6;
- (void)_stopObservingScrollView:(id)a3;
- (void)_suspendAllTabBarBackgroundUpdates;
- (void)_tab:(void *)a3 acceptItemsFromDropSession:;
- (void)_tab:(void *)a3 operationForAcceptingItemsFromDropSession:;
- (void)_tabBarDidChangeSelectionToItem:(id)a3;
- (void)_tabBarVisibilityDidChange;
- (void)_tabDropSessionDidUpdate:(void *)a3 withDestinationTab:;
- (void)_tabs_rebuildMoreChildViewControllersIfNeeded;
- (void)_tabs_rebuildTabBarItemsAnimated:(BOOL)a3;
- (void)_uip_setPreferredSidebarMode:(int64_t)a3;
- (void)_uip_setSidebarVisible:(BOOL)a3;
- (void)_updateAndObserveScrollView:(id)a3 viewController:(id)a4 updateBackgroundTransitionProgressForNilScrollView:(BOOL)a5;
- (void)_updateBackgroundTransitionProgressForScrollView:(id)a3 tabBar:(id)a4 isNavigationTransitionUpdate:(BOOL)a5 forceTwoPartCrossfade:(BOOL)a6 completion:(id)a7;
- (void)_updateBarHiddenByClientStateIfNecessary;
- (void)_updateContentLayoutGuideConstraints;
- (void)_updateLayoutForStatusBarAndInterfaceOrientation;
- (void)_updateLayoutForTraitCollection:(id)a3;
- (void)_updateObservingScrollViewWithScrollView:(id)a3 viewController:(id)a4 getTabBarRequiresStandardBackground:(BOOL *)a5;
- (void)_updateVisualStyleForTraitCollection:(id)a3;
- (void)_validateTabSelectionIfNeeded;
- (void)_viewControllerDidBeginDismissal:(id)a3;
- (void)_viewControllerObservableScrollViewAmbiguityStatusDidChange:(id)a3;
- (void)_viewDidPerformLayout;
- (void)_viewSubtreeDidGainScrollView:(id)a3 enclosingViewController:(id)a4 tvSearchController:(id)a5;
- (void)_willChangeToIdiom:(int64_t)a3 onScreen:(id)a4;
- (void)animationDidStop:(id)a3 finished:(id)a4 context:(id)a5;
- (void)applicationWillSuspend;
- (void)beginCustomizingTabBar:(id)a3;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)a3;
- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)encodeRestorableStateWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)revealTabBarSelection;
- (void)runToolbarCustomizationPalette:(id)a3;
- (void)setBottomAccessory:(id)a3 animated:(BOOL)a4;
- (void)setCompactTabIdentifiers:(id)a3;
- (void)setCustomizableViewControllers:(NSArray *)customizableViewControllers;
- (void)setCustomizationIdentifier:(id)a3;
- (void)setDelegate:(id)delegate;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setMode:(int64_t)a3;
- (void)setRestorationIdentifier:(id)a3;
- (void)setSelectedIndex:(NSUInteger)selectedIndex;
- (void)setSelectedTab:(id)a3;
- (void)setSelectedViewController:(UIViewController *)selectedViewController;
- (void)setShowsEditButtonOnLeft:(BOOL)a3;
- (void)setTabBar:(id)a3;
- (void)setTabBarMinimizeBehavior:(int64_t)a3;
- (void)setTabs:(id)a3 animated:(BOOL)a4;
- (void)setTitle:(id)a3;
- (void)setTransientViewController:(id)a3 animated:(BOOL)a4;
- (void)setView:(id)a3;
- (void)setViewControllers:(NSArray *)viewControllers animated:(BOOL)animated;
- (void)tabBar:(id)a3 didEndCustomizingItems:(id)a4 changed:(BOOL)a5;
- (void)tabBar:(id)a3 willBeginCustomizingItems:(id)a4;
- (void)tabBar:(id)a3 willEndCustomizingItems:(id)a4 changed:(BOOL)a5;
- (void)tabBarSizingDidChange:(id)a3;
- (void)toggleSidebar:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionFromViewController:(id)a3 toViewController:(id)a4 transition:(int)a5 shouldSetSelected:(BOOL)a6;
- (void)transitionViewDidComplete:(id)a3 fromView:(id)a4 toView:(id)a5;
- (void)transitionViewDidStart:(id)a3;
- (void)unwindForSegue:(id)a3 towardsViewController:(id)a4;
- (void)updateTabBarItemForViewController:(id)a3;
- (void)updateViewConstraints;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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
    v3 = [(UITabBarController *)self _effectiveTabBarPosition];
    if (v3 - 3 < 2)
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
    if (v3 > 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = qword_18A679240[v3];
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
    v7 = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
    v8 = v7;
    if (!v7)
    {
      v8 = self->_tabBar;
    }

    v9 = v8;

    v10 = [(UIView *)v9 superview];
    containerView = self->_containerView;

    if (v10 != containerView)
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

  v4 = [(UITabBarController *)self selectedViewController];
  v5 = [(UITabBarController *)self _existingMoreNavigationController];
  if (v4 == v5)
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = [(UITabBarController *)self _viewControllersInTabBar];
    v2 = [v6 indexOfObjectIdenticalTo:v4];
  }

  v7 = [(UITabBarController *)self _existingMoreNavigationController];

  if (v4 != v7 && v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSMutableArray *)self->_moreChildViewControllers indexOfObjectIdenticalTo:v4];
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
      v15 = [(UIViewController *)self traitCollection];
      [(UITabBarController *)self _updateVisualStyleForTraitCollection:v15];
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
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:1183 description:@"_visualStyle must be created before we can layout the container view"];

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
    v28 = [(UIView *)viewControllerTransitionView superview];

    if (v28)
    {
      goto LABEL_20;
    }

    v29 = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
    [(UIView *)self->_containerView insertSubview:self->_viewControllerTransitionView belowSubview:v29];
  }

  else
  {
    v30 = [UITransitionView alloc];
    v31 = [(UITransitionView *)v30 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v32 = self->_viewControllerTransitionView;
    self->_viewControllerTransitionView = v31;

    v33 = [(UITabBarController *)self _transitionView];
    [v33 setDelegate:self];

    v34 = [(UITabBarController *)self _transitionView];
    [v34 setShouldNotifyDidCompleteImmediately:1];

    [(UIView *)self->_viewControllerTransitionView setAutoresizingMask:18];
    v35 = self->_visualStyle;
    v36 = [(UITabBarController *)self _transitionView];
    [(_UITabBarControllerVisualStyle *)v35 configureTransitionView:v36];

    v29 = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
    [(UIView *)self->_containerView insertSubview:self->_viewControllerTransitionView belowSubview:v29];
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
      v31 = [(UILayoutGuide *)v3 leftAnchor];
      v30 = [(UIView *)self->_containerView leftAnchor];
      v29 = [v31 constraintEqualToAnchor:v30];
      v32[0] = v29;
      v28 = [(UILayoutGuide *)v3 topAnchor];
      v5 = [(UIView *)self->_containerView topAnchor];
      v6 = [v28 constraintEqualToAnchor:v5];
      v32[1] = v6;
      v7 = [(UILayoutGuide *)v3 widthAnchor];
      v8 = [v7 constraintEqualToConstant:0.0];
      v32[2] = v8;
      v9 = [(UILayoutGuide *)v3 heightAnchor];
      v10 = [v9 constraintEqualToConstant:0.0];
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
    v3 = [(UIViewController *)self mutableChildViewControllers];
    v4 = [v3 mutableCopy];

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
  v3 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [(UITabBarController *)self _layoutViewController:v3];
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
  v3 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [v3 _updateLayoutForStatusBarAndInterfaceOrientation];
  if (([objc_opt_class() _directlySetsContentOverlayInsetsForChildren] & 1) == 0)
  {
    [(UIViewController *)self _updateContentOverlayInsetsFromParentIfNecessary];
    [v3 _updateContentOverlayInsetsFromParentIfNecessary];
  }

  [(UITabBarController *)self _layoutViewController:v3];
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
  if (a1)
  {
    v2 = a1;
    v3 = a1[149];
    if (!v3)
    {
      v4 = objc_alloc_init(_UIScrollPocketCollectorInteraction);
      v5 = v2[149];
      v2[149] = v4;

      [v2[126] addInteraction:v2[149]];
      v3 = v2[149];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
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
  v3 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v4 = [(UITabBarController *)self _existingMoreNavigationController];
  v5 = v4;
  if (v3 == v4)
  {
    v6 = [v4 displayedViewController];

    v3 = v6;
  }

  return v3;
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
      v3 = [(UIViewController *)self traitCollection];
      [(UITabBarController *)self _updateVisualStyleForTraitCollection:v3];
    }

    [(UITabBarController *)self _rebuildTabModelAnimated:0];
    *&self->_tabBarControllerFlags &= ~2u;
  }
}

- (id)_internalTabBar
{
  if (a1)
  {
    a1 = a1[124];
    v1 = vars8;
  }

  return a1;
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
  v3 = [(UIViewController *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  LODWORD(v3) = [(_UITabBarControllerVisualStyle *)self->_visualStyle shouldEnforceChildSelectionInGroupTabs];
  v22 = self->_tabModel;
  if (v3)
  {
    v5 = [(_UITabModel *)v22 selectedItem];
    v6 = v5;
    if ([v5 _isGroup])
    {
      v6 = v5;
      while (1)
      {
        v7 = v6;
        v8 = [v7 selectedChild];
        if (!v8)
        {
          v8 = [v7 _defaultChildForSelection];
          if (!v8)
          {
            break;
          }
        }

        v6 = v8;

        if (([v6 _isGroup] & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v6 = v7;
    }

LABEL_9:
    v9 = [(_UITabModel *)self->_tabModel selectedLeaf];

    if (v9 != v6)
    {
      if (v6)
      {
        do
        {
          v10 = [v6 _parentGroup];
          v11 = [v10 selectedChild];

          if (v11 != v6)
          {
            break;
          }

          v12 = [v6 _parentGroup];

          v6 = v12;
        }

        while (v12);
      }

      [(_UITabModel *)self->_tabModel selectTab:v6 notifyOnReselection:0];
    }

    if (-[_UITabBarControllerVisualStyle supportsShowingMoreItem](self->_visualStyle, "supportsShowingMoreItem") && [v5 _isMoreTab])
    {
      v13 = self->_moreNavigationController;
      v14 = [(UIMoreNavigationController *)v13 displayedViewController];
      if (v14 == v13)
      {
        v15 = [(UIMoreNavigationController *)v13 moreViewControllers];
        v16 = [v15 firstObject];

        v14 = v16;
      }

      v17 = [(UIMoreNavigationController *)v14 _resolvedTab];
      [(_UITabModel *)v22 selectTab:v17 notifyOnReselection:0];
    }
  }

  v18 = self->_moreNavigationController;
  v19 = v18;
  if (v4 != 2)
  {
    if (v18)
    {
      v20 = [(UITabBarController *)self selectedViewController];

      if (v20 == v19)
      {
        v21 = [(UIMoreNavigationController *)v19 _resolvedTab];
        [(_UITabModel *)v22 selectTab:v21 notifyOnReselection:0];
      }
    }
  }
}

- (id)allViewControllers
{
  v3 = [(UIViewController *)self mutableChildViewControllers];
  if ([(NSMutableArray *)self->_moreChildViewControllers count])
  {
    v4 = [v3 mutableCopy];
    v5 = v4;
    moreNavigationController = self->_moreNavigationController;
    if (moreNavigationController)
    {
      v7 = [v4 lastObject];

      if (moreNavigationController != v7)
      {
        [v5 addObject:self->_moreNavigationController];
      }
    }

    [v5 addObjectsFromArray:self->_moreChildViewControllers];
  }

  else
  {
    v5 = v3;
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
  v2 = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarPosition];
  if ((_UIViewControllerUseContentScrollViewAPI() & (v2 == 2)) != 0)
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
  if (a1)
  {
    if ((*(a1 + 1129) & 0x80) != 0)
    {
      a1 = a1[142];
    }

    else
    {
      a1 = [a1 viewControllers];
    }

    v1 = vars8;
  }

  return a1;
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
  if (a1)
  {
    a1 = a1[138];
    v1 = vars8;
  }

  return a1;
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
  v3 = [(UILayoutContainerView *)self->_containerView delegate];

  if (v3 == self)
  {
    [(UILayoutContainerView *)self->_containerView setDelegate:0];
  }

  transientViewController = self->_transientViewController;
  self->_transientViewController = 0;

  containerView = self->_containerView;
  self->_containerView = 0;

  v6 = [(UITabBarController *)self _transitionView];
  v7 = [v6 delegate];

  if (v7 == self)
  {
    v8 = [(UITabBarController *)self _transitionView];
    [v8 setDelegate:0];
  }

  viewControllerTransitionView = self->_viewControllerTransitionView;
  self->_viewControllerTransitionView = 0;

  [(UITabBar *)self->_tabBar setLocked:0];
  v10 = [(UITabBar *)self->_tabBar delegate];

  if (v10 == self)
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
  v2 = self;
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_tabModel;
  }

  v3 = [(UITabBarController *)self tabItems];
  v4 = [(UITabBarController *)v2 compactTabIdentifiers];
  if ([v4 count])
  {
    v5 = [(_UITabModel *)v2->_tabModel tabItems];

    if (v5)
    {
      v16 = v3;
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      obj = v4;
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
            v11 = [(_UITabModel *)v2->_tabModel tabItems];
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 3221225472;
            v19[2] = __39__UITabBarController__tabs_compactTabs__block_invoke;
            v19[3] = &unk_1E7101F18;
            v19[4] = v10;
            v12 = [v11 indexOfObjectPassingTest:v19];

            if (v12 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v13 = [(_UITabModel *)v2->_tabModel tabItems];
              v14 = [v13 objectAtIndex:v12];

              [v17 addObject:v14];
            }
          }

          v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v7);
      }

      v3 = [v17 copy];
    }
  }

  return v3;
}

- (NSArray)tabs
{
  if ((*(&self->_tabBarControllerFlags + 1) & 0x80) != 0)
  {
    v4 = [(_UITabModel *)self->_tabModel tabItems];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
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
  v12 = [(UITabBarController *)self selectedViewController];
  v3 = [(UIViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] == 2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v12 style];

      if (!v4)
      {
        goto LABEL_6;
      }

      v3 = [v12 view];
      [v3 setNeedsLayout];
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
      v9 = [(UITabBarController *)self _scrollViewObservedBeforeHidingBar];
      v7 = v9;
      if (v9)
      {
        v10 = [v9 _viewControllerForAncestor];
        v11 = [(UITabBarController *)self _isViewControllerContainedInSelected:v10 ignoresPresentations:0];

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
    v3 = [(UIResponder *)self restorationIdentifier];
    if (v3)
    {
      v7 = v3;
      [(UIResponder *)self->_moreNavigationController setRestorationIdentifier:@"_$MoreNavigationController$_"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v3 = v7;
      if (isKindOfClass)
      {
        v5 = [(UIMoreNavigationController *)self->_moreNavigationController moreListController];
        v6 = v5;
        if (v5)
        {
          [v5 setRestorationIdentifier:@"_$MoreNavigationListController$_"];
        }

        v3 = v7;
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
  v3 = [(UITabBarController *)self selectedViewController];

  if (v3)
  {
    v4 = [(UITabBarController *)self selectedViewController];
    v5 = [v4 becomeFirstResponder];

    return v5;
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
  v4 = [(UIView *)self->_tabBar traitCollection];
  if ([v4 userInterfaceIdiom])
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
  v2 = [(UITabBarController *)self customizableViewControllers];
  v3 = [v2 count] != 0;

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
    v7 = [(UIMoreNavigationController *)self->_moreNavigationController moreListController];
    [v7 setTitle:v6];

    [(UITabBarController *)self _setMoreNavigationControllerRestorationIdentifier];
    [(UIMoreNavigationController *)self->_moreNavigationController setAllowsCustomizing:[(UITabBarController *)self _allowsCustomizing]];
    v8 = [(UIView *)self->_tabBar semanticContentAttribute];
    v9 = [(UIViewController *)self->_moreNavigationController view];
    [v9 setSemanticContentAttribute:v8];

    v10 = [(UIView *)self->_tabBar semanticContentAttribute];
    v11 = [(UINavigationController *)self->_moreNavigationController topViewController];
    v12 = [v11 view];
    [v12 setSemanticContentAttribute:v10];

    v13 = [(UIView *)self->_tabBar semanticContentAttribute];
    v14 = [(UINavigationController *)self->_moreNavigationController navigationBar];
    [v14 setSemanticContentAttribute:v13];

    moreNavigationController = self->_moreNavigationController;
  }

  return moreNavigationController;
}

- (id)_additionalViewControllersToCheckForUserActivity
{
  v3 = MEMORY[0x1E695DEC8];
  v4 = [(UITabBarController *)self selectedViewController];
  v5 = [v3 arrayWithObjects:{v4, self->_moreNavigationController, 0}];

  return v5;
}

- (id)_overridingPreferredFocusEnvironment
{
  v14.receiver = self;
  v14.super_class = UITabBarController;
  v3 = [(UIViewController *)&v14 _overridingPreferredFocusEnvironment];
  if (!v3)
  {
    v4 = [(UIViewController *)self _existingView];
    v5 = [v4 _window];
    if (!v5)
    {
      v3 = 0;
LABEL_18:

      goto LABEL_19;
    }

    tabBarControllerFlags = self->_tabBarControllerFlags;

    if ((*&tabBarControllerFlags & 0x200) != 0)
    {
      v3 = 0;
      goto LABEL_19;
    }

    v4 = [(UITabBarController *)self selectedViewController];
    v7 = [(UITabBarController *)self _recallRememberedFocusedItemForViewController:v4];
    if (v7)
    {
      if ([(UITabBarController *)self _canRestoreFocusAfterTransitionToRecalledItem:v7 inViewController:v4])
      {
        v3 = v7;
LABEL_17:

        goto LABEL_18;
      }

      [(UITabBarController *)self _forgetFocusedItemForViewController:v4];
    }

    else if ([(UITabBarController *)self _isModernTVTabBar]&& [(UITabBarController *)self _shouldFocusViewControllerAfterTransition])
    {
      v8 = [v4 preferredFocusEnvironments];
      v9 = [v8 firstObject];

      v10 = [(UIViewController *)self _focusSystem];
      v11 = [v10 focusedItem];
      v12 = v11;
      if (!v9 || v9 == v11 || [v10 _focusedItemIsContainedInEnvironment:v9 includeSelf:1])
      {
        [(UITabBarController *)self set_shouldFocusViewControllerAfterTransition:0];
        v3 = 0;
      }

      else
      {
        v3 = v9;
      }

      goto LABEL_17;
    }

    v3 = 0;
    goto LABEL_17;
  }

LABEL_19:

  return v3;
}

- (NSMapTable)_rememberedFocusedItemsByViewController
{
  rememberedFocusedItemsByViewController = self->_rememberedFocusedItemsByViewController;
  if (!rememberedFocusedItemsByViewController)
  {
    v4 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v5 = self->_rememberedFocusedItemsByViewController;
    self->_rememberedFocusedItemsByViewController = v4;

    rememberedFocusedItemsByViewController = self->_rememberedFocusedItemsByViewController;
  }

  return rememberedFocusedItemsByViewController;
}

- (BOOL)_isTabBarFocused
{
  v3 = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
  v4 = [(UIViewController *)self _focusSystem];
  v5 = [v4 focusedItem];
  v6 = _UIFocusEnvironmentContainingView(v5);
  v7 = [v6 isDescendantOfView:v3];

  return v7;
}

- (id)_effectiveInteractionActivityTrackingBaseName
{
  v3 = [(UIViewController *)self interactionActivityTrackingBaseName];
  if ([(UITabBarController *)self isMemberOfClass:objc_opt_class()])
  {
    v4 = [(UITabBarController *)self selectedViewController];
    v5 = [v4 _effectiveInteractionActivityTrackingBaseName];

    if (v5)
    {
      v6 = [@"UITBC-" stringByAppendingString:v5];

      v3 = v6;
    }
  }

  else
  {
    v7 = objc_opt_class();
    NSStringFromClass(v7);
    v3 = v5 = v3;
  }

  return v3;
}

+ (BOOL)doesOverridePreferredInterfaceOrientationForPresentation
{
  v3 = objc_opt_class();

  return [a1 doesOverrideViewControllerMethod:sel_preferredInterfaceOrientationForPresentation inBaseClass:v3];
}

- (void)_updateVisualStyleForTraitCollection:(id)a3
{
  v4 = [a3 userInterfaceIdiom];
  v5 = v4;
  if (!self->_visualStyle || self->_visualStyleIdiom != v4)
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
        v9 = [(_UITabBarControllerVisualStyle *)visualStyle tabBarView];
        [v9 removeFromSuperview];
        *&self->_tabBarControllerFlags &= ~0x20u;
        [(_UITabBarControllerVisualStyle *)self->_visualStyle teardown];
      }

      objc_storeStrong(&self->_visualStyle, obj);
      self->_visualStyleIdiom = v5;
      [(_UITabBarControllerVisualStyle *)self->_visualStyle prepare];
      if ([(UIViewController *)self isViewLoaded])
      {
        [(_UITabBarControllerVisualStyle *)self->_visualStyle loadViews];
        v10 = [(UIViewController *)self view];
        [v10 setNeedsLayout];
      }
    }
  }
}

- (UITabBarController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = UITabBarController;
  v4 = [(UIViewController *)&v10 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(UITabBarController *)v4 _configureTabModel];
    v6 = [(UIViewController *)v5 traitCollection];
    v5->_defaultMaxItems = _UITabBarDefaultMaxItemsForTraitCollection(v6);

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    moreChildViewControllers = v5->_moreChildViewControllers;
    v5->_moreChildViewControllers = v7;

    [(UIViewController *)v5 setContainmentSupport:0];
    [(UITabBarController *)v5 loadView];
    [(UITabBarController *)v5 viewDidLoad];
  }

  return v5;
}

- (UITabBarController)initWithCoder:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v52.receiver = self;
  v52.super_class = UITabBarController;
  v5 = [(UIViewController *)&v52 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(UITabBarController *)v5 _configureTabModel];
    v7 = [(UIViewController *)v6 traitCollection];
    v6->_defaultMaxItems = _UITabBarDefaultMaxItemsForTraitCollection(v7);

    v8 = [(UITabBarController *)v6 _effectiveMaxItems];
    v9 = [v4 decodeObjectForKey:@"UITabBar"];
    tabBar = v6->_tabBar;
    v6->_tabBar = v9;

    [(UITabBar *)v6->_tabBar setLocked:1];
    v11 = [v4 decodeObjectForKey:@"UITabBarItemsToViewControllers"];
    tabBarItemsToViewControllers = v6->_tabBarItemsToViewControllers;
    v6->_tabBarItemsToViewControllers = v11;

    v13 = [v4 decodeObjectForKey:@"UICustomizableViewControllers"];
    customizableViewControllers = v6->_customizableViewControllers;
    v6->_customizableViewControllers = v13;

    v15 = [v4 decodeObjectForKey:@"UIDelegate"];
    objc_storeWeak(&v6->_delegate, v15);

    v16 = [v4 decodeObjectForKey:@"UIViewControllers"];
    v17 = [v16 mutableCopy];
    moreChildViewControllers = v6->_moreChildViewControllers;
    v6->_moreChildViewControllers = v17;

    v19 = [(UIViewController *)v6 mutableChildViewControllers];
    v20 = v8 - 1;
    v21 = [MEMORY[0x1E695DFD8] setWithArray:v6->_moreChildViewControllers];
    v22 = [MEMORY[0x1E695DFD8] setWithArray:v19];
    v23 = [v21 isEqualToSet:v22];

    v24 = [(NSMutableArray *)v6->_moreChildViewControllers count];
    v25 = v6->_moreChildViewControllers;
    if (v23)
    {
      if (v24 <= v8)
      {
        [v19 setArray:v25];
        [(NSMutableArray *)v6->_moreChildViewControllers removeAllObjects];
      }

      else
      {
        v26 = [(NSMutableArray *)v6->_moreChildViewControllers subarrayWithRange:0, v8 - 1];
        [v19 setArray:v26];
        [(NSMutableArray *)v6->_moreChildViewControllers removeObjectsInRange:0, v20];
      }
    }

    else
    {
      if (v24 <= v8)
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
        [(NSMutableArray *)v6->_moreChildViewControllers removeObjectsInRange:0, v8 - 1];
      }

      v29 = [v19 count];
      v30 = v29 >= v8;
      v31 = v29 - v8;
      if (v31 != 0 && v30 || !v31 && [(NSMutableArray *)v6->_moreChildViewControllers count])
      {
        [v19 removeObjectsInRange:{v20, v31 + 1}];
      }
    }

    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v33 = v19;
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

          v38 = [*(*(&v48 + 1) + 8 * i) _resolvedTab];
          [v32 addObject:v38];
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

- (void)_populateArchivedChildViewControllers:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = UITabBarController;
  [(UIViewController *)&v5 _populateArchivedChildViewControllers:v4];
  [v4 addObjectsFromArray:self->_moreChildViewControllers];
  if (self->_moreNavigationController)
  {
    [v4 removeObject:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UITabBarController;
  [(UIViewController *)&v12 encodeWithCoder:v4];
  tabBar = self->_tabBar;
  if (tabBar)
  {
    [v4 encodeObject:tabBar forKey:@"UITabBar"];
  }

  tabBarItemsToViewControllers = self->_tabBarItemsToViewControllers;
  if (tabBarItemsToViewControllers)
  {
    [v4 encodeObject:tabBarItemsToViewControllers forKey:@"UITabBarItemsToViewControllers"];
  }

  customizableViewControllers = self->_customizableViewControllers;
  if (customizableViewControllers)
  {
    [v4 encodeObject:customizableViewControllers forKey:@"UICustomizableViewControllers"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    [v4 encodeConditionalObject:WeakRetained forKey:@"UIDelegate"];
  }

  if ([(UIViewController *)self childViewControllersCount])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{-[UIViewController childViewControllersCount](self, "childViewControllersCount") + -[NSMutableArray count](self->_moreChildViewControllers, "count")}];
    [(UITabBarController *)self _populateArchivedChildViewControllers:v9];
    if ([v9 count])
    {
      v10 = [(UITabBarController *)self viewControllers];
      v11 = UIArrayByKeepingObjectsInSet(v10, v9);
      [v4 encodeObject:v11 forKey:@"UIViewControllers"];
    }
  }
}

- (UITabBarController)initWithTabs:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(UITabBarController *)v5 setTabs:v4];
  }

  return v6;
}

- (void)setMode:(int64_t)a3
{
  if (self->_mode != a3)
  {
    self->_mode = a3;
    [(_UITabBarControllerVisualStyle *)self->_visualStyle preferredSidebarModeDidChange];
  }
}

- (void)setCompactTabIdentifiers:(id)a3
{
  v5 = a3;
  v6 = self->_compactTabIdentifiers;
  v7 = v5;
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
    objc_storeStrong(&self->_compactTabIdentifiers, a3);
    [(UITabBarController *)self _tabs_rebuildMoreChildViewControllersIfNeeded];
    *&self->_tabBarControllerFlags |= 2u;
    [(UITabBarController *)self _rebuildTabBarItemsIfNeeded];
  }

LABEL_9:
}

- (void)setTabs:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  *&self->_tabBarControllerFlags |= 0x8000u;
  v8 = [(UITabBarController *)self selectedTab];
  v9 = self->_tabModel;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __39__UITabBarController_setTabs_animated___block_invoke;
  v13[3] = &unk_1E7101EF0;
  v14 = v9;
  v15 = v7;
  v16 = self;
  v17 = a2;
  v18 = a4;
  v10 = v7;
  v11 = v9;
  [(UITabBarController *)self _performWithoutNotifyingSelectionChange:v13];
  v12 = [(UIViewController *)self _existingView];
  [v12 setNeedsLayout];
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

- (void)setSelectedTab:(id)a3
{
  if (self)
  {
    self = self->_tabModel;
  }

  [(UITabBarController *)self selectTab:a3 notifyOnReselection:0];
}

- (id)tabForIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:679 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  v6 = [(_UITabModel *)self->_tabModel tabForIdentifier:v5];

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

- (void)setCustomizationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarController *)self customizationIdentifier];
  v11 = v4;
  v6 = v5;
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

- (void)setBottomAccessory:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  bottomAccessory = self->_bottomAccessory;
  if (bottomAccessory != v7)
  {
    p_isa = &v7->super.isa;
    [(UITabAccessory *)&bottomAccessory->super.isa _setTabBarController:?];
    [(UITabAccessory *)p_isa _setTabBarController:?];
    objc_storeStrong(&self->_bottomAccessory, a3);
    tabBar = self->_tabBar;
    if (tabBar)
    {
      [(_UITabBarVisualProvider *)tabBar->_visualProvider setHostedElements:[(_UITabBarVisualProvider *)tabBar->_visualProvider hostedElements]& 0xFFFFFFFFFFFFFFFBLL | (4 * (p_isa != 0))];
    }

    *&self->_tabBarControllerFlags &= ~0x20u;
    [(_UITabBarControllerVisualStyle *)self->_visualStyle updateBottomAccessoryAnimated:v4];
    [(UITabBarController *)self _updateTabBarLayout];
    v7 = p_isa;
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel_toggleSidebar_ == a3)
  {
    v8 = [(UITabBarController *)&self->super.super.super.isa _visualStyle];
    v7 = [v8 canToggleSidebar];
  }

  else if (sel_toggleInspector_ == a3)
  {
    v7 = 0;
  }

  else if (sel_runToolbarCustomizationPalette_ == a3)
  {
    v9 = [(UITabBarController *)self _navigationControllerForCustomizingToolbarWithSender:v6];
    v7 = v9 != 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UITabBarController;
    v7 = [(UIViewController *)&v11 canPerformAction:a3 withSender:v6];
  }

  return v7;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  if ([v4 action] == sel_toggleSidebar_)
  {
    v5 = [(UITabBarController *)self sidebar];
    v6 = [v5 isHidden];

    if (v6)
    {
      v7 = @"Show Sidebar";
    }

    else
    {
      v7 = @"Hide Sidebar";
    }

    v8 = _UINSLocalizedStringWithDefaultValue(v7, v7);
    [v4 setTitle:v8];
  }

  else if ([v4 action] != sel_toggleInspector_)
  {
    v9.receiver = self;
    v9.super_class = UITabBarController;
    [(UIResponder *)&v9 validateCommand:v4];
  }
}

- (void)toggleSidebar:(id)a3
{
  v4 = [(UITabBarController *)&self->super.super.super.isa _visualStyle];
  v5 = [v4 canToggleSidebar];

  if (v5)
  {
    v7 = [(UITabBarController *)self sidebar];
    v6 = [(UITabBarController *)self sidebar];
    -[UITabBarControllerSidebar _setHidden:source:](v7, [v6 isHidden] ^ 1, 2);
  }
}

- (void)runToolbarCustomizationPalette:(id)a3
{
  v3 = [(UITabBarController *)self _navigationControllerForCustomizingToolbarWithSender:a3];
  [v3 _beginCustomizingBar];
}

- (id)_navigationControllerForCustomizingToolbarWithSender:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarController *)self selectedViewController];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 _canPerformCustomizeBarActionWithSender:v4];
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

- (void)_layoutViewController:(id)a3
{
  v14 = a3;
  v4 = [(UITabBarController *)self _viewForViewController:v14];
  v5 = [UIViewControllerWrapperView existingWrapperViewForView:v4];
  [(UITabBarController *)self _frameForWrapperViewForViewController:v14];
  [v5 setFrame:?];
  [(UITabBarController *)self _frameForViewController:v14];
  [v4 setFrame:?];
  v6 = [(UIViewController *)v14 view];

  if (v4 != v6)
  {
    [v4 frame];
    v8 = v7;
    [v4 frame];
    v10 = v9;
    v11 = [(UIViewController *)v14 view];
    [v11 setFrame:{0.0, 0.0, v8, v10}];
  }

  v12 = [(UIViewController *)v14 _bottomBarInsetGuideConstraint];

  if (v12)
  {
    v13 = [(UIViewController *)v14 view];
    [v13 layoutIfNeeded];
  }

  if (self->_selectedViewController == v14)
  {
    [(UITabBarController *)self _compatibility_updateViewController:v14 forTabBarObservedScrollView:0];
  }
}

- (id)_viewForViewController:(id)a3
{
  v3 = a3;
  v4 = [v3 view];
  v5 = [v4 superview];
  v6 = [v5 superview];
  if (v6)
  {
    v7 = v6;
    v8 = [v3 modalPresentationStyle];

    if (v8 != 6)
    {
      goto LABEL_5;
    }

    v5 = [v4 superview];
    v9 = [v5 superview];

    v4 = v9;
  }

LABEL_5:

  return v4;
}

- (id)_wrapperViewForViewController:(id)a3
{
  v4 = a3;
  [(UITabBarController *)self _frameForWrapperViewForViewController:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(UITabBarController *)self _viewForViewController:v4];
  [v13 frame];
  v18 = [(UIViewControllerWrapperView *)v6 wrapperViewForView:v8 wrapperFrame:v10 viewFrame:v12, v14, v15, v16, v17, UIViewControllerWrapperView, v13];
  [(UITabBarController *)self _layoutViewController:v4];

  return v18;
}

- (void)_selectDefaultViewControllerIfNecessaryWithAppearanceTransitions:(BOOL)a3
{
  v5 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (v5)
  {
  }

  else
  {
    v10 = [(UITabBarController *)self viewControllers];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(UITabBarController *)self viewControllers];
      v13 = [v12 objectAtIndex:0];

      if (!a3)
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
      if (!a3)
      {
        [v14 setAppearanceTransitionsAreDisabled:0];
      }

      return;
    }
  }

  v6 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if ((*&self->_tabBarControllerFlags & 0x40) != 0)
  {
  }

  else
  {
    v8 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    v9 = [v8 _existingView];

    if (v9)
    {
      return;
    }
  }

  v15 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v19 = [(UITabBarController *)self _wrapperViewForViewController:v15];

  v16 = [(UITabBarController *)self _transitionView];
  [v16 transition:0 toView:v19];

  if ((*&self->_tabBarControllerFlags & 0x40) != 0)
  {
    [(UITabBarController *)self _rebuildTabBarItemsIfNeeded];
    v17 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    v18 = [v17 tabBarItem];
    [(UITabBarController *)self _setSelectedTabBarItem:v18];

    *&self->_tabBarControllerFlags &= ~0x40u;
  }
}

- (void)_setTabBarOffscreen:(BOOL)a3
{
  if (a3)
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
  v3 = [(UITabBarController *)&self->super.super.super.isa _visualStyle];
  [v3 childModalViewControllersDidChange];
}

- (void)_setAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_accessoryView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accessoryView, a3);
    *&self->_tabBarControllerFlags &= ~0x20u;
    [(UITabBarController *)self _prepareTabBar];
    v5 = v6;
  }
}

- (void)setTitle:(id)a3
{
  v7.receiver = self;
  v7.super_class = UITabBarController;
  v4 = a3;
  [(UIViewController *)&v7 setTitle:v4];
  v5 = [(UITabBarController *)self sidebar:v7.receiver];
  v6 = v5;
  if (v5)
  {
    [(_UITabOutlineView *)*(v5 + 48) setTitle:v4];
  }
}

- (void)setTabBar:(id)a3
{
  v5 = a3;
  tabBar = self->_tabBar;
  if (tabBar != v5)
  {
    v7 = v5;
    [(UITabBar *)tabBar setLocked:0];
    [(UITabBar *)self->_tabBar setDelegate:0];
    [(UIView *)self->_tabBar removeFromSuperview];
    objc_storeStrong(&self->_tabBar, a3);
    *&self->_tabBarControllerFlags &= ~0x20u;
    [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarDidChange];
    [(UITabBarController *)self _prepareTabBar];
    v5 = v7;
  }
}

- (void)setView:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [(UILayoutContainerView *)self->_containerView delegate];

    if (v5 == self)
    {
      [(UILayoutContainerView *)self->_containerView setDelegate:0];
    }

    v6 = [(UILayoutGuide *)self->_contentLayoutGuide owningView];
    containerView = self->_containerView;

    if (v6 == containerView)
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

    v11 = [(UITabBarController *)self _transitionView];
    v12 = [v11 delegate];

    if (v12 == self)
    {
      v13 = [(UITabBarController *)self _transitionView];
      [v13 setDelegate:0];
    }

    viewControllerTransitionView = self->_viewControllerTransitionView;
    self->_viewControllerTransitionView = 0;

    [(UITabBar *)self->_tabBar setLocked:0];
    v15 = [(UITabBar *)self->_tabBar delegate];

    if (v15 == self)
    {
      [(UITabBar *)self->_tabBar setDelegate:0];
    }

    tabBar = self->_tabBar;
    self->_tabBar = 0;

    self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFF9D | 0x42);
  }

  v17.receiver = self;
  v17.super_class = UITabBarController;
  [(UIViewController *)&v17 setView:v4];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if ([(UIViewController *)self isViewLoaded])
  {
    v5 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    v6 = [v5 _existingView];
    v7 = [(UIViewController *)self view];
    v8 = [v6 isDescendantOfView:v7];

    if ((v8 & 1) == 0)
    {
      [(UITabBarController *)self _selectDefaultViewControllerIfNecessaryWithAppearanceTransitions:0];
    }
  }

  v12.receiver = self;
  v12.super_class = UITabBarController;
  [(UIViewController *)&v12 viewWillAppear:v3];
  v9 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [(UIViewController *)v9 __viewWillAppear:v3];
  selectedViewControllerDuringWillAppear = self->_selectedViewControllerDuringWillAppear;
  self->_selectedViewControllerDuringWillAppear = v9;
  v11 = v9;

  [(_UITabBarControllerVisualStyle *)self->_visualStyle viewWillAppear:v3];
  [(_UITabBarControllerVisualStyle *)self->_visualStyle prepare];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = UITabBarController;
  [(UIViewController *)&v7 viewDidAppear:?];
  v5 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v6 = v5;
  if (v5 == self->_selectedViewControllerDuringWillAppear)
  {
    [(UIViewController *)v5 __viewDidAppear:v3];
    if (![(UIViewController *)v6 _containsFirstResponder])
    {
      [(UIViewController *)v6 _viewControllerWasSelected];
    }
  }

  [(_UITabBarControllerVisualStyle *)self->_visualStyle viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UITabBarController;
  [(UIViewController *)&v6 viewWillDisappear:?];
  v5 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [(UIViewController *)v5 __viewWillDisappear:v3];

  [(_UITabBarControllerVisualStyle *)self->_visualStyle viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = UITabBarController;
  [(UIViewController *)&v6 viewDidDisappear:?];
  v5 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [(UIViewController *)v5 __viewDidDisappear:v3];

  [(_UITabBarControllerVisualStyle *)self->_visualStyle viewDidDisappear:v3];
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle removeTabBarFocusedOnViewDidDisappear])
  {
    *&self->_tabBarControllerFlags &= ~0x200u;
  }

  [(_UITabBarControllerVisualStyle *)self->_visualStyle teardown];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = UITabBarController;
  v7 = a4;
  [(UIViewController *)&v11 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__UITabBarController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_1E70F4990;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 animateAlongsideTransition:v9 completion:0];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITabBarController;
  [(UIViewController *)&v9 traitCollectionDidChange:v4];
  v5 = [(UIViewController *)self traitCollection];
  [(UITabBarController *)self _updateLayoutForTraitCollection:v5];

  if (dyld_program_sdk_at_least())
  {
    v6 = [v4 horizontalSizeClass];
    v7 = [(UIViewController *)self traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v6 != v8)
    {
      *&self->_tabBarControllerFlags &= ~0x20u;
      [(UITabBarController *)self _prepareTabBar];
    }
  }
}

- (void)_setSelectedTabBarItem:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarController *)self tabBar];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__UITabBarController__setSelectedTabBarItem___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(UITabBar *)v5 _performWhileIgnoringLock:v7];
}

void __45__UITabBarController__setSelectedTabBarItem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) tabBar];
  [v2 setSelectedItem:v1];
}

- (void)updateTabBarItemForViewController:(id)a3
{
  v4 = a3;
  if ((*&self->_tabBarControllerFlags & 2) == 0)
  {
    v5 = [(UIViewController *)self mutableChildViewControllers];
    v6 = [v5 indexOfObjectIdenticalTo:v4] == 0x7FFFFFFFFFFFFFFFLL && -[NSMutableArray indexOfObjectIdenticalTo:](self->_moreChildViewControllers, "indexOfObjectIdenticalTo:", v4) == 0x7FFFFFFFFFFFFFFFLL;
    if (self->_transientViewController != v4 || [v5 count] == 1)
    {
      if (v6)
      {
        [(UITabBarController *)self _rebuildTabModelAnimated:1];
      }

      else
      {
        v7 = [(UIViewController *)v4 _resolvedTab];
        if (([v7 _isMoreTab] & 1) == 0 && (*(&self->_tabBarControllerFlags + 1) & 0x80) == 0)
        {
          v8 = self->_tabModel;
          v9 = [(_UITabModel *)v8 tabItems];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __56__UITabBarController_updateTabBarItemForViewController___block_invoke;
          v15[3] = &unk_1E7101F18;
          v10 = v4;

          v16 = v10;
          v11 = [v9 indexOfObjectPassingTest:v15];

          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            *&self->_tabBarControllerFlags |= 2u;
            v12 = [(UIViewController *)self _existingView];
            [v12 setNeedsLayout];
          }

          else
          {
            [(_UITabModel *)self->_tabModel replaceItemAtIndex:v11 withItem:v7];
          }
        }

        [(_UITabBarControllerVisualStyle *)self->_visualStyle updateTabForChildViewController:v4];
        v13 = [(UITabBarController *)self _selectedViewControllerInTabBar];

        if (v13 == v4)
        {
          v14 = [(UIViewController *)v4 tabBarItem];
          [(UITabBarController *)self _setSelectedTabBarItem:v14];
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

- (void)_willChangeToIdiom:(int64_t)a3 onScreen:(id)a4
{
  v10.receiver = self;
  v10.super_class = UITabBarController;
  [(UIViewController *)&v10 _willChangeToIdiom:a3 onScreen:a4];
  v6 = [(UIViewController *)self traitCollection];
  v7 = [v6 _traitCollectionByReplacingNSIntegerValue:a3 forTraitToken:0x1EFE32398];

  [(UITabBarController *)self _updateVisualStyleForTraitCollection:v7];
  [(UITabBarController *)self _updateLayoutForTraitCollection:v7];
  v8 = [(UITabBarController *)self _wantsBarHidden];
  v9 = (self->_tabBarControllerFlags >> 2) & 3;
  if (v8)
  {
    [(UITabBarController *)self _hideBarWithTransition:0 isExplicit:0 reason:v9];
  }

  else
  {
    [(UITabBarController *)self _showBarWithTransition:0 isExplicit:0 reason:v9];
  }
}

- (void)_updateLayoutForTraitCollection:(id)a3
{
  [(UITabBarController *)self _updateVisualStyleForTraitCollection:a3];
  v4 = [(_UITabBarControllerVisualStyle *)self->_visualStyle defaultMaxItems];
  [(UITabBarController *)self _setTabBarPosition:[(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarPosition]];
  if (v4 != self->_defaultMaxItems)
  {
    v5 = [(UITabBarController *)&self->super.super.super.isa _viewControllersForTabs];
    v6 = [v5 count];
    defaultMaxItems = self->_defaultMaxItems;
    if (v4 < defaultMaxItems)
    {
      defaultMaxItems = v4;
    }

    self->_defaultMaxItems = v4;
    if (v6 > defaultMaxItems)
    {
      *&self->_tabBarControllerFlags |= 2u;
      [(UITabBarController *)self _setViewControllers:v5 animated:0];
    }
  }

  v8 = _UINSLocalizedStringWithDefaultValue(@"More", @"More");
  v9 = [(UIMoreNavigationController *)self->_moreNavigationController moreListController];
  [v9 setTitle:v8];

  [(_UITabBarControllerVisualStyle *)self->_visualStyle updateGestureRecognizers];
  v10 = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarFocusSpeedBumpEdges];
  tabBar = self->_tabBar;

  [(UIView *)tabBar _setFocusSpeedBumpEdges:v10];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UITabBarControllerVisualStyle *)self->_visualStyle shouldSuppressPresses:v6 withEvent:v7])
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    [(UIResponder *)&v8 pressesBegan:v6 withEvent:v7];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UITabBarControllerVisualStyle *)self->_visualStyle shouldSuppressPresses:v6 withEvent:v7])
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    [(UIResponder *)&v8 pressesCancelled:v6 withEvent:v7];
  }
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UITabBarControllerVisualStyle *)self->_visualStyle shouldSuppressPresses:v6 withEvent:v7])
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    [(UIResponder *)&v8 pressesChanged:v6 withEvent:v7];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(_UITabBarControllerVisualStyle *)self->_visualStyle shouldSuppressPresses:v6 withEvent:v7])
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    [(UIResponder *)&v8 pressesEnded:v6 withEvent:v7];
  }
}

- (void)_performFocusGesture:(unint64_t)a3
{
  v10 = [(UIViewController *)self _focusSystem];
  v5 = [(UITabBarController *)self selectedViewController];
  if ([v5 isViewLoaded])
  {
    v6 = [v5 view];
    v7 = [v10 _focusedItemIsContainedInEnvironment:v6 includeSelf:1];

    if (v7)
    {
      v8 = [v10 focusedItem];
      [(UITabBarController *)self _rememberFocusedItem:v8 forViewController:v5];
    }
  }

  *&self->_tabBarControllerFlags |= 0x200u;
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle updatesTabBarFocusHeadingOnChange])
  {
    v9 = [(UITabBarController *)self tabBar];
    [v9 _setPreferredFocusHeading:a3];
  }

  [(UIViewController *)self _setNeedsNonDeferredFocusUpdate];
}

- (id)_responderSelectionContainerViewForResponder:(id)a3
{
  if ([(UITabBarController *)self _isTabBarFocused])
  {
    v4 = [(UITabBarController *)self tabBar];
  }

  else
  {
    v4 = self->_viewControllerTransitionView;
  }

  return v4;
}

- (void)_setPreferTabBarFocused:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFDFF | v3);
}

- (void)unwindForSegue:(id)a3 towardsViewController:(id)a4
{
  v7 = a4;
  v5 = [(UITabBarController *)self viewControllers];
  v6 = [v5 containsObject:v7];

  if (v6)
  {
    [(UITabBarController *)self setSelectedViewController:v7];
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

- (void)_selectTabElementIfPossible:(id)a3
{
  v4 = a3;
  if ([(_UITabModel *)self->_tabModel shouldSelectTab:?])
  {
    [(_UITabModel *)self->_tabModel selectTab:v4 notifyOnReselection:1];
  }
}

- (uint64_t)_shouldSelectTab:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 delegate];
    if (([v3 _isBridgedItem] & 1) != 0 || (v5 = objc_loadWeakRetained((a1 + 1216)), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
    {
      a1 = 1;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 1216));
      a1 = [WeakRetained tabBarController:a1 shouldSelectTab:v3];
    }
  }

  return a1;
}

- (void)_rebuildTabModelAnimated:(BOOL)a3
{
  v3 = a3;
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
    v6 = [(UITabBarController *)self viewControllers];
    v7 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v6;
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
            v14 = [(UIViewController *)v13 _resolvedTab];
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    v15 = [(UITabBarController *)self selectedViewController];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __47__UITabBarController__rebuildTabModelAnimated___block_invoke;
    v21[3] = &unk_1E70FF800;
    v22 = v7;
    v23 = self;
    v24 = v15;
    v25 = v8;
    v26 = v3;
    v16 = v8;
    v17 = v15;
    v18 = v7;
    [(UITabBarController *)self _performWithoutNotifyingSelectionChange:v21];
    [(_UITabBarControllerVisualStyle *)self->_visualStyle updateViewControllers:v3];
    v19 = [(UIViewController *)self _existingView];
    [v19 setNeedsLayout];
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

- (id)_resolvedPopoverPresentationControllerSourceItemForTab:(id *)a1
{
  if (a1)
  {
    a1 = [a1[138] resolvedPopoverPresentationControllerSourceItemForTab:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)_selectedElementDidChange:(void *)a3 previousElement:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    if (v9)
    {
      [a1 _validateTabSelectionIfNeeded];
      if ((*(a1 + 1129) & 0x40) == 0)
      {
        v6 = [v9 _displayedViewController];
        if (([*(a1 + 1136) containsObject:v6] & 1) == 0 && v6)
        {
          do
          {
            v7 = [v6 parentViewController];

            if (v7 == a1)
            {
              break;
            }

            v8 = [v6 parentViewController];

            v6 = v8;
          }

          while (v8);
        }

        [a1 _setSelectedViewControllerAndNotify:v6];
      }
    }
  }
}

- (void)_selectedLeafDidChange:(void *)a3 previousLeaf:
{
  v12 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [*(a1 + 1200) selectedItem];
    v7 = [v6 _isGroup];
    v8 = v12;
    if (v12 != v5 && v7)
    {
      [v6 _updateManagingNavigationStackUsingTransition:2];
      v8 = v12;
    }

    if (v8)
    {
      if ((*(a1 + 1128) & 0x8000) != 0)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 1216));
        v10 = objc_opt_respondsToSelector();

        if (v10)
        {
          v11 = objc_loadWeakRetained((a1 + 1216));
          [v11 tabBarController:a1 didSelectTab:v12 previousTab:v5];
        }
      }
    }
  }
}

- (void)_performWithIgnoringSelectionUpdate:(BOOL)a3 block:(id)a4
{
  tabBarControllerFlags = self->_tabBarControllerFlags;
  if (a3)
  {
    v6 = 0x4000;
  }

  else
  {
    v6 = 0;
  }

  self->_tabBarControllerFlags = (*&tabBarControllerFlags & 0xFFFFBFFF | v6);
  (*(a4 + 2))(a4, a2);
  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFBFFF | (((*&tabBarControllerFlags >> 14) & 1) << 14));
}

- (void)_displayedViewControllerDidChangeForTab:(void *)a3 previousViewController:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1 && (*(a1 + 1129) & 0x80) != 0)
  {
    if ([v5 _isUniquelySPI])
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:sel__displayedViewControllerDidChangeForTab_previousViewController_ object:a1 file:@"UITabBarController.m" lineNumber:1763 description:{@"_UITabElement (%@) is not supported with displayedViewControllers", v5}];
    }

    v7 = [v5 _displayedViewController];
    v8 = &OBJC_IVAR____UIKeyboardStateManager_m_shouldEnableCapsLockLanguageSwitchByDefault;
    v9 = [*(a1 + 1136) mutableCopy];
    v10 = [*(a1 + 1136) indexOfObject:v6];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [a1 tabs];
      v12 = [v11 indexOfObject:v5];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v9 removeAllObjects];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = [a1 tabs];
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
                objc_enumerationMutation(v13);
              }

              v18 = [*(*(&v22 + 1) + 8 * v17) _displayedViewController];
              [v9 addObject:v18];

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

    [v9 replaceObjectAtIndex:v12 withObject:v7];
LABEL_17:
    [a1 _setViewControllers:v9 animated:0];
    v19 = v8[936];
    v20 = *(a1 + v19);
    *(a1 + v19) = v9;
  }
}

- (id)_displayedViewControllersForTab:(void *)a3 proposedViewControllers:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 152);
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0 || (v9 = objc_loadWeakRetained(a1 + 152), [v9 tabBarController:a1 displayedViewControllersForTab:v5 proposedViewControllers:v6], a1 = objc_claimAutoreleasedReturnValue(), v9, !a1))
    {
      a1 = v6;
    }
  }

  return a1;
}

- (id)preferredFocusedView
{
  if ((*(&self->_tabBarControllerFlags + 1) & 2) != 0)
  {
    v4 = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = [(UITabBarController *)self selectedViewController];
    v4 = [v3 preferredFocusedItem];

    if (v4)
    {
LABEL_3:
      v5 = v4;
      goto LABEL_6;
    }
  }

  v8.receiver = self;
  v8.super_class = UITabBarController;
  v5 = [(UIViewController *)&v8 preferredFocusedView];
LABEL_6:
  v6 = v5;

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
  v4 = [(UITabBarController *)self selectedViewController];
  v5 = [(_UITabBarControllerVisualStyle *)self->_visualStyle tabBarView];
  v6 = v5;
  if ((*(&self->_tabBarControllerFlags + 1) & 2) == 0)
  {
    if (v4)
    {
      [v3 addObject:v4];
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

  if (v5)
  {
    [v3 addObject:v5];
  }

  v7 = v4;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  v11.receiver = self;
  v11.super_class = UITabBarController;
  v8 = [(UIViewController *)&v11 preferredFocusEnvironments];
  [v3 addObjectsFromArray:v8];

  v9 = _UIFocusEnvironmentCombinedPreferredFocusEnvironments(self, v3, [(UITabBarController *)self _subclassPreferredFocusedViewPrioritizationType]);

  return v9;
}

- (void)_rememberPresentingFocusedItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UITabBarController;
  [(UIViewController *)&v8 _rememberPresentingFocusedItem:v4];
  v5 = [(UITabBarController *)self selectedViewController];
  v6 = v5;
  if (!v4)
  {
    [(UITabBarController *)self _forgetFocusedItemForViewController:v5];
    goto LABEL_5;
  }

  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v5, v4);

  if (IsAncestorOfEnvironment)
  {
    v6 = [(UITabBarController *)self selectedViewController];
    [(UITabBarController *)self _rememberFocusedItem:v4 forViewController:v6];
LABEL_5:
  }
}

- (BOOL)_canRestoreFocusAfterTransitionToRecalledItem:(id)a3 inViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (dyld_program_sdk_at_least())
  {
    IsFocusedOrFocusable = [(UIViewController *)self _canRestoreFocusAfterTransitionToItem:v6];
  }

  else if (-[UIViewController restoresFocusAfterTransition](self, "restoresFocusAfterTransition") && [v7 restoresFocusAfterTransition])
  {
    v9 = [(UIViewController *)self view];
    if (_UIFocusEnvironmentIsAncestorOfEnvironment(v9, v6))
    {
      IsFocusedOrFocusable = _UIFocusItemIsFocusedOrFocusable(v6);
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

- (void)_didUpdateFocusInContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = UITabBarController;
  [(UIViewController *)&v12 _didUpdateFocusInContext:v5];
  v6 = [(UITabBarController *)self selectedViewController];
  v7 = [v6 view];
  v8 = [v5 nextFocusedItem];
  IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v7, v8);

  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle shouldForgetRememberedFocusItemForSelectedViewController:v6 context:v5])
  {
    [(UITabBarController *)self _forgetFocusedItemForViewController:v6];
  }

  v10 = [_UIFocusAnimationCoordinatorManager animationCoordinatorForContext:v5];
  if (!v10)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:1926 description:@"Received call to _didUpdateFocusInContext: outside of a focus update."];
  }

  [(UITabBarController *)self _setPreferTabBarFocused:[(UITabBarController *)self _isTabBarFocused]];
  [(_UITabBarControllerVisualStyle *)self->_visualStyle didUpdateFocusInContext:v5 withAnimationCoordinator:v10];
  if (IsAncestorOfEnvironment)
  {
    [(UITabBarController *)self set_shouldFocusViewControllerAfterTransition:0];
  }
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = UITabBarController;
  if (![(UIViewController *)&v31 shouldUpdateFocusInContext:v4])
  {
    v5 = 0;
    goto LABEL_37;
  }

  if (([v4 focusHeading] & 0x330) == 0)
  {
    v6 = [v4 nextFocusedView];
    v7 = [(UITabBarController *)self tabBar];
    v8 = [v6 isDescendantOfView:v7];

    v9 = [v4 previouslyFocusedView];
    v10 = [(UITabBarController *)self tabBar];
    v11 = [v9 isDescendantOfView:v10];

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
      v20 = [v19 viewControllers];
      v21 = [v20 firstObject];

      v22 = [v19 viewControllers];
      v23 = [v22 lastObject];

      if (v13 && ([v4 focusHeading] & 2) == 0)
      {
        v24 = [(UIViewController *)self view];
        v25 = [v24 effectiveUserInterfaceLayoutDirection];

        if (v21 == self)
        {
          v26 = [v4 focusHeading];
          v27 = v25 == 1;
          v28 = 8;
          v29 = 4;
          goto LABEL_33;
        }

        if (v23 == self)
        {
          v26 = [v4 focusHeading];
          v27 = v25 == 1;
          v28 = 4;
          v29 = 8;
LABEL_33:
          if (v27)
          {
            v28 = v29;
          }

          v5 = (v26 & v28) != 0;
        }
      }

      goto LABEL_37;
    }

    v14 = [(UITabBarController *)self _effectiveTabBarPosition];
    v5 = 1;
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = [v4 focusHeading];
        v17 = v12 == 0;
        v16 = 8;
        v18 = 4;
      }

      else
      {
        if (v14 != 4)
        {
          goto LABEL_27;
        }

        v15 = [v4 focusHeading];
        v17 = v12 == 0;
        v16 = 4;
        v18 = 8;
      }

      if (!v17)
      {
        v16 = v18;
      }
    }

    else if (v14 == 1)
    {
      v15 = [v4 focusHeading];
      v16 = 1;
      if (v12)
      {
        v16 = 2;
      }
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_27;
      }

      v15 = [v4 focusHeading];
      v16 = 1;
      if (!v12)
      {
        v16 = 2;
      }
    }

    v5 = (v15 & v16) != 0;
    goto LABEL_27;
  }

  v5 = 1;
LABEL_37:

  return v5;
}

- (void)_rememberFocusedItem:(id)a3 forViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITabBarController *)self _rememberedFocusedItemsByViewController];
  [v8 setObject:v7 forKey:v6];
}

- (void)_forgetFocusedItemForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarController *)self _rememberedFocusedItemsByViewController];
  [v5 removeObjectForKey:v4];
}

- (id)_recallRememberedFocusedItemForViewController:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarController *)self _rememberedFocusedItemsByViewController];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (BOOL)_isFocusedTabVisible
{
  v3 = [(UITabBar *)self->_tabBar _focusedIndex];
  v4 = [(UITabBarController *)self viewControllers];
  v5 = [(UITabBarController *)self selectedViewController];
  v6 = [v4 indexOfObject:v5];

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [(UITabBarController *)self selectedIndex];
  }

  return v3 == v6;
}

- (void)_compatibility_updateViewController:(id)a3 forTabBarObservedScrollView:(id)a4
{
  v12 = a4;
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle isScrollViewObservationInCompatibilityMode])
  {
    if (_UIViewControllerUseContentScrollViewAPI())
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:2045 description:@"Invalid code path for new API. This is a UIKit problem."];
    }

    v6 = v12;
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

- (void)_observeScrollViewDidScroll:(id)a3
{
  v20 = a3;
  [(_UITabBarControllerVisualStyle *)self->_visualStyle overlayInsetsAdjustment];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_UITabBarControllerVisualStyle *)self->_visualStyle adjustTabBarForContentScrollView:v20];
  [(_UITabBarControllerVisualStyle *)self->_visualStyle overlayInsetsAdjustment];
  if (v7 != v15 || v5 != v12 || v11 != v14 || v9 != v13)
  {
    v19 = [(UIViewController *)self _window];
    [v19 _noteOverlayInsetsDidChange];
  }

  [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:v20 tabBar:self->_tabBar];
}

- (void)_configureTargetActionForTabBarItem:(id)a3
{
  v4 = a3;
  [v4 setTarget:self];
  [v4 setAction:sel__tabBarItemClicked_];
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

- (void)_tabs_rebuildTabBarItemsAnimated:(BOOL)a3
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
  v8 = [(UITabBarController *)self _tabs_compactTabs];
  [v8 count];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__UITabBarController__tabs_rebuildTabBarItemsAnimated___block_invoke;
  v25[3] = &unk_1E7101F40;
  v27 = v7;
  v25[4] = self;
  v10 = v5;
  v26 = v10;
  [v8 enumerateObjectsUsingBlock:v25];
  if ([(_UITabBarControllerVisualStyle *)self->_visualStyle supportsShowingMoreItem]&& [(NSMutableArray *)self->_moreChildViewControllers count])
  {
    p_isa = [(UITabBarController *)self moreNavigationController];
    v12 = [(UIViewController *)p_isa _parentViewController];

    if (v12 != self)
    {
      [(UIViewController *)self addChildViewController:p_isa];
      [p_isa didMoveToParentViewController:self];
    }

    v13 = [(NSMutableArray *)self->_moreChildViewControllers copy];
    [p_isa setMoreViewControllers:v13];
    v14 = [p_isa tabBarItem];
    [(UITabBarController *)self _configureTargetActionForTabBarItem:v14];
    [v10 addObject:v14];

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
  v16 = [(UITabBarController *)self tabBar];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __55__UITabBarController__tabs_rebuildTabBarItemsAnimated___block_invoke_2;
  v21 = &unk_1E70F5AF0;
  v22 = self;
  v23 = v10;
  v24 = a3;
  v17 = v10;
  [(UITabBar *)v16 _performWhileIgnoringLock:?];

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
  v8 = [(UITabBarController *)self _tabs_compactTabs];
  v3 = [(UITabBarController *)self _effectiveMaxItems];
  v4 = [v8 count];
  [(NSMutableArray *)self->_moreChildViewControllers removeAllObjects];
  if (v4 >= v3)
  {
    for (i = v3 - 1; i < [v8 count]; ++i)
    {
      v6 = [v8 objectAtIndex:i];
      v7 = [v6 _displayedViewController];
      [(NSMutableArray *)self->_moreChildViewControllers addObject:v7];
    }
  }
}

- (void)_rebuildTabBarItemsAnimated:(BOOL)a3
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
    v6 = [(UITabBarController *)self _viewControllersInTabBar];
    v7 = [(UITabBarController *)self _effectiveMaxItems];
    v8 = self->_tabBarControllerFlags;
    v9 = [v6 count];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = v7 - (*&v8 & 1);
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
              v19 = [(UIViewController *)v17 tabBarItem];
              [(UITabBarController *)self _configureTargetActionForTabBarItem:v19];
              [v29 addObject:v19];
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
      v23 = [(UIViewController *)p_isa _parentViewController];

      v22 = v29;
      if (v23 != self)
      {
        [(UIViewController *)self addChildViewController:p_isa];
        [p_isa didMoveToParentViewController:self];
      }

      v24 = [(NSMutableArray *)self->_moreChildViewControllers copy];
      [p_isa setMoreViewControllers:v24];
      v25 = [p_isa tabBarItem];
      [(UITabBarController *)self _configureTargetActionForTabBarItem:v25];
      [v29 addObject:v25];

      v21 = a3;
    }

    else
    {
      [(UIMoreNavigationController *)self->_moreNavigationController _restoreOriginalNavigationController];
      p_isa = &self->_moreNavigationController->super.super.super.super.isa;
      self->_moreNavigationController = 0;
      v21 = a3;
      v22 = v29;
    }

    v26 = [(UITabBarController *)self tabBar];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __50__UITabBarController__rebuildTabBarItemsAnimated___block_invoke;
    v30[3] = &unk_1E70F5AF0;
    v30[4] = self;
    v31 = v22;
    v32 = v21;
    v27 = v22;
    [(UITabBar *)v26 _performWhileIgnoringLock:v30];

    [(UIView *)self->_containerView setNeedsLayout];
  }
}

void __50__UITabBarController__rebuildTabBarItemsAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tabBar];
  [v2 setItems:*(a1 + 40) animated:*(a1 + 48)];
}

- (void)_setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v94 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(_UITabBarControllerVisualStyle *)self->_visualStyle willUpdateViewControllers];
  v72 = self;
  v7 = [(UIViewController *)self mutableChildViewControllers];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v8 = v6;
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

  v13 = v72;
  v14 = [(UITabBarController *)v72 transientViewController];
  if (v14)
  {
    v15 = [v8 indexOfObject:v14];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15;
      v17 = [v8 mutableCopy];
      [v17 removeObjectAtIndex:v16];

      v8 = v17;
      v13 = v72;
    }

    [(UITabBarController *)v13 setTransientViewController:0 animated:0];
    v4 = 0;
  }

  v18 = [(UITabBarController *)v13 selectedViewController];
  v69 = v18;
  if (v18)
  {
    v66 = [(NSMutableArray *)v13->_moreChildViewControllers containsObject:v18];
  }

  else
  {
    v66 = 0;
  }

  v65 = [(UITabBarController *)v13 selectedIndex];
  if (!v13->_visualStyle)
  {
    v19 = [(UIViewController *)v13 traitCollection];
    [(UITabBarController *)v13 _updateVisualStyleForTraitCollection:v19];
  }

  v71 = [v7 count];
  v70 = [(NSMutableArray *)v13->_moreChildViewControllers count];
  v20 = [(UITabBarController *)v13 _effectiveMaxItems];
  if ([(_UITabBarControllerVisualStyle *)v13->_visualStyle supportsShowingMoreItem])
  {
    v21 = [v8 count] > v20;
  }

  else
  {
    v21 = 0;
  }

  if (!-[_UITabBarControllerVisualStyle supportsShowingMoreItem](v13->_visualStyle, "supportsShowingMoreItem") && [v8 count] > v20)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
    NSLog(&cfstr_IsTryingToSetV.isa, v72, v22, v23);

    v13 = v72;
  }

  v67 = v4;
  v68 = v14;
  v24 = v20 - 1;
  v85 = 0u;
  v86 = 0u;
  v73 = v20 - 1;
  if (!v21)
  {
    v24 = v20;
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
            v38 = [v7 objectAtIndex:v73];
            [v7 removeObjectAtIndex:v73];
            if ([v7 indexOfObjectIdenticalTo:v38] == 0x7FFFFFFFFFFFFFFFLL)
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
          v40 = [v32 parentViewController];

          if (v40 == v13)
          {
            [v7 addObject:v32];
          }

          else
          {
            [(UIViewController *)v13 addChildViewController:v32];
            [v32 didMoveToParentViewController:v13];
          }
        }

        else
        {
          v33 = [v7 objectAtIndex:v28];
          if (v32 != v33)
          {
            v34 = v7;
            [v7 replaceObjectAtIndex:v28 withObject:v32];
            [(UIMoreNavigationController *)v72->_moreNavigationController restoreOriginalNavigationControllerIfNecessary:v32];
            if ([obj indexOfObjectIdenticalTo:v33] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [(UIViewController *)v72 _removeChildViewController:v33];
            }

            v35 = [v32 parentViewController];

            v36 = v35 == v72;
            v7 = v34;
            if (!v36)
            {
              v37 = [v32 parentViewController];

              if (v37)
              {
                [v32 willMoveToParentViewController:0];
                [v32 removeFromParentViewController];
              }

              [v32 willMoveToParentViewController:v72];
              [(UIViewController *)v72 _addChildViewController:v32];
              [v32 didMoveToParentViewController:v72];
              v7 = v34;
            }
          }

          v13 = v72;
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
      v42 = [v7 objectAtIndex:v28];
      [v7 removeObjectAtIndex:v28];
      if ([v7 indexOfObjectIdenticalTo:v42] == 0x7FFFFFFFFFFFFFFFLL)
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

        [v7 removeObject:*(*(&v79 + 1) + 8 * j)];
      }

      v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v79 objects:v91 count:16];
    }

    while (v46);
  }

  v49 = v72;
  v50 = [(UITabBarController *)v72 _viewControllersInTabBar];
  v51 = [v50 count];
  v52 = v69;
  if (v69 && v51)
  {
    v53 = [(UITabBarController *)v72 _existingMoreNavigationController];

    v52 = v69;
    if (v69 == v53)
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

  v54 = [v50 indexOfObject:v52];
  if (v54 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(NSMutableArray *)v72->_moreChildViewControllers containsObject:v52])
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
  if (!v72)
  {
    v56 = 1;
    tabModel = 0;
    goto LABEL_88;
  }

LABEL_87:
  v56 = 0;
  tabModel = v72->_tabModel;
LABEL_88:
  v58 = [(_UITabModel *)tabModel selectedItem];
  v59 = v58;
  if (v54 == 0x7FFFFFFFFFFFFFFFLL && v58)
  {
    if (v56)
    {
      v60 = 0;
    }

    else
    {
      v60 = v72->_tabModel;
    }

    v61 = [(_UITabModel *)v60 tabItems];
    v54 = [v61 indexOfObject:v59];
  }

  if (v55 || v54 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_97;
  }

  v54 = v65;
  if (v65 < [v50 count])
  {
    v55 = [(UITabBarController *)v72 _viewControllerForSelectAtIndex:v65];
LABEL_97:
    if (v55)
    {
      v62 = [(NSMutableArray *)v72->_moreChildViewControllers containsObject:v55];
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
    selectedViewController = v72->_selectedViewController;
    v72->_selectedViewController = 0;
  }

  if (v62)
  {
    if (v67)
    {
      [(UITabBarController *)v72 setSelectedViewController:v55];
    }

    else
    {
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __51__UITabBarController__setViewControllers_animated___block_invoke;
      v77[3] = &unk_1E70F35B8;
      v77[4] = v72;
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
      [(UITabBarController *)v72 setSelectedIndex:v64];
    }

    else
    {
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __51__UITabBarController__setViewControllers_animated___block_invoke_2;
      v76[3] = &unk_1E70F32F0;
      v76[4] = v72;
      v76[5] = v64;
      [UIView performWithoutAnimation:v76];
    }
  }

  v49 = v72;
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
  v6 = [(UITabBarController *)self viewControllers];
  v7 = [v6 isEqualToArray:v9];

  if (v7)
  {
    *&self->_tabBarControllerFlags |= 2u;
    v8 = [(UIViewController *)self _existingView];
    [v8 setNeedsLayout];
  }

  else
  {
    [(UITabBarController *)self _setViewControllers:v9 animated:v4];
  }
}

- (id)_viewControllerForSelectAtIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL || self->_transientViewController == 0)
  {
    v4 = a3;
    v6 = [(UITabBarController *)self _effectiveMaxItems];
    if (v4 + 2 > v6 && (*&self->_tabBarControllerFlags & 1) != 0)
    {
      v4 = v4 - v6 + 1;
      v7 = self->_moreChildViewControllers;
    }

    else
    {
      v7 = [(UITabBarController *)self _viewControllersInTabBar];
    }

    v9 = v7;
    if (v4 == 0x7FFFFFFFFFFFFFFFLL || v4 >= [(NSMutableArray *)v7 count])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(NSMutableArray *)v9 objectAtIndex:v4];
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
  v4 = [(UITabBarController *)self allViewControllers];
  v5 = [v4 containsObject:v6];

  if (v5)
  {
    [(UITabBarController *)self _setSelectedViewController:v6];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[UITabBarController setSelectedViewController:] only a view controller in the tab bar controller's list of view controllers can be selected."];
  }
}

- (void)_setSelectedViewController:(id)a3 performUpdates:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v9 = v8;
  if (v4)
  {
    transientViewController = self->_transientViewController;
    if (transientViewController)
    {
      v11 = transientViewController == v8;
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
        v14 = [(UITabBarController *)self moreNavigationController];
        v15 = [v14 moreViewControllers];
        v16 = [v15 containsObject:v9];

        if (v16)
        {
          v13 = v9;
          v9 = v14;
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

      v17 = [(UIViewController *)self view];
      v18 = [(UIViewController *)self->_selectedViewController childModalViewController];
      selectedViewController = v18;
      if (!v18)
      {
        selectedViewController = self->_selectedViewController;
      }

      v20 = [(UIViewController *)v9 childModalViewController];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v9;
      }

      [(UITabBarController *)self transitionFromViewController:selectedViewController toViewController:v22];

      if (v13)
      {
        v23 = [(UITabBarController *)self moreNavigationController];
        [v23 setDisplayedViewController:v13];
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
    objc_storeStrong(&self->_selectedViewController, a3);
  }

  if ((*(&self->_tabBarControllerFlags + 1) & 0x80) == 0 || ([(UITabBarController *)self _existingMoreNavigationController], v26 = objc_claimAutoreleasedReturnValue(), v26, v9 == v26))
  {
    v27 = [(UIViewController *)v9 _resolvedTab];
  }

  else
  {
    v27 = [(UIViewController *)v9 tab];
  }

  v28 = v27;
  if (!v27)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:2745 description:{@"UITabBarController inconsistency; tried selecting a view controller without a valid tab: %@", v9}];
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

- (void)setRestorationIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = UITabBarController;
  [(UIResponder *)&v4 setRestorationIdentifier:a3];
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
    v8 = [(UITabBarController *)self _existingMoreNavigationController];
    [v8 setAllowsCustomizing:v7 != 0];
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
  v2 = [(UITabBarController *)self sidebar];
  v3 = [v2 isHidden];

  return v3 ^ 1;
}

- (void)_uip_setSidebarVisible:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITabBarController *)self sidebar];
  [v4 setHidden:!v3];
}

- (int64_t)_uip_preferredSidebarMode
{
  v2 = [(UITabBarController *)self mode];
  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 2);
  }
}

- (void)_uip_setPreferredSidebarMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (a3 == 2);
  }

  [(UITabBarController *)self setMode:v3];
}

- (void)_tab:(void *)a3 operationForAcceptingItemsFromDropSession:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 _isUniquelySPI];
    v8 = [a1 delegate];
    if (v7)
    {
      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v10 = [a1 delegate];
        v11 = [v10 _uip_tabBarController:a1 tab:v5 operationForAcceptingItemsFromDropSession:v6];
LABEL_7:
        a1 = v11;

        goto LABEL_9;
      }
    }

    else
    {
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v10 = [a1 delegate];
        v11 = [v10 tabBarController:a1 tab:v5 operationForAcceptingItemsFromDropSession:v6];
        goto LABEL_7;
      }
    }

    a1 = 0;
  }

LABEL_9:

  return a1;
}

- (void)_tab:(void *)a3 acceptItemsFromDropSession:
{
  v11 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [v11 _isUniquelySPI];
    v7 = [a1 delegate];
    if (v6)
    {
      v8 = objc_opt_respondsToSelector();

      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }

      v9 = [a1 delegate];
      [v9 _uip_tabBarController:a1 tab:v11 acceptItemsFromDropSession:v5];
    }

    else
    {
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }

      v9 = [a1 delegate];
      [v9 tabBarController:a1 tab:v11 acceptItemsFromDropSession:v5];
    }
  }

LABEL_8:
}

- (void)_tabDropSessionDidUpdate:(void *)a3 withDestinationTab:
{
  v9 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = [a1 delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [a1 delegate];
      [v8 _uip_tabBarController:a1 dropSessionDidUpdate:v9 withDestinationTab:v5];
    }
  }
}

- (double)_sidebarOverlapAmountForZoom
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [a1 sidebar];
  v2 = [v1 _outlineView];
  v3 = v2;
  if (v2)
  {
    Width = 0.0;
    if (*(v2 + 424))
    {
      goto LABEL_7;
    }
  }

  Width = 0.0;
  if ([(UITabBarControllerSidebar *)v1 _resolvedLayout]!= 1)
  {
    goto LABEL_7;
  }

  v5 = [(UITabBarControllerSidebar *)v1 _isSidebarSupportedAndVisible];

  if (v5)
  {
    v3 = [v1 _outlineView];
    [v3 frame];
    Width = CGRectGetWidth(v7);
LABEL_7:
  }

  return Width;
}

- (void)beginCustomizingTabBar:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  tabBarItemsToViewControllers = self->_tabBarItemsToViewControllers;
  self->_tabBarItemsToViewControllers = v4;

  v6 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(UITabBarController *)self viewControllers];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 tabBarItem];
        [self->_tabBarItemsToViewControllers setObject:v12 forKey:v13];
        v14 = [(UITabBarController *)self customizableViewControllers];
        LODWORD(v12) = [v14 containsObject:v12];

        if (v12)
        {
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15 = [(UITabBarController *)self tabBar];
  [v15 setLocked:0];

  v16 = [(UITabBarController *)self tabBar];
  [v16 beginCustomizingItems:v6];

  v17 = [(UITabBarController *)self tabBar];
  [v17 setLocked:1];
}

- (void)tabBar:(id)a3 willBeginCustomizingItems:(id)a4
{
  v6 = [(UITabBarController *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(UITabBarController *)self viewControllers];
    [v6 tabBarController:self willBeginCustomizingViewControllers:v5];
  }
}

- (void)tabBarSizingDidChange:(id)a3
{
  *&self->_tabBarControllerFlags &= ~0x20u;
  v4 = [(UIViewController *)self _existingView];

  if (v4)
  {

    [(UITabBarController *)self _prepareTabBar];
  }
}

- (id)_viewsWithDisabledInteractionGivenTransitionContext:(id)a3
{
  v6.receiver = self;
  v6.super_class = UITabBarController;
  v4 = [(UIViewController *)&v6 _viewsWithDisabledInteractionGivenTransitionContext:a3];
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

- (void)tabBar:(id)a3 willEndCustomizingItems:(id)a4 changed:(BOOL)a5
{
  v5 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v25 = a4;
  v7 = [(UIViewController *)self mutableChildViewControllers];
  if (!v5)
  {
    goto LABEL_23;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v25, "count")}];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __61__UITabBarController_tabBar_willEndCustomizingItems_changed___block_invoke;
  v32[3] = &unk_1E7101F68;
  v32[4] = self;
  v9 = v8;
  v33 = v9;
  [v25 enumerateObjectsUsingBlock:v32];
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
      v13 = [v25 objectAtIndex:v10];
      v14 = [v7 objectAtIndex:v10];
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

        [v7 replaceObjectAtIndex:v10 withObject:v12];
        [(UITabBarController *)self _configureTargetActionForTabBarItem:v13];
      }

      ++v10;
    }

    v26 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  }

  while (v26);
LABEL_20:

  v18 = [v7 count];
  if (v18 > [(UITabBarController *)self _effectiveMaxItems])
  {
    v19 = [(UITabBarController *)self _existingMoreNavigationController];
    [v19 setMoreViewControllersChanged:1];

    v20 = [(UITabBarController *)self _existingMoreNavigationController];
    [v20 setMoreViewControllers:self->_moreChildViewControllers];
  }

  tabBarItemsToViewControllers = self->_tabBarItemsToViewControllers;
  self->_tabBarItemsToViewControllers = 0;

  [(UITabBarController *)self _rebuildTabBarItemsIfNeeded];
  v5 = v5;
LABEL_23:
  v22 = [(UITabBarController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v23 = [(UITabBarController *)self viewControllers];
    [v22 tabBarController:self willEndCustomizingViewControllers:v23 changed:v5];
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

- (void)tabBar:(id)a3 didEndCustomizingItems:(id)a4 changed:(BOOL)a5
{
  v5 = a5;
  v8 = [(UITabBarController *)self delegate:a3];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(UITabBarController *)self viewControllers];
    [v8 tabBarController:self didEndCustomizingViewControllers:v7 changed:v5];
  }
}

- (void)animationDidStop:(id)a3 finished:(id)a4 context:(id)a5
{
  v7 = [a4 BOOLValue];
  v8 = [(UITabBarController *)self _wantsBarHidden];
  if (a3 == @"UITabBarControllerHideBar" || (v7 & 1) == 0)
  {
    [(UITabBar *)self->_tabBar setHidden:v8];
  }

  v18 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (a3 == @"UITabBarControllerShowBar")
  {
    if (v7)
    {
      [(UIView *)self->_containerView setNeedsLayout];
    }
  }

  else
  {
    if (a3 != @"UITabBarControllerHideBar")
    {
      goto LABEL_16;
    }

    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        [v18 _tabBarControllerDidFinishShowingTabBar:self isHidden:v8];
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
    [v18 _tabBarControllerDidFinishShowingTabBar:self isHidden:v8];
  }

LABEL_16:
  [(UITabBarController *)self _updateContentLayoutGuideConstraints];
  [v18 _updateContentOverlayInsetsForSelfAndChildren];
}

- (void)_hideBarWithTransition:(int)a3 isExplicit:(BOOL)a4 duration:(double)a5 reason:(unint64_t)a6
{
  v8 = a4;
  v11 = [(UITabBarController *)self _wantsBarHidden];
  *&self->_tabBarControllerFlags |= 4 * (a6 & 3);
  if (!v11)
  {
    v12 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    objc_opt_class();
    objc_opt_isKindOfClass();
    visualStyle = self->_visualStyle;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke;
    v67[3] = &unk_1E7101F90;
    v67[4] = self;
    v67[5] = a6;
    v68 = a3 != 0;
    [(_UITabBarControllerVisualStyle *)visualStyle performWithoutNotifyingTabBarController:v67];
    v14 = objc_opt_class();
    v15 = v12;
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

    v18 = [v17 _didExplicitlyHideTabBar];
    if (v17)
    {
      if (v8)
      {
        [v17 _setDidExplicitlyHideTabBar:1];
      }

      if (a3 == 6)
      {
        [v17 _setCrossfadingOutTabBar:1];
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_2;
    aBlock[3] = &unk_1E7101FB8;
    aBlock[4] = self;
    v64 = a6;
    v65 = a6 != 2;
    v19 = v17;
    v63 = v19;
    v66 = v18;
    v20 = _Block_copy(aBlock);
    if ([(_UITabBarControllerVisualStyle *)self->_visualStyle ignoresDefaultTabBarVisibilityAnimation])
    {
      if (a6 != 2)
      {
LABEL_45:

        return;
      }

      v21 = [v15 transitionCoordinator];
      [v19 _setCrossfadingOutTabBar:1];
      if (a3)
      {
        [v21 animateAlongsideTransition:0 completion:v20];
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
      v22 = a3;
    }

    else
    {
      v22 = 0;
    }

    [(UIView *)self->_viewControllerTransitionView frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(UIView *)self->_containerView bounds];
    [(UIView *)self->_viewControllerTransitionView setFrame:v24, v26, v28];
    v29 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    v21 = [v29 transitionCoordinator];

    if ((v22 - 1) <= 1)
    {
      v30 = [v21 _mainContext];
      v31 = [v30 _animator];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v33 = [v30 _animator];

        if (v33)
        {
          v34 = [v33 resizedFromContainerView];
          [(UIView *)self->_tabBar frame];
          v36 = v35;
          v38 = v37;
          v39 = v34;
          [v34 bounds];
          [(UITabBar *)self->_tabBar setFrame:0.0, v40 - v38, v36, v38];
          v41 = 0;
LABEL_26:
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_4;
          v59[3] = &unk_1E70F79E8;
          v59[4] = self;
          v42 = v33;
          v60 = v42;
          v61 = v22;
          v43 = _Block_copy(v59);
          if ((v41 & 1) != 0 || ([(UIView *)self->_tabBar superview], v44 = objc_claimAutoreleasedReturnValue(), v44, !v44))
          {
            if (v22)
            {
              v46 = v39;
              if (a5 < 0.0)
              {
                [objc_opt_class() durationForTransition:v22];
                a5 = v47;
              }

              v20 = v52;
              if (v21)
              {
                v53[0] = MEMORY[0x1E69E9820];
                v53[1] = 3221225472;
                v53[2] = __72__UITabBarController__hideBarWithTransition_isExplicit_duration_reason___block_invoke_7;
                v53[3] = &unk_1E70F3770;
                v54 = v43;
                v48 = _Block_copy(v53);
                if (([v21 animateAlongsideTransitionInView:self->_tabBar animation:v48 completion:v52] & 1) == 0)
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
                [UIView animateWithDuration:4 delay:v43 options:v55 animations:a5 completion:0.0];
              }

              goto LABEL_41;
            }

            v43[2](v43);
            v46 = v39;
            v20 = v52;
          }

          else
          {
            v45 = [(UIView *)self->_tabBar superview];
            [(UITabBar *)self->_tabBar set_expectedSuperviewFollowingAnimation:v45];

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
            [v21 animateAlongsideTransition:0 completion:v56];

            if (v22)
            {
LABEL_41:
              v50 = [(UIViewController *)self traitCollection];
              v51 = [v50 userInterfaceIdiom];

              if (v51 == 6)
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

    v33 = 0;
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

- (void)_showBarWithTransition:(int)a3 isExplicit:(BOOL)a4 duration:(double)a5 reason:(unint64_t)a6
{
  tabBarControllerFlags = self->_tabBarControllerFlags;
  v8 = (*&tabBarControllerFlags >> 2) & 3;
  v9 = v8 & ~a6;
  self->_tabBarControllerFlags = (*&tabBarControllerFlags & 0xFFFFFFF3 | (4 * (v9 & 3)));
  if (v8 != v9)
  {
    v11 = a4;
    LODWORD(v12) = a3;
    if (![(UITabBarController *)self _wantsBarHidden])
    {
      v14 = [(UITabBarController *)self _selectedViewControllerInTabBar];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      visualStyle = self->_visualStyle;
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke;
      v92[3] = &unk_1E7101F90;
      v92[4] = self;
      v92[5] = a6;
      v93 = v12 != 0;
      [(_UITabBarControllerVisualStyle *)visualStyle performWithoutNotifyingTabBarController:v92];
      v17 = objc_opt_class();
      v18 = v14;
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

      v21 = [v20 _didExplicitlyHideTabBar];
      if (v11)
      {
        [v20 _setDidExplicitlyHideTabBar:0];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_2;
      aBlock[3] = &unk_1E7102008;
      aBlock[4] = self;
      v90 = a6;
      v22 = v20;
      v89 = v22;
      v91 = v21;
      v23 = _Block_copy(aBlock);
      if ([(_UITabBarControllerVisualStyle *)self->_visualStyle ignoresDefaultTabBarVisibilityAnimation])
      {
        if (a6 != 2)
        {
LABEL_54:

          return;
        }

        v24 = [v18 transitionCoordinator];
        v25 = v24;
        if (v12)
        {
          [v24 animateAlongsideTransition:0 completion:v23];
        }

        else
        {
          [(UITabBarController *)self animationDidStop:@"UITabBarControllerShowBar" finished:MEMORY[0x1E695E118] context:0];
        }

LABEL_53:

        goto LABEL_54;
      }

      v77 = isKindOfClass;
      v26 = [(UITabBarController *)self _selectedViewControllerInTabBar];
      v25 = [v26 transitionCoordinator];

      if ((v12 - 1) <= 1)
      {
        v27 = [v25 _mainContext];
        v28 = [v27 _animator];
        objc_opt_class();
        v29 = objc_opt_isKindOfClass();

        if (v29)
        {
          v30 = [v27 _animator];

          if (v30)
          {
            v78 = v30;
            v31 = [v30 resizedToContainerView];
            v32 = 0;
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      v78 = 0;
      v31 = 0;
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
                  if (a5 < 0.0)
                  {
                    [objc_opt_class() durationForTransition:v12];
                    a5 = v60;
                  }

                  if (v25)
                  {
                    v79[0] = MEMORY[0x1E69E9820];
                    v79[1] = 3221225472;
                    v79[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_7;
                    v79[3] = &unk_1E70F3770;
                    v80 = v56;
                    v61 = _Block_copy(v79);
                    if (([v25 animateAlongsideTransitionInView:self->_tabBar animation:v61 completion:v23] & 1) == 0)
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
                    [UIView animateWithDuration:0 delay:v56 options:v81 animations:a5 completion:0.0];
                  }

                  v59 = v78;
                  goto LABEL_52;
                }

                v56[2](v56);
                v59 = v78;
              }

              else
              {
                v58 = [(UIView *)self->_tabBar superview];
                [(UITabBar *)self->_tabBar set_expectedSuperviewFollowingAnimation:v58];

                LOBYTE(v58) = [(UIView *)self->_tabBar _safeAreaInsetsFrozen];
                [(UIView *)self->_tabBar _setSafeAreaInsetsFrozen:1];
                [v31 addSubview:self->_tabBar];
                v82[0] = MEMORY[0x1E69E9820];
                v82[1] = 3221225472;
                v82[2] = __72__UITabBarController__showBarWithTransition_isExplicit_duration_reason___block_invoke_5;
                v82[3] = &unk_1E7102058;
                v82[4] = self;
                v85 = v58;
                v83 = v56;
                v84 = v23;
                [v25 animateAlongsideTransition:0 completion:v82];

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
            v41 = [(UIView *)self->_tabBar superview];
            [v41 frame];
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
          v74 = [(UIView *)self->_tabBar superview];
          [v74 bounds];
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
        v65 = [(UIView *)self->_tabBar superview];
        [v65 bounds];
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
        [v31 bounds];
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

- (void)setTabBarMinimizeBehavior:(int64_t)a3
{
  if (self->_tabBarMinimizeBehavior != a3)
  {
    self->_tabBarMinimizeBehavior = a3;
    tabBar = self->_tabBar;
    if (tabBar)
    {
      if (tabBar->__minimizeBehavior != a3)
      {
        tabBar->__minimizeBehavior = a3;
        [(_UITabBarVisualProvider *)tabBar->_visualProvider minimizeBehaviorDidChange];
      }
    }
  }
}

- (void)_setShouldCollapseTabBarOnScroll:(BOOL)a3
{
  if (a3)
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

- (BOOL)_isViewControllerContainedInSelected:(id)a3 ignoresPresentations:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  while (v7)
  {
    v8 = [(UIViewController *)v7 parentViewController];
    v9 = v8;
    if (v8 || a4)
    {
      v10 = v7;
      v7 = v8;
    }

    else
    {
      v10 = [(UIViewController *)v7 presentingViewController];
      v11 = [v10 presentationController];
      if ([v11 _presentedViewControllerProvidesContentScrollView])
      {
        v12 = v10;
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

- (void)_viewSubtreeDidGainScrollView:(id)a3 enclosingViewController:(id)a4 tvSearchController:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:self->_selectedViewController];
  v9 = [(UITabBarController *)self _relevantEdgeForScrollViewObservation];
  v10 = [v8 _contentOrObservableScrollViewForEdge:v9];
  if (v10)
  {
    goto LABEL_6;
  }

  v11 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:v7];
  v12 = [v11 _contentOrObservableScrollViewForEdge:v9];
  if (v12 != v14)
  {

    goto LABEL_6;
  }

  v13 = [(UITabBarController *)self _isViewControllerContainedInSelected:v7 ignoresPresentations:0];

  if (!v13)
  {
LABEL_6:
    if (v10 != v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = v14;
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

- (void)_viewControllerObservableScrollViewAmbiguityStatusDidChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ((*(v4 + 94) & 3u) - 1 <= 1)
    {
      v10 = v4;
      if ((_UIBarsApplyChromelessEverywhere() & 1) != 0 || (v6 = _UIViewControllerUseContentScrollViewAPI(), v5 = v10, v6))
      {
        v7 = [(UITabBarController *)self _relevantEdgeForScrollViewObservation];
        v8 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:v10];
        v9 = [v8 _contentOrObservableScrollViewForEdge:v7];
        [(UITabBarController *)self _updateAndObserveScrollView:v9 viewController:v8];

        v5 = v10;
      }
    }
  }
}

- (void)_handleObservingForScrollView:(id)a3 sharedWithNavigationController:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (_UIBarsApplyChromelessEverywhere())
  {
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = _UIViewControllerUseContentScrollViewAPI();
    if (!v6 || (v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if ((v6[94] & 3u) - 1 <= 1)
  {
    v8 = [v6 presentedViewController];

    if (!v8)
    {
      if (v10)
      {
        v9 = [v6 _viewControllerForObservableScrollView];
        [(UITabBarController *)self _updateAndObserveScrollView:v10 viewController:v9];
      }

      else
      {
        [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:0 tabBar:self->_tabBar];
      }
    }
  }

LABEL_11:
}

- (void)_navigationController:(id)a3 didUpdateAndObserveScrollView:(id)a4 forEdges:(unint64_t)a5
{
  v9 = a3;
  v8 = a4;
  if (([(UITabBarController *)self _relevantEdgeForScrollViewObservation]& a5) != 0)
  {
    [(UITabBarController *)self _handleObservingForScrollView:v8 sharedWithNavigationController:v9];
  }
}

- (void)_navigationControllerDidUpdateStack:(id)a3
{
  v8 = a3;
  if (_UIBarsApplyChromelessEverywhere())
  {
    v4 = [(UITabBarController *)self _relevantEdgeForScrollViewObservation];
    v5 = [(UIViewController *)v8 topViewController];
    v6 = [v5 _contentOrObservableScrollViewForEdge:v4];

    [(UITabBarController *)self _handleObservingForScrollView:v6 sharedWithNavigationController:v8];
  }

  if (self->_selectedViewController == v8 || [(UITabBarController *)self _isViewControllerContainedInSelected:v8 ignoresPresentations:1])
  {
    v7 = self->_visualStyle;
    [(_UITabBarControllerVisualStyle *)v7 navigationControllerDidUpdate:v8];
  }
}

- (void)_navigationControllerDidUpdateSearchController:(id)a3
{
  v5 = a3;
  if (self->_selectedViewController == v5 || [(UITabBarController *)self _isViewControllerContainedInSelected:v5 ignoresPresentations:1])
  {
    v4 = self->_visualStyle;
    [(_UITabBarControllerVisualStyle *)v4 navigationControllerDidUpdate:v5];
  }
}

- (void)_setSuspendBarBackgroundUpdating:(BOOL)a3
{
  if (a3)
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

- (void)_resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary:(BOOL)a3 animated:(BOOL)a4
{
  backgroundUpdatesSuspendCount = self->_backgroundUpdatesSuspendCount;
  if (backgroundUpdatesSuspendCount)
  {
    v6 = backgroundUpdatesSuspendCount - 1;
    self->_backgroundUpdatesSuspendCount = v6;
    if (!v6)
    {
      if (!a3 || (*(&self->_tabBarControllerFlags + 2) & 8) != 0)
      {
        tabBar = self->_tabBar;

        [(UITabBar *)tabBar _setSuspendBackgroundUpdates:0, a4];
      }

      else
      {
        v7 = a4;
        objc_initWeak(location, self);
        v8 = [(UITabBarController *)self _observingScrollView];
        v9 = [(UITabBarController *)self tabBar];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __85__UITabBarController__resumeAllTabBarBackgroundUpdatesAndUpdateIfNecessary_animated___block_invoke;
        v13[3] = &unk_1E70F3668;
        objc_copyWeak(&v14, location);
        [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:v8 tabBar:v9 isNavigationTransitionUpdate:0 forceTwoPartCrossfade:v7 completion:v13];

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

- (void)_updateBackgroundTransitionProgressForScrollView:(id)a3 tabBar:(id)a4 isNavigationTransitionUpdate:(BOOL)a5 forceTwoPartCrossfade:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!self->_backgroundUpdatesSuspendCount)
  {
    tabBarControllerFlags = self->_tabBarControllerFlags;
    if ((*&tabBarControllerFlags & 0x800) == 0 || v9)
    {
      if ((*&tabBarControllerFlags & 0x800) != 0 && v9)
      {
        self->_tabBarControllerFlags = (*&tabBarControllerFlags & 0xFFFFF7FF);
      }

      v39 = 0.0;
      if (_UIBarsGetBottomBarBackgroundTransitionProgressForScrollView(v12, v13, &v39))
      {
        [v13 _backgroundTransitionProgress];
        v17 = v16;
        if (v39 == 1.0)
        {
          v18 = [v13 selectedItem];
          v19 = [v18 scrollEdgeAppearance];
          v20 = v19;
          if (v19)
          {
            v21 = v19;
          }

          else
          {
            v21 = [v13 scrollEdgeAppearance];
          }

          v23 = v21;

          if (v17 == 1.0)
          {
            v24 = [v23 _backgroundData];
            v25 = [(UIBarAppearance *)self->_lastUsedScrollEdgeAppearance _backgroundData];
            v26 = v24;
            v27 = v25;
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

        v29 = v17 != v39 && v9;
        if ((v29 || v8) && +[UIView _isInAnimationBlockWithAnimationsEnabled])
        {
          v30 = [(UITabBar *)self->_tabBar selectedItem];
          v31 = [v30 scrollEdgeAppearance];
          if (v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = [(UITabBar *)self->_tabBar scrollEdgeAppearance];

            if (!v32)
            {
LABEL_34:
              v34 = v39;
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v35[2] = __140__UITabBarController__updateBackgroundTransitionProgressForScrollView_tabBar_isNavigationTransitionUpdate_forceTwoPartCrossfade_completion___block_invoke;
              v35[3] = &unk_1E7101F90;
              v36 = v13;
              v37 = v34;
              v38 = v22;
              _UIBarsTwoPartCrossfadeTransitionProgress(v35, v14, v34);

LABEL_37:
              if (v39 == 1.0 && (v17 != 1.0) | v22 & 1)
              {
                objc_storeStrong(&self->_lastUsedScrollEdgeAppearance, v23);
              }

              goto LABEL_13;
            }
          }

          v33 = [v32 _hasTransparentBackground];

          if (v33)
          {
            goto LABEL_34;
          }
        }

        [v13 _setBackgroundTransitionProgress:v22 forceUpdate:0 animated:v39];
        if (v14)
        {
          (*(v14 + 2))(v14, 1);
        }

        goto LABEL_37;
      }
    }
  }

  if (v14)
  {
    (*(v14 + 2))(v14, 1);
  }

LABEL_13:
}

- (void)_stopObservingScrollView:(id)a3
{
  v4 = a3;
  if ([v4 _isScrollViewScrollObserver:self])
  {
    [v4 _removeScrollViewScrollObserver:self];
  }
}

- (BOOL)_tvTabBarShouldTrackScrollView:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 _viewControllerForAncestor];
  v4 = objc_opt_class();
  v5 = [(UIViewController *)v3 _ancestorViewControllerOfClass:v4 allowModalParent:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _tvShouldScrollWithObservedScrollViewIfPossible];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_viewControllerDidBeginDismissal:(id)a3
{
  v4 = a3;
  if (_UIBarsApplyChromelessEverywhere())
  {
    v5 = [v4 _viewControllerForObservableScrollView];
    if (![(UITabBarController *)self _isViewControllerContainedInSelected:v5 ignoresPresentations:0])
    {
LABEL_15:

      goto LABEL_16;
    }

    v6 = [v5 _contentOrObservableScrollViewForEdge:4];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__UITabBarController__viewControllerDidBeginDismissal___block_invoke;
    aBlock[3] = &unk_1E7101978;
    aBlock[4] = self;
    v7 = v6;
    v19 = v7;
    v8 = v4;
    v20 = v8;
    v9 = _Block_copy(aBlock);
    v10 = [v8 transitionCoordinator];
    if (!v10)
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
      [v10 animateAlongsideTransition:0 completion:v9];
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

- (void)_updateObservingScrollViewWithScrollView:(id)a3 viewController:(id)a4 getTabBarRequiresStandardBackground:(BOOL *)a5
{
  v23 = a3;
  v8 = a4;
  if ([v8 _isViewControllerForObservableScrollViewAmbiguous])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v8 _splitViewControllerEnforcingClass:1];
    if (!v10 || ([(UIViewController *)self _splitViewControllerEnforcingClass:1], v11 = objc_claimAutoreleasedReturnValue(), v11, v10 == v11))
    {
      v9 = 0;
    }

    else
    {
      v9 = [v10 _isViewControllerForObservableScrollViewAmbiguous];
    }
  }

  if (!v23 || (_UIViewControllerUseContentScrollViewAPI() & 1) == 0)
  {
    if (([v23 _isScrollViewScrollObserver:self] & 1) == 0)
    {
LABEL_16:
      v14 = 0;
      goto LABEL_17;
    }

LABEL_15:
    [(UITabBarController *)self _stopObservingScrollView:v23];
    goto LABEL_16;
  }

  v12 = [(_UITabBarControllerVisualStyle *)self->_visualStyle shouldTrackContentScrollView:v23 viewController:v8 tabBarBackgroundRequired:v9];
  v13 = [v23 _isScrollViewScrollObserver:self];
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
    [v23 _addScrollViewScrollObserver:self];
  }

  v14 = 1;
LABEL_17:
  WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v17 = objc_loadWeakRetained(&self->_observingScrollView);
    v18 = v17 == v23 ? v14 : 0;

    if ((v18 & 1) == 0)
    {
      v19 = objc_loadWeakRetained(&self->_observingScrollView);
      [(UITabBarController *)self _stopObservingScrollView:v19];
    }
  }

  if (v14)
  {
    v20 = v23;
  }

  else
  {
    v20 = 0;
  }

  objc_storeWeak(&self->_observingScrollView, v20);
  v21 = [(UITabBarController *)self tabBar];
  v22 = objc_loadWeakRetained(&self->_observingScrollView);
  if (v21)
  {
    [v21[59] observeContentScrollView:v22];
  }

  if (a5)
  {
    *a5 = v9;
  }
}

- (void)_updateAndObserveScrollView:(id)a3 viewController:(id)a4 updateBackgroundTransitionProgressForNilScrollView:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v13 = 0;
  [(UITabBarController *)self _updateObservingScrollViewWithScrollView:v8 viewController:a4 getTabBarRequiresStandardBackground:&v13];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);

    if (WeakRetained == v8)
    {
      [(_UITabBarControllerVisualStyle *)self->_visualStyle adjustTabBarForContentScrollView:v8];
      [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:v8 tabBar:self->_tabBar];
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
    v12 = !v5;
  }

  if (v12)
  {
  }

  else if ((v13 & 1) == 0)
  {
    [(UITabBarController *)self _updateBackgroundTransitionProgressForScrollView:0 tabBar:self->_tabBar];
  }
}

- (void)_observableScrollViewDidChangeFrom:(id)a3 forViewController:(id)a4 edges:(unint64_t)a5
{
  v8 = a4;
  v23.receiver = self;
  v23.super_class = UITabBarController;
  [(UIViewController *)&v23 _observableScrollViewDidChangeFrom:a3 forViewController:v8 edges:a5];
  if (v8)
  {
    if ((v8[94] & 3u) - 1 <= 1)
    {
      v9 = [(UITabBarController *)self _relevantEdgeForScrollViewObservation];
      if ((v9 & a5) != 0)
      {
        v10 = v9;
        WeakRetained = objc_loadWeakRetained(&self->_observingScrollView);
        v12 = [v8 _contentOrObservableScrollViewForEdge:v10];
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
            v17 = [v12 _viewControllerForAncestor];
            v18 = [v17 presentingViewController];
            v19 = [v18 tabBarController];
            v20 = v19;
            if (v19)
            {
              v21 = v19;
            }

            else
            {
              v21 = [v17 tabBarController];
            }

            v22 = v21;

            if (v22 == self)
            {
              [(UITabBarController *)self _updateAndObserveScrollView:v12 viewController:v8];
            }
          }
        }
      }
    }
  }
}

- (id)_overrideTraitCollectionToPassDuringTraitChangeToChildViewController:(id)a3
{
  v4 = a3;
  if (_overrideUISplitViewControllerToCompact_onceToken != -1)
  {
    dispatch_once(&_overrideUISplitViewControllerToCompact_onceToken, &__block_literal_global_903);
  }

  if (_overrideUISplitViewControllerToCompact_override == 1 && -[_UITabBarControllerVisualStyle overrideUISplitViewControllerToCompact](self->_visualStyle, "overrideUISplitViewControllerToCompact") && !-[UITabBarController _isBarEffectivelyHidden](self, "_isBarEffectivelyHidden") && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v4 style])
  {
    v5 = [UITraitCollection traitCollectionWithHorizontalSizeClass:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setNotifySplitViewControllerForSelectionChange:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFBFF | v3);
}

- (BOOL)_wrapsNavigationController:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  return 0;
}

- (void)_setTabBarPosition:(int64_t)a3
{
  if (self->_tabBarPosition != a3)
  {
    if (a3 >= 5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:4338 description:{@"Invalid parameter not satisfying: %@", @"UITabBarControllerBarPositionUnspecified <= position && position <= UITabBarControllerBarPositionRight"}];
    }

    v5 = [(UITabBarController *)self _effectiveTabBarPosition];
    self->_tabBarPosition = a3;
    if (v5 != [(UITabBarController *)self _effectiveTabBarPosition])
    {
      *&self->_tabBarControllerFlags &= ~0x20u;
      containerView = self->_containerView;

      [(UIView *)containerView setNeedsLayout];
    }
  }
}

- (id)_viewControllerForTabBarItem:(id)a3
{
  v5 = a3;
  v6 = [(UITabBarController *)self tabBar];
  v7 = [v6 items];

  v8 = [(UITabBarController *)self _viewControllersInTabBar];
  v9 = MEMORY[0x1E696AE18];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __51__UITabBarController__viewControllerForTabBarItem___block_invoke;
  v22 = &unk_1E7102080;
  v10 = v5;
  v23 = v10;
  v11 = [v9 predicateWithBlock:&v19];
  v12 = [v8 filteredArrayUsingPredicate:v11];

  if ([v12 count] != 1)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:4363 description:{@"Inconsistency in UITabBar items and view controllers detected. No view controller matches the UITabBarItem '%@'.", v10, v19, v20, v21, v22}];
  }

  v13 = [v12 firstObject];
  v14 = [v13 tabBarItem];
  v15 = [v7 containsObject:v14];

  if ((v15 & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:4367 description:{@"Inconsistency in UITabBar items and view controllers detected. The matching UITabBarItem '%@' is not available in the UITabBar.", v10}];
  }

  return v13;
}

uint64_t __51__UITabBarController__viewControllerForTabBarItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabBarItem];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)_tabBarDidChangeSelectionToItem:(id)a3
{
  v4 = [(UITabBarController *)self _viewControllerForTabBarItem:a3];
  v15 = v4;
  if ((*(&self->_tabBarControllerFlags + 1) & 0x80) == 0)
  {
    v5 = [v4 _uip_tabElement];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 isEnabled];

      if (!v7)
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
  v12 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 tabBarItem];
    [(UITabBarController *)self _setSelectedTabBarItem:v14];
  }

  [(UIViewController *)self setNeedsFocusUpdate];

  v11 = v15;
LABEL_13:
}

- (void)_setSelectedViewControllerAndNotify:(id)a3
{
  v4 = a3;
  tabBarControllerFlags = self->_tabBarControllerFlags;
  v6 = [(UITabBarController *)self delegate];
  if ((*&tabBarControllerFlags & 0x8000) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && ([v6 tabBarController:self shouldSelectViewController:v4] & 1) == 0)
  {
    v9 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    v7 = v9;
    if (v9)
    {
      v10 = [(UIViewController *)v9 tabBarItem];
      [(UITabBarController *)self _setSelectedTabBarItem:v10];

      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __58__UITabBarController__setSelectedViewControllerAndNotify___block_invoke;
      v14 = &unk_1E70F35B8;
      v15 = v7;
      v16 = self;
      [(UITabBarController *)self _performWithoutNotifyingSelectionChange:&v11];
    }

    [(UIViewController *)self setNeedsFocusUpdate:v11];
    goto LABEL_15;
  }

  if (self->_transientViewController != v4)
  {
    v7 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    if (v7 == v4)
    {
      [(_UITabBarControllerVisualStyle *)self->_visualStyle updateViewControllerForReselection:v4];
    }

    [(_UITabBarControllerVisualStyle *)self->_visualStyle updateFocusForSelectedViewControllerChange];
    if ((*&tabBarControllerFlags & 0x8000) != 0)
    {
      [(UITabBarController *)self _setSelectedViewController:v4 performUpdates:1];
    }

    else
    {
      [(UITabBarController *)self setTransientViewController:0];
      [(UITabBarController *)self setSelectedViewController:v4];
      if (objc_opt_respondsToSelector())
      {
        v8 = [(UITabBarController *)self selectedViewController];
        [v6 tabBarController:self didSelectViewController:v8];
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

- (UIEdgeInsets)_edgeInsetsForChildViewController:(id)a3 insetsAreAbsolute:(BOOL *)a4
{
  v6 = a3;
  v7 = [(UITabBarController *)&self->super.super.super.isa _viewControllersForTabs];
  if ([v7 indexOfObjectIdenticalTo:v6] != 0x7FFFFFFFFFFFFFFFLL || self->_moreNavigationController == v6)
  {
    [(_UITabBarControllerVisualStyle *)self->_visualStyle edgeInsetsForChildViewController:v6];
    v9 = v16;
    v11 = v17;
    v13 = v18;
    v15 = v19;
    *a4 = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = UITabBarController;
    [(UIViewController *)&v24 _edgeInsetsForChildViewController:v6 insetsAreAbsolute:a4];
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

- (CGRect)_frameForViewController:(id)a3
{
  v4 = a3;
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
    v15 = [(UITabBarController *)self _effectiveTabBarPosition];
    v16 = [(UITabBar *)self->_tabBar _isTranslucent];
    v17 = [v4 edgesForExtendedLayout];
    if ([(UIView *)self->_tabBar isHidden])
    {
      v18 = 0;
    }

    else
    {
      v19 = 4;
      if (v15 == 2)
      {
        v19 = 1;
      }

      v18 = (v17 & v19) == 0;
      if (((v18 | v16) & 1) == 0)
      {
        v18 = [v4 extendedLayoutIncludesOpaqueBars] ^ 1;
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

      if (v15 != 2)
      {
        v23 = v14;
      }

      if ((v15 == 2) | v20 & 1)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v21;
      }

      [v4 _setContentOverlayInsets:v23 andLeftMargin:0.0 rightMargin:{v24, 0.0, -1.79769313e308, -1.79769313e308}];
    }
  }

  [(_UITabBarControllerVisualStyle *)self->_visualStyle adjustedContentViewFrame:v4 viewController:v6, v8, v10, v12];
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
  v3 = [(UITabBarController *)self _animator];

  if (v3)
  {
    v4 = [(UITabBarController *)self _animator];
    v5 = [_UIViewControllerTransitionContext _associatedTransitionContextForAnimationController:v4];

    v6 = [v5 _transitionCoordinator];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITabBarController;
    v6 = [(UIViewController *)&v8 transitionCoordinator];
  }

  return v6;
}

- (CGRect)_frameForWrapperViewForViewController:(id)a3
{
  v3 = [(UITabBarController *)self _transitionView];
  [v3 bounds];
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

- (id)_customInteractionControllerForAnimator:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained tabBarController:self interactionControllerUsingAnimator:v4];
LABEL_6:
      v7 = v6;
      goto LABEL_8;
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained tabBarController:self interactionControllerForAnimationController:v4];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)_customAnimatorForFromViewController:(id)a3 toViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [WeakRetained tabBarController:self animatorForFromViewController:v6 toViewController:v7];
      goto LABEL_6;
    }

    if (objc_opt_respondsToSelector())
    {
      v9 = [WeakRetained tabBarController:self animationControllerForTransitionFromViewController:v6 toViewController:v7];
LABEL_6:
      v10 = v9;
      if (v9)
      {
        goto LABEL_8;
      }
    }
  }

  v10 = [(_UITabBarControllerVisualStyle *)self->_visualStyle defaultAnimatorForFromViewController:v6 toViewController:v7];
LABEL_8:

  return v10;
}

- (id)_viewControllerForObservableScrollView
{
  visualStyle = self->_visualStyle;
  v3 = [(UITabBarController *)self selectedViewController];
  v4 = [(_UITabBarControllerVisualStyle *)visualStyle viewControllerForObservableScrollViewFromViewController:v3];

  return v4;
}

- (void)transitionFromViewController:(id)a3 toViewController:(id)a4 transition:(int)a5 shouldSetSelected:(BOOL)a6
{
  v6 = a6;
  v155 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v121 = v11;
  if (v11 == v12)
  {
    goto LABEL_117;
  }

  v112 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(UIViewControllerAnimatedTransitioning *)self->__animator interruptTabBarControllerTransition];
  }

  v111 = a5;
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

  v16 = v11;
  if (v11)
  {
    v17 = [(UITabBarController *)self _viewForViewController:v11];
    v18 = [v17 superview];
    if (v18)
    {
      v19 = [v17 layer];
      v20 = [v19 hasBeenCommitted];

      v21 = v20 ^ 1;
    }

    else
    {
      v21 = 1;
    }

    v16 = v11;
  }

  else
  {
    v21 = 1;
  }

  if (+[UIView areAnimationsEnabled]&& !(((*&self->super._viewControllerFlags & 3u) - 3 < 0xFFFFFFFE) | v21 & 1))
  {
    v22 = [(UITabBarController *)self _customAnimatorForFromViewController:v16 toViewController:v12];
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
  v25 = [v12 parentModalViewController];
  v26 = [v25 tabBarItem];
  v27 = v26;
  if (v26)
  {
    v116 = v26;
  }

  else
  {
    v116 = [v12 tabBarItem];
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

    [(UITabBarController *)self _setSelectedTabBarItem:v116];
  }

  if ([v121 modalPresentationStyle] == 6)
  {
    v42 = [v121 parentModalViewController];
    v43 = [(UITabBarController *)self _wrapperViewForViewController:v42];

    v44 = [v43 superview];
    [v43 frame];
    v49 = [(UIViewControllerWrapperView *)v45 wrapperViewForView:v46 frame:v47, v48, UIViewControllerWrapperView, v43];
    [v44 addSubview:v49];
  }

  v120 = [(UITabBarController *)self _viewForViewController:v12];
  if ([v12 modalPresentationStyle] != 6 || (objc_msgSend(v12, "presentationController"), v50 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v50, "containerView"), v51 = objc_claimAutoreleasedReturnValue(), v50, !v51))
  {
    if (animator)
    {
      goto LABEL_42;
    }

    goto LABEL_45;
  }

  [v51 addSubview:v120];
  v52 = [v12 parentModalViewController];
  v53 = [(UITabBarController *)self _wrapperViewForViewController:v52];

  [v53 addSubview:v51];
  v54 = v53;

  if (animator)
  {

    v120 = v54;
LABEL_42:
    v55 = [(UITabBarController *)self _viewForViewController:v121];
    v119 = [v55 superview];

    [(UITabBarController *)self _layoutViewController:v12];
    goto LABEL_46;
  }

  v120 = v54;

  v119 = v120;
  if (!v120)
  {
    v120 = 0;
LABEL_45:
    v119 = [(UITabBarController *)self _wrapperViewForViewController:v12];
  }

LABEL_46:
  v56 = [(_UITabBarControllerVisualStyle *)self->_visualStyle viewControllerForObservableScrollViewFromViewController:v12];
  v57 = [v56 _contentOrObservableScrollViewForEdge:1];

  if (v57)
  {
    v58 = [(UIViewController *)self navigationController];
    v59 = [v58 view];
    [v59 setNeedsLayout];
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v154 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke;
  aBlock[3] = &unk_1E71020A8;
  v60 = v12;
  v147 = v60;
  v151 = animator != 0;
  v118 = v121;
  v148 = v118;
  v149 = self;
  v150 = buf;
  v117 = _Block_copy(aBlock);
  if ((*&self->super._viewControllerFlags & 3u) - 3 >= 0xFFFFFFFE && animator == 0)
  {
    v117[2]();
  }

  if (!v120 || ([(UITabBarController *)self _viewForViewController:v60], v61 = objc_claimAutoreleasedReturnValue(), v62 = v120 == v61, v61, !v62))
  {
    v63 = [(UITabBarController *)self _wrapperViewForViewController:v60];

    v119 = v63;
  }

  v114 = self->_selectedViewController;
  if (!v6)
  {
    goto LABEL_67;
  }

  v64 = [(UITabBarController *)self allViewControllers];
  if ([v64 containsObject:v60])
  {
    v65 = v60;
  }

  else
  {
    v66 = [(UIViewController *)v60 presentingViewController];
    if ([v64 containsObject:v66])
    {
      v65 = [(UIViewController *)v60 presentingViewController];
    }

    else
    {
      v65 = 0;
    }
  }

  if (dyld_program_sdk_at_least())
  {
    if (v65)
    {
      goto LABEL_64;
    }

    v67 = [MEMORY[0x1E696AAA8] currentHandler];
    [v67 handleFailureInMethod:v112 object:self file:@"UITabBarController.m" lineNumber:4787 description:@"Attempting to select a view controller that isn't a child! %@", 0];
  }

  else
  {
    if (v65)
    {
      goto LABEL_64;
    }

    v67 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498E38) + 8);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = 0;
      _os_log_impl(&dword_188A29000, v67, OS_LOG_TYPE_ERROR, "Attempting to select a view controller that isn't a child! %@", location, 0xCu);
    }
  }

LABEL_64:
  objc_storeStrong(&self->_selectedViewController, v65);
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

      [(_UIViewControllerTransitionContext *)v72 _setContainerView:v119];
      v75 = [(UIViewController *)v60 view];
      [v75 frame];
      [(_UIViewControllerOneToOneTransitionContext *)v72 _setToEndFrame:?];

      v76 = [v118 view];
      [v76 frame];
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
        v81 = [(UIViewController *)self view];
        [v81 setUserInteractionEnabled:0];
      }

      v82 = MEMORY[0x1E696AEC0];
      v83 = self;
      v84 = MEMORY[0x1E696AEC0];
      v85 = objc_opt_class();
      v86 = NSStringFromClass(v85);
      v87 = [v84 stringWithFormat:@"<%@: %p>", v86, v83];

      v110 = [v82 stringWithFormat:@"UITabBarControllerTransition: %@", v87];

      v88 = [(UIViewController *)v83 view];
      v89 = [v88 window];
      v90 = [(UIWindow *)v89 _acquireOrientationLockAssertionWithReason:v110];

      if (interactor)
      {
        v91 = [(UITabBarController *)v83 transitionCoordinator];
        v141[0] = MEMORY[0x1E69E9820];
        v141[1] = 3221225472;
        v141[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_3;
        v141[3] = &unk_1E70F4990;
        v141[4] = v83;
        v142 = v116;
        [v91 notifyWhenInteractionChangesUsingBlock:v141];
      }

      else
      {
        [(UITabBarController *)v83 _setSelectedTabBarItem:v116];
      }

      v133[0] = MEMORY[0x1E69E9820];
      v133[1] = 3221225472;
      v133[2] = __97__UITabBarController_transitionFromViewController_toViewController_transition_shouldSetSelected___block_invoke_4;
      v133[3] = &unk_1E71020F8;
      v133[4] = v83;
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
      v128 = v83;
      v71 = v72;
      v129 = v71;
      v131 = buf;
      v130 = v117;
      v132 = interactor != 0;
      [v94 _performBlockAfterCATransactionCommits:v126];
    }

    else
    {
      v92 = [(UITabBarController *)self _transitionView];
      [v92 transition:v111 toView:v119];

      [(UITabBarController *)self set_shouldFocusViewControllerAfterTransition:0];
      v71 = 0;
    }

    if (!v111)
    {
      [v119 frame];
      [v119 setFrame:?];
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

- (void)transitionViewDidStart:(id)a3
{
  v4 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (v4)
  {
    v5 = v4;
    [v4 _prepareForContainerTransition:self];
    v4 = v5;
  }
}

- (void)transitionViewDidComplete:(id)a3 fromView:(id)a4 toView:(id)a5
{
  v12 = a4;
  v8 = a5;
  if (self->_viewControllerTransitionView == a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(UIViewController *)self view];
      v10 = [v12 isDescendantOfView:v9];

      if (v12 != v8 && (v10 & 1) == 0)
      {
        [(UIViewControllerWrapperView *)v12 unwrapView];
      }
    }

    if ((*(&self->_tabBarControllerFlags + 1) & 0x10) != 0)
    {
      v11 = [(UIViewController *)self view];
      [v11 setNeedsLayout];
    }
  }
}

- (void)setTransientViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (v8 && (*&self->_tabBarControllerFlags & 0x8000) != 0)
  {
    v17 = v8;
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:5115 description:@"transientViewController isn't support with UITab."];

    v8 = v17;
  }

  if (self->_transientViewController != v8)
  {
    v16 = v8;
    v9 = _UISetCurrentFallbackEnvironment(self);
    if (v4)
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

      objc_storeStrong(&self->_transientViewController, a3);
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
    v8 = v16;
  }
}

- (void)revealTabBarSelection
{
  v3 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 tabBarItem];
    [(UITabBarController *)self _setSelectedTabBarItem:v4];

    v3 = v5;
  }
}

- (void)setShowsEditButtonOnLeft:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_tabBarControllerFlags = (*&self->_tabBarControllerFlags & 0xFFFFFFEF | v3);
}

- (void)_setMaximumNumberOfItems:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  if (self->_customMaxItems != v3)
  {
    self->_customMaxItems = v3;
    *&self->_tabBarControllerFlags |= 2u;
    [(UIView *)self->_containerView setNeedsLayout];
  }
}

- (void)_childViewController:(id)a3 updatedObservedScrollView:(id)a4
{
  if (self->_selectedViewController == a3)
  {
    [UITabBarController _compatibility_updateViewController:"_compatibility_updateViewController:forTabBarObservedScrollView:" forTabBarObservedScrollView:?];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UITabBarController;
  [(UIViewController *)&v6 setEditing:a3 animated:a4];
  [(_UITabModel *)self->_tabModel setEditing:v4];
}

- (void)_notifyEditingStateChange:(id *)a1
{
  if (a1)
  {
    if (a2)
    {
      WeakRetained = objc_loadWeakRetained(a1 + 152);
      v4 = objc_opt_respondsToSelector();

      if (v4)
      {
        v5 = objc_loadWeakRetained(a1 + 152);
        [v5 tabBarControllerWillBeginEditing:a1];
      }

      else
      {
        v5 = [a1 sidebar];
        [(UITabBarControllerSidebar *)v5 _editingStateDidChange:?];
      }

      [a1 setEditing:1];
      v8 = a1[138];

      [v8 editingStateDidChange];
    }

    else
    {
      [a1 setEditing:0];
      [a1[138] editingStateDidChange];
      v6 = objc_loadWeakRetained(a1 + 152);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v9 = objc_loadWeakRetained(a1 + 152);
        [v9 tabBarControllerDidEndEditing:a1];
      }

      else
      {
        v9 = [a1 sidebar];
        [(UITabBarControllerSidebar *)v9 _editingStateDidChange:?];
      }
    }
  }
}

- (void)_notifyVisibilityChangesForTabs:(id *)a1
{
  v7 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 152);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [v7 allObjects];
      v6 = objc_loadWeakRetained(a1 + 152);
      [v6 tabBarController:a1 visibilityDidChangeForTabs:v5];
    }

    else
    {
      v5 = [a1 sidebar];
      [(UITabBarControllerSidebar *)v5 _visibilityDidChangeForTabs:v7];
    }
  }
}

- (void)_notifyDisplayOrderChangesForGroup:(uint64_t)a1
{
  v6 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 1216));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained((a1 + 1216));
      [v5 tabBarController:a1 displayOrderDidChangeForGroup:v6];
    }
  }
}

- (BOOL)_allowsAutorotation
{
  v9.receiver = self;
  v9.super_class = UITabBarController;
  v3 = [(UIViewController *)&v9 _allowsAutorotation];
  v4 = [(UITabBarController *)self tabBar];
  v5 = v3 & ([v4 isCustomizing] ^ 1);

  v6 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v7 = v6;
  if (v6)
  {
    v5 &= [v6 _allowsAutorotation];
  }

  return v5;
}

- (BOOL)_doAllViewControllersSupportInterfaceOrientation:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(UITabBarController *)self viewControllers];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        if (![*(*(&v11 + 1) + 8 * i) _isSupportedInterfaceOrientation:a3])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3
{
  if ([objc_opt_class() _doesOverrideLegacyShouldAutorotateMethod])
  {

    return [(UITabBarController *)self shouldAutorotateToInterfaceOrientation:a3];
  }

  else
  {

    return [(UITabBarController *)self _doAllViewControllersSupportInterfaceOrientation:a3];
  }
}

- (id)rotatingHeaderView
{
  v2 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v3 = [v2 rotatingHeaderView];

  return v3;
}

- (id)rotatingFooterView
{
  if ([(UITabBarController *)self _wantsBarHidden])
  {
    v3 = [(UITabBarController *)self _selectedViewControllerInTabBar];
    v4 = [v3 rotatingFooterView];
  }

  else
  {
    v4 = [(UITabBarController *)self tabBar];
  }

  return v4;
}

- (BOOL)_shouldUseOnePartRotation
{
  v2 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v3 = [v2 _shouldUseOnePartRotation];

  return v3;
}

- (void)_getRotationContentSettings:(id *)a3
{
  v4 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [v4 _getRotationContentSettings:a3];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  [(UITabBarController *)self _invalidateBarLayoutIfNecessary];
  v7 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [v7 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = UITabBarController;
  [(UIViewController *)&v5 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  [(UITabBarController *)self _invalidateBarLayoutIfNecessary];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [v6 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v9;
  if (v9 && ([v9 _existingView], (v11 = objc_claimAutoreleasedReturnValue()) != 0) && (v12 = v11, -[UITabBarController _selectedViewControllerInTabBar](self, "_selectedViewControllerInTabBar"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v10 == v13))
  {
    v20 = [(UIViewController *)self view];
    [v20 frame];
    v22 = v21;
    v24 = v23;

    v25 = [v10 view];
    [v25 frame];
    v27 = v26;
    v29 = v28;

    v15 = width - v22 + v27;
    v17 = height - v24 + v29;
  }

  else
  {
    v30.receiver = self;
    v30.super_class = UITabBarController;
    [(UIViewController *)&v30 sizeForChildContentContainer:v7 withParentContainerSize:width, height];
    v15 = v14;
    v17 = v16;
  }

  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)willAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [v6 willAnimateFirstHalfOfRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)didAnimateFirstHalfOfRotationToInterfaceOrientation:(int64_t)a3
{
  v4 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [v4 didAnimateFirstHalfOfRotationToInterfaceOrientation:a3];
}

- (void)willAnimateSecondHalfOfRotationFromInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v6 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [v6 willAnimateSecondHalfOfRotationFromInterfaceOrientation:a3 duration:a4];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v4 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  [v4 didRotateFromInterfaceOrientation:a3];
}

- (id)rotatingSnapshotViewForWindow:(id)a3
{
  v3 = [(UITabBarController *)self _selectedViewControllerInTabBar];
  v4 = [v3 view];

  return v4;
}

- (id)_tabBarWindowForInterfaceOrientation:(id)a3
{
  if (self->_tabBar == a3)
  {
    [(UIViewController *)self _window];
  }

  else
  {
    [a3 window];
  }
  v3 = ;

  return v3;
}

- (void)_setBadgeValue:(id)a3 forTabBarItem:(id)a4
{
  if (a4)
  {
    [a4 setBadgeValue:a3];
    v5 = [(UITabBarController *)self _existingMoreNavigationController];
    [v5 _redisplayMoreTableView];
  }
}

- (void)encodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UITabBarController *)self _ignoreUnselectedTabsForStateRestoration];
  v6 = [(UITabBarController *)self tabBar];
  v7 = [v6 isCustomizing];

  if (v7)
  {
    [v4 encodeBool:1 forKey:@"kTabBarIsCustomizingKey"];
    [UIApp ignoreSnapshotOnNextApplicationLaunch];
  }

  if (!v5)
  {
    v8 = [(UITabBarController *)self allViewControllers];
    _UISaveReferencedChildViewControllers(v8, 0);
  }

  v9 = [(UITabBarController *)self selectedViewController];
  v10 = [v9 _restorationIdentifierPath];
  v11 = _UIStateRestorationDebugLogEnabled();
  if (v10)
  {
    if (v11)
    {
      NSLog(&cfstr_SSelectedViewC.isa, "[UITabBarController(StateRestoration) encodeRestorableStateWithCoder:]", v10, v9);
    }

    [v4 encodeObject:v9 forKey:@"kTabBarSelectedViewControllerKey"];
    if (v5)
    {
      goto LABEL_20;
    }

LABEL_13:
    if (v9 && self->_moreNavigationController && ([(NSMutableArray *)self->_moreChildViewControllers containsObject:v9]& 1) == 0)
    {
      v12 = [(UIMoreNavigationController *)self->_moreNavigationController displayedViewController];
      v13 = v12;
      if (v12 != self->_moreNavigationController)
      {
        v14 = [(UIResponder *)v12 restorationIdentifier];

        if (v14)
        {
          [v4 encodeObject:v13 forKey:@"kTabBarMoreDisplayedViewControllerKey"];
        }
      }
    }

    goto LABEL_20;
  }

  if (v11)
  {
    NSLog(&cfstr_SSelectedViewC_0.isa, "[UITabBarController(StateRestoration) encodeRestorableStateWithCoder:]", v9);
  }

  [UIApp ignoreSnapshotOnNextApplicationLaunch];
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_20:
  v15.receiver = self;
  v15.super_class = UITabBarController;
  [(UIViewController *)&v15 encodeRestorableStateWithCoder:v4];
}

- (void)decodeRestorableStateWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTabBarSelectedViewControllerKey"];
  if (_UIStateRestorationDebugLogEnabled())
  {
    NSLog(&cfstr_STabBarControl.isa, "[UITabBarController(StateRestoration) decodeRestorableStateWithCoder:]", v5);
  }

  if (v5)
  {
    v6 = [(UITabBarController *)self allViewControllers];
    v7 = [v6 containsObject:v5];

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
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kTabBarMoreDisplayedViewControllerKey"];
    if (v8)
    {
      v9 = [(UITabBarController *)self selectedViewController];
      v10 = v9;
      if (v8 == v9)
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
  [(UIResponder *)&v12 decodeRestorableStateWithCoder:v4];
}

- (UIAction)_overrideTidebarButtonAction
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(_UITabBarControllerVisualStyle *)self->_visualStyle overrideTidebarButtonAction];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setOverrideTidebarButtonAction:(id)a3
{
  v8 = a3;
  v5 = _UIMainBundleIdentifier();
  if (([v5 isEqualToString:@"com.apple.DocumentsApp"] & 1) == 0)
  {
    v6 = _UIMainBundleIdentifier();
    v7 = [v6 isEqualToString:@"com.apple.DocumentManagerUICore.Service"];

    if (v7)
    {
      goto LABEL_5;
    }

    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UITabBarController.m" lineNumber:5599 description:@"This may only be used by Files."];
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UITabBarControllerVisualStyle *)self->_visualStyle setOverrideTidebarButtonAction:v8];
  }
}

- (id)_tabCustomizationProxy
{
  v2 = [(UITabBarController *)&self->super.super.super.isa _visualStyle];
  v3 = [v2 _tabCustomizationProxy];

  return v3;
}

@end