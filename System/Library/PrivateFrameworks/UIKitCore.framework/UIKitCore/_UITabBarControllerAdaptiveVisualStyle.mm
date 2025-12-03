@interface _UITabBarControllerAdaptiveVisualStyle
- (BOOL)_isSidebarAvailable;
- (BOOL)canDisplaySidebar;
- (BOOL)canDisplayUITabBar;
- (BOOL)ignoresDefaultTabBarVisibilityAnimation;
- (BOOL)supportsResizingSidebar;
- (CGRect)adjustedTransitionViewFrame:(CGRect)frame;
- (CGRect)contentLayoutGuideFrame;
- (UIAction)overrideTidebarButtonAction;
- (UIEdgeInsets)absoluteSidebarInsets;
- (UIEdgeInsets)additionalContentMargins;
- (UIEdgeInsets)additionalSidebarInsets;
- (UIEdgeInsets)bottomAccessoryInsets;
- (UIEdgeInsets)edgeInsetsForChildViewController:(id)controller;
- (id)_tabCustomizationProxy;
- (id)childViewControllerForStatusBarStyle;
- (id)sidebar;
- (int64_t)_effectivePartStyleForEdge:(int64_t)edge;
- (int64_t)preferredLeadingStatusBarStyle;
- (int64_t)preferredTrafficLightStyle;
- (unint64_t)defaultMaxItems;
- (void)_setNeedsContentLayout;
- (void)_updateBarAvailabilityAnimated:(BOOL)animated;
- (void)_updateBarsWithWantsHostedTabBarMetrics:(BOOL)metrics;
- (void)_updateContentLayoutForSidebarAppearanceIfNeeded;
- (void)_updateNavigationBarHostingWithSelectedViewController:(id)controller;
- (void)_updateSidebarResolvedLayout;
- (void)didUpdateVisibleAppearance;
- (void)editingStateDidChange;
- (void)loadViews;
- (void)navigationControllerDidUpdate:(id)update;
- (void)preferredSidebarModeDidChange;
- (void)selectedViewControllerDidChange;
- (void)setAbsoluteSidebarInsets:(UIEdgeInsets)insets;
- (void)setAdditionalSidebarInsets:(UIEdgeInsets)insets;
- (void)setBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setBottomBarSuppressedByNavigation:(BOOL)navigation animated:(BOOL)animated;
- (void)setOverrideTidebarButtonAction:(id)action;
- (void)setSupportsResizingSidebar:(BOOL)sidebar;
- (void)sidebarLayoutDidChange;
- (void)sidebarVisibilityDidChangeWithAnimator:(id)animator;
- (void)tabBarDidChange;
- (void)tabContentDidChange:(id)change;
- (void)updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:(id)coordinator;
- (void)updateTabBarLayout;
- (void)updateViewControllerForReselection:(id)reselection;
- (void)updateViewControllers:(BOOL)controllers;
- (void)willUpdateViewControllers;
@end

@implementation _UITabBarControllerAdaptiveVisualStyle

- (UIAction)overrideTidebarButtonAction
{
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  overrideTidebarButtonAction = [tabContainerView overrideTidebarButtonAction];

  return overrideTidebarButtonAction;
}

- (void)setOverrideTidebarButtonAction:(id)action
{
  actionCopy = action;
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView setOverrideTidebarButtonAction:actionCopy];
}

- (unint64_t)defaultMaxItems
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  traitCollection = [tabBarController traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7.receiver = self;
  v7.super_class = _UITabBarControllerAdaptiveVisualStyle;
  return [(_UITabBarControllerVisualStyle_iOS *)&v7 defaultMaxItems];
}

- (BOOL)ignoresDefaultTabBarVisibilityAnimation
{
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  tabBarContentLayoutManager = [tabContainerView tabBarContentLayoutManager];
  v4 = tabBarContentLayoutManager != 0;

  return v4;
}

- (void)tabBarDidChange
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  v4 = _internalTabBar;
  if (_internalTabBar)
  {
    if (_UITabBarControllerShouldUpdateTabBarOnChange_onceToken != -1)
    {
      dispatch_once(&_UITabBarControllerShouldUpdateTabBarOnChange_onceToken, &__block_literal_global_689);
      v4 = _internalTabBar;
    }

    if (_UITabBarControllerShouldUpdateTabBarOnChange_shouldUpdateTabBar == 1)
    {
      tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
      [tabContainerView setTabBar:_internalTabBar];

      v4 = _internalTabBar;
    }
  }
}

