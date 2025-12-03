@interface SKUINavigationController
- (BOOL)_topViewControllerPrefersNavigationBarBackgroundViewHidden;
- (id)_accessibilityButtonBackgroundDefaultTintColor;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)description;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)_configureNavigationBar:(id)bar withTintColor:(id)color tintAdjustmentMode:(int64_t)mode titleTextTintColor:(id)tintColor shouldTintTitleText:(BOOL)text accessibilityButtonBackgroundTintColor:(id)backgroundTintColor;
- (void)_configureNavigationBarForViewController:(id)controller shouldIgnoreTransitionCoordinator:(BOOL)coordinator;
- (void)_scheduleConfigurationOfNavigationBar;
- (void)_setNavigationPalette:(id)palette hidesPaletteShadow:(BOOL)shadow;
- (void)_viewControllerNeedsNavigationBarAppearanceUpdate:(id)update;
- (void)attachPalette:(id)palette isPinned:(BOOL)pinned;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
@end

@implementation SKUINavigationController

- (id)description
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUINavigationController *)v3 description:v4];
      }
    }
  }

  v11 = objc_alloc(MEMORY[0x277CCAB68]);
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 initWithFormat:@"<%@: %p", v13, self];

  tabBarItem = [(SKUINavigationController *)self tabBarItem];
  title = [tabBarItem title];

  if (title)
  {
    [v14 appendFormat:@"; title = %@", title];
  }

  [v14 appendString:@">"];

  return v14;
}

- (id)childViewControllerForStatusBarHidden
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUINavigationController *)v3 childViewControllerForStatusBarHidden:v4];
      }
    }
  }

  if ([(SKUINavigationController *)self _topViewControllerPrefersNavigationBarBackgroundViewHidden])
  {
    topViewController = [(SKUINavigationController *)self topViewController];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUINavigationController;
    topViewController = [(SKUINavigationController *)&v13 childViewControllerForStatusBarHidden];
  }

  return topViewController;
}

- (id)childViewControllerForStatusBarStyle
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUINavigationController *)v3 childViewControllerForStatusBarStyle:v4];
      }
    }
  }

  if ([(SKUINavigationController *)self _topViewControllerPrefersNavigationBarBackgroundViewHidden])
  {
    topViewController = [(SKUINavigationController *)self topViewController];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUINavigationController;
    topViewController = [(SKUINavigationController *)&v13 childViewControllerForStatusBarStyle];
  }

  return topViewController;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUINavigationController *)v5 popToRootViewControllerAnimated:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUINavigationController;
  v13 = [(SKUINavigationController *)&v15 popToRootViewControllerAnimated:animatedCopy];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];

  return v13;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUINavigationController *)v7 popToViewController:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = SKUINavigationController;
  v15 = [(SKUINavigationController *)&v17 popToViewController:controllerCopy animated:animatedCopy];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];

  return v15;
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUINavigationController *)v5 popViewControllerAnimated:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUINavigationController;
  v13 = [(SKUINavigationController *)&v15 popViewControllerAnimated:animatedCopy];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];

  return v13;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUINavigationController *)v7 pushViewController:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUINavigationController;
  [(SKUINavigationController *)&v15 pushViewController:controllerCopy animated:animatedCopy];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  controllersCopy = controllers;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUINavigationController *)v7 setViewControllers:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUINavigationController;
  [(SKUINavigationController *)&v15 setViewControllers:controllersCopy animated:animatedCopy];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];
}

