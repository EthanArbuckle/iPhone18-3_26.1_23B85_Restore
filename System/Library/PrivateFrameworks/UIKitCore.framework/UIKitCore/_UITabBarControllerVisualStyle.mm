@interface _UITabBarControllerVisualStyle
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isDisplayingSidebar;
- (BOOL)isTabBarEffectivelyHidden;
- (BOOL)overrideUISplitViewControllerToCompact;
- (BOOL)shouldForgetRememberedFocusItemForSelectedViewController:(id)a3 context:(id)a4;
- (BOOL)shouldTrackContentScrollView:(id)a3 viewController:(id)a4 tabBarBackgroundRequired:(BOOL)a5;
- (BOOL)wantsDefaultTabBar;
- (CGRect)contentLayoutGuideFrame;
- (UIEdgeInsets)additionalContentMargins;
- (UIEdgeInsets)bottomAccessoryInsets;
- (UIEdgeInsets)edgeInsetsForChildViewController:(id)a3;
- (UIEdgeInsets)overlayInsetsAdjustment;
- (UITabBarController)tabBarController;
- (_UITabBarControllerVisualStyle)initWithTabBarController:(id)a3;
- (id)childViewControllerForStatusBarStyle;
- (id)tabBarView;
- (void)_accessibilityLongPressChanged:(id)a3;
- (void)_installScrollPocketInteractionIfNeeded;
- (void)_performBackGesture:(id)a3;
- (void)_performSelectGesture:(id)a3;
- (void)_updateAccessibilityGestureEnableState;
- (void)editingStateDidChange;
- (void)performWithoutNotifyingTabBarController:(id)a3;
- (void)sendSelectionEventsForControl:(id)a3;
- (void)setBarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setBottomBarSuppressedByNavigation:(BOOL)a3 animated:(BOOL)a4;
- (void)teardown;
- (void)updateFocusForSelectedViewControllerChange;
- (void)updateGestureRecognizers;
- (void)updateTabBarLayout;
- (void)updateViewControllerForReselection:(id)a3;
@end

@implementation _UITabBarControllerVisualStyle

- (void)_updateAccessibilityGestureEnableState
{
  if (self->_accessibilityLongPressGestureRecognizer)
  {
    v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v4 = [v3 traitCollection];
    v5 = [v4 _isLargeContentViewerEnabled];

    accessibilityLongPressGestureRecognizer = self->_accessibilityLongPressGestureRecognizer;

    [(UIGestureRecognizer *)accessibilityLongPressGestureRecognizer setEnabled:v5];
  }
}

