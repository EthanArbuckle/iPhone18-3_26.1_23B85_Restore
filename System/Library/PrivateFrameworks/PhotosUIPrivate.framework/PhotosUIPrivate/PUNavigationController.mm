@interface PUNavigationController
- (BOOL)_canPerformAlternateBackKeyCommandToPopViewController;
- (BOOL)_canUseAlternateBackKeyCommandToTriggerSidebarKeyCommandWithSender:(id)a3;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3;
- (BOOL)_shouldOptOutFromChromelessBars;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)prepareForDismissingForced:(BOOL)a3;
- (BOOL)shouldAutorotate;
- (PUNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (PUNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUNavigationController)initWithRootViewController:(id)a3;
- (UIViewController)_currentToolbarViewController;
- (UIViewController)viewControllerForStatusBarStyleWhenDisappearing;
- (id)_extendedToolbar;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)popViewControllerAnimated:(BOOL)a3;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_commonPUNavigationControllerInitialization;
- (void)_performAlternateBackKeyCommand:(id)a3;
- (void)_setBarStyle:(int64_t)a3;
- (void)_setCurrentToolbarViewController:(id)a3 animated:(BOOL)a4;
- (void)_setShouldOptOutChromelessBars:(BOOL)a3;
- (void)_updateBarStyle;
- (void)_updateChromelessBarsIsBeforeTransition:(BOOL)a3;
- (void)_updateStatusBarOverrides;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)pu_navigationTransitionDidEnd:(id)a3;
- (void)pu_setAlwaysForwardsPreferredStatusBarHidden:(BOOL)a3;
- (void)pu_setAlwaysForwardsPreferredStatusBarStyle:(BOOL)a3;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewController:(id)a3 willSetupInitialBarsVisibilityOnViewWillAppearAnimated:(BOOL)a4;
- (void)willMoveToParentViewController:(id)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUNavigationController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PUNavigationController;
  [(PUNavigationController *)&v5 loadView];
  v3 = [(PUNavigationController *)self _alternateBackKeyCommand];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x100000 action:sel__performAlternateBackKeyCommand_];
    [(PUNavigationController *)self addKeyCommand:v4];
    [(PUNavigationController *)self _setAlternateBackKeyCommand:v4];
  }
}

- (void)_commonPUNavigationControllerInitialization
{
  v3 = [(PUNavigationController *)self _toolbarClass];
  if (!v3 || v3 == objc_opt_class())
  {
    [(PUNavigationController *)self _setToolbarClass:objc_opt_class()];
  }

  [(PUNavigationController *)self setDelegate:self];
}

- (id)childViewControllerForStatusBarHidden
{
  if ([(PUNavigationController *)self pu_alwaysForwardsPrefersStatusBarHidden])
  {
    v3 = [(PUNavigationController *)self topViewController];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PUNavigationController;
    v3 = [(PUNavigationController *)&v5 childViewControllerForStatusBarHidden];
  }

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  result = [(PUNavigationController *)self pu_supportedInterfaceOrientations];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = PUNavigationController;
    return [(PUNavigationController *)&v4 supportedInterfaceOrientations];
  }

  return result;
}

- (id)childViewControllerForStatusBarStyle
{
  if ([(PUNavigationController *)self pu_alwaysForwardsPreferredStatusBarStyle])
  {
    v3 = [(PUNavigationController *)self topViewController];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PUNavigationController;
    v3 = [(PUNavigationController *)&v5 childViewControllerForStatusBarStyle];
  }

  return v3;
}

- (int64_t)preferredStatusBarStyle
{
  v3 = [(PUNavigationController *)self transitionCoordinator];
  v4 = [v3 viewControllerForKey:*MEMORY[0x1E69DE768]];

  if (v4 == self && ([(PUNavigationController *)self viewControllerForStatusBarStyleWhenDisappearing], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v5 = [v6 preferredStatusBarStyle];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PUNavigationController;
    v5 = [(PUNavigationController *)&v9 preferredStatusBarStyle];
  }

  return v5;
}

- (id)_extendedToolbar
{
  v2 = [(PUNavigationController *)self toolbar];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v2 = 0;
  }

  return v2;
}