- (void)loadViews
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = self->_tabContainerView;
  if (!v3)
  {
    _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];
    v3 = [[_UITabContainerView alloc] initWithTabBarController:tabBarController];
    [(_UITabContainerView *)v3 setDelegate:self];
    objc_storeStrong(&self->_tabContainerView, v3);
    if (!_internalTabBar)
    {
      tabBar = [(_UITabContainerView *)v3 tabBar];
      [tabBarController setTabBar:tabBar];
    }

    tabBarContentLayoutManager = [(_UITabContainerView *)v3 tabBarContentLayoutManager];
    [tabBarContentLayoutManager tabBarDidChange:0];
  }

  if (dyld_program_sdk_at_least())
  {
    v7 = +[UIColor systemBackgroundColor];
    view = [tabBarController view];
    [view setBackgroundColor:v7];
  }

  if (dyld_program_sdk_at_least())
  {
    [(_UITabBarControllerAdaptiveVisualStyle *)self setSupportsResizingSidebar:1];
  }
}

- (void)_updateNavigationBarHostingWithSelectedViewController:(id)controller
{
  v22 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _viewControllersForTabs = [(UITabBarController *)tabBarController _viewControllersForTabs];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = _viewControllersForTabs;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        _hostingNavigationBar = [v12 _hostingNavigationBar];
        if (!_hostingNavigationBar)
        {
          _hostingSplitViewControllerForTabBar = [v12 _hostingSplitViewControllerForTabBar];
          tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
          [_hostingSplitViewControllerForTabBar _setTabBarHostedView:tabContainerView];

          goto LABEL_10;
        }

        if ([v12 _shouldOverlayTabBar])
        {
          [_hostingNavigationBar _setActiveTabBarHost:v12 == controllerCopy];
          _hostingSplitViewControllerForTabBar = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
          [_hostingNavigationBar _setTabBarHostedView:_hostingSplitViewControllerForTabBar];
LABEL_10:

          goto LABEL_12;
        }

        [_hostingNavigationBar _setTabBarHostedView:0];
LABEL_12:
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController2 _updateContentOverlayInsetsForSelfAndChildren];
}

- (void)updateTabBarLayout
{
  [(UIView *)self->_tabContainerView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  view = [tabBarController view];
  [view bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [(_UITabContainerView *)self->_tabContainerView setFrame:v14, v16, v18, v20];
  [(UIView *)self->_tabContainerView layoutIfNeeded];
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v26.origin.x = v14;
  v26.origin.y = v16;
  v26.size.width = v18;
  v26.size.height = v20;
  if (!CGRectEqualToRect(v25, v26))
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __60___UITabBarControllerAdaptiveVisualStyle_updateTabBarLayout__block_invoke;
    v24[3] = &unk_1E70F6C80;
    *&v24[5] = v4;
    *&v24[6] = v6;
    *&v24[7] = v8;
    *&v24[8] = v10;
    *&v24[9] = v14;
    *&v24[10] = v16;
    *&v24[11] = v18;
    *&v24[12] = v20;
    v24[4] = self;
    [UIView performWithoutAnimation:v24];
  }

  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateSidebarResolvedLayout];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateContentLayoutForSidebarAppearanceIfNeeded];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateBarsWithWantsHostedTabBarMetrics:1];
  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  selectedViewController = [tabBarController2 selectedViewController];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateNavigationBarHostingWithSelectedViewController:selectedViewController];

  if (_UITabBarControllerShouldUpdateTabBarOnChange_onceToken != -1)
  {
    dispatch_once(&_UITabBarControllerShouldUpdateTabBarOnChange_onceToken, &__block_literal_global_689);
  }

  if ((_UITabBarControllerShouldUpdateTabBarOnChange_shouldUpdateTabBar & 1) == 0)
  {
    v23.receiver = self;
    v23.super_class = _UITabBarControllerAdaptiveVisualStyle;
    [(_UITabBarControllerVisualStyle *)&v23 updateTabBarLayout];
  }
}