- (void)updateTabBarLayout
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v25 = [(UITabBarController *)v3 _internalTabBar];

  v4 = [v25 window];
  if (v4)
  {
  }

  else
  {
    v22 = [v25 _expectedSuperviewFollowingAnimation];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v6 = [v5 _effectiveTabBarPosition];

  v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v8 = [v7 _containerView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  v13 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  [v25 sizeThatFits:{*MEMORY[0x1E695F060], v14}];
  v17 = v15;
  if ((v6 - 3) >= 2)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  v19 = 0.0;
  if (v6 > 2)
  {
    if (v6 == 4)
    {
      v19 = v10 - v17;
      goto LABEL_18;
    }

    if (v6 == 3)
    {
LABEL_18:
      v21 = 0.0;
      goto LABEL_19;
    }

LABEL_17:
    v12 = 0.0;
    v17 = 0.0;
    goto LABEL_18;
  }

  v20 = v16;
  if (v6 >= 2)
  {
    if (v6 == 2)
    {
      v12 = v16;
      v17 = v10;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v21 = v12 - v16;
  v12 = v20;
  v17 = v10;
LABEL_19:
  [(_UITabBarControllerVisualStyle *)self adjustedTabBarFrame:v19, v21, v17, v12];
  [v25 setFrame:?];
  [v25 sizeThatFits:{v13, v14}];
  if ((v6 - 3) >= 2)
  {
    v23 = v24;
  }

  if (v18 != v23)
  {
    [(_UITabBarControllerVisualStyle *)self updateTabBarLayout];
  }

LABEL_23:
}

- (void)updateGestureRecognizers
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UITabBarControllerVisualStyle *)self supportsFocusGestures];
  v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v5 = [v4 _containerView];

  backGestureRecognizer = self->_backGestureRecognizer;
  if (v3)
  {
    if (!backGestureRecognizer)
    {
      v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__performBackGesture_];
      v8 = self->_backGestureRecognizer;
      self->_backGestureRecognizer = v7;

      [(UIGestureRecognizer *)self->_backGestureRecognizer setDelegate:self];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_UITabBarControllerVisualStyle backGestureRecognizerPressType](self, "backGestureRecognizerPressType")}];
      v25[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      [(UITapGestureRecognizer *)self->_backGestureRecognizer setAllowedPressTypes:v10];

      v11 = MEMORY[0x1E695E0F0];
      [(UIGestureRecognizer *)self->_backGestureRecognizer setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
      [v5 addGestureRecognizer:self->_backGestureRecognizer];
      v12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__performSelectGesture_];
      selectGestureRecognizer = self->_selectGestureRecognizer;
      self->_selectGestureRecognizer = v12;

      [(UIGestureRecognizer *)self->_selectGestureRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_selectGestureRecognizer setAllowedPressTypes:&unk_1EFE2D828];
      [(UIGestureRecognizer *)self->_selectGestureRecognizer setAllowedTouchTypes:v11];
      [v5 addGestureRecognizer:self->_selectGestureRecognizer];
    }
  }

  else if (backGestureRecognizer)
  {
    [v5 removeGestureRecognizer:?];
    v14 = self->_backGestureRecognizer;
    self->_backGestureRecognizer = 0;

    [v5 removeGestureRecognizer:self->_selectGestureRecognizer];
    v15 = self->_selectGestureRecognizer;
    self->_selectGestureRecognizer = 0;
  }

  accessibilityLongPressGestureRecognizer = self->_accessibilityLongPressGestureRecognizer;
  if (accessibilityLongPressGestureRecognizer)
  {
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    v17 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__accessibilityLongPressChanged_];
    v18 = self->_accessibilityLongPressGestureRecognizer;
    self->_accessibilityLongPressGestureRecognizer = v17;

    [(UILongPressGestureRecognizer *)self->_accessibilityLongPressGestureRecognizer setMinimumPressDuration:0.15];
    [(UIGestureRecognizer *)self->_accessibilityLongPressGestureRecognizer setDelegate:self];
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:self selector:sel__updateAccessibilityGestureEnableState name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];
  }

  accessibilityLongPressGestureRecognizer = self->_accessibilityLongPressGestureRecognizer;
  if (accessibilityLongPressGestureRecognizer)
  {
LABEL_10:
    v20 = [(UIGestureRecognizer *)accessibilityLongPressGestureRecognizer view];
    v21 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v22 = [(UITabBarController *)v21 _internalTabBar];

    if (v20 != v22)
    {
      v23 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      v24 = [(UITabBarController *)v23 _internalTabBar];
      [v24 addGestureRecognizer:self->_accessibilityLongPressGestureRecognizer];
    }
  }

  [(_UITabBarControllerVisualStyle *)self _updateAccessibilityGestureEnableState];
}

- (UITabBarController)tabBarController
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);

  return WeakRetained;
}

- (BOOL)overrideUISplitViewControllerToCompact
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom] != 6;

  return v4;
}

- (BOOL)isTabBarEffectivelyHidden
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = [(UITabBarController *)v2 _internalTabBar];

  if (v3)
  {
    v4 = [v3 isHidden];
  }

  else
  {
    v4 = 1;
  }

  v5 = [v3 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  v7 = (v6 != 6) | v4;
  if (v6 != 6 && (v4 & 1) == 0)
  {
    [v3 alpha];
    v7 = v8 == 0.0;
  }

  return v7 & 1;
}

