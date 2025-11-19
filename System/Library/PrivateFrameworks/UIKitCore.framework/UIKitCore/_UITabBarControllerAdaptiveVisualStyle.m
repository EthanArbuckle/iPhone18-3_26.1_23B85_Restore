@interface _UITabBarControllerAdaptiveVisualStyle
- (BOOL)_isSidebarAvailable;
- (BOOL)canDisplaySidebar;
- (BOOL)canDisplayUITabBar;
- (BOOL)ignoresDefaultTabBarVisibilityAnimation;
- (BOOL)supportsResizingSidebar;
- (CGRect)adjustedTransitionViewFrame:(CGRect)a3;
- (CGRect)contentLayoutGuideFrame;
- (UIAction)overrideTidebarButtonAction;
- (UIEdgeInsets)absoluteSidebarInsets;
- (UIEdgeInsets)additionalContentMargins;
- (UIEdgeInsets)additionalSidebarInsets;
- (UIEdgeInsets)bottomAccessoryInsets;
- (UIEdgeInsets)edgeInsetsForChildViewController:(id)a3;
- (id)_tabCustomizationProxy;
- (id)childViewControllerForStatusBarStyle;
- (id)sidebar;
- (int64_t)_effectivePartStyleForEdge:(int64_t)a3;
- (int64_t)preferredLeadingStatusBarStyle;
- (int64_t)preferredTrafficLightStyle;
- (unint64_t)defaultMaxItems;
- (void)_setNeedsContentLayout;
- (void)_updateBarAvailabilityAnimated:(BOOL)a3;
- (void)_updateBarsWithWantsHostedTabBarMetrics:(BOOL)a3;
- (void)_updateContentLayoutForSidebarAppearanceIfNeeded;
- (void)_updateNavigationBarHostingWithSelectedViewController:(id)a3;
- (void)_updateSidebarResolvedLayout;
- (void)didUpdateVisibleAppearance;
- (void)editingStateDidChange;
- (void)loadViews;
- (void)navigationControllerDidUpdate:(id)a3;
- (void)preferredSidebarModeDidChange;
- (void)selectedViewControllerDidChange;
- (void)setAbsoluteSidebarInsets:(UIEdgeInsets)a3;
- (void)setAdditionalSidebarInsets:(UIEdgeInsets)a3;
- (void)setBarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setBottomBarSuppressedByNavigation:(BOOL)a3 animated:(BOOL)a4;
- (void)setOverrideTidebarButtonAction:(id)a3;
- (void)setSupportsResizingSidebar:(BOOL)a3;
- (void)sidebarLayoutDidChange;
- (void)sidebarVisibilityDidChangeWithAnimator:(id)a3;
- (void)tabBarDidChange;
- (void)tabContentDidChange:(id)a3;
- (void)updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:(id)a3;
- (void)updateTabBarLayout;
- (void)updateViewControllerForReselection:(id)a3;
- (void)updateViewControllers:(BOOL)a3;
- (void)willUpdateViewControllers;
@end

@implementation _UITabBarControllerAdaptiveVisualStyle

- (UIAction)overrideTidebarButtonAction
{
  v2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  v3 = [v2 overrideTidebarButtonAction];

  return v3;
}

- (void)setOverrideTidebarButtonAction:(id)a3
{
  v4 = a3;
  v5 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v5 setOverrideTidebarButtonAction:v4];
}

- (unint64_t)defaultMaxItems
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7.receiver = self;
  v7.super_class = _UITabBarControllerAdaptiveVisualStyle;
  return [(_UITabBarControllerVisualStyle_iOS *)&v7 defaultMaxItems];
}

- (BOOL)ignoresDefaultTabBarVisibilityAnimation
{
  v2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  v3 = [v2 tabBarContentLayoutManager];
  v4 = v3 != 0;

  return v4;
}

- (void)tabBarDidChange
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v6 = [(UITabBarController *)v3 _internalTabBar];

  v4 = v6;
  if (v6)
  {
    if (_UITabBarControllerShouldUpdateTabBarOnChange_onceToken != -1)
    {
      dispatch_once(&_UITabBarControllerShouldUpdateTabBarOnChange_onceToken, &__block_literal_global_689);
      v4 = v6;
    }

    if (_UITabBarControllerShouldUpdateTabBarOnChange_shouldUpdateTabBar == 1)
    {
      v5 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
      [v5 setTabBar:v6];

      v4 = v6;
    }
  }
}