- (void)willUpdateViewControllers
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UITabBarControllerAdaptiveVisualStyle;
  [(_UITabBarControllerVisualStyle *)&v17 willUpdateViewControllers];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateBarsWithWantsHostedTabBarMetrics:0];
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _viewControllersForTabs = [(UITabBarController *)tabBarController _viewControllersForTabs];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = _viewControllersForTabs;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        _hostingNavigationBar = [v10 _hostingNavigationBar];
        [_hostingNavigationBar _setTabBarHostedView:0];

        _hostingSplitViewControllerForTabBar = [v10 _hostingSplitViewControllerForTabBar];
        [_hostingSplitViewControllerForTabBar _setTabBarHostedView:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)updateViewControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  v5.receiver = self;
  v5.super_class = _UITabBarControllerAdaptiveVisualStyle;
  [(_UITabBarControllerVisualStyle_iOS *)&v5 updateViewControllers:?];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateBarAvailabilityAnimated:controllersCopy];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateBarsWithWantsHostedTabBarMetrics:1];
}

- (void)selectedViewControllerDidChange
{
  v6.receiver = self;
  v6.super_class = _UITabBarControllerAdaptiveVisualStyle;
  [(_UITabBarControllerVisualStyle *)&v6 selectedViewControllerDidChange];
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  selectedViewController = [tabBarController selectedViewController];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateNavigationBarHostingWithSelectedViewController:selectedViewController];

  tabBarContentLayoutManager = [(_UITabContainerView *)self->_tabContainerView tabBarContentLayoutManager];
  [tabBarContentLayoutManager updateHostedElementsAnimated:0];
}

- (UIEdgeInsets)bottomAccessoryInsets
{
  [(_UITabContainerView *)self->_tabContainerView bottomAccessoryInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)updateViewControllerForReselection:(id)reselection
{
  reselectionCopy = reselection;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _selectedTabElement = [tabBarController _selectedTabElement];

  shouldEnforceChildSelectionInGroupTabs = [(_UITabBarControllerAdaptiveVisualStyle *)self shouldEnforceChildSelectionInGroupTabs];
  if (![_selectedTabElement _isGroup] || (objc_msgSend(_selectedTabElement, "_isSidebarDestination") & 1) != 0 || !shouldEnforceChildSelectionInGroupTabs)
  {
    v8.receiver = self;
    v8.super_class = _UITabBarControllerAdaptiveVisualStyle;
    [(_UITabBarControllerVisualStyle *)&v8 updateViewControllerForReselection:reselectionCopy];
  }
}

- (void)navigationControllerDidUpdate:(id)update
{
  tabBarContentLayoutManager = [(_UITabContainerView *)self->_tabContainerView tabBarContentLayoutManager];
  [tabBarContentLayoutManager updateHostedElementsAnimated:0];
}

- (void)_updateBarsWithWantsHostedTabBarMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  v29 = *MEMORY[0x1E69E9840];
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _viewControllersForTabs = [(UITabBarController *)tabBarController _viewControllersForTabs];

  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  if ([tabContainerView canShowFloatingUI])
  {
    canDisplayTabBar = [(_UITabBarControllerAdaptiveVisualStyle *)self canDisplayTabBar];

    if (canDisplayTabBar)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  metricsCopy = 0;
LABEL_6:
  if ([(_UITabBarControllerVisualStyle *)self isBarHidden])
  {
    tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _overrideTidebarButtonAction = [tabBarController2 _overrideTidebarButtonAction];

    if (!_overrideTidebarButtonAction)
    {
      metricsCopy = 0;
    }
  }

  sidebar = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  if (([(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible]& 1) != 0)
  {
    tabContainerView2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
    v13 = [tabContainerView2 sidebarLayout] != 2;

    v14 = 2 * v13;
  }

  else
  {

    v14 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = _viewControllersForTabs;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v24 + 1) + 8 * i);
        _hostingNavigationBar = [v20 _hostingNavigationBar];
        [_hostingNavigationBar _setWantsHostedTabBarMetrics:{metricsCopy & objc_msgSend(v20, "_shouldOverlayTabBar")}];
        [_hostingNavigationBar _setEdgesRequiringContentMargin:v14];
        navigationController = [v20 navigationController];
        _floatingBarContainerView = [navigationController _floatingBarContainerView];

        [_floatingBarContainerView _setEdgesRequiringContentMargin:v14];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)tabContentDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy _isBridgedItem])
  {
    v5.receiver = self;
    v5.super_class = _UITabBarControllerAdaptiveVisualStyle;
    [(_UITabBarControllerVisualStyle_iOS *)&v5 tabContentDidChange:changeCopy];
  }
}

