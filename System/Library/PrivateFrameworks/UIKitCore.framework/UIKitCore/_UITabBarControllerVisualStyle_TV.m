@interface _UITabBarControllerVisualStyle_TV
- (BOOL)_isModernBar;
- (BOOL)_shouldAdjustContentViewFrameForOffscreenFocus:(id)a3 adjustedTabBarFrame:(CGRect)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)isScrollViewObservationInCompatibilityMode;
- (BOOL)prefersTabBarFocusedOnViewDidLoad;
- (BOOL)shouldForgetRememberedFocusItemForSelectedViewController:(id)a3 context:(id)a4;
- (BOOL)shouldTrackContentScrollView:(id)a3 viewController:(id)a4 tabBarBackgroundRequired:(BOOL)a5;
- (CGRect)adjustedContentViewFrame:(CGRect)a3 viewController:(id)a4;
- (CGRect)adjustedTabBarFrame:(CGRect)a3;
- (UIEdgeInsets)edgeInsetsForChildViewController:(id)a3;
- (UIEdgeInsets)overlayInsetsAdjustment;
- (double)_childViewControllerModernBarTopInset;
- (id)defaultAnimatorForFromViewController:(id)a3 toViewController:(id)a4;
- (id)tabBarView;
- (id)viewControllerForObservableScrollViewFromViewController:(id)a3;
- (void)_performTouchDetectionGesture:(id)a3;
- (void)_scrollViewManagerDidFinishScrolling:(id)a3;
- (void)_updateOffscreenState:(BOOL)a3 withFocusAnimationCoordinator:(id)a4;
- (void)adjustTabBarForContentScrollView:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)loadViews;
- (void)tabContentDidChange:(id)a3;
- (void)teardown;
- (void)updateFocusForSelectedViewControllerChange;
- (void)updateGestureRecognizers;
- (void)updateTabBarLayout;
- (void)updateViewControllers:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _UITabBarControllerVisualStyle_TV

- (void)teardown
{
  if (self->_touchDetectionGestureRecognizer)
  {
    v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v5 = [v3 _containerView];

    [v5 removeGestureRecognizer:self->_touchDetectionGestureRecognizer];
    touchDetectionGestureRecognizer = self->_touchDetectionGestureRecognizer;
    self->_touchDetectionGestureRecognizer = 0;
  }
}

- (id)tabBarView
{
  tabBarContainerView = self->_tabBarContainerView;
  if (tabBarContainerView)
  {
    v3 = tabBarContainerView;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UITabBarControllerVisualStyle_TV;
    v3 = [(_UITabBarControllerVisualStyle *)&v5 tabBarView];
  }

  return v3;
}

- (void)loadViews
{
  v13 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v2 = [(UITabBarController *)v13 _internalTabBar];

  if (!v2)
  {
    v3 = [v13 view];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [[UITabBar alloc] initWithFrame:v5, v7, v9, v11];
    [v13 setTabBar:v12];
  }
}

- (void)viewDidLoad
{
  v23[4] = *MEMORY[0x1E69E9840];
  if (!self->_contentFocusContainerGuide)
  {
    v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v4 = [v3 _containerView];

    v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v22 = [(UITabBarController *)v5 _internalTabBar];

    v6 = objc_alloc_init(UIFocusContainerGuide);
    contentFocusContainerGuide = self->_contentFocusContainerGuide;
    self->_contentFocusContainerGuide = v6;

    [v4 addLayoutGuide:self->_contentFocusContainerGuide];
    [(UILayoutGuide *)self->_contentFocusContainerGuide setIdentifier:@"UITabBarControllerFocusContentContainerGuide"];
    v17 = MEMORY[0x1E69977A0];
    v21 = [(UILayoutGuide *)self->_contentFocusContainerGuide topAnchor];
    v20 = [v22 bottomAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v23[0] = v19;
    v18 = [(UILayoutGuide *)self->_contentFocusContainerGuide leadingAnchor];
    v8 = [v4 leadingAnchor];
    v9 = [v18 constraintEqualToAnchor:v8];
    v23[1] = v9;
    v10 = [(UILayoutGuide *)self->_contentFocusContainerGuide trailingAnchor];
    v11 = [v4 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v23[2] = v12;
    v13 = [(UILayoutGuide *)self->_contentFocusContainerGuide bottomAnchor];
    v14 = [v4 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v23[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
    [v17 activateConstraints:v16];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v8 = [v5 navigationController];

  v6 = v8;
  if (v8)
  {
    v7 = [v8 isNavigationBarHidden];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [v8 setNavigationBarHidden:1 animated:v3];
      v6 = v8;
      *&self->_flags |= 1u;
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  if (*&self->_flags)
  {
    v3 = a3;
    v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v6 = [v5 navigationController];

    [v6 setNavigationBarHidden:0 animated:v3];
    *&self->_flags &= ~1u;
  }
}

- (void)updateViewControllers:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v4 _rebuildTabBarItemsAnimated:v3];
}

- (void)tabContentDidChange:(id)a3
{
  v4 = a3;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v7 = [(UITabBarController *)v5 _internalTabBar];

  v6 = [v7 isLocked];
  [v7 setLocked:0];
  [v4 _updateView];

  [v7 setLocked:v6];
}

- (BOOL)prefersTabBarFocusedOnViewDidLoad
{
  if ([(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v4 = [v3 _shouldFocusViewControllerAfterTransition] ^ 1;
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
    v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v4 = [v3 _containerView];

    v5 = [(UIGestureRecognizer *)[_UITabBarTouchDetectionGestureRecognizer alloc] initWithTarget:self action:sel__performTouchDetectionGesture_];
    touchDetectionGestureRecognizer = self->_touchDetectionGestureRecognizer;
    self->_touchDetectionGestureRecognizer = &v5->super;

    [(UIGestureRecognizer *)self->_touchDetectionGestureRecognizer setDelegate:self];
    [(UIGestureRecognizer *)self->_touchDetectionGestureRecognizer setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)self->_touchDetectionGestureRecognizer setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)self->_touchDetectionGestureRecognizer setDelaysTouchesEnded:0];
    [v4 addGestureRecognizer:self->_touchDetectionGestureRecognizer];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v8 = [v7 _isTabBarFocused];

  LOBYTE(v7) = v8 ^ 1;
  [(_UITabBarControllerVisualStyle_TV *)self _updateOffscreenState:v8 ^ 1u withFocusAnimationCoordinator:v6];

  v9 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v10 = [v9 _observingScrollView];

  [v10 adjustedContentInset];
  v12 = v11;
  [v10 adjustedContentInset];
  if ((v7 & 1) == 0)
  {
    if (v10)
    {
      v14 = v13;
      if (![v21 focusHeading])
      {
        v15 = -v12;
        v16 = -v14;
        [v10 contentOffset];
        if (v18 != v15 || v17 != v16)
        {
          v19 = [[_UITVScrollViewManager alloc] initWithScrollView:v10 scrollStyle:1];
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
    v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    [v3 _setPreferTabBarFocused:1];
  }

  v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v5 = [v4 _focusSystem];
  v6 = [v5 focusedItem];
  v8 = _UIFocusEnvironmentContainingView(v6);

  v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v7 setPreferredFocusedItem:v8];
}

- (BOOL)shouldForgetRememberedFocusItemForSelectedViewController:(id)a3 context:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = _UITabBarControllerVisualStyle_TV;
  v7 = a3;
  IsAncestorOfEnvironment = [(_UITabBarControllerVisualStyle *)&v13 shouldForgetRememberedFocusItemForSelectedViewController:v7 context:v6];
  v9 = [v7 presentedViewController];

  if ((IsAncestorOfEnvironment & 1) == 0 && v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 modalPresentationStyle] == 4)
    {
      v10 = [v9 view];
      v11 = [v6 nextFocusedItem];
      IsAncestorOfEnvironment = _UIFocusEnvironmentIsAncestorOfEnvironment(v10, v11);
    }

    else
    {
      IsAncestorOfEnvironment = 0;
    }
  }

  return IsAncestorOfEnvironment;
}

- (void)_updateOffscreenState:(BOOL)a3 withFocusAnimationCoordinator:(id)a4
{
  v5 = a3;
  v83[1] = *MEMORY[0x1E69E9840];
  v7 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v8 = [v7 selectedViewController];
  if ([(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    v9 = [v7 _observingScrollView];
    if (v9)
    {
      v10 = v9;
      v11 = [v8 _tvTabBarShouldAutohide];

      if (v11)
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

        v5 = 0;
      }
    }
  }

  v13 = v5 & [v8 _tvTabBarShouldAutohide];
  v14 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v15 = [v14 _isTabBarOffscreen];

  [v7 _setTabBarOffscreen:v13];
  [(UIView *)self->_tabBarContainerView setUserInteractionEnabled:v13 ^ 1];
  if ((v13 ^ 1) == v15)
  {
    v16 = [(UITabBarController *)v7 _internalTabBar];
    v17 = [v7 _containerView];
    if (![v7 _isBarLayoutValid])
    {
LABEL_31:

      goto LABEL_32;
    }

    [v16 frame];
    [(_UITabBarControllerVisualStyle_TV *)self adjustedTabBarFrame:?];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(_UITabBarControllerVisualStyle_TV *)self _isModernBar];
    if (!a4 || !v26)
    {
      v34 = [v7 navigationController];
      if (v34)
      {
        v35 = [v7 navigationController];
        v36 = [v35 isNavigationBarHidden] ^ 1;
      }

      else
      {
        v36 = 0;
      }

      if (v15)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = 1.0;
      }

      [v16 setHidden:0];
      [v16 _setShadowAlpha:v37];
      [v16 _setHidesShadow:0];
      if (v36)
      {
        [v16 setAlpha:v37];
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
      v62 = v16;
      v65 = v19;
      v66 = v21;
      v67 = v23;
      v68 = v25;
      v69 = v37;
      v70 = v36;
      v63 = v7;
      v64 = v8;
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
        v46 = v16;
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
        v73 = self;
        [(UIViewPropertyAnimator *)v45 addCompletion:v71];
        [(UIViewPropertyAnimator *)v45 startAnimation];

LABEL_30:
        goto LABEL_31;
      }
    }

    else
    {
      v27 = objc_alloc_init(UIFocusGuide);
      v83[0] = v16;
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
      [(UIFocusGuide *)v27 setPreferredFocusEnvironments:v39];

      [v17 addLayoutGuide:v27];
      v51 = MEMORY[0x1E69977A0];
      v56 = [(UILayoutGuide *)v27 topAnchor];
      v55 = [v17 topAnchor];
      v54 = [v56 constraintEqualToAnchor:v55];
      v82[0] = v54;
      v53 = [(UILayoutGuide *)v27 leadingAnchor];
      v52 = [v17 leadingAnchor];
      v50 = [v53 constraintEqualToAnchor:v52];
      v82[1] = v50;
      v49 = [v17 trailingAnchor];
      v48 = [(UILayoutGuide *)v27 trailingAnchor];
      [v49 constraintEqualToAnchor:v48];
      v40 = v57 = v17;
      v82[2] = v40;
      v41 = [(UILayoutGuide *)v27 heightAnchor];
      v42 = [v41 constraintEqualToConstant:1.0];
      v82[3] = v42;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:4];
      [v51 activateConstraints:v43];

      v17 = v57;
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

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  touchDetectionGestureRecognizer = self->_touchDetectionGestureRecognizer;
  if (!touchDetectionGestureRecognizer)
  {
    return 0;
  }

  return touchDetectionGestureRecognizer == a3 || touchDetectionGestureRecognizer == a4;
}

- (void)_performTouchDetectionGesture:(id)a3
{
  v4 = a3;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v8 = [(UITabBarController *)v5 _internalTabBar];

  v6 = [v4 state];
  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    if (v6 == 2)
    {
      goto LABEL_6;
    }

    v7 = 0;
  }

  [v8 _setFocusedItemHightlightShouldBeVisible:v7];
LABEL_6:
}

- (void)updateTabBarLayout
{
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v15 = [(UITabBarController *)v3 _internalTabBar];

  v4 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v5 = [v4 _containerView];

  if ([(_UITabBarControllerVisualStyle_TV *)self _isModernBar])
  {
    [v5 frame];
    v7 = v6;
    [v15 frame];
    v9 = v8;
    tabBarContainerView = self->_tabBarContainerView;
    if (!tabBarContainerView)
    {
      [v15 setAutoresizingMask:0];
      v11 = [[_UITabBarContainerView_TV alloc] initWithTabBar:v15];
      v12 = self->_tabBarContainerView;
      self->_tabBarContainerView = &v11->super;

      tabBarContainerView = self->_tabBarContainerView;
    }

    [(UIView *)tabBarContainerView setFrame:0.0, 46.0, v7, v9];
    v13 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v14 = [v13 _observingScrollView];

    if (v14)
    {
      [(_UITabBarControllerVisualStyle_TV *)self adjustTabBarForContentScrollView:v14];
    }

    [v15 frame];
    [(_UITabBarControllerVisualStyle_TV *)self adjustedTabBarFrame:?];
    [v15 setFrame:?];
  }

  else
  {
    [v15 frame];
    [v15 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }
}

- (CGRect)adjustedTabBarFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v9 = [v8 _isTabBarOffscreen];

  v10 = [(_UITabBarControllerVisualStyle_TV *)self _isModernBar];
  if (y >= 0.0)
  {
    v11 = v9;
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
    v12 = v9;
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
    v15 = v9;
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
    v16 = v9;
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

  if (!v10)
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

- (CGRect)adjustedContentViewFrame:(CGRect)a3 viewController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(_UITabBarControllerVisualStyle_TV *)self tabBarView];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [(_UITabBarControllerVisualStyle_TV *)self adjustedTabBarFrame:v12, v14, v16, v18];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  LODWORD(v10) = [(_UITabBarControllerVisualStyle_TV *)self _shouldAdjustContentViewFrameForOffscreenFocus:v9 adjustedTabBarFrame:?];

  if (v10)
  {
    v34.origin.x = v20;
    v34.origin.y = v22;
    v34.size.width = v24;
    v34.size.height = v26;
    y = CGRectGetMaxY(v34);
    v27 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v28 = [v27 _containerView];
    [v28 bounds];
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

- (UIEdgeInsets)edgeInsetsForChildViewController:(id)a3
{
  v4 = a3;
  v5 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v6 = [(UITabBarController *)v5 _internalTabBar];
  [v6 frame];
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
  if ([(_UITabBarControllerVisualStyle_TV *)self _shouldAdjustContentViewFrameForOffscreenFocus:v4 adjustedTabBarFrame:v8, v10, v12, v14])
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
  v3 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  if (v3)
  {
    v4 = (v3[94] & 3) - 1;

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
        v9 = [(_UITabBarControllerVisualStyle *)self tabBarController];
        v10 = [v9 selectedViewController];
        v11 = [v10 view];
        v12 = [v11 superview];

        if (!v12)
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

- (BOOL)_shouldAdjustContentViewFrameForOffscreenFocus:(id)a3 adjustedTabBarFrame:(CGRect)a4
{
  height = a4.size.height;
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
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
    v12 = [v7 _contentOrObservableScrollViewForEdge:1];
    v13 = [(_UITabBarControllerVisualStyle *)self tabBarController];
    v14 = [v13 _isTabBarOffscreen];

    if ((v14 & 1) == 0)
    {
      v11 = 0;
      if (([v7 _tvTabBarShouldOverlap] & 1) == 0)
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
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  [v2 _contentOverlayInsets];
  v4 = 157.0 - v3;

  return v4;
}

- (BOOL)shouldTrackContentScrollView:(id)a3 viewController:(id)a4 tabBarBackgroundRequired:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  if (-[_UITabBarControllerVisualStyle_TV _isModernBar](self, "_isModernBar") && (v9 = [v8 _tvTabBarShouldAutohide], (v9 & 1) == 0))
  {
    v11 = v9;
    v12 = [v7 _viewControllerForAncestor];
    v13 = objc_opt_class();
    v14 = [(UIViewController *)v12 _ancestorViewControllerOfClass:v13 allowModalParent:0];
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

- (void)adjustTabBarForContentScrollView:(id)a3
{
  v6 = a3;
  v4 = [(_UITabBarControllerVisualStyle_TV *)self _isModernBar];
  v5 = v6;
  if (v4)
  {
    if (v6)
    {
      [v6 contentOffset];
      [v6 adjustedContentInset];
    }

    [(UIView *)self->_tabBarContainerView bounds];
    [(UIView *)self->_tabBarContainerView setFrame:?];
    v5 = v6;
  }
}

- (id)viewControllerForObservableScrollViewFromViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UITabBarControllerVisualStyle_TV;
  v3 = [(_UITabBarControllerVisualStyle *)&v9 viewControllerForObservableScrollViewFromViewController:a3];
  if (_UIViewControllerUseContentScrollViewAPI())
  {
    if ([v3 _isSearchController])
    {
      v4 = [v3 searchResultsController];
    }

    else
    {
      v5 = [v3 presentedViewController];
      v6 = [v5 _isSearchController];

      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = [v3 presentedViewController];
      v4 = [v7 searchResultsController];

      v3 = v7;
    }

    v3 = v4;
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

- (void)_scrollViewManagerDidFinishScrolling:(id)a3
{
  scrollViewManager = self->_scrollViewManager;
  self->_scrollViewManager = 0;
}

- (id)defaultAnimatorForFromViewController:(id)a3 toViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(_UITabBarTVTransitioner);
  v9 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v10 = [(UITabBarController *)v9 _viewControllersForTabs];

  v11 = [v10 indexOfObject:v6];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v6 parentModalViewController];

    if (v12)
    {
      v13 = [v6 parentModalViewController];
      v11 = [v10 indexOfObject:v13];
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v14 = [v10 indexOfObject:v7];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [v7 parentModalViewController];

    if (v15)
    {
      v16 = [v7 parentModalViewController];
      v14 = [v10 indexOfObject:v16];
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v19 = v11 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL || v11 <= v14;
  [(_UITabBarTVTransitioner *)v8 setTransitionFromRight:v19];
  v20 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v21 = [(UITabBarController *)v20 _internalTabBar];
  v22 = [v21 _displayStyle];

  if (v22 <= 1)
  {
    [(_UITabBarTVTransitioner *)v8 setTransitionStyle:v22];
  }

  return v8;
}

- (BOOL)_isModernBar
{
  v2 = [(_UITabBarControllerVisualStyle *)self tabBarController];
  v3 = [(UITabBarController *)v2 _internalTabBar];
  v4 = [v3 _displayStyle] == 1;

  return v4;
}

@end