@interface SKUINavigationController
- (BOOL)_topViewControllerPrefersNavigationBarBackgroundViewHidden;
- (id)_accessibilityButtonBackgroundDefaultTintColor;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)description;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)_configureNavigationBar:(id)a3 withTintColor:(id)a4 tintAdjustmentMode:(int64_t)a5 titleTextTintColor:(id)a6 shouldTintTitleText:(BOOL)a7 accessibilityButtonBackgroundTintColor:(id)a8;
- (void)_configureNavigationBarForViewController:(id)a3 shouldIgnoreTransitionCoordinator:(BOOL)a4;
- (void)_scheduleConfigurationOfNavigationBar;
- (void)_setNavigationPalette:(id)a3 hidesPaletteShadow:(BOOL)a4;
- (void)_viewControllerNeedsNavigationBarAppearanceUpdate:(id)a3;
- (void)attachPalette:(id)a3 isPinned:(BOOL)a4;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
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

  v15 = [(SKUINavigationController *)self tabBarItem];
  v16 = [v15 title];

  if (v16)
  {
    [v14 appendFormat:@"; title = %@", v16];
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
    v11 = [(SKUINavigationController *)self topViewController];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUINavigationController;
    v11 = [(SKUINavigationController *)&v13 childViewControllerForStatusBarHidden];
  }

  return v11;
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
    v11 = [(SKUINavigationController *)self topViewController];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SKUINavigationController;
    v11 = [(SKUINavigationController *)&v13 childViewControllerForStatusBarStyle];
  }

  return v11;
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
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
  v13 = [(SKUINavigationController *)&v15 popToRootViewControllerAnimated:v3];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];

  return v13;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  v15 = [(SKUINavigationController *)&v17 popToViewController:v6 animated:v4];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];

  return v15;
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
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
  v13 = [(SKUINavigationController *)&v15 popViewControllerAnimated:v3];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];

  return v13;
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  [(SKUINavigationController *)&v15 pushViewController:v6 animated:v4];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  [(SKUINavigationController *)&v15 setViewControllers:v6 animated:v4];
  [(SKUINavigationController *)self _scheduleConfigurationOfNavigationBar];
}