- (id)_tabCustomizationProxy
{
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  floatingTabBar = [tabContainerView floatingTabBar];
  tabCustomizationProxy = [floatingTabBar tabCustomizationProxy];

  return tabCustomizationProxy;
}

- (id)sidebar
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  sidebar = [tabBarController sidebar];

  return sidebar;
}

- (BOOL)canDisplayUITabBar
{
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  canShowFloatingUI = [tabContainerView canShowFloatingUI];

  return canShowFloatingUI ^ 1;
}

- (BOOL)canDisplaySidebar
{
  v16 = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_13;
  }

  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  mode = [tabBarController mode];

  if (mode == 2)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  if (mode)
  {
LABEL_13:
    LOBYTE(v7) = 0;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _tabElements = [tabBarController2 _tabElements];

    v7 = [_tabElements countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(_tabElements);
          }

          if ([*(*(&v11 + 1) + 8 * i) _isGroup])
          {
            LOBYTE(v7) = 1;
            goto LABEL_17;
          }
        }

        v7 = [_tabElements countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  return v7;
}

- (void)setBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  isBarHidden = [(_UITabBarControllerVisualStyle *)self isBarHidden];
  v8.receiver = self;
  v8.super_class = _UITabBarControllerAdaptiveVisualStyle;
  [(_UITabBarControllerVisualStyle *)&v8 setBarHidden:hiddenCopy animated:animatedCopy];
  if (isBarHidden != hiddenCopy)
  {
    [(_UITabBarControllerAdaptiveVisualStyle *)self _updateBarAvailabilityAnimated:animatedCopy];
  }
}

- (void)setBottomBarSuppressedByNavigation:(BOOL)navigation animated:(BOOL)animated
{
  navigationCopy = navigation;
  v7.receiver = self;
  v7.super_class = _UITabBarControllerAdaptiveVisualStyle;
  [(_UITabBarControllerVisualStyle *)&v7 setBarHidden:navigation animated:animated];
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView setIsBottomBarSuppressed:navigationCopy];
}

- (void)preferredSidebarModeDidChange
{
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateBarAvailabilityAnimated:0];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _setNeedsContentLayout];

  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateContentLayoutForSidebarAppearanceIfNeeded];
}

- (void)sidebarLayoutDidChange
{
  [(_UITabBarControllerAdaptiveVisualStyle *)self _setNeedsContentLayout];

  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateContentLayoutForSidebarAppearanceIfNeeded];
}

- (void)sidebarVisibilityDidChangeWithAnimator:(id)animator
{
  animatorCopy = animator;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  view = [tabBarController view];
  _window = [view _window];
  v7 = _window != 0;

  [(_UITabContainerView *)self->_tabContainerView updateSidebarAppearanceStateAnimated:v7 animator:animatorCopy];
}

- (BOOL)supportsResizingSidebar
{
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  supportsResizingSidebar = [tabContainerView supportsResizingSidebar];

  return supportsResizingSidebar;
}

- (void)setSupportsResizingSidebar:(BOOL)sidebar
{
  sidebarCopy = sidebar;
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView setSupportsResizingSidebar:sidebarCopy];
}

- (UIEdgeInsets)additionalSidebarInsets
{
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView additionalSidebarInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setAdditionalSidebarInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView setAdditionalSidebarInsets:{top, left, bottom, right}];
}

- (UIEdgeInsets)absoluteSidebarInsets
{
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView absoluteSidebarInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setAbsoluteSidebarInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView setAbsoluteSidebarInsets:{top, left, bottom, right}];
}

- (void)editingStateDidChange
{
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView updateEditModeAppearanceAnimated:1];
}

- (void)_updateBarAvailabilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(_UITabBarControllerAdaptiveVisualStyle *)self canDisplaySidebar])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if ([(_UITabBarControllerAdaptiveVisualStyle *)self canDisplayTabBar])
  {
    if ([(_UITabBarControllerVisualStyle *)self isBarHidden])
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    v5 |= 1uLL;
  }

  [(_UITabContainerView *)self->_tabContainerView setSupportedComponent:v5];
  tabContainerView = self->_tabContainerView;

  [(_UITabContainerView *)tabContainerView setAvailableComponent:v6 animated:animatedCopy];
}