- (UIEdgeInsets)additionalContentMargins
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)childViewControllerForStatusBarStyle
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = [v2 _selectedViewControllerInTabBar];

  return v3;
}

- (void)updateFocusForSelectedViewControllerChange
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v2 _setPreferTabBarFocused:0];
}

- (UIEdgeInsets)overlayInsetsAdjustment
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)tabBarView
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = [(UITabBarController *)v2 _internalTabBar];

  return v3;
}

- (void)_installScrollPocketInteractionIfNeeded
{
  if (!self->_tabBarScrollPocketContainerInteraction && [(_UITabBarControllerVisualStyle *)self wantsScrollPocketForTabBar])
  {
    v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v10 = [(UITabBarController *)v3 _internalTabBar];

    v4 = [(_UITabBarControllerVisualStyle *)self tabBarPosition];
    if ((v4 - 2) > 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = qword_18A6825C8[v4 - 2];
    }

    v6 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:v5];
    tabBarScrollPocketContainerInteraction = self->_tabBarScrollPocketContainerInteraction;
    self->_tabBarScrollPocketContainerInteraction = v6;

    v8 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v9 = [(UITabBarController *)v8 _scrollPocketCollectorInteraction];
    [(_UIScrollPocketContainerInteraction *)self->_tabBarScrollPocketContainerInteraction _setCollectorInteraction:v9];

    [v10 addInteraction:self->_tabBarScrollPocketContainerInteraction];
  }
}

- (BOOL)wantsDefaultTabBar
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceIdiom] != 6;

  return v4;
}

- (void)teardown
{
  if (self->_backGestureRecognizer)
  {
    v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v6 = [v3 _containerView];

    [v6 removeGestureRecognizer:self->_backGestureRecognizer];
    backGestureRecognizer = self->_backGestureRecognizer;
    self->_backGestureRecognizer = 0;

    [v6 removeGestureRecognizer:self->_selectGestureRecognizer];
    selectGestureRecognizer = self->_selectGestureRecognizer;
    self->_selectGestureRecognizer = 0;
  }
}

- (_UITabBarControllerVisualStyle)initWithTabBarController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UITabBarControllerVisualStyle;
  v5 = [(_UITabBarControllerVisualStyle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tabBarController, v4);
  }

  return v6;
}

- (void)updateViewControllerForReselection:(id)a3
{
  v4 = a3;
  v3 = [v4 presentedViewController];

  if (!v3)
  {
    [v4 _updateForReselectionInContainingTabBarController];
  }
}

- (BOOL)isDisplayingSidebar
{
  if ([(_UITabBarControllerVisualStyle *)self canDisplaySidebar])
  {
    v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v4 = [v3 sidebar];
    v5 = [v4 isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)editingStateDidChange
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v4 = [v3 sidebar];
  v8 = [v4 _outlineView];

  if (v8)
  {
    v5 = +[UIView areAnimationsEnabled];
    v6 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v7 = [v6 isEditing];

    [(_UITabOutlineView *)v8 tabModelEditingStateDidChange];
    [(_UITabOutlineView *)v8 setEditing:v7 animated:v5];
  }
}

- (void)sendSelectionEventsForControl:(id)a3
{
  v3 = a3;
  [v3 sendActionsForControlEvents:1];
  [v3 sendActionsForControlEvents:64];
}

- (BOOL)shouldForgetRememberedFocusItemForSelectedViewController:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = [a3 view];
  v7 = [v5 nextFocusedItem];

  LOBYTE(v5) = _UIFocusEnvironmentIsAncestorOfEnvironment(v6, v7);
  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_backGestureRecognizer == v4)
  {
    v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v6 = [v7 _isTabBarFocused] ^ 1;
LABEL_6:

    goto LABEL_7;
  }

  if (self->_selectGestureRecognizer == v4)
  {
    v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    LOBYTE(v6) = [v7 _isTabBarFocused];
    goto LABEL_6;
  }

  LOBYTE(v6) = 1;