- (void)_updateStatusBarOverrides
{
  v3 = [(PUNavigationController *)self topViewController];
  -[PUNavigationController pu_setAlwaysForwardsPreferredStatusBarStyle:](self, "pu_setAlwaysForwardsPreferredStatusBarStyle:", [v3 px_determinesPreferredStatusBarStyle]);
  -[PUNavigationController pu_setAlwaysForwardsPreferredStatusBarHidden:](self, "pu_setAlwaysForwardsPreferredStatusBarHidden:", [v3 px_determinesPreferredStatusBarHidden]);
}

- (void)_updateBarStyle
{
  v3 = [(PUNavigationController *)self topViewController];
  -[PUNavigationController _setBarStyle:](self, "_setBarStyle:", [v3 pu_preferredBarStyle]);
}

- (BOOL)_shouldOptOutFromChromelessBars
{
  v2 = [(PUNavigationController *)self navigationBar];
  v3 = [v2 scrollEdgeAppearance];
  v4 = v3 != 0;

  return v4;
}

- (UIViewController)_currentToolbarViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__currentToolbarViewController);

  return WeakRetained;
}

- (UIViewController)viewControllerForStatusBarStyleWhenDisappearing
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerForStatusBarStyleWhenDisappearing);

  return WeakRetained;
}

- (void)pu_setAlwaysForwardsPreferredStatusBarHidden:(BOOL)a3
{
  if (self->_pu_alwaysForwardsPrefersStatusBarHidden != a3)
  {
    self->_pu_alwaysForwardsPrefersStatusBarHidden = a3;
    [(PUNavigationController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)pu_setAlwaysForwardsPreferredStatusBarStyle:(BOOL)a3
{
  if (self->_pu_alwaysForwardsPreferredStatusBarStyle != a3)
  {
    self->_pu_alwaysForwardsPreferredStatusBarStyle = a3;
    [(PUNavigationController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (BOOL)prepareForDismissingForced:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUNavigationController *)self viewControllers];
  v6 = [v5 firstObject];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![v6 prepareForDismissingForced:v3])
  {
    v7 = 0;
  }

  else
  {
    [(PUNavigationController *)self dismissViewControllerAnimated:0 completion:0];
    v7 = 1;
  }

  return v7;
}

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)a3
{
  v3 = [a3 topViewController];
  v4 = [v3 pu_navigationTransition];
  v5 = v4 == 0;

  return v5;
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  if (v5)
  {
    [(PUNavigationController *)self ppt_notifyTransitionAnimationDidComplete];
  }

  v9 = [(PUNavigationController *)self ppt_onDidShowViewControllerBlock];

  if (v9)
  {
    v10 = [(PUNavigationController *)self ppt_onDidShowViewControllerBlock];
    v10[2]();

    [(PUNavigationController *)self ppt_setOnDidShowViewControllerBlock:0];
  }

  [(PUNavigationController *)self _updateBarStyle];
  [(PUNavigationController *)self _updateChromelessBarsIsBeforeTransition:0];
  [(PUNavigationController *)self _setNavigating:0];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v28 = a3;
  v8 = a4;
  [(PUNavigationController *)self _setNavigating:1];
  v9 = [v8 navigationItem];
  v10 = [(PUNavigationController *)self _banner];
  v11 = [v9 pu_banner];
  v12 = [(PUNavigationController *)self _palette];
  v13 = v12;
  if (!v12 && v11)
  {
    [v11 height];
    v15 = [(PUNavigationController *)self paletteForEdge:2 size:0.0, v14];
    [(PUNavigationController *)self attachPalette:v15 isPinned:1];
    v13 = v15;
LABEL_7:
    [(PUNavigationController *)self _setPalette:v15];
    goto LABEL_8;
  }

  if (!v11 && v12)
  {
    [(PUNavigationController *)self detachPalette:v12];
    v15 = 0;
    goto LABEL_7;
  }

LABEL_8:
  [(PUNavigationController *)self _setBanner:v11];
  v16 = [v11 view];
  v17 = v16;
  if (v13)
  {
    if (v16)
    {
      [v16 superview];
      v19 = v18 = v10;

      v20 = v19 == v13;
      v10 = v18;
      if (!v20)
      {
        [v13 bounds];
        [v17 setFrame:?];
        [v17 setAutoresizingMask:18];
        [v17 layoutSubviews];
        v21 = [v18 view];
        v22 = v21;
        if (v5)
        {
          v23 = 0.3;
        }

        else
        {
          v23 = 0.0;
        }

        v27 = MEMORY[0x1E69DD250];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __79__PUNavigationController_navigationController_willShowViewController_animated___block_invoke;
        v32[3] = &unk_1E7B809F0;
        v33 = v21;
        v34 = v13;
        v35 = v17;
        v24 = v22;
        [v27 transitionWithView:v34 duration:5242880 options:v32 animations:0 completion:v23];

        v10 = v18;
      }
    }
  }

  [(PUNavigationController *)self _setCurrentToolbarViewController:v8 animated:v5];
  [(PUNavigationController *)self _updateStatusBarOverrides];
  objc_initWeak(&location, self);
  v25 = [(PUNavigationController *)self transitionCoordinator];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __79__PUNavigationController_navigationController_willShowViewController_animated___block_invoke_2;
  v29[3] = &unk_1E7B7E238;
  objc_copyWeak(&v30, &location);
  [v25 animateAlongsideTransition:0 completion:v29];

  [(PUNavigationController *)self _updateBarStyle];
  [(PUNavigationController *)self _updateChromelessBarsIsBeforeTransition:1];
  v26 = [(PUNavigationController *)self traitCollection];
  [v9 px_updateBackButtonVisibilityForTraitCollection:v26];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);
}

uint64_t __79__PUNavigationController_navigationController_willShowViewController_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 addSubview:v3];
}