- (void)updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _transitionView = [tabBarController _transitionView];
  [_transitionView bounds];
  v7 = v6;
  v9 = v8;

  view = [tabBarController view];
  [view bounds];
  [(_UITabBarControllerAdaptiveVisualStyle *)self adjustedTransitionViewFrame:?];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    _definiteTransitionCoordinator = coordinatorCopy;
    if (!coordinatorCopy)
    {
      _definiteTransitionCoordinator = [tabBarController _definiteTransitionCoordinator];
    }

    coordinatorCopy = _definiteTransitionCoordinator;
    _selectedViewControllerInTabBar = [tabBarController _selectedViewControllerInTabBar];
    [_selectedViewControllerInTabBar viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{v12, v14}];
  }

  [(_UITabBarControllerAdaptiveVisualStyle *)self _setNeedsContentLayout];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateContentLayoutForSidebarAppearanceIfNeeded];
}

- (void)didUpdateVisibleAppearance
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _isInSidebarTransition = [tabBarController _isInSidebarTransition];

  if ((_isInSidebarTransition & 1) == 0)
  {
    [(_UITabBarControllerAdaptiveVisualStyle *)self _setNeedsContentLayout];

    [(_UITabBarControllerAdaptiveVisualStyle *)self _updateContentLayoutForSidebarAppearanceIfNeeded];
  }
}

- (BOOL)_isSidebarAvailable
{
  canDisplaySidebar = [(_UITabBarControllerAdaptiveVisualStyle *)self canDisplaySidebar];
  if (canDisplaySidebar)
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    traitCollection = [tabBarController traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    LOBYTE(canDisplaySidebar) = horizontalSizeClass == 2;
  }

  return canDisplaySidebar;
}

- (void)_setNeedsContentLayout
{
  if (!self->_needsContentLayout)
  {
    self->_needsContentLayout = 1;
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _existingView = [tabBarController _existingView];
    [_existingView setNeedsLayout];
  }
}

- (void)_updateSidebarResolvedLayout
{
  sidebar = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  _resolvedLayout = [(UITabBarControllerSidebar *)sidebar _resolvedLayout];

  if (!_resolvedLayout)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabBarControllerAdaptiveVisualStyle.m" lineNumber:555 description:@"Resolved sidebar layout cannot be automatic."];
  }

  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView bounds];
  v8 = v7;
  if (v7 <= v9)
  {
    v10 = 1194.0;
  }

  else
  {
    v10 = 1024.0;
  }

  if (v8 <= v10 && [(_UITabBarControllerAdaptiveVisualStyle *)self supportsOverlaySidebarMode])
  {
    v11 = 2;
  }

  else
  {
    v12 = 1;
    if (_resolvedLayout != 2)
    {
      v12 = 2;
    }

    if (_resolvedLayout == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v12;
    }
  }

  tabContainerView2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView2 setPreferredSidebarLayout:v11];
}

- (void)_updateContentLayoutForSidebarAppearanceIfNeeded
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = tabBarController;
  if (self->_needsContentLayout)
  {
    _window = [tabBarController _window];

    if (_window)
    {
      self->_needsContentLayout = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __90___UITabBarControllerAdaptiveVisualStyle__updateContentLayoutForSidebarAppearanceIfNeeded__block_invoke;
      v10[3] = &unk_1E70F35B8;
      v10[4] = self;
      v6 = v4;
      v11 = v6;
      if (v6)
      {
        v7 = v6;
        v8 = v6[282];
        v6[282] = v8 | 0x10000;
        __90___UITabBarControllerAdaptiveVisualStyle__updateContentLayoutForSidebarAppearanceIfNeeded__block_invoke(v10);
        v7[282] = v7[282] & 0xFFFEFFFF | ((HIWORD(v8) & 1) << 16);
        v9 = v11;
      }

      else
      {
        v9 = 0;
      }
    }
  }
}

