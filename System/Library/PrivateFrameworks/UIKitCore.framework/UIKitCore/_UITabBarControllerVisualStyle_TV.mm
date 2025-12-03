@interface _UITabBarControllerVisualStyle_TV
- (BOOL)_isModernBar;
- (BOOL)_shouldAdjustContentViewFrameForOffscreenFocus:(id)focus adjustedTabBarFrame:(CGRect)frame;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)isScrollViewObservationInCompatibilityMode;
- (BOOL)prefersTabBarFocusedOnViewDidLoad;
- (BOOL)shouldForgetRememberedFocusItemForSelectedViewController:(id)controller context:(id)context;
- (BOOL)shouldTrackContentScrollView:(id)view viewController:(id)controller tabBarBackgroundRequired:(BOOL)required;
- (CGRect)adjustedContentViewFrame:(CGRect)frame viewController:(id)controller;
- (CGRect)adjustedTabBarFrame:(CGRect)frame;
- (UIEdgeInsets)edgeInsetsForChildViewController:(id)controller;
- (UIEdgeInsets)overlayInsetsAdjustment;
- (double)_childViewControllerModernBarTopInset;
- (id)defaultAnimatorForFromViewController:(id)controller toViewController:(id)viewController;
- (id)tabBarView;
- (id)viewControllerForObservableScrollViewFromViewController:(id)controller;
- (void)_performTouchDetectionGesture:(id)gesture;
- (void)_scrollViewManagerDidFinishScrolling:(id)scrolling;
- (void)_updateOffscreenState:(BOOL)state withFocusAnimationCoordinator:(id)coordinator;
- (void)adjustTabBarForContentScrollView:(id)view;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)loadViews;
- (void)tabContentDidChange:(id)change;
- (void)teardown;
- (void)updateFocusForSelectedViewControllerChange;
- (void)updateGestureRecognizers;
- (void)updateTabBarLayout;
- (void)updateViewControllers:(BOOL)controllers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _UITabBarControllerVisualStyle_TV

- (void)teardown
{
  if (self->_touchDetectionGestureRecognizer)
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _containerView = [tabBarController _containerView];

    [_containerView removeGestureRecognizer:self->_touchDetectionGestureRecognizer];
    touchDetectionGestureRecognizer = self->_touchDetectionGestureRecognizer;
    self->_touchDetectionGestureRecognizer = 0;
  }
}

- (id)tabBarView
{
  tabBarContainerView = self->_tabBarContainerView;
  if (tabBarContainerView)
  {
    tabBarView = tabBarContainerView;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UITabBarControllerVisualStyle_TV;
    tabBarView = [(_UITabBarControllerVisualStyle *)&v5 tabBarView];
  }

  return tabBarView;
}

- (void)loadViews
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  if (!_internalTabBar)
  {
    view = [tabBarController view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [[UITabBar alloc] initWithFrame:v5, v7, v9, v11];
    [tabBarController setTabBar:v12];
  }
}