- (void)attachPalette:(id)palette isPinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  paletteCopy = palette;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUINavigationController *)v7 attachPalette:v8 isPinned:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SKUINavigationController;
  [(SKUINavigationController *)&v16 attachPalette:paletteCopy isPinned:pinnedCopy];
  topViewController = [(SKUINavigationController *)self topViewController];
  [(SKUINavigationController *)self _configureNavigationBarForViewController:topViewController shouldIgnoreTransitionCoordinator:0];
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUINavigationController *)v7 didShowViewController:v8 animated:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUINavigationController;
  [(SKUINavigationController *)&v15 didShowViewController:controllerCopy animated:animatedCopy];
  [(SKUINavigationController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)_configureNavigationBar:(id)bar withTintColor:(id)color tintAdjustmentMode:(int64_t)mode titleTextTintColor:(id)tintColor shouldTintTitleText:(BOOL)text accessibilityButtonBackgroundTintColor:(id)backgroundTintColor
{
  textCopy = text;
  barCopy = bar;
  tintColorCopy = tintColor;
  backgroundTintColorCopy = backgroundTintColor;
  [barCopy setTintColor:color];
  [barCopy setTintAdjustmentMode:mode];
  if (textCopy)
  {
    titleTextAttributes = [barCopy titleTextAttributes];
    v16 = [titleTextAttributes mutableCopy];
    v17 = v16;
    if (tintColorCopy)
    {
      if (!v16)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      [v17 setObject:tintColorCopy forKey:*MEMORY[0x277D740C0]];
    }

    else
    {
      [v16 removeObjectForKey:*MEMORY[0x277D740C0]];
    }

    if (titleTextAttributes != v17 && ([titleTextAttributes isEqualToDictionary:v17] & 1) == 0)
    {
      [barCopy setTitleTextAttributes:v17];
    }
  }

  [barCopy _setAccessibilityButtonBackgroundTintColor:backgroundTintColorCopy];
}

- (void)_configureNavigationBarForViewController:(id)controller shouldIgnoreTransitionCoordinator:(BOOL)coordinator
{
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  navigationBar = [(SKUINavigationController *)self navigationBar];
  view = [(SKUINavigationController *)self view];
  window = [view window];

  if (window)
  {
    tintColor = [view tintColor];
  }

  else
  {
    tintColor = 0;
  }

  transitionCoordinator = [(SKUINavigationController *)self transitionCoordinator];
  v12 = transitionCoordinator;
  if (transitionCoordinator && !coordinatorCopy)
  {
    v13 = [transitionCoordinator viewControllerForKey:*MEMORY[0x277D77230]];
    v14 = [v12 viewControllerForKey:*MEMORY[0x277D77240]];
    if (v13 != controllerCopy && v14 != controllerCopy)
    {
      _accessibilityButtonBackgroundDefaultTintColor2 = 0;
      navigationBarTitleTextTintColor2 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v89 = v14;
    _backgroundView = [navigationBar _backgroundView];
    [_backgroundView alpha];
    v18 = v17;

    [navigationBar _shadowAlpha];
    v20 = v19;
    v81 = [(SKUINavigationController *)self existingPaletteForEdge:2];
    v21 = objc_getAssociatedObject(v81, kHasBeginHidingPaletteShadow);
    bOOLValue = [v21 BOOLValue];

    tintColor2 = [navigationBar tintColor];
    tintAdjustmentMode = [navigationBar tintAdjustmentMode];
    titleTextAttributes = [navigationBar titleTextAttributes];
    v23 = [titleTextAttributes objectForKey:*MEMORY[0x277D740C0]];

    v77 = v23;
    v85 = v23 != 0;
    _accessibilityButtonBackgroundTintColor = [navigationBar _accessibilityButtonBackgroundTintColor];
    if ([v13 conformsToProtocol:&unk_282938F18])
    {
      prefersNavigationBarBackgroundViewHidden = [v13 prefersNavigationBarBackgroundViewHidden];
    }

    else
    {
      prefersNavigationBarBackgroundViewHidden = 0;
    }

    v83 = v13;
    v84 = controllerCopy;
    if (![v89 conformsToProtocol:&unk_282938F18])
    {
      _accessibilityButtonBackgroundDefaultTintColor = 0;
      navigationBarTintAdjustmentMode = 0;
      v74 = 0;
      v39 = 0;
      v38 = 1.0;
      v73 = v85;
      v40 = v81;
LABEL_47:
      _backgroundView2 = objc_getAssociatedObject(navigationBar, "com.apple.StoreKitUI.SKUINavigationController.originalBackgroundView");
      if (!_backgroundView2)
      {
        _backgroundView2 = [navigationBar _backgroundView];
        objc_setAssociatedObject(navigationBar, "com.apple.StoreKitUI.SKUINavigationController.originalBackgroundView", _backgroundView2, 1);
      }

      v82 = prefersNavigationBarBackgroundViewHidden ^ v39;
      v93 = _backgroundView2;
      v95 = view;
      if ((prefersNavigationBarBackgroundViewHidden ^ v39) == 1)
      {
        if ((prefersNavigationBarBackgroundViewHidden | v39) == 1)
        {
          v47 = MEMORY[0x277D77248];
          if (!prefersNavigationBarBackgroundViewHidden)
          {
            v47 = MEMORY[0x277D77238];
          }

          v48 = [v12 viewForKey:*v47];
        }

        else
        {
          v48 = 0;
        }

        [navigationBar frame];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;
        superview = [navigationBar superview];
        v58 = superview;
        if (_backgroundView2 && superview)
        {
          [_backgroundView2 frame];
          [navigationBar convertRect:v58 toView:?];
          v50 = v59;
          v52 = v60;
          v54 = v61;
          v56 = v62;
        }

        v63 = [objc_alloc(-[SKUINavigationController navigationBarClass](self "navigationBarClass"))];
        [v63 setBarStyle:{objc_msgSend(navigationBar, "barStyle")}];
        barTintColor = [navigationBar barTintColor];
        [v63 setBarTintColor:barTintColor];

        [navigationBar _setBackgroundView:0];
        layer = [v63 layer];
        [layer setZPosition:100.0];

        v71 = v63;
        [v48 addSubview:v63];
        [navigationBar _setShadowAlpha:0.0];
        [v40 SKUI_beginHidingPaletteShadow];
        [(SKUINavigationController *)self _setNavigationPalette:v40 hidesPaletteShadow:v39];
      }

      else
      {
        v71 = 0;
      }

      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __103__SKUINavigationController__configureNavigationBarForViewController_shouldIgnoreTransitionCoordinator___block_invoke;
      v114[3] = &unk_278200FD8;
      v66 = navigationBar;
      v121 = v18;
      v122 = v20;
      v115 = v66;
      selfCopy = self;
      v123 = tintAdjustmentMode;
      v117 = tintColor2;
      v118 = v77;
      v124 = v85;
      v119 = _accessibilityButtonBackgroundTintColor;
      v67 = v40;
      v120 = v67;
      v125 = bOOLValue;
      v86 = tintColor2;
      v80 = v77;
      v78 = _accessibilityButtonBackgroundTintColor;
      [v12 notifyWhenInteractionEndsUsingBlock:v114];
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __103__SKUINavigationController__configureNavigationBarForViewController_shouldIgnoreTransitionCoordinator___block_invoke_2;
      v107[3] = &unk_278201000;
      v107[4] = self;
      v108 = v66;
      tintColor = tintColor;
      v109 = tintColor;
      v112 = navigationBarTintAdjustmentMode;
      navigationBarTitleTextTintColor2 = v74;
      v110 = navigationBarTitleTextTintColor2;
      v113 = v73;
      _accessibilityButtonBackgroundDefaultTintColor2 = _accessibilityButtonBackgroundDefaultTintColor;
      v111 = _accessibilityButtonBackgroundDefaultTintColor2;
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __103__SKUINavigationController__configureNavigationBarForViewController_shouldIgnoreTransitionCoordinator___block_invoke_3;
      v96[3] = &unk_278201028;
      v97 = v71;
      v98 = v108;
      v99 = v93;
      v102 = v38;
      v103 = v38;
      v104 = v39;
      selfCopy2 = self;
      v101 = v67;
      v105 = bOOLValue;
      v106 = v82;
      v68 = v71;
      v69 = v93;
      v70 = v67;
      [v12 animateAlongsideTransition:v107 completion:v96];

      v13 = v83;
      controllerCopy = v84;
      v14 = v89;
      view = v95;
      goto LABEL_61;
    }

    v92 = v12;
    v36 = v89;
    prefersNavigationBarBackgroundViewHidden2 = [v36 prefersNavigationBarBackgroundViewHidden];
    if (prefersNavigationBarBackgroundViewHidden2)
    {
      _accessibilityButtonBackgroundDefaultTintColor = [(SKUINavigationController *)self _accessibilityButtonBackgroundDefaultTintColor];
      v38 = 0.0;
    }

    else
    {
      _accessibilityButtonBackgroundDefaultTintColor = 0;
      v38 = 1.0;
    }

    navigationBarTintColor = [v36 navigationBarTintColor];

    if (objc_opt_respondsToSelector())
    {
      navigationBarTitleTextTintColor = [v36 navigationBarTitleTextTintColor];
      if (navigationBarTitleTextTintColor)
      {
        v43 = prefersNavigationBarBackgroundViewHidden2;
      }

      else
      {
        v43 = 0;
      }

      v74 = navigationBarTitleTextTintColor;
      if (v43 != 1)
      {
        v73 = 1;
        goto LABEL_43;
      }

      v44 = [navigationBarTitleTextTintColor colorWithAlphaComponent:0.2];
      v45 = 1;
    }

    else
    {
      v44 = 0;
      v74 = 0;
      v45 = v85;
    }

    v73 = v45;

    _accessibilityButtonBackgroundDefaultTintColor = v44;
LABEL_43:
    if (objc_opt_respondsToSelector())
    {
      navigationBarTintAdjustmentMode = [v36 navigationBarTintAdjustmentMode];
    }

    else
    {
      navigationBarTintAdjustmentMode = 0;
    }

    tintColor = navigationBarTintColor;
    v12 = v92;
    v40 = v81;
    v39 = prefersNavigationBarBackgroundViewHidden2;
    goto LABEL_47;
  }

  v91 = transitionCoordinator;
  v94 = view;
  if ([controllerCopy conformsToProtocol:&unk_282938F18])
  {
    v25 = controllerCopy;
    prefersNavigationBarBackgroundViewHidden3 = [v25 prefersNavigationBarBackgroundViewHidden];
    v27 = controllerCopy;
    if (prefersNavigationBarBackgroundViewHidden3)
    {
      _accessibilityButtonBackgroundDefaultTintColor2 = [(SKUINavigationController *)self _accessibilityButtonBackgroundDefaultTintColor];
      v28 = 0.0;
    }

    else
    {
      _accessibilityButtonBackgroundDefaultTintColor2 = 0;
      v28 = 1.0;
    }

    navigationBarTintColor2 = [v25 navigationBarTintColor];

    v29 = objc_opt_respondsToSelector();
    if (v29)
    {
      navigationBarTitleTextTintColor2 = [v25 navigationBarTitleTextTintColor];
      if ([v25 prefersNavigationBarBackgroundViewHidden] && navigationBarTitleTextTintColor2)
      {
        v33 = [navigationBarTitleTextTintColor2 colorWithAlphaComponent:0.2];

        _accessibilityButtonBackgroundDefaultTintColor2 = v33;
      }
    }

    else
    {
      navigationBarTitleTextTintColor2 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      navigationBarTintAdjustmentMode2 = [v25 navigationBarTintAdjustmentMode];
    }

    else
    {
      navigationBarTintAdjustmentMode2 = 0;
    }

    tintColor = navigationBarTintColor2;
  }

  else
  {
    v27 = controllerCopy;
    _accessibilityButtonBackgroundDefaultTintColor2 = 0;
    v29 = 0;
    navigationBarTintAdjustmentMode2 = 0;
    navigationBarTitleTextTintColor2 = 0;
    prefersNavigationBarBackgroundViewHidden3 = 0;
    v28 = 1.0;
  }

  _backgroundView3 = [navigationBar _backgroundView];
  [_backgroundView3 setAlpha:v28];

  [navigationBar _setShadowAlpha:v28];
  [(SKUINavigationController *)self _configureNavigationBar:navigationBar withTintColor:tintColor tintAdjustmentMode:navigationBarTintAdjustmentMode2 titleTextTintColor:navigationBarTitleTextTintColor2 shouldTintTitleText:v29 & 1 accessibilityButtonBackgroundTintColor:_accessibilityButtonBackgroundDefaultTintColor2];
  v35 = [(SKUINavigationController *)self existingPaletteForEdge:2];
  [(SKUINavigationController *)self _setNavigationPalette:v35 hidesPaletteShadow:prefersNavigationBarBackgroundViewHidden3];

  controllerCopy = v27;
  v12 = v91;
  view = v94;
LABEL_62:
}

uint64_t __103__SKUINavigationController__configureNavigationBarForViewController_shouldIgnoreTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = [*(a1 + 32) _backgroundView];
    [v4 setAlpha:*(a1 + 80)];

    [*(a1 + 32) _setShadowAlpha:*(a1 + 88)];
    [*(a1 + 40) _configureNavigationBar:*(a1 + 32) withTintColor:*(a1 + 48) tintAdjustmentMode:*(a1 + 96) titleTextTintColor:*(a1 + 56) shouldTintTitleText:*(a1 + 104) accessibilityButtonBackgroundTintColor:*(a1 + 64)];
    v5 = *(a1 + 40);
    v6 = *(a1 + 72);
    v7 = *(a1 + 105);

    return [v5 _setNavigationPalette:v6 hidesPaletteShadow:v7];
  }

  return result;
}