- (CGRect)adjustedTransitionViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [tabContainerView adjustedFrameForContentTransitionViewFrame:{x, y, width, height}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)childViewControllerForStatusBarStyle
{
  sidebar = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  if (([(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible]& 1) != 0)
  {
    childViewControllerForStatusBarStyle = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UITabBarControllerAdaptiveVisualStyle;
    childViewControllerForStatusBarStyle = [(_UITabBarControllerVisualStyle *)&v6 childViewControllerForStatusBarStyle];
  }

  return childViewControllerForStatusBarStyle;
}

- (int64_t)preferredLeadingStatusBarStyle
{
  sidebar = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  if (([(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible]& 1) != 0)
  {
    sidebar2 = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
    _outlineView = [sidebar2 _outlineView];
    if (!_outlineView)
    {

LABEL_4:
      tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
      traitCollection = [tabBarController traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    v6 = _outlineView[53];

    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  return [(_UITabBarControllerAdaptiveVisualStyle *)self _effectivePartStyleForEdge:0];
}

- (int64_t)preferredTrafficLightStyle
{
  sidebar = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  _isSidebarSupportedAndVisible = [(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible];

  if (_isSidebarSupportedAndVisible)
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    traitCollection = [tabBarController traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
  }

  else
  {
    tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
    isShowingFloatingTabBar = [tabContainerView isShowingFloatingTabBar];

    if (!isShowingFloatingTabBar)
    {
      tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      _selectedViewControllerInTabBar = [tabBarController2 _selectedViewControllerInTabBar];
      _effectiveStatusBarStyleViewController = [_selectedViewControllerInTabBar _effectiveStatusBarStyleViewController];

      preferredTrafficLightStyle = [_effectiveStatusBarStyleViewController preferredTrafficLightStyle];
      return preferredTrafficLightStyle;
    }

    tabBarController = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
    traitCollection = [tabBarController floatingTabBar];
    userInterfaceStyle = [traitCollection effectiveUserInterfaceStyle];
  }

  v10 = userInterfaceStyle;

  if (v10 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)_effectivePartStyleForEdge:(int64_t)edge
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _selectedViewControllerInTabBar = [tabBarController _selectedViewControllerInTabBar];
  _effectiveStatusBarStyleViewController = [_selectedViewControllerInTabBar _effectiveStatusBarStyleViewController];

  v7 = _viewControllerIfStatusBarPartStyleProviding(_effectiveStatusBarStyleViewController);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  switch(edge)
  {
    case 2:
      preferredTrailingStatusBarStyle = [v7 preferredTrailingStatusBarStyle];
LABEL_8:
      v10 = preferredTrailingStatusBarStyle;
      if (preferredTrailingStatusBarStyle != 4)
      {
        goto LABEL_12;
      }

      break;
    case 1:
      preferredTrailingStatusBarStyle = [v7 preferredCenterStatusBarStyle];
      goto LABEL_8;
    case 0:
      preferredTrailingStatusBarStyle = [v7 preferredLeadingStatusBarStyle];
      goto LABEL_8;
  }

LABEL_9:
  preferredStatusBarStyle = [_effectiveStatusBarStyleViewController preferredStatusBarStyle];
  if (preferredStatusBarStyle == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (preferredStatusBarStyle == 3);
  }

LABEL_12:

  return v10;
}

- (UIEdgeInsets)edgeInsetsForChildViewController:(id)controller
{
  tabContainerView = self->_tabContainerView;
  controllerCopy = controller;
  if ([(_UITabContainerView *)tabContainerView canShowFloatingUI])
  {
    [(_UITabContainerView *)self->_tabContainerView edgeInsetsForChildViewController:controllerCopy];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _UITabBarControllerAdaptiveVisualStyle;
    [(_UITabBarControllerVisualStyle *)&v18 edgeInsetsForChildViewController:controllerCopy];
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIEdgeInsets)additionalContentMargins
{
  if ([(_UITabContainerView *)self->_tabContainerView canShowFloatingUI])
  {
    tabContainerView = self->_tabContainerView;

    [(_UITabContainerView *)tabContainerView additionalContentMargins];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UITabBarControllerAdaptiveVisualStyle;
    [(_UITabBarControllerVisualStyle *)&v8 additionalContentMargins];
  }

  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (CGRect)contentLayoutGuideFrame
{
  if ([(_UITabContainerView *)self->_tabContainerView canShowFloatingUI])
  {
    tabContainerView = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
    [tabContainerView contentLayoutGuideFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = _UITabBarControllerAdaptiveVisualStyle;
    [(_UITabBarControllerVisualStyle *)&v20 contentLayoutGuideFrame];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

@end