- (void)viewDidLoad
{
  v23[4] = *MEMORY[0x1E69E9840];
  if (!self->_contentFocusContainerGuide)
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _containerView = [tabBarController _containerView];

    tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _internalTabBar = [(UITabBarController *)tabBarController2 _internalTabBar];

    v6 = objc_alloc_init(UIFocusContainerGuide);
    contentFocusContainerGuide = self->_contentFocusContainerGuide;
    self->_contentFocusContainerGuide = v6;

    [_containerView addLayoutGuide:self->_contentFocusContainerGuide];
    [(UILayoutGuide *)self->_contentFocusContainerGuide setIdentifier:@"UITabBarControllerFocusContentContainerGuide"];
    v17 = MEMORY[0x1E69977A0];
    topAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide topAnchor];
    bottomAnchor = [_internalTabBar bottomAnchor];
    v19 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v23[0] = v19;
    leadingAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide leadingAnchor];
    leadingAnchor2 = [_containerView leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[1] = v9;
    trailingAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide trailingAnchor];
    trailingAnchor2 = [_containerView trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v23[2] = v12;
    bottomAnchor2 = [(UILayoutGuide *)self->_contentFocusContainerGuide bottomAnchor];
    bottomAnchor3 = [_containerView bottomAnchor];
    v15 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v23[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v17 activateConstraints:v16];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  navigationController = [tabBarController navigationController];

  v6 = navigationController;
  if (navigationController)
  {
    isNavigationBarHidden = [navigationController isNavigationBarHidden];
    v6 = navigationController;
    if ((isNavigationBarHidden & 1) == 0)
    {
      [navigationController setNavigationBarHidden:1 animated:appearCopy];
      v6 = navigationController;
      *&self->_flags |= 1u;
    }
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  if (*&self->_flags)
  {
    disappearCopy = disappear;
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    navigationController = [tabBarController navigationController];

    [navigationController setNavigationBarHidden:0 animated:disappearCopy];
    *&self->_flags &= ~1u;
  }
}

- (void)updateViewControllers:(BOOL)controllers
{
  controllersCopy = controllers;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController _rebuildTabBarItemsAnimated:controllersCopy];
}

- (void)tabContentDidChange:(id)change
{
  changeCopy = change;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  isLocked = [_internalTabBar isLocked];
  [_internalTabBar setLocked:0];
  [changeCopy _updateView];

  [_internalTabBar setLocked:isLocked];
}