void __103__SKUINavigationController__configureNavigationBarForViewController_shouldIgnoreTransitionCoordinator___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 32))
  {
    [*(a1 + 40) _setBackgroundView:*(a1 + 48)];
    objc_setAssociatedObject(*(a1 + 40), "com.apple.StoreKitUI.SKUINavigationController.originalBackgroundView", 0, 1);
    [*(a1 + 32) removeFromSuperview];
  }

  if ([v6 isCancelled])
  {
    [*(a1 + 56) _setNavigationPalette:*(a1 + 64) hidesPaletteShadow:*(a1 + 89)];
  }

  else
  {
    v3 = [*(a1 + 40) _backgroundView];
    [v3 setAlpha:*(a1 + 72)];

    [*(a1 + 40) _setShadowAlpha:*(a1 + 80)];
    v4 = *(a1 + 56);
    v5 = [v4 existingPaletteForEdge:2];
    [v4 _setNavigationPalette:v5 hidesPaletteShadow:*(a1 + 88)];
  }

  if (*(a1 + 90) == 1)
  {
    [*(a1 + 64) SKUI_endHidingPaletteShadow];
  }
}

- (void)_scheduleConfigurationOfNavigationBar
{
  transitionCoordinator = [(SKUINavigationController *)self transitionCoordinator];
  topViewController = [(SKUINavigationController *)self topViewController];
  [(SKUINavigationController *)self _configureNavigationBarForViewController:topViewController shouldIgnoreTransitionCoordinator:0];

  if (transitionCoordinator)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__SKUINavigationController__scheduleConfigurationOfNavigationBar__block_invoke;
    v5[3] = &unk_2781F8348;
    v5[4] = self;
    [transitionCoordinator animateAlongsideTransition:0 completion:v5];
  }
}

- (void)_setNavigationPalette:(id)palette hidesPaletteShadow:(BOOL)shadow
{
  shadowCopy = shadow;
  paletteCopy = palette;
  if (paletteCopy)
  {
    object = paletteCopy;
    v6 = objc_getAssociatedObject(paletteCopy, kHasBeginHidingPaletteShadow);
    bOOLValue = [v6 BOOLValue];

    if (shadowCopy)
    {
      paletteCopy = object;
      if (bOOLValue)
      {
        goto LABEL_8;
      }

      objc_setAssociatedObject(object, kHasBeginHidingPaletteShadow, MEMORY[0x277CBEC38], 1);
      [object SKUI_beginHidingPaletteShadow];
    }

    else
    {
      paletteCopy = object;
      if (!bOOLValue)
      {
        goto LABEL_8;
      }

      objc_setAssociatedObject(object, kHasBeginHidingPaletteShadow, 0, 1);
      [object SKUI_endHidingPaletteShadow];
    }

    paletteCopy = object;
  }

LABEL_8:
}

- (BOOL)_topViewControllerPrefersNavigationBarBackgroundViewHidden
{
  topViewController = [(SKUINavigationController *)self topViewController];
  if ([topViewController conformsToProtocol:&unk_282938F18])
  {
    prefersNavigationBarBackgroundViewHidden = [topViewController prefersNavigationBarBackgroundViewHidden];
  }

  else
  {
    prefersNavigationBarBackgroundViewHidden = 0;
  }

  return prefersNavigationBarBackgroundViewHidden;
}

- (void)_viewControllerNeedsNavigationBarAppearanceUpdate:(id)update
{
  updateCopy = update;
  topViewController = [(SKUINavigationController *)self topViewController];

  if (topViewController == updateCopy)
  {
    transitionCoordinator = [(SKUINavigationController *)self transitionCoordinator];

    if (transitionCoordinator)
    {
      topViewController2 = [(SKUINavigationController *)self topViewController];
      [(SKUINavigationController *)self _configureNavigationBarForViewController:topViewController2 shouldIgnoreTransitionCoordinator:1];
    }

    [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];
  }
}

- (id)_accessibilityButtonBackgroundDefaultTintColor
{
  if (_accessibilityButtonBackgroundDefaultTintColor_onceToken != -1)
  {
    [SKUINavigationController _accessibilityButtonBackgroundDefaultTintColor];
  }

  v3 = _accessibilityButtonBackgroundDefaultTintColor_defaultTintColor;

  return v3;
}

uint64_t __74__SKUINavigationController__accessibilityButtonBackgroundDefaultTintColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.15];
  v1 = _accessibilityButtonBackgroundDefaultTintColor_defaultTintColor;
  _accessibilityButtonBackgroundDefaultTintColor_defaultTintColor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end