- (void)attachPalette:(id)a3 isPinned:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  [(SKUINavigationController *)&v16 attachPalette:v6 isPinned:v4];
  v15 = [(SKUINavigationController *)self topViewController];
  [(SKUINavigationController *)self _configureNavigationBarForViewController:v15 shouldIgnoreTransitionCoordinator:0];
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  [(SKUINavigationController *)&v15 didShowViewController:v6 animated:v4];
  [(SKUINavigationController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)_configureNavigationBar:(id)a3 withTintColor:(id)a4 tintAdjustmentMode:(int64_t)a5 titleTextTintColor:(id)a6 shouldTintTitleText:(BOOL)a7 accessibilityButtonBackgroundTintColor:(id)a8
{
  v9 = a7;
  v18 = a3;
  v13 = a6;
  v14 = a8;
  [v18 setTintColor:a4];
  [v18 setTintAdjustmentMode:a5];
  if (v9)
  {
    v15 = [v18 titleTextAttributes];
    v16 = [v15 mutableCopy];
    v17 = v16;
    if (v13)
    {
      if (!v16)
      {
        v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      [v17 setObject:v13 forKey:*MEMORY[0x277D740C0]];
    }

    else
    {
      [v16 removeObjectForKey:*MEMORY[0x277D740C0]];
    }

    if (v15 != v17 && ([v15 isEqualToDictionary:v17] & 1) == 0)
    {
      [v18 setTitleTextAttributes:v17];
    }
  }

  [v18 _setAccessibilityButtonBackgroundTintColor:v14];
}

- (void)_configureNavigationBarForViewController:(id)a3 shouldIgnoreTransitionCoordinator:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SKUINavigationController *)self navigationBar];
  v8 = [(SKUINavigationController *)self view];
  v9 = [v8 window];

  if (v9)
  {
    v10 = [v8 tintColor];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SKUINavigationController *)self transitionCoordinator];
  v12 = v11;
  if (v11 && !v4)
  {
    v13 = [v11 viewControllerForKey:*MEMORY[0x277D77230]];
    v14 = [v12 viewControllerForKey:*MEMORY[0x277D77240]];
    if (v13 != v6 && v14 != v6)
    {
      v31 = 0;
      v32 = 0;
LABEL_61:

      goto LABEL_62;
    }

    v89 = v14;
    v16 = [v7 _backgroundView];
    [v16 alpha];
    v18 = v17;

    [v7 _shadowAlpha];
    v20 = v19;
    v81 = [(SKUINavigationController *)self existingPaletteForEdge:2];
    v21 = objc_getAssociatedObject(v81, kHasBeginHidingPaletteShadow);
    v88 = [v21 BOOLValue];

    v79 = [v7 tintColor];
    v76 = [v7 tintAdjustmentMode];
    v22 = [v7 titleTextAttributes];
    v23 = [v22 objectForKey:*MEMORY[0x277D740C0]];

    v77 = v23;
    v85 = v23 != 0;
    v75 = [v7 _accessibilityButtonBackgroundTintColor];
    if ([v13 conformsToProtocol:&unk_282938F18])
    {
      v24 = [v13 prefersNavigationBarBackgroundViewHidden];
    }

    else
    {
      v24 = 0;
    }

    v83 = v13;
    v84 = v6;
    if (![v89 conformsToProtocol:&unk_282938F18])
    {
      v87 = 0;
      v72 = 0;
      v74 = 0;
      v39 = 0;
      v38 = 1.0;
      v73 = v85;
      v40 = v81;
LABEL_47:
      v46 = objc_getAssociatedObject(v7, "com.apple.StoreKitUI.SKUINavigationController.originalBackgroundView");
      if (!v46)
      {
        v46 = [v7 _backgroundView];
        objc_setAssociatedObject(v7, "com.apple.StoreKitUI.SKUINavigationController.originalBackgroundView", v46, 1);
      }

      v82 = v24 ^ v39;
      v93 = v46;
      v95 = v8;
      if ((v24 ^ v39) == 1)
      {
        if ((v24 | v39) == 1)
        {
          v47 = MEMORY[0x277D77248];
          if (!v24)
          {
            v47 = MEMORY[0x277D77238];
          }

          v48 = [v12 viewForKey:*v47];
        }

        else
        {
          v48 = 0;
        }

        [v7 frame];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v57 = [v7 superview];
        v58 = v57;
        if (v46 && v57)
        {
          [v46 frame];
          [v7 convertRect:v58 toView:?];
          v50 = v59;
          v52 = v60;
          v54 = v61;
          v56 = v62;
        }

        v63 = [objc_alloc(-[SKUINavigationController navigationBarClass](self "navigationBarClass"))];
        [v63 setBarStyle:{objc_msgSend(v7, "barStyle")}];
        v64 = [v7 barTintColor];
        [v63 setBarTintColor:v64];

        [v7 _setBackgroundView:0];
        v65 = [v63 layer];
        [v65 setZPosition:100.0];

        v71 = v63;
        [v48 addSubview:v63];
        [v7 _setShadowAlpha:0.0];
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
      v66 = v7;
      v121 = v18;
      v122 = v20;
      v115 = v66;
      v116 = self;
      v123 = v76;
      v117 = v79;
      v118 = v77;
      v124 = v85;
      v119 = v75;
      v67 = v40;
      v120 = v67;
      v125 = v88;
      v86 = v79;
      v80 = v77;
      v78 = v75;
      [v12 notifyWhenInteractionEndsUsingBlock:v114];
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __103__SKUINavigationController__configureNavigationBarForViewController_shouldIgnoreTransitionCoordinator___block_invoke_2;
      v107[3] = &unk_278201000;
      v107[4] = self;
      v108 = v66;
      v10 = v10;
      v109 = v10;
      v112 = v72;
      v32 = v74;
      v110 = v32;
      v113 = v73;
      v31 = v87;
      v111 = v31;
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
      v100 = self;
      v101 = v67;
      v105 = v88;
      v106 = v82;
      v68 = v71;
      v69 = v93;
      v70 = v67;
      [v12 animateAlongsideTransition:v107 completion:v96];

      v13 = v83;
      v6 = v84;
      v14 = v89;
      v8 = v95;
      goto LABEL_61;
    }

    v92 = v12;
    v36 = v89;
    v37 = [v36 prefersNavigationBarBackgroundViewHidden];
    if (v37)
    {
      v87 = [(SKUINavigationController *)self _accessibilityButtonBackgroundDefaultTintColor];
      v38 = 0.0;
    }

    else
    {
      v87 = 0;
      v38 = 1.0;
    }

    v41 = [v36 navigationBarTintColor];

    if (objc_opt_respondsToSelector())
    {
      v42 = [v36 navigationBarTitleTextTintColor];
      if (v42)
      {
        v43 = v37;
      }

      else
      {
        v43 = 0;
      }

      v74 = v42;
      if (v43 != 1)
      {
        v73 = 1;
        goto LABEL_43;
      }

      v44 = [v42 colorWithAlphaComponent:0.2];
      v45 = 1;
    }

    else
    {
      v44 = 0;
      v74 = 0;
      v45 = v85;
    }

    v73 = v45;

    v87 = v44;
LABEL_43:
    if (objc_opt_respondsToSelector())
    {
      v72 = [v36 navigationBarTintAdjustmentMode];
    }

    else
    {
      v72 = 0;
    }

    v10 = v41;
    v12 = v92;
    v40 = v81;
    v39 = v37;
    goto LABEL_47;
  }

  v91 = v11;
  v94 = v8;
  if ([v6 conformsToProtocol:&unk_282938F18])
  {
    v25 = v6;
    v26 = [v25 prefersNavigationBarBackgroundViewHidden];
    v27 = v6;
    if (v26)
    {
      v31 = [(SKUINavigationController *)self _accessibilityButtonBackgroundDefaultTintColor];
      v28 = 0.0;
    }

    else
    {
      v31 = 0;
      v28 = 1.0;
    }

    v90 = [v25 navigationBarTintColor];

    v29 = objc_opt_respondsToSelector();
    if (v29)
    {
      v32 = [v25 navigationBarTitleTextTintColor];
      if ([v25 prefersNavigationBarBackgroundViewHidden] && v32)
      {
        v33 = [v32 colorWithAlphaComponent:0.2];

        v31 = v33;
      }
    }

    else
    {
      v32 = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v30 = [v25 navigationBarTintAdjustmentMode];
    }

    else
    {
      v30 = 0;
    }

    v10 = v90;
  }

  else
  {
    v27 = v6;
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v32 = 0;
    v26 = 0;
    v28 = 1.0;
  }

  v34 = [v7 _backgroundView];
  [v34 setAlpha:v28];

  [v7 _setShadowAlpha:v28];
  [(SKUINavigationController *)self _configureNavigationBar:v7 withTintColor:v10 tintAdjustmentMode:v30 titleTextTintColor:v32 shouldTintTitleText:v29 & 1 accessibilityButtonBackgroundTintColor:v31];
  v35 = [(SKUINavigationController *)self existingPaletteForEdge:2];
  [(SKUINavigationController *)self _setNavigationPalette:v35 hidesPaletteShadow:v26];

  v6 = v27;
  v12 = v91;
  v8 = v94;
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
  v3 = [(SKUINavigationController *)self transitionCoordinator];
  v4 = [(SKUINavigationController *)self topViewController];
  [(SKUINavigationController *)self _configureNavigationBarForViewController:v4 shouldIgnoreTransitionCoordinator:0];

  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __65__SKUINavigationController__scheduleConfigurationOfNavigationBar__block_invoke;
    v5[3] = &unk_2781F8348;
    v5[4] = self;
    [v3 animateAlongsideTransition:0 completion:v5];
  }
}

- (void)_setNavigationPalette:(id)a3 hidesPaletteShadow:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v5)
  {
    object = v5;
    v6 = objc_getAssociatedObject(v5, kHasBeginHidingPaletteShadow);
    v7 = [v6 BOOLValue];

    if (v4)
    {
      v5 = object;
      if (v7)
      {
        goto LABEL_8;
      }

      objc_setAssociatedObject(object, kHasBeginHidingPaletteShadow, MEMORY[0x277CBEC38], 1);
      [object SKUI_beginHidingPaletteShadow];
    }

    else
    {
      v5 = object;
      if (!v7)
      {
        goto LABEL_8;
      }

      objc_setAssociatedObject(object, kHasBeginHidingPaletteShadow, 0, 1);
      [object SKUI_endHidingPaletteShadow];
    }

    v5 = object;
  }

LABEL_8:
}

- (BOOL)_topViewControllerPrefersNavigationBarBackgroundViewHidden
{
  v2 = [(SKUINavigationController *)self topViewController];
  if ([v2 conformsToProtocol:&unk_282938F18])
  {
    v3 = [v2 prefersNavigationBarBackgroundViewHidden];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_viewControllerNeedsNavigationBarAppearanceUpdate:(id)a3
{
  v4 = a3;
  v5 = [(SKUINavigationController *)self topViewController];

  if (v5 == v4)
  {
    v6 = [(SKUINavigationController *)self transitionCoordinator];

    if (v6)
    {
      v7 = [(SKUINavigationController *)self topViewController];
      [(SKUINavigationController *)self _configureNavigationBarForViewController:v7 shouldIgnoreTransitionCoordinator:1];
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