- (BOOL)prefersTabBarFocusedOnViewDidLoad
{
  if ([(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v4 = [tabBarController _shouldFocusViewControllerAfterTransition] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (void)updateGestureRecognizers
{
  v7.receiver = self;
  v7.super_class = _UITabBarControllerVisualStyle_TV;
  [(_UITabBarControllerVisualStyle *)&v7 updateGestureRecognizers];
  if (!self->_touchDetectionGestureRecognizer && ![(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _containerView = [tabBarController _containerView];

    v5 = [(UIGestureRecognizer *)[_UITabBarTouchDetectionGestureRecognizer alloc] initWithTarget:self action:sel__performTouchDetectionGesture_];
    touchDetectionGestureRecognizer = self->_touchDetectionGestureRecognizer;
    self->_touchDetectionGestureRecognizer = &v5->super;

    [(UIGestureRecognizer *)self->_touchDetectionGestureRecognizer setDelegate:self];
    [(UIGestureRecognizer *)self->_touchDetectionGestureRecognizer setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)self->_touchDetectionGestureRecognizer setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)self->_touchDetectionGestureRecognizer setDelaysTouchesEnded:0];
    [_containerView addGestureRecognizer:self->_touchDetectionGestureRecognizer];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _isTabBarFocused = [tabBarController _isTabBarFocused];

  LOBYTE(tabBarController) = _isTabBarFocused ^ 1;
  [(_UITabBarControllerVisualStyle_TV *)self _updateOffscreenState:_isTabBarFocused ^ 1u withFocusAnimationCoordinator:coordinatorCopy];

  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _observingScrollView = [tabBarController2 _observingScrollView];

  [_observingScrollView adjustedContentInset];
  v12 = v11;
  [_observingScrollView adjustedContentInset];
  if ((tabBarController & 1) == 0)
  {
    if (_observingScrollView)
    {
      v14 = v13;
      if (![contextCopy focusHeading])
      {
        v15 = -v12;
        v16 = -v14;
        [_observingScrollView contentOffset];
        if (v18 != v15 || v17 != v16)
        {
          v19 = [[_UITVScrollViewManager alloc] initWithScrollView:_observingScrollView scrollStyle:1];
          scrollViewManager = self->_scrollViewManager;
          self->_scrollViewManager = v19;

          [(_UITVScrollViewManager *)self->_scrollViewManager setDelegate:self];
          [(_UITVScrollViewManager *)self->_scrollViewManager setContentOffset:1 animated:v15, v16];
        }
      }
    }
  }
}

- (void)updateFocusForSelectedViewControllerChange
{
  if (![(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    [tabBarController _setPreferTabBarFocused:1];
  }

  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _focusSystem = [tabBarController2 _focusSystem];
  focusedItem = [_focusSystem focusedItem];
  v8 = _UIFocusEnvironmentContainingView(focusedItem);

  tabBarController3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController3 setPreferredFocusedItem:v8];
}

- (BOOL)shouldForgetRememberedFocusItemForSelectedViewController:(id)controller context:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = _UITabBarControllerVisualStyle_TV;
  controllerCopy = controller;
  IsAncestorOfEnvironment = [(_UITabBarControllerVisualStyle *)&v13 shouldForgetRememberedFocusItemForSelectedViewController:controllerCopy context:contextCopy];
  presentedViewController = [controllerCopy presentedViewController];

  if ((IsAncestorOfEnvironment & 1) == 0 && presentedViewController)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [presentedViewController modalPresentationStyle] == 4)
    {
      view = [presentedViewController view];
      nextFocusedItem = [contextCopy nextFocusedItem];
      IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(view, nextFocusedItem);
    }

    else
    {
      IsAncestorOfEnvironment = 0;
    }
  }

  return IsAncestorOfEnvironment;
}

- (void)_updateOffscreenState:(BOOL)state withFocusAnimationCoordinator:(id)coordinator
{
  stateCopy = state;
  v83[1] = *MEMORY[0x1E69E9840];
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  selectedViewController = [tabBarController selectedViewController];
  if ([(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    _observingScrollView = [tabBarController _observingScrollView];
    if (_observingScrollView)
    {
      v10 = _observingScrollView;
      _tvTabBarShouldAutohide = [selectedViewController _tvTabBarShouldAutohide];

      if (_tvTabBarShouldAutohide)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v47 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v47, OS_LOG_TYPE_FAULT, "You cannot return YES for _tvTabBarShouldAutohide if you also set _observingScrollView. Forcing _tvTabBarShouldAutohide to NO.", buf, 2u);
          }
        }

        else
        {
          v12 = *(__UILogGetCategoryCachedImpl("Assert", &_updateOffscreenState_withFocusAnimationCoordinator____s_category) + 8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "You cannot return YES for _tvTabBarShouldAutohide if you also set _observingScrollView. Forcing _tvTabBarShouldAutohide to NO.", buf, 2u);
          }
        }

        stateCopy = 0;
      }
    }
  }

  v13 = stateCopy & [selectedViewController _tvTabBarShouldAutohide];
  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _isTabBarOffscreen = [tabBarController2 _isTabBarOffscreen];

  [tabBarController _setTabBarOffscreen:v13];
  [(UIView *)self->_tabBarContainerView setUserInteractionEnabled:v13 ^ 1];
  if ((v13 ^ 1) == _isTabBarOffscreen)
  {
    _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];
    _containerView = [tabBarController _containerView];
    if (![tabBarController _isBarLayoutValid])
    {
LABEL_31:

      goto LABEL_32;
    }

    [_internalTabBar frame];
    [(_UITabBarControllerVisualStyle_TV *)self adjustedTabBarFrame:?];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    _isModernBar = [(_UITabBarControllerVisualStyle_TV *)self _isModernBar];
    if (!coordinator || !_isModernBar)
    {
      navigationController = [tabBarController navigationController];
      if (navigationController)
      {
        navigationController2 = [tabBarController navigationController];
        v36 = [navigationController2 isNavigationBarHidden] ^ 1;
      }

      else
      {
        v36 = 0;
      }

      if (_isTabBarOffscreen)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = 1.0;
      }

      [_internalTabBar setHidden:0];
      [_internalTabBar _setShadowAlpha:v37];
      [_internalTabBar _setHidesShadow:0];
      if (v36)
      {
        [_internalTabBar setAlpha:v37];
      }

      if (v13)
      {
        v38 = 0.2;
      }

      else
      {
        v38 = 0.4;
      }

      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __89___UITabBarControllerVisualStyle_TV__updateOffscreenState_withFocusAnimationCoordinator___block_invoke_3;
      v61[3] = &unk_1E7116280;
      v62 = _internalTabBar;
      v65 = v19;
      v66 = v21;
      v67 = v23;
      v68 = v25;
      v69 = v37;
      v70 = v36;
      v63 = tabBarController;
      v64 = selectedViewController;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __89___UITabBarControllerVisualStyle_TV__updateOffscreenState_withFocusAnimationCoordinator___block_invoke_4;
      v58[3] = &unk_1E70FA0F0;
      v59 = v62;
      v60 = v13;
      [UIView animateWithDuration:2052 delay:v61 options:v58 animations:v38 completion:0.0];

      v27 = v62;
      goto LABEL_30;
    }

    v27 = self->_tabBarOffscreenFocusGuide;
    if (v27)
    {
      if (v13)
      {
LABEL_14:
        LODWORD(v28) = 1045220557;
        LODWORD(v29) = 0.25;
        LODWORD(v30) = 1.0;
        v31 = [MEMORY[0x1E69793D0] functionWithControlPoints:v28 :0.0 :v29 :v30];
        v32 = [[UICubicTimingParameters alloc] initWithCustomCurve:v31];

        v33 = 0.25;
LABEL_29:
        v45 = [[UIViewPropertyAnimator alloc] initWithDuration:v32 timingParameters:v33];
        [(UIViewPropertyAnimator *)v45 _setOptions:608];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __89___UITabBarControllerVisualStyle_TV__updateOffscreenState_withFocusAnimationCoordinator___block_invoke;
        v75[3] = &unk_1E70F3B20;
        v46 = _internalTabBar;
        v76 = v46;
        v77 = v19;
        v78 = v21;
        v79 = v23;
        v80 = v25;
        [(UIViewPropertyAnimator *)v45 addAnimations:v75];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __89___UITabBarControllerVisualStyle_TV__updateOffscreenState_withFocusAnimationCoordinator___block_invoke_2;
        v71[3] = &unk_1E71049E0;
        v74 = v13;
        v72 = v46;
        selfCopy = self;
        [(UIViewPropertyAnimator *)v45 addCompletion:v71];
        [(UIViewPropertyAnimator *)v45 startAnimation];

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      v27 = objc_alloc_init(UIFocusGuide);
      v83[0] = _internalTabBar;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
      [(UIFocusGuide *)v27 setPreferredFocusEnvironments:v39];

      [_containerView addLayoutGuide:v27];
      v51 = MEMORY[0x1E69977A0];
      topAnchor = [(UILayoutGuide *)v27 topAnchor];
      topAnchor2 = [_containerView topAnchor];
      v54 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v82[0] = v54;
      leadingAnchor = [(UILayoutGuide *)v27 leadingAnchor];
      leadingAnchor2 = [_containerView leadingAnchor];
      v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v82[1] = v50;
      trailingAnchor = [_containerView trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)v27 trailingAnchor];
      [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v40 = v57 = _containerView;
      v82[2] = v40;
      heightAnchor = [(UILayoutGuide *)v27 heightAnchor];
      v42 = [heightAnchor constraintEqualToConstant:1.0];
      v82[3] = v42;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
      [v51 activateConstraints:v43];

      _containerView = v57;
      objc_storeStrong(&self->_tabBarOffscreenFocusGuide, v27);
      if (v13)
      {
        goto LABEL_14;
      }
    }

    v32 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:176.0 damping:26.0 initialVelocity:0.0, 0.0];
    [(UICubicTimingParameters *)v32 settlingDuration];
    v33 = v44;
    goto LABEL_29;
  }

LABEL_32:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  touchDetectionGestureRecognizer = self->_touchDetectionGestureRecognizer;
  if (!touchDetectionGestureRecognizer)
  {
    return 0;
  }

  return touchDetectionGestureRecognizer == recognizer || touchDetectionGestureRecognizer == gestureRecognizer;
}

- (void)_performTouchDetectionGesture:(id)gesture
{
  gestureCopy = gesture;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  state = [gestureCopy state];
  if (state == 1)
  {
    v7 = 1;
  }

  else
  {
    if (state == 2)
    {
      goto LABEL_6;
    }

    v7 = 0;
  }

  [_internalTabBar _setFocusedItemHightlightShouldBeVisible:v7];
LABEL_6:
}

- (void)updateTabBarLayout
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];

  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _containerView = [tabBarController2 _containerView];

  if ([(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    [_containerView frame];
    v7 = v6;
    [_internalTabBar frame];
    v9 = v8;
    tabBarContainerView = self->_tabBarContainerView;
    if (!tabBarContainerView)
    {
      [_internalTabBar setAutoresizingMask:0];
      v11 = [[_UITabBarContainerView_TV alloc] initWithTabBar:_internalTabBar];
      v12 = self->_tabBarContainerView;
      self->_tabBarContainerView = &v11->super;

      tabBarContainerView = self->_tabBarContainerView;
    }

    [(UIView *)tabBarContainerView setFrame:0.0, 46.0, v7, v9];
    tabBarController3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _observingScrollView = [tabBarController3 _observingScrollView];

    if (_observingScrollView)
    {
      [(_UITabBarControllerVisualStyle_TV *)self adjustTabBarForContentScrollView:_observingScrollView];
    }

    [_internalTabBar frame];
    [(_UITabBarControllerVisualStyle_TV *)self adjustedTabBarFrame:?];
    [_internalTabBar setFrame:?];
  }

  else
  {
    [_internalTabBar frame];
    [_internalTabBar setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }
}

- (CGRect)adjustedTabBarFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _isTabBarOffscreen = [tabBarController _isTabBarOffscreen];

  _isModernBar = [(_UITabBarControllerVisualStyle_TV *)self _isModernBar];
  if (y >= 0.0)
  {
    v11 = _isTabBarOffscreen;
  }

  else
  {
    v11 = 0;
  }

  if (y >= 0.0)
  {
    v12 = 1;
  }

  else
  {
    v12 = _isTabBarOffscreen;
  }

  v13 = 0.0;
  if (v12)
  {
    v13 = y;
  }

  if (v11 == 1)
  {
    v13 = -height;
  }

  v14 = height + 46.0;
  if (y >= 0.0)
  {
    v15 = _isTabBarOffscreen;
  }

  else
  {
    v15 = 0;
  }

  if (y >= 0.0)
  {
    v16 = 1;
  }

  else
  {
    v16 = _isTabBarOffscreen;
  }

  v17 = y + v14;
  if (v16)
  {
    v17 = y;
  }

  v18 = y - v14;
  if (v15 != 1)
  {
    v18 = v17;
  }

  if (!_isModernBar)
  {
    v18 = v13;
  }

  v19 = x;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v19;
  return result;
}

- (CGRect)adjustedContentViewFrame:(CGRect)frame viewController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  tabBarView = [(_UITabBarControllerVisualStyle_TV *)self tabBarView];
  [tabBarView frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(_UITabBarControllerVisualStyle_TV *)self adjustedTabBarFrame:v12, v14, v16, v18];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LODWORD(tabBarView) = [(_UITabBarControllerVisualStyle_TV *)self _shouldAdjustContentViewFrameForOffscreenFocus:controllerCopy adjustedTabBarFrame:?];

  if (tabBarView)
  {
    v34.origin.x = v20;
    v34.origin.y = v22;
    v34.size.width = v24;
    v34.size.height = v26;
    y = CGRectGetMaxY(v34);
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _containerView = [tabBarController _containerView];
    [_containerView bounds];
    v29 = CGRectGetHeight(v35);
    v36.origin.x = v20;
    v36.origin.y = v22;
    v36.size.width = v24;
    v36.size.height = v26;
    height = v29 - CGRectGetMaxY(v36);
  }

  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (UIEdgeInsets)edgeInsetsForChildViewController:(id)controller
{
  controllerCopy = controller;
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];
  [_internalTabBar frame];
  [(_UITabBarControllerVisualStyle_TV *)self adjustedTabBarFrame:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ([(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    [(_UITabBarControllerVisualStyle_TV *)self _childViewControllerModernBarTopInset];
LABEL_5:
    v16 = MaxY;
    goto LABEL_6;
  }

  v16 = 0.0;
  if ([(_UITabBarControllerVisualStyle_TV *)self _shouldAdjustContentViewFrameForOffscreenFocus:controllerCopy adjustedTabBarFrame:v8, v10, v12, v14])
  {
    v21.origin.x = v8;
    v21.origin.y = v10;
    v21.size.width = v12;
    v21.size.height = v14;
    MaxY = CGRectGetMaxY(v21);
    goto LABEL_5;
  }

LABEL_6:

  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = v16;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v20;
  return result;
}

- (UIEdgeInsets)overlayInsetsAdjustment
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  if (tabBarController)
  {
    v4 = (tabBarController[94] & 3) - 1;

    v5 = 0.0;
    if (v4 <= 1)
    {
      if (-[_UITabBarControllerVisualStyle_TV _isModernBar](self, "_isModernBar") && (-[_UITabBarControllerVisualStyle_TV tabBarView](self, "tabBarView"), v6 = objc_claimAutoreleasedReturnValue(), [v6 frame], MaxY = CGRectGetMaxY(v18), v6, MaxY < 0.0))
      {
        [(_UITabBarControllerVisualStyle_TV *)self _childViewControllerModernBarTopInset];
        v5 = -v8;
      }

      else
      {
        tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
        selectedViewController = [tabBarController2 selectedViewController];
        view = [selectedViewController view];
        superview = [view superview];

        if (!superview)
        {
          [(_UITabBarControllerVisualStyle_TV *)self _childViewControllerModernBarTopInset];
          v5 = v13;
        }
      }
    }
  }

  else
  {
    v5 = 0.0;
  }

  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = v5;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v17;
  return result;
}

- (BOOL)_shouldAdjustContentViewFrameForOffscreenFocus:(id)focus adjustedTabBarFrame:(CGRect)frame
{
  height = frame.size.height;
  v19 = *MEMORY[0x1E69E9840];
  focusCopy = focus;
  if (os_variant_has_internal_diagnostics())
  {
    v9 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    v10 = NSStringFromSelector(a2);
    v17 = 138412290;
    v18 = v10;
    _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "%@ unexpectedly called not on tvOS", &v17, 0xCu);
  }

  else
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &_shouldAdjustContentViewFrameForOffscreenFocus_adjustedTabBarFrame____s_category) + 8);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v9 = v8;
    v10 = NSStringFromSelector(a2);
    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%@ unexpectedly called not on tvOS", &v17, 0xCu);
  }

LABEL_5:
LABEL_6:
  if ([(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
    v12 = [focusCopy _contentOrObservableScrollViewForEdge:1];
    tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
    _isTabBarOffscreen = [tabBarController _isTabBarOffscreen];

    if ((_isTabBarOffscreen & 1) == 0)
    {
      v11 = 0;
      if (([focusCopy _tvTabBarShouldOverlap] & 1) == 0)
      {
        if (!v12 || ([v12 _focusTargetOffset], v15 <= height))
        {
          v11 = 1;
        }
      }
    }
  }

  return v11;
}

- (double)_childViewControllerModernBarTopInset
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [tabBarController _contentOverlayInsets];
  v4 = 157.0 - v3;

  return v4;
}

- (BOOL)shouldTrackContentScrollView:(id)view viewController:(id)controller tabBarBackgroundRequired:(BOOL)required
{
  viewCopy = view;
  controllerCopy = controller;
  if (-[_UITabBarControllerVisualStyle_TV _isModernBar](self, "_isModernBar") && (v9 = [controllerCopy _tvTabBarShouldAutohide], (v9 & 1) == 0))
  {
    v11 = v9;
    _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
    v13 = objc_opt_class();
    v14 = [(UIViewController *)_viewControllerForAncestor _ancestorViewControllerOfClass:v13 allowModalParent:0];
    v15 = v14;
    if (v14)
    {
      v10 = [v14 _tvShouldScrollWithObservedScrollViewIfPossible] & (v11 ^ 1);
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)adjustTabBarForContentScrollView:(id)view
{
  viewCopy = view;
  _isModernBar = [(_UITabBarControllerVisualStyle_TV *)self _isModernBar];
  v5 = viewCopy;
  if (_isModernBar)
  {
    if (viewCopy)
    {
      [viewCopy contentOffset];
      [viewCopy adjustedContentInset];
    }

    [(UIView *)self->_tabBarContainerView bounds];
    [(UIView *)self->_tabBarContainerView setFrame:?];
    v5 = viewCopy;
  }
}

- (id)viewControllerForObservableScrollViewFromViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = _UITabBarControllerVisualStyle_TV;
  v3 = [(_UITabBarControllerVisualStyle *)&v9 viewControllerForObservableScrollViewFromViewController:controller];
  if (_UIViewControllerUseContentScrollViewAPI())
  {
    if ([v3 _isSearchController])
    {
      searchResultsController = [v3 searchResultsController];
    }

    else
    {
      presentedViewController = [v3 presentedViewController];
      _isSearchController = [presentedViewController _isSearchController];

      if (!_isSearchController)
      {
        goto LABEL_7;
      }

      presentedViewController2 = [v3 presentedViewController];
      searchResultsController = [presentedViewController2 searchResultsController];

      v3 = presentedViewController2;
    }

    v3 = searchResultsController;
  }

LABEL_7:

  return v3;
}

- (BOOL)isScrollViewObservationInCompatibilityMode
{
  if (_UIViewControllerUseContentScrollViewAPI())
  {
    return 0;
  }

  return [(_UITabBarControllerVisualStyle_TV *)self _isModernBar];
}

- (void)_scrollViewManagerDidFinishScrolling:(id)scrolling
{
  scrollViewManager = self->_scrollViewManager;
  self->_scrollViewManager = 0;
}

- (id)defaultAnimatorForFromViewController:(id)controller toViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v8 = objc_alloc_init(_UITabBarTVTransitioner);
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _viewControllersForTabs = [(UITabBarController *)tabBarController _viewControllersForTabs];

  v11 = [_viewControllersForTabs indexOfObject:controllerCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    parentModalViewController = [controllerCopy parentModalViewController];

    if (parentModalViewController)
    {
      parentModalViewController2 = [controllerCopy parentModalViewController];
      v11 = [_viewControllersForTabs indexOfObject:parentModalViewController2];
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v14 = [_viewControllersForTabs indexOfObject:viewControllerCopy];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    parentModalViewController3 = [viewControllerCopy parentModalViewController];

    if (parentModalViewController3)
    {
      parentModalViewController4 = [viewControllerCopy parentModalViewController];
      v14 = [_viewControllersForTabs indexOfObject:parentModalViewController4];
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v19 = v11 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL || v11 <= v14;
  [(_UITabBarTVTransitioner *)v8 setTransitionFromRight:v19];
  tabBarController2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController2 _internalTabBar];
  _displayStyle = [_internalTabBar _displayStyle];

  if (_displayStyle <= 1)
  {
    [(_UITabBarTVTransitioner *)v8 setTransitionStyle:_displayStyle];
  }

  return v8;
}

- (BOOL)_isModernBar
{
  tabBarController = [(_UITabBarControllerVisualStyle *)self tabBarController];
  _internalTabBar = [(UITabBarController *)tabBarController _internalTabBar];
  v4 = [_internalTabBar _displayStyle] == 1;

  return v4;
}

@end