LABEL_7:

  return v6;
}

- (void)_performBackGesture:(id)a3
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v3 _performFocusGesture:0];
}

- (void)_performSelectGesture:(id)a3
{
  v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v5 = [v4 _isTabBarFocused];

  if (v5)
  {
    v6 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v7 = [v6 _focusSystem];
    v8 = [v7 focusedItem];
    v11 = _UIFocusEnvironmentContainingView(v8);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_UITabBarControllerVisualStyle *)self sendSelectionEventsForControl:v11];
      v9 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      [v9 _setPreferTabBarFocused:0];

      v10 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      [v10 setNeedsFocusUpdate];
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  if (self->_accessibilityLongPressGestureRecognizer != a3)
  {
    return 0;
  }

  v6 = a4;
  v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v8 = [(UITabBarController *)v7 _internalTabBar];

  v9 = [v6 view];

  LOBYTE(v6) = [v9 isDescendantOfView:v8];
  return v6;
}

- (void)_accessibilityLongPressChanged:(id)a3
{
  v4 = a3;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v11 = [(UITabBarController *)v5 _internalTabBar];

  [v4 locationInView:v11];
  v6 = [v11 _tabBarItemForButtonAtPoint:?];
  v7 = [v4 state];

  if ((v7 - 1) >= 2)
  {
    if (v7 == 3 && v6)
    {
      v10 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      [v10 _tabBarItemClicked:v6];
    }
  }

  else if (v6)
  {
    v8 = [UIAccessibilityHUDItem HUDItemForTabBarItem:v6];
    v9 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    [v9 _showAccessibilityHUDItem:v8];

    goto LABEL_8;
  }

  v8 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v8 _dismissAccessibilityHUD];
LABEL_8:
}

- (void)setBarHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_barHidden != a3)
  {
    v4 = a3;
    self->_barHidden = a3;
    if (!self->_suppressTabBarControllerNotification)
    {
      v6 = a4;
      if (![(_UITabBarControllerVisualStyle *)self ignoresDefaultTabBarVisibilityAnimation])
      {
        v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
        v10 = v7;
        if (v4)
        {
          if (v6)
          {
            v8 = 7;
          }

          else
          {
            v8 = 0;
          }

          [v7 _hideBarWithTransition:v8 isExplicit:1];
        }

        else
        {
          if (v6)
          {
            v9 = 3;
          }

          else
          {
            v9 = 0;
          }

          [v7 _showBarWithTransition:v9 isExplicit:1];
        }
      }
    }
  }
}

- (void)setBottomBarSuppressedByNavigation:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_isBottomBarSuppressedByNavigation != a3)
  {
    self->_isBottomBarSuppressedByNavigation = a3;
  }
}

- (void)performWithoutNotifyingTabBarController:(id)a3
{
  suppressTabBarControllerNotification = self->_suppressTabBarControllerNotification;
  self->_suppressTabBarControllerNotification = 1;
  (*(a3 + 2))(a3, a2);
  self->_suppressTabBarControllerNotification = suppressTabBarControllerNotification;
}

- (UIEdgeInsets)edgeInsetsForChildViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  v6 = [WeakRetained _effectiveTabBarPosition];

  v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v8 = [(UITabBarController *)v7 _internalTabBar];

  if (v6 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  v10 = [v4 edgesForExtendedLayout];
  if ([v8 _isTranslucent])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v4 extendedLayoutIncludesOpaqueBars];
  }

  v12 = [v8 superview];
  if (!v12 || [v8 isHidden])
  {

    v13 = 0.0;
    v14 = 0.0;
    goto LABEL_14;
  }

  v15 = (v10 & v9) != 0;
  v16 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v17 = v15 & ~[v16 _isBarHidden] & v11;

  v14 = 0.0;
  if (v17 != 1)
  {
LABEL_13:
    v13 = 0.0;
    goto LABEL_14;
  }

  [v8 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v20 = v19;
  if (v6 == 2)
  {
    [v8 frame];
    v14 = v20 + CGRectGetMinY(v36);
    goto LABEL_13;
  }

  v30 = v18;
  v31 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v31 _contentOverlayInsets];
  v13 = v20 - v32;

  [v8 bounds];
  if (v34 != v30 || v33 != v20)
  {
    v35 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    [v35 _invalidateBarLayout];
  }

LABEL_14:
  [(_UITabBarControllerVisualStyle *)self bottomAccessoryInsets];
  v22 = v21;
  v23 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v23 _contentOverlayInsets];
  v25 = v22 - v24;

  v26 = 0.0;
  v27 = 0.0;
  v28 = v14;
  v29 = fmax(v13, v25);
  result.right = v27;
  result.bottom = v29;
  result.left = v26;
  result.top = v28;
  return result;
}

- (CGRect)contentLayoutGuideFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  v4 = [WeakRetained view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = objc_loadWeakRetained(&self->_tabBarController);
  v14 = [v13 view];
  [v14 safeAreaInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (![(_UITabBarControllerVisualStyle *)self isBarHidden])
  {
    v45 = v12;
    v23 = objc_loadWeakRetained(&self->_tabBarController);
    v24 = [v23 tabBar];
    [v24 frame];
    v42 = v25;
    v43 = v26;
    rect = v27;
    v29 = v28;

    v30 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v31 = [v30 _effectiveTabBarPosition];

    if (v31 > 2)
    {
      if (v31 == 4)
      {
        v50.origin.x = v6;
        v50.origin.y = v8;
        v41 = v29;
        v50.size.width = v10;
        v50.size.height = v45;
        MaxX = CGRectGetMaxX(v50);
        v51.origin.x = v42;
        v51.origin.y = v43;
        v12 = v45;
        v51.size.width = rect;
        v51.size.height = v41;
        v22 = MaxX - CGRectGetMinX(v51);
        goto LABEL_12;
      }

      if (v31 == 3)
      {
        v48.origin.x = v42;
        v48.origin.y = v43;
        v48.size.width = rect;
        v48.size.height = v29;
        v18 = CGRectGetMaxX(v48);
      }
    }

    else
    {
      if (v31 < 2)
      {
        v46.origin.x = v6;
        v46.origin.y = v8;
        v46.size.width = v10;
        v32 = v29;
        v12 = v45;
        v46.size.height = v45;
        MaxY = CGRectGetMaxY(v46);
        v47.origin.x = v42;
        v47.origin.y = v43;
        v47.size.width = rect;
        v47.size.height = v32;
        v20 = MaxY - CGRectGetMinY(v47);
        goto LABEL_12;
      }

      if (v31 == 2)
      {
        v49.origin.x = v42;
        v49.origin.y = v43;
        v49.size.width = rect;
        v49.size.height = v29;
        v16 = CGRectGetMaxY(v49);
      }
    }

    v12 = v45;
  }

LABEL_12:
  [(_UITabBarControllerVisualStyle *)self bottomAccessoryInsets];
  v34 = fmax(v20, v33);
  v35 = v6 + v18;
  v36 = v8 + v16;
  v37 = v10 - (v22 + v18);
  v38 = v12 - (v16 + v34);
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (UIEdgeInsets)bottomAccessoryInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)shouldTrackContentScrollView:(id)a3 viewController:(id)a4 tabBarBackgroundRequired:(BOOL)a5
{
  v5 = a5;
  if (_UIBarsApplyChromelessEverywhere())
  {
    v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v8 = ([v7 _isBarEffectivelyHidden] | v5) ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end