- (void)loadViews
{
  v9 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = self->_tabContainerView;
  if (!v3)
  {
    v4 = [(UITabBarController *)v9 _internalTabBar];
    v3 = [[_UITabContainerView alloc] initWithTabBarController:v9];
    [(_UITabContainerView *)v3 setDelegate:self];
    objc_storeStrong(&self->_tabContainerView, v3);
    if (!v4)
    {
      v5 = [(_UITabContainerView *)v3 tabBar];
      [v9 setTabBar:v5];
    }

    v6 = [(_UITabContainerView *)v3 tabBarContentLayoutManager];
    [v6 tabBarDidChange:0];
  }

  if (dyld_program_sdk_at_least())
  {
    v7 = +[UIColor systemBackgroundColor];
    v8 = [v9 view];
    [v8 setBackgroundColor:v7];
  }

  if (dyld_program_sdk_at_least())
  {
    [(_UITabBarControllerAdaptiveVisualStyle *)self setSupportsResizingSidebar:1];
  }
}

- (void)_updateNavigationBarHostingWithSelectedViewController:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v6 = [(UITabBarController *)v5 _viewControllersForTabs];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
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
        v13 = [v12 _hostingNavigationBar];
        if (!v13)
        {
          v14 = [v12 _hostingSplitViewControllerForTabBar];
          v15 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
          [v14 _setTabBarHostedView:v15];

          goto LABEL_10;
        }

        if ([v12 _shouldOverlayTabBar])
        {
          [v13 _setActiveTabBarHost:v12 == v4];
          v14 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
          [v13 _setTabBarHostedView:v14];
LABEL_10:

          goto LABEL_12;
        }

        [v13 _setTabBarHostedView:0];
LABEL_12:
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v16 _updateContentOverlayInsetsForSelfAndChildren];
}

- (void)updateTabBarLayout
{
  [(UIView *)self->_tabContainerView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v12 = [v11 view];
  [v12 bounds];
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
  v21 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v22 = [v21 selectedViewController];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateNavigationBarHostingWithSelectedViewController:v22];

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
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = [(UITabBarController *)v3 _viewControllersForTabs];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
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
        v11 = [v10 _hostingNavigationBar];
        [v11 _setTabBarHostedView:0];

        v12 = [v10 _hostingSplitViewControllerForTabBar];
        [v12 _setTabBarHostedView:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)updateViewControllers:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UITabBarControllerAdaptiveVisualStyle;
  [(_UITabBarControllerVisualStyle_iOS *)&v5 updateViewControllers:?];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateBarAvailabilityAnimated:v3];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateBarsWithWantsHostedTabBarMetrics:1];
}

- (void)selectedViewControllerDidChange
{
  v6.receiver = self;
  v6.super_class = _UITabBarControllerAdaptiveVisualStyle;
  [(_UITabBarControllerVisualStyle *)&v6 selectedViewControllerDidChange];
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = [v3 selectedViewController];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateNavigationBarHostingWithSelectedViewController:v4];

  v5 = [(_UITabContainerView *)self->_tabContainerView tabBarContentLayoutManager];
  [v5 updateHostedElementsAnimated:0];
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

- (void)updateViewControllerForReselection:(id)a3
{
  v4 = a3;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v6 = [v5 _selectedTabElement];

  v7 = [(_UITabBarControllerAdaptiveVisualStyle *)self shouldEnforceChildSelectionInGroupTabs];
  if (![v6 _isGroup] || (objc_msgSend(v6, "_isSidebarDestination") & 1) != 0 || !v7)
  {
    v8.receiver = self;
    v8.super_class = _UITabBarControllerAdaptiveVisualStyle;
    [(_UITabBarControllerVisualStyle *)&v8 updateViewControllerForReselection:v4];
  }
}

- (void)navigationControllerDidUpdate:(id)a3
{
  v3 = [(_UITabContainerView *)self->_tabContainerView tabBarContentLayoutManager];
  [v3 updateHostedElementsAnimated:0];
}

- (void)_updateBarsWithWantsHostedTabBarMetrics:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v6 = [(UITabBarController *)v5 _viewControllersForTabs];

  v7 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  if ([v7 canShowFloatingUI])
  {
    v8 = [(_UITabBarControllerAdaptiveVisualStyle *)self canDisplayTabBar];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v3 = 0;
LABEL_6:
  if ([(_UITabBarControllerVisualStyle *)self isBarHidden])
  {
    v9 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v10 = [v9 _overrideTidebarButtonAction];

    if (!v10)
    {
      v3 = 0;
    }
  }

  v11 = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  if (([(UITabBarControllerSidebar *)v11 _isSidebarSupportedAndVisible]& 1) != 0)
  {
    v12 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
    v13 = [v12 sidebarLayout] != 2;

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
  v15 = v6;
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
        v21 = [v20 _hostingNavigationBar];
        [v21 _setWantsHostedTabBarMetrics:{v3 & objc_msgSend(v20, "_shouldOverlayTabBar")}];
        [v21 _setEdgesRequiringContentMargin:v14];
        v22 = [v20 navigationController];
        v23 = [v22 _floatingBarContainerView];

        [v23 _setEdgesRequiringContentMargin:v14];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }
}

- (void)tabContentDidChange:(id)a3
{
  v4 = a3;
  if ([v4 _isBridgedItem])
  {
    v5.receiver = self;
    v5.super_class = _UITabBarControllerAdaptiveVisualStyle;
    [(_UITabBarControllerVisualStyle_iOS *)&v5 tabContentDidChange:v4];
  }
}

- (id)_tabCustomizationProxy
{
  v2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  v3 = [v2 floatingTabBar];
  v4 = [v3 tabCustomizationProxy];

  return v4;
}

- (id)sidebar
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = [v2 sidebar];

  return v3;
}

- (BOOL)canDisplayUITabBar
{
  v2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  v3 = [v2 canShowFloatingUI];

  return v3 ^ 1;
}

- (BOOL)canDisplaySidebar
{
  v16 = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_13;
  }

  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = [v3 mode];

  if (v4 == 2)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  if (v4)
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
    v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v6 = [v5 _tabElements];

    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v11 + 1) + 8 * i) _isGroup])
          {
            LOBYTE(v7) = 1;
            goto LABEL_17;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)setBarHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_UITabBarControllerVisualStyle *)self isBarHidden];
  v8.receiver = self;
  v8.super_class = _UITabBarControllerAdaptiveVisualStyle;
  [(_UITabBarControllerVisualStyle *)&v8 setBarHidden:v5 animated:v4];
  if (v7 != v5)
  {
    [(_UITabBarControllerAdaptiveVisualStyle *)self _updateBarAvailabilityAnimated:v4];
  }
}

- (void)setBottomBarSuppressedByNavigation:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UITabBarControllerAdaptiveVisualStyle;
  [(_UITabBarControllerVisualStyle *)&v7 setBarHidden:a3 animated:a4];
  v6 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v6 setIsBottomBarSuppressed:v4];
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

- (void)sidebarVisibilityDidChangeWithAnimator:(id)a3
{
  v8 = a3;
  v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v5 = [v4 view];
  v6 = [v5 _window];
  v7 = v6 != 0;

  [(_UITabContainerView *)self->_tabContainerView updateSidebarAppearanceStateAnimated:v7 animator:v8];
}

- (BOOL)supportsResizingSidebar
{
  v2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  v3 = [v2 supportsResizingSidebar];

  return v3;
}

- (void)setSupportsResizingSidebar:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v4 setSupportsResizingSidebar:v3];
}

- (UIEdgeInsets)additionalSidebarInsets
{
  v2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v2 additionalSidebarInsets];
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

- (void)setAdditionalSidebarInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v7 setAdditionalSidebarInsets:{top, left, bottom, right}];
}

- (UIEdgeInsets)absoluteSidebarInsets
{
  v2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v2 absoluteSidebarInsets];
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

- (void)setAbsoluteSidebarInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v7 setAbsoluteSidebarInsets:{top, left, bottom, right}];
}

- (void)editingStateDidChange
{
  v2 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v2 updateEditModeAppearanceAnimated:1];
}

- (void)_updateBarAvailabilityAnimated:(BOOL)a3
{
  v3 = a3;
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

  [(_UITabContainerView *)tabContainerView setAvailableComponent:v6 animated:v3];
}

- (void)updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:(id)a3
{
  v18 = a3;
  v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v5 = [v4 _transitionView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = [v4 view];
  [v10 bounds];
  [(_UITabBarControllerAdaptiveVisualStyle *)self adjustedTransitionViewFrame:?];
  v12 = v11;
  v14 = v13;

  if (v7 != v12 || v9 != v14)
  {
    v16 = v18;
    if (!v18)
    {
      v16 = [v4 _definiteTransitionCoordinator];
    }

    v18 = v16;
    v17 = [v4 _selectedViewControllerInTabBar];
    [v17 viewWillTransitionToSize:v18 withTransitionCoordinator:{v12, v14}];
  }

  [(_UITabBarControllerAdaptiveVisualStyle *)self _setNeedsContentLayout];
  [(_UITabBarControllerAdaptiveVisualStyle *)self _updateContentLayoutForSidebarAppearanceIfNeeded];
}

- (void)didUpdateVisibleAppearance
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = [v3 _isInSidebarTransition];

  if ((v4 & 1) == 0)
  {
    [(_UITabBarControllerAdaptiveVisualStyle *)self _setNeedsContentLayout];

    [(_UITabBarControllerAdaptiveVisualStyle *)self _updateContentLayoutForSidebarAppearanceIfNeeded];
  }
}

- (BOOL)_isSidebarAvailable
{
  v3 = [(_UITabBarControllerAdaptiveVisualStyle *)self canDisplaySidebar];
  if (v3)
  {
    v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v5 = [v4 traitCollection];
    v6 = [v5 horizontalSizeClass];

    LOBYTE(v3) = v6 == 2;
  }

  return v3;
}

- (void)_setNeedsContentLayout
{
  if (!self->_needsContentLayout)
  {
    self->_needsContentLayout = 1;
    v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v3 = [v4 _existingView];
    [v3 setNeedsLayout];
  }
}

- (void)_updateSidebarResolvedLayout
{
  v4 = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  v5 = [(UITabBarControllerSidebar *)v4 _resolvedLayout];

  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UITabBarControllerAdaptiveVisualStyle.m" lineNumber:555 description:@"Resolved sidebar layout cannot be automatic."];
  }

  v6 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v6 bounds];
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
    if (v5 != 2)
    {
      v12 = 2;
    }

    if (v5 == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v12;
    }
  }

  v14 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v14 setPreferredSidebarLayout:v11];
}

- (void)_updateContentLayoutForSidebarAppearanceIfNeeded
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = v3;
  if (self->_needsContentLayout)
  {
    v5 = [v3 _window];

    if (v5)
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

- (CGRect)adjustedTransitionViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
  [v7 adjustedFrameForContentTransitionViewFrame:{x, y, width, height}];
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
  v3 = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  if (([(UITabBarControllerSidebar *)v3 _isSidebarSupportedAndVisible]& 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UITabBarControllerAdaptiveVisualStyle;
    v4 = [(_UITabBarControllerVisualStyle *)&v6 childViewControllerForStatusBarStyle];
  }

  return v4;
}

- (int64_t)preferredLeadingStatusBarStyle
{
  v3 = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  if (([(UITabBarControllerSidebar *)v3 _isSidebarSupportedAndVisible]& 1) != 0)
  {
    v4 = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
    v5 = [v4 _outlineView];
    if (!v5)
    {

LABEL_4:
      v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      v8 = [v7 traitCollection];
      v9 = [v8 userInterfaceStyle];

      if (v9 == 2)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    v6 = v5[53];

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
  v3 = [(_UITabBarControllerAdaptiveVisualStyle *)self sidebar];
  v4 = [(UITabBarControllerSidebar *)v3 _isSidebarSupportedAndVisible];

  if (v4)
  {
    v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v6 = [v5 traitCollection];
    v7 = [v6 userInterfaceStyle];
  }

  else
  {
    v8 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
    v9 = [v8 isShowingFloatingTabBar];

    if (!v9)
    {
      v12 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      v13 = [v12 _selectedViewControllerInTabBar];
      v14 = [v13 _effectiveStatusBarStyleViewController];

      v15 = [v14 preferredTrafficLightStyle];
      return v15;
    }

    v5 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
    v6 = [v5 floatingTabBar];
    v7 = [v6 effectiveUserInterfaceStyle];
  }

  v10 = v7;

  if (v10 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)_effectivePartStyleForEdge:(int64_t)a3
{
  v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v5 = [v4 _selectedViewControllerInTabBar];
  v6 = [v5 _effectiveStatusBarStyleViewController];

  v7 = _viewControllerIfStatusBarPartStyleProviding(v6);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  switch(a3)
  {
    case 2:
      v9 = [v7 preferredTrailingStatusBarStyle];
LABEL_8:
      v10 = v9;
      if (v9 != 4)
      {
        goto LABEL_12;
      }

      break;
    case 1:
      v9 = [v7 preferredCenterStatusBarStyle];
      goto LABEL_8;
    case 0:
      v9 = [v7 preferredLeadingStatusBarStyle];
      goto LABEL_8;
  }

LABEL_9:
  v11 = [v6 preferredStatusBarStyle];
  if (v11 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v11 == 3);
  }

LABEL_12:

  return v10;
}

- (UIEdgeInsets)edgeInsetsForChildViewController:(id)a3
{
  tabContainerView = self->_tabContainerView;
  v5 = a3;
  if ([(_UITabContainerView *)tabContainerView canShowFloatingUI])
  {
    [(_UITabContainerView *)self->_tabContainerView edgeInsetsForChildViewController:v5];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _UITabBarControllerAdaptiveVisualStyle;
    [(_UITabBarControllerVisualStyle *)&v18 edgeInsetsForChildViewController:v5];
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
    v3 = [(_UITabBarControllerAdaptiveVisualStyle *)self tabContainerView];
    [v3 contentLayoutGuideFrame];
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