void __79__PUNavigationController_navigationController_willShowViewController_animated___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 isCancelled])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _updateStatusBarOverrides];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUNavigationController;
  [(PUNavigationController *)&v3 didMoveToParentViewController:a3];
}

- (void)willMoveToParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUNavigationController;
  [(PUNavigationController *)&v3 willMoveToParentViewController:a3];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = PUNavigationController;
  v7 = a4;
  [(PUNavigationController *)&v14 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  v8 = [(PUNavigationController *)self viewControllers];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PUNavigationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_1E7B7AC08;
  v12 = v8;
  v13 = v6;
  v9 = v6;
  v10 = v8;
  [v7 animateAlongsideTransition:v11 completion:0];
}

void __84__PUNavigationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) navigationItem];
        [v7 px_updateBackButtonVisibilityForTraitCollection:*(a1 + 40)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)shouldAutorotate
{
  if ([(PUNavigationController *)self pu_preventsAutorotation])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PUNavigationController;
  return [(PUNavigationController *)&v4 shouldAutorotate];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if (sel__performAlternateBackKeyCommand_ != a3)
  {
    v10.receiver = self;
    v10.super_class = PUNavigationController;
    v7 = [(PUNavigationController *)&v10 canPerformAction:a3 withSender:v6];
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if (![(PUNavigationController *)self _canPerformAlternateBackKeyCommandToPopViewController])
  {
    v7 = [(PUNavigationController *)self _canUseAlternateBackKeyCommandToTriggerSidebarKeyCommandWithSender:v6];
    goto LABEL_6;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (void)_setCurrentToolbarViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->__currentToolbarViewController);

  if (WeakRetained != v6)
  {
    v8 = objc_loadWeakRetained(&self->__currentToolbarViewController);
    v9 = [v8 pu_wantsToolbarVisible];

    v10 = objc_loadWeakRetained(&self->__currentToolbarViewController);
    v11 = objc_storeWeak(&self->__currentToolbarViewController, v6);
    v12 = [v6 pu_wantsToolbarVisible];

    v13 = [(PUNavigationController *)self _extendedToolbar];
    v14 = [v6 pu_toolbarViewModel];
    v15 = [v6 transitionCoordinator];
    if ([v15 isCancelled])
    {

      if (v12 & 1 | ((v9 & 1) == 0))
      {
        v15 = 0;
        v16 = 0;
LABEL_12:
        [v13 setToolbarViewModel:v14 withAnimatorBlock:v16];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_5;
        v18[3] = &unk_1E7B7AC08;
        v18[4] = self;
        v19 = v10;
        [v15 animateAlongsideTransitionInView:v13 animation:0 completion:v18];

LABEL_15:
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      if (v12 & 1 | ((v9 & 1) == 0))
      {
        v16 = 0;
        if (v15)
        {
          v17 = v9;
        }

        else
        {
          v17 = 0;
        }

        if ((v17 & v12) == 1 && v4)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_2;
          aBlock[3] = &unk_1E7B79518;
          v15 = v15;
          v21 = v15;
          v22 = v13;
          v16 = _Block_copy(aBlock);
        }

        goto LABEL_12;
      }

      if (v15)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke;
        v23[3] = &unk_1E7B7AC08;
        v24 = v13;
        v25 = v14;
        [v15 animateAlongsideTransitionInView:v24 animation:0 completion:v23];

        goto LABEL_15;
      }
    }

    [v13 setToolbarViewModel:v14 withAnimatorBlock:0];
    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 setToolbarViewModel:v5 withAnimatorBlock:0];
  }

  return result;
}

void __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_3;
  v13[3] = &unk_1E7B7ABE0;
  v14 = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_4;
  v11[3] = &unk_1E7B7ABE0;
  v9 = v6;
  v10 = v5;
  [v7 animateAlongsideTransitionInView:v8 animation:v13 completion:v11];
}

uint64_t __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_5(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _setCurrentToolbarViewController:v5];
  }

  return result;
}

uint64_t __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_4(uint64_t a1, void *a2)
{
  [a2 isCancelled];
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)viewController:(id)a3 willSetupInitialBarsVisibilityOnViewWillAppearAnimated:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(PUNavigationController *)self topViewController];

  v7 = v11;
  if (v6 == v11)
  {
    [(PUNavigationController *)self _updateBarStyle];
    [(PUNavigationController *)self _updateChromelessBarsIsBeforeTransition:1];
    v8 = [v11 pu_wantsToolbarVisible];
    v9 = [v11 transitionCoordinator];
    v10 = [v9 isCancelled];

    v7 = v11;
    if ((v8 & 1) != 0 || v10)
    {
      [(PUNavigationController *)self _setCurrentToolbarViewController:v11 animated:v4];
      v7 = v11;
    }
  }
}

- (void)_performAlternateBackKeyCommand:(id)a3
{
  v6 = a3;
  if ([(PUNavigationController *)self _canPerformAlternateBackKeyCommandToPopViewController])
  {
    v4 = [(PUNavigationController *)self popViewControllerAnimated:1];
  }

  else if ([(PUNavigationController *)self _canUseAlternateBackKeyCommandToTriggerSidebarKeyCommandWithSender:v6])
  {
    v5 = [(PUNavigationController *)self splitViewController];
    [v5 toggleSidebar:v6];
  }
}

- (BOOL)_canUseAlternateBackKeyCommandToTriggerSidebarKeyCommandWithSender:(id)a3
{
  v4 = a3;
  v5 = [(PUNavigationController *)self splitViewController];
  v6 = v5;
  if (!v5 || [v5 displayMode] == 2 || objc_msgSend(v6, "displayMode") == 4 || !objc_msgSend(v6, "canPerformAction:withSender:", sel_toggleSidebar_, v4) || -[PUNavigationController _isNavigating](self, "_isNavigating"))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [(PUNavigationController *)self isNavigationBarHidden]^ 1;
  }

  return v7;
}

- (BOOL)_canPerformAlternateBackKeyCommandToPopViewController
{
  v3 = [(PUNavigationController *)self childViewControllers];
  if ([v3 count] < 2 || -[PUNavigationController _isNavigating](self, "_isNavigating") || (-[PUNavigationController isNavigationBarHidden](self, "isNavigationBarHidden") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v6 = [(PUNavigationController *)self navigationBar];
    v7 = [v6 topItem];
    v4 = [v7 hidesBackButton] ^ 1;
  }

  return v4;
}

- (void)_setShouldOptOutChromelessBars:(BOOL)a3
{
  v4 = a3;
  if ([(PUNavigationController *)self _shouldOptOutFromChromelessBars]!= a3)
  {
    if (v4)
    {
      v3 = [(PUNavigationController *)self navigationBar];
      v6 = [v3 standardAppearance];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(PUNavigationController *)self navigationBar];
    [v7 setScrollEdgeAppearance:v6];

    if (v4)
    {

      v10 = [(PUNavigationController *)self toolbar];
      v8 = [v10 standardAppearance];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(PUNavigationController *)self toolbar];
    [v9 setScrollEdgeAppearance:v8];

    if (v4)
    {
    }
  }
}

- (void)_updateChromelessBarsIsBeforeTransition:(BOOL)a3
{
  v3 = a3;
  v7 = [(PUNavigationController *)self topViewController];
  v5 = [v7 pu_shouldOptOutFromChromelessBars];
  v6 = v5;
  if (v3 && (v5 & 1) == 0)
  {
    v6 = [(PUNavigationController *)self _shouldOptOutFromChromelessBars];
  }

  [(PUNavigationController *)self _setShouldOptOutChromelessBars:v6];
}

- (void)_setBarStyle:(int64_t)a3
{
  if (self->__barStyle != a3)
  {
    self->__barStyle = a3;
    v6 = +[PUInterfaceManager currentTheme];
    v9 = [v6 tintColorForBarStyle:a3];

    v7 = [(PUNavigationController *)self navigationBar];
    [v7 setBarStyle:a3];
    [v7 setTintColor:v9];
    v8 = [(PUNavigationController *)self toolbar];
    [v8 setBarStyle:a3];
    [v8 setTintColor:v9];
  }
}

- (void)pu_navigationTransitionDidEnd:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUNavigationController;
  [(UINavigationController *)&v4 pu_navigationTransitionDidEnd:a3];
  [(PUNavigationController *)self _updateBarStyle];
  [(PUNavigationController *)self _updateChromelessBarsIsBeforeTransition:0];
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (-[PUNavigationController pu_disablePushPopAnimation](self, "pu_disablePushPopAnimation") || ([MEMORY[0x1E69DD250] areAnimationsEnabled] & 1) == 0)
  {
    v4 = 0;
  }

  v7.receiver = self;
  v7.super_class = PUNavigationController;
  [(PUNavigationController *)&v7 setViewControllers:v6 animated:v4];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUNavigationController;
  v3 = [(PUNavigationController *)&v5 popViewControllerAnimated:a3 & ~[(PUNavigationController *)self pu_disablePushPopAnimation]];

  return v3;
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PUNavigationController *)self pu_disablePushPopAnimation];
  if ((PUNavigationControllerPushingWithTransition & 1) != 0 || (v8 = PURequestedNavigationTransitionIsInteractive, (v9 = PURequestedNavigationTransition) == 0))
  {
    v11.receiver = self;
    v11.super_class = PUNavigationController;
    [(PUNavigationController *)&v11 pushViewController:v6 animated:v4 & ~v7];
  }

  else
  {
    v10 = v9;
    PUNavigationControllerPushingWithTransition = 1;
    [(UINavigationController *)self pu_pushViewController:v6 withTransition:v9 animated:v4 & ~v7 isInteractive:v8];
    PUNavigationControllerPushingWithTransition = 0;
  }
}

- (PUNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = PUNavigationController;
  v4 = [(PUNavigationController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(PUNavigationController *)v4 _commonPUNavigationControllerInitialization];
  }

  return v5;
}

- (PUNavigationController)initWithRootViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = PUNavigationController;
  v3 = [(PUNavigationController *)&v6 initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    [(PUNavigationController *)v3 _commonPUNavigationControllerInitialization];
  }

  return v4;
}

- (PUNavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = PUNavigationController;
  v4 = [(PUNavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
  v5 = v4;
  if (v4)
  {
    [(PUNavigationController *)v4 _commonPUNavigationControllerInitialization];
  }

  return v5;
}

@end