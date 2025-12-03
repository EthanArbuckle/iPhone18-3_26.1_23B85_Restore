@interface _UITabBarControllerVisualStyle
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isDisplayingSidebar;
- (BOOL)isTabBarEffectivelyHidden;
- (BOOL)overrideUISplitViewControllerToCompact;
- (BOOL)shouldForgetRememberedFocusItemForSelectedViewController:(id)controller context:(id)context;
- (BOOL)shouldTrackContentScrollView:(id)view viewController:(id)controller tabBarBackgroundRequired:(BOOL)required;
- (BOOL)wantsDefaultTabBar;
- (CGRect)contentLayoutGuideFrame;
- (UIEdgeInsets)additionalContentMargins;
- (UIEdgeInsets)bottomAccessoryInsets;
- (UIEdgeInsets)edgeInsetsForChildViewController:(id)controller;
- (UIEdgeInsets)overlayInsetsAdjustment;
- (UITabBarController)tabBarController;
- (_UITabBarControllerVisualStyle)initWithTabBarController:(id)controller;
- (id)childViewControllerForStatusBarStyle;
- (id)tabBarView;
- (void)_accessibilityLongPressChanged:(id)changed;
- (void)_installScrollPocketInteractionIfNeeded;
- (void)_performBackGesture:(id)gesture;
- (void)_performSelectGesture:(id)gesture;
- (void)_updateAccessibilityGestureEnableState;
- (void)editingStateDidChange;
- (void)performWithoutNotifyingTabBarController:(id)controller;
- (void)sendSelectionEventsForControl:(id)control;
- (void)setBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setBottomBarSuppressedByNavigation:(BOOL)navigation animated:(BOOL)animated;
- (void)teardown;
- (void)updateFocusForSelectedViewControllerChange;
- (void)updateGestureRecognizers;
- (void)updateTabBarLayout;
- (void)updateViewControllerForReselection:(id)reselection;
@end

@implementation _UITabBarControllerVisualStyle

- (void)_updateAccessibilityGestureEnableState
{
  if (self->_accessibilityLongPressGestureRecognizer)
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    traitCollection = [tabBarController traitCollection];
    _isLargeContentViewerEnabled = [traitCollection _isLargeContentViewerEnabled];

    accessibilityLongPressGestureRecognizer = self->_accessibilityLongPressGestureRecognizer;

    [(UIGestureRecognizer *)accessibilityLongPressGestureRecognizer setEnabled:_isLargeContentViewerEnabled];
  }
}

- (void)updateTabBarLayout
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  window = [_internalTabBar window];
  if (window)
  {
  }

  else
  {
    _expectedSuperviewFollowingAnimation = [_internalTabBar _expectedSuperviewFollowingAnimation];

    if (_expectedSuperviewFollowingAnimation)
    {
      goto LABEL_23;
    }
  }

  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _effectiveTabBarPosition = [tabBarController2 _effectiveTabBarPosition];

  tabBarController3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _containerView = [tabBarController3 _containerView];
  [_containerView bounds];
  v10 = v9;
  v12 = v11;

  v13 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  [_internalTabBar sizeThatFits:{*MEMORY[0x1E695F060], v14}];
  v17 = v15;
  if ((_effectiveTabBarPosition - 3) >= 2)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  v19 = 0.0;
  if (_effectiveTabBarPosition > 2)
  {
    if (_effectiveTabBarPosition == 4)
    {
      v19 = v10 - v17;
      goto LABEL_18;
    }

    if (_effectiveTabBarPosition == 3)
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
  if (_effectiveTabBarPosition >= 2)
  {
    if (_effectiveTabBarPosition == 2)
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
  [_internalTabBar setFrame:?];
  [_internalTabBar sizeThatFits:{v13, v14}];
  if ((_effectiveTabBarPosition - 3) >= 2)
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
  supportsFocusGestures = [(_UITabBarControllerVisualStyle *)self supportsFocusGestures];
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _containerView = [tabBarController _containerView];

  backGestureRecognizer = self->_backGestureRecognizer;
  if (supportsFocusGestures)
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
      [_containerView addGestureRecognizer:self->_backGestureRecognizer];
      v12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__performSelectGesture_];
      selectGestureRecognizer = self->_selectGestureRecognizer;
      self->_selectGestureRecognizer = v12;

      [(UIGestureRecognizer *)self->_selectGestureRecognizer setDelegate:self];
      [(UITapGestureRecognizer *)self->_selectGestureRecognizer setAllowedPressTypes:&unk_1EFE2D828];
      [(UIGestureRecognizer *)self->_selectGestureRecognizer setAllowedTouchTypes:v11];
      [_containerView addGestureRecognizer:self->_selectGestureRecognizer];
    }
  }

  else if (backGestureRecognizer)
  {
    [_containerView removeGestureRecognizer:?];
    v14 = self->_backGestureRecognizer;
    self->_backGestureRecognizer = 0;

    [_containerView removeGestureRecognizer:self->_selectGestureRecognizer];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__updateAccessibilityGestureEnableState name:@"UILargeContentViewerInteractionEnabledStatusDidChangeNotification" object:0];
  }

  accessibilityLongPressGestureRecognizer = self->_accessibilityLongPressGestureRecognizer;
  if (accessibilityLongPressGestureRecognizer)
  {
LABEL_10:
    view = [(UIGestureRecognizer *)accessibilityLongPressGestureRecognizer view];
    tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _internalTabBar = [(UITabBarController *)tabBarController2 _internalTabBar];

    if (view != _internalTabBar)
    {
      tabBarController3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      _internalTabBar2 = [(UITabBarController *)tabBarController3 _internalTabBar];
      [_internalTabBar2 addGestureRecognizer:self->_accessibilityLongPressGestureRecognizer];
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
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  traitCollection = [tabBarController traitCollection];
  v4 = [traitCollection userInterfaceIdiom] != 6;

  return v4;
}

- (BOOL)isTabBarEffectivelyHidden
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  if (_internalTabBar)
  {
    isHidden = [_internalTabBar isHidden];
  }

  else
  {
    isHidden = 1;
  }

  traitCollection = [_internalTabBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v7 = (userInterfaceIdiom != 6) | isHidden;
  if (userInterfaceIdiom != 6 && (isHidden & 1) == 0)
  {
    [_internalTabBar alpha];
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
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _selectedViewControllerInTabBar = [tabBarController _selectedViewControllerInTabBar];

  return _selectedViewControllerInTabBar;
}

- (void)updateFocusForSelectedViewControllerChange
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController _setPreferTabBarFocused:0];
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
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  return _internalTabBar;
}

- (void)_installScrollPocketInteractionIfNeeded
{
  if (!self->_tabBarScrollPocketContainerInteraction && [(_UITabBarControllerVisualStyle *)self wantsScrollPocketForTabBar])
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

    tabBarPosition = [(_UITabBarControllerVisualStyle *)self tabBarPosition];
    if ((tabBarPosition - 2) > 2)
    {
      v5 = 4;
    }

    else
    {
      v5 = qword_18A6825C8[tabBarPosition - 2];
    }

    v6 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:v5];
    tabBarScrollPocketContainerInteraction = self->_tabBarScrollPocketContainerInteraction;
    self->_tabBarScrollPocketContainerInteraction = v6;

    tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _scrollPocketCollectorInteraction = [(UITabBarController *)tabBarController2 _scrollPocketCollectorInteraction];
    [(_UIScrollPocketContainerInteraction *)self->_tabBarScrollPocketContainerInteraction _setCollectorInteraction:_scrollPocketCollectorInteraction];

    [_internalTabBar addInteraction:self->_tabBarScrollPocketContainerInteraction];
  }
}

- (BOOL)wantsDefaultTabBar
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  traitCollection = [tabBarController traitCollection];
  v4 = [traitCollection userInterfaceIdiom] != 6;

  return v4;
}

- (void)teardown
{
  if (self->_backGestureRecognizer)
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _containerView = [tabBarController _containerView];

    [_containerView removeGestureRecognizer:self->_backGestureRecognizer];
    backGestureRecognizer = self->_backGestureRecognizer;
    self->_backGestureRecognizer = 0;

    [_containerView removeGestureRecognizer:self->_selectGestureRecognizer];
    selectGestureRecognizer = self->_selectGestureRecognizer;
    self->_selectGestureRecognizer = 0;
  }
}

- (_UITabBarControllerVisualStyle)initWithTabBarController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = _UITabBarControllerVisualStyle;
  v5 = [(_UITabBarControllerVisualStyle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tabBarController, controllerCopy);
  }

  return v6;
}

- (void)updateViewControllerForReselection:(id)reselection
{
  reselectionCopy = reselection;
  presentedViewController = [reselectionCopy presentedViewController];

  if (!presentedViewController)
  {
    [reselectionCopy _updateForReselectionInContainingTabBarController];
  }
}

- (BOOL)isDisplayingSidebar
{
  if ([(_UITabBarControllerVisualStyle *)self canDisplaySidebar])
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    sidebar = [tabBarController sidebar];
    v5 = [sidebar isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)editingStateDidChange
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  sidebar = [tabBarController sidebar];
  _outlineView = [sidebar _outlineView];

  if (_outlineView)
  {
    v5 = +[UIView areAnimationsEnabled];
    tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    isEditing = [tabBarController2 isEditing];

    [(_UITabOutlineView *)_outlineView tabModelEditingStateDidChange];
    [(_UITabOutlineView *)_outlineView setEditing:isEditing animated:v5];
  }
}

- (void)sendSelectionEventsForControl:(id)control
{
  controlCopy = control;
  [controlCopy sendActionsForControlEvents:1];
  [controlCopy sendActionsForControlEvents:64];
}

- (BOOL)shouldForgetRememberedFocusItemForSelectedViewController:(id)controller context:(id)context
{
  contextCopy = context;
  view = [controller view];
  nextFocusedItem = [contextCopy nextFocusedItem];

  LOBYTE(contextCopy) = _UIFocusEnvironmentIsAncestorOfEnvironment(view, nextFocusedItem);
  return contextCopy;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_backGestureRecognizer == beginCopy)
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v6 = [tabBarController _isTabBarFocused] ^ 1;
LABEL_6:

    goto LABEL_7;
  }

  if (self->_selectGestureRecognizer == beginCopy)
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    LOBYTE(v6) = [tabBarController _isTabBarFocused];
    goto LABEL_6;
  }

  LOBYTE(v6) = 1;
LABEL_7:

  return v6;
}

- (void)_performBackGesture:(id)gesture
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController _performFocusGesture:0];
}

- (void)_performSelectGesture:(id)gesture
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _isTabBarFocused = [tabBarController _isTabBarFocused];

  if (_isTabBarFocused)
  {
    tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _focusSystem = [tabBarController2 _focusSystem];
    focusedItem = [_focusSystem focusedItem];
    v11 = _UIFocusEnvironmentContainingView(focusedItem);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_UITabBarControllerVisualStyle *)self sendSelectionEventsForControl:v11];
      tabBarController3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      [tabBarController3 _setPreferTabBarFocused:0];

      tabBarController4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      [tabBarController4 setNeedsFocusUpdate];
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  if (self->_accessibilityLongPressGestureRecognizer != recognizer)
  {
    return 0;
  }

  gestureRecognizerCopy = gestureRecognizer;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  view = [gestureRecognizerCopy view];

  LOBYTE(gestureRecognizerCopy) = [view isDescendantOfView:_internalTabBar];
  return gestureRecognizerCopy;
}

- (void)_accessibilityLongPressChanged:(id)changed
{
  changedCopy = changed;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  [changedCopy locationInView:_internalTabBar];
  v6 = [_internalTabBar _tabBarItemForButtonAtPoint:?];
  state = [changedCopy state];

  if ((state - 1) >= 2)
  {
    if (state == 3 && v6)
    {
      tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
      [tabBarController2 _tabBarItemClicked:v6];
    }
  }

  else if (v6)
  {
    tabBarController4 = [UIAccessibilityHUDItem HUDItemForTabBarItem:v6];
    tabBarController3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    [tabBarController3 _showAccessibilityHUDItem:tabBarController4];

    goto LABEL_8;
  }

  tabBarController4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController4 _dismissAccessibilityHUD];
LABEL_8:
}

- (void)setBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  if (self->_barHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_barHidden = hidden;
    if (!self->_suppressTabBarControllerNotification)
    {
      animatedCopy = animated;
      if (![(_UITabBarControllerVisualStyle *)self ignoresDefaultTabBarVisibilityAnimation])
      {
        tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
        v10 = tabBarController;
        if (hiddenCopy)
        {
          if (animatedCopy)
          {
            v8 = 7;
          }

          else
          {
            v8 = 0;
          }

          [tabBarController _hideBarWithTransition:v8 isExplicit:1];
        }

        else
        {
          if (animatedCopy)
          {
            v9 = 3;
          }

          else
          {
            v9 = 0;
          }

          [tabBarController _showBarWithTransition:v9 isExplicit:1];
        }
      }
    }
  }
}

- (void)setBottomBarSuppressedByNavigation:(BOOL)navigation animated:(BOOL)animated
{
  if (self->_isBottomBarSuppressedByNavigation != navigation)
  {
    self->_isBottomBarSuppressedByNavigation = navigation;
  }
}

- (void)performWithoutNotifyingTabBarController:(id)controller
{
  suppressTabBarControllerNotification = self->_suppressTabBarControllerNotification;
  self->_suppressTabBarControllerNotification = 1;
  (*(controller + 2))(controller, a2);
  self->_suppressTabBarControllerNotification = suppressTabBarControllerNotification;
}

- (UIEdgeInsets)edgeInsetsForChildViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  _effectiveTabBarPosition = [WeakRetained _effectiveTabBarPosition];

  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  if (_effectiveTabBarPosition == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  edgesForExtendedLayout = [controllerCopy edgesForExtendedLayout];
  if ([_internalTabBar _isTranslucent])
  {
    extendedLayoutIncludesOpaqueBars = 1;
  }

  else
  {
    extendedLayoutIncludesOpaqueBars = [controllerCopy extendedLayoutIncludesOpaqueBars];
  }

  superview = [_internalTabBar superview];
  if (!superview || [_internalTabBar isHidden])
  {

    v13 = 0.0;
    v14 = 0.0;
    goto LABEL_14;
  }

  v15 = (edgesForExtendedLayout & v9) != 0;
  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v17 = v15 & ~[tabBarController2 _isBarHidden] & extendedLayoutIncludesOpaqueBars;

  v14 = 0.0;
  if (v17 != 1)
  {
LABEL_13:
    v13 = 0.0;
    goto LABEL_14;
  }

  [_internalTabBar sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v20 = v19;
  if (_effectiveTabBarPosition == 2)
  {
    [_internalTabBar frame];
    v14 = v20 + CGRectGetMinY(v36);
    goto LABEL_13;
  }

  v30 = v18;
  tabBarController3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController3 _contentOverlayInsets];
  v13 = v20 - v32;

  [_internalTabBar bounds];
  if (v34 != v30 || v33 != v20)
  {
    tabBarController4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    [tabBarController4 _invalidateBarLayout];
  }

LABEL_14:
  [(_UITabBarControllerVisualStyle *)self bottomAccessoryInsets];
  v22 = v21;
  tabBarController5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController5 _contentOverlayInsets];
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
  view = [WeakRetained view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = objc_loadWeakRetained(&self->_tabBarController);
  view2 = [v13 view];
  [view2 safeAreaInsets];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (![(_UITabBarControllerVisualStyle *)self isBarHidden])
  {
    v45 = v12;
    v23 = objc_loadWeakRetained(&self->_tabBarController);
    tabBar = [v23 tabBar];
    [tabBar frame];
    v42 = v25;
    v43 = v26;
    rect = v27;
    v29 = v28;

    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _effectiveTabBarPosition = [tabBarController _effectiveTabBarPosition];

    if (_effectiveTabBarPosition > 2)
    {
      if (_effectiveTabBarPosition == 4)
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

      if (_effectiveTabBarPosition == 3)
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
      if (_effectiveTabBarPosition < 2)
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

      if (_effectiveTabBarPosition == 2)
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

- (BOOL)shouldTrackContentScrollView:(id)view viewController:(id)controller tabBarBackgroundRequired:(BOOL)required
{
  requiredCopy = required;
  if (_UIBarsApplyChromelessEverywhere())
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v8 = ([tabBarController _isBarEffectivelyHidden] | requiredCopy) ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

@end