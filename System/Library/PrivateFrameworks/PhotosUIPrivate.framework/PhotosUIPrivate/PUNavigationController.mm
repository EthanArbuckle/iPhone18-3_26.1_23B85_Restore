@interface PUNavigationController
- (BOOL)_canPerformAlternateBackKeyCommandToPopViewController;
- (BOOL)_canUseAlternateBackKeyCommandToTriggerSidebarKeyCommandWithSender:(id)sender;
- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller;
- (BOOL)_shouldOptOutFromChromelessBars;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)prepareForDismissingForced:(BOOL)forced;
- (BOOL)shouldAutorotate;
- (PUNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (PUNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (PUNavigationController)initWithRootViewController:(id)controller;
- (UIViewController)_currentToolbarViewController;
- (UIViewController)viewControllerForStatusBarStyleWhenDisappearing;
- (id)_extendedToolbar;
- (id)childViewControllerForStatusBarHidden;
- (id)childViewControllerForStatusBarStyle;
- (id)popViewControllerAnimated:(BOOL)animated;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_commonPUNavigationControllerInitialization;
- (void)_performAlternateBackKeyCommand:(id)command;
- (void)_setBarStyle:(int64_t)style;
- (void)_setCurrentToolbarViewController:(id)controller animated:(BOOL)animated;
- (void)_setShouldOptOutChromelessBars:(BOOL)bars;
- (void)_updateBarStyle;
- (void)_updateChromelessBarsIsBeforeTransition:(BOOL)transition;
- (void)_updateStatusBarOverrides;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)pu_navigationTransitionDidEnd:(id)end;
- (void)pu_setAlwaysForwardsPreferredStatusBarHidden:(BOOL)hidden;
- (void)pu_setAlwaysForwardsPreferredStatusBarStyle:(BOOL)style;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewController:(id)controller willSetupInitialBarsVisibilityOnViewWillAppearAnimated:(BOOL)animated;
- (void)willMoveToParentViewController:(id)controller;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation PUNavigationController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PUNavigationController;
  [(PUNavigationController *)&v5 loadView];
  _alternateBackKeyCommand = [(PUNavigationController *)self _alternateBackKeyCommand];

  if (!_alternateBackKeyCommand)
  {
    v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0x100000 action:sel__performAlternateBackKeyCommand_];
    [(PUNavigationController *)self addKeyCommand:v4];
    [(PUNavigationController *)self _setAlternateBackKeyCommand:v4];
  }
}

- (void)_commonPUNavigationControllerInitialization
{
  _toolbarClass = [(PUNavigationController *)self _toolbarClass];
  if (!_toolbarClass || _toolbarClass == objc_opt_class())
  {
    [(PUNavigationController *)self _setToolbarClass:objc_opt_class()];
  }

  [(PUNavigationController *)self setDelegate:self];
}

- (id)childViewControllerForStatusBarHidden
{
  if ([(PUNavigationController *)self pu_alwaysForwardsPrefersStatusBarHidden])
  {
    topViewController = [(PUNavigationController *)self topViewController];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PUNavigationController;
    topViewController = [(PUNavigationController *)&v5 childViewControllerForStatusBarHidden];
  }

  return topViewController;
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
    topViewController = [(PUNavigationController *)self topViewController];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PUNavigationController;
    topViewController = [(PUNavigationController *)&v5 childViewControllerForStatusBarStyle];
  }

  return topViewController;
}

- (int64_t)preferredStatusBarStyle
{
  transitionCoordinator = [(PUNavigationController *)self transitionCoordinator];
  v4 = [transitionCoordinator viewControllerForKey:*MEMORY[0x1E69DE768]];

  if (v4 == self && ([(PUNavigationController *)self viewControllerForStatusBarStyleWhenDisappearing], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    preferredStatusBarStyle = [v6 preferredStatusBarStyle];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PUNavigationController;
    preferredStatusBarStyle = [(PUNavigationController *)&v9 preferredStatusBarStyle];
  }

  return preferredStatusBarStyle;
}

- (id)_extendedToolbar
{
  toolbar = [(PUNavigationController *)self toolbar];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    toolbar = 0;
  }

  return toolbar;
}

- (void)_updateStatusBarOverrides
{
  topViewController = [(PUNavigationController *)self topViewController];
  -[PUNavigationController pu_setAlwaysForwardsPreferredStatusBarStyle:](self, "pu_setAlwaysForwardsPreferredStatusBarStyle:", [topViewController px_determinesPreferredStatusBarStyle]);
  -[PUNavigationController pu_setAlwaysForwardsPreferredStatusBarHidden:](self, "pu_setAlwaysForwardsPreferredStatusBarHidden:", [topViewController px_determinesPreferredStatusBarHidden]);
}

- (void)_updateBarStyle
{
  topViewController = [(PUNavigationController *)self topViewController];
  -[PUNavigationController _setBarStyle:](self, "_setBarStyle:", [topViewController pu_preferredBarStyle]);
}

- (BOOL)_shouldOptOutFromChromelessBars
{
  navigationBar = [(PUNavigationController *)self navigationBar];
  scrollEdgeAppearance = [navigationBar scrollEdgeAppearance];
  v4 = scrollEdgeAppearance != 0;

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

- (void)pu_setAlwaysForwardsPreferredStatusBarHidden:(BOOL)hidden
{
  if (self->_pu_alwaysForwardsPrefersStatusBarHidden != hidden)
  {
    self->_pu_alwaysForwardsPrefersStatusBarHidden = hidden;
    [(PUNavigationController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (void)pu_setAlwaysForwardsPreferredStatusBarStyle:(BOOL)style
{
  if (self->_pu_alwaysForwardsPreferredStatusBarStyle != style)
  {
    self->_pu_alwaysForwardsPreferredStatusBarStyle = style;
    [(PUNavigationController *)self setNeedsStatusBarAppearanceUpdate];
  }
}

- (BOOL)prepareForDismissingForced:(BOOL)forced
{
  forcedCopy = forced;
  viewControllers = [(PUNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ![firstObject prepareForDismissingForced:forcedCopy])
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

- (BOOL)_navigationControllerShouldUseBuiltinInteractionController:(id)controller
{
  topViewController = [controller topViewController];
  pu_navigationTransition = [topViewController pu_navigationTransition];
  v5 = pu_navigationTransition == 0;

  return v5;
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  if (animatedCopy)
  {
    [(PUNavigationController *)self ppt_notifyTransitionAnimationDidComplete];
  }

  ppt_onDidShowViewControllerBlock = [(PUNavigationController *)self ppt_onDidShowViewControllerBlock];

  if (ppt_onDidShowViewControllerBlock)
  {
    ppt_onDidShowViewControllerBlock2 = [(PUNavigationController *)self ppt_onDidShowViewControllerBlock];
    ppt_onDidShowViewControllerBlock2[2]();

    [(PUNavigationController *)self ppt_setOnDidShowViewControllerBlock:0];
  }

  [(PUNavigationController *)self _updateBarStyle];
  [(PUNavigationController *)self _updateChromelessBarsIsBeforeTransition:0];
  [(PUNavigationController *)self _setNavigating:0];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  [(PUNavigationController *)self _setNavigating:1];
  navigationItem = [viewControllerCopy navigationItem];
  _banner = [(PUNavigationController *)self _banner];
  pu_banner = [navigationItem pu_banner];
  _palette = [(PUNavigationController *)self _palette];
  v13 = _palette;
  if (!_palette && pu_banner)
  {
    [pu_banner height];
    v15 = [(PUNavigationController *)self paletteForEdge:2 size:0.0, v14];
    [(PUNavigationController *)self attachPalette:v15 isPinned:1];
    v13 = v15;
LABEL_7:
    [(PUNavigationController *)self _setPalette:v15];
    goto LABEL_8;
  }

  if (!pu_banner && _palette)
  {
    [(PUNavigationController *)self detachPalette:_palette];
    v15 = 0;
    goto LABEL_7;
  }

LABEL_8:
  [(PUNavigationController *)self _setBanner:pu_banner];
  view = [pu_banner view];
  v17 = view;
  if (v13)
  {
    if (view)
    {
      [view superview];
      v19 = v18 = _banner;

      v20 = v19 == v13;
      _banner = v18;
      if (!v20)
      {
        [v13 bounds];
        [v17 setFrame:?];
        [v17 setAutoresizingMask:18];
        [v17 layoutSubviews];
        view2 = [v18 view];
        v22 = view2;
        if (animatedCopy)
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
        v33 = view2;
        v34 = v13;
        v35 = v17;
        v24 = v22;
        [v27 transitionWithView:v34 duration:5242880 options:v32 animations:0 completion:v23];

        _banner = v18;
      }
    }
  }

  [(PUNavigationController *)self _setCurrentToolbarViewController:viewControllerCopy animated:animatedCopy];
  [(PUNavigationController *)self _updateStatusBarOverrides];
  objc_initWeak(&location, self);
  transitionCoordinator = [(PUNavigationController *)self transitionCoordinator];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __79__PUNavigationController_navigationController_willShowViewController_animated___block_invoke_2;
  v29[3] = &unk_1E7B7E238;
  objc_copyWeak(&v30, &location);
  [transitionCoordinator animateAlongsideTransition:0 completion:v29];

  [(PUNavigationController *)self _updateBarStyle];
  [(PUNavigationController *)self _updateChromelessBarsIsBeforeTransition:1];
  traitCollection = [(PUNavigationController *)self traitCollection];
  [navigationItem px_updateBackButtonVisibilityForTraitCollection:traitCollection];

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

- (void)didMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = PUNavigationController;
  [(PUNavigationController *)&v3 didMoveToParentViewController:controller];
}

- (void)willMoveToParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = PUNavigationController;
  [(PUNavigationController *)&v3 willMoveToParentViewController:controller];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  v14.receiver = self;
  v14.super_class = PUNavigationController;
  coordinatorCopy = coordinator;
  [(PUNavigationController *)&v14 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  viewControllers = [(PUNavigationController *)self viewControllers];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PUNavigationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v11[3] = &unk_1E7B7AC08;
  v12 = viewControllers;
  v13 = collectionCopy;
  v9 = collectionCopy;
  v10 = viewControllers;
  [coordinatorCopy animateAlongsideTransition:v11 completion:0];
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel__performAlternateBackKeyCommand_ != action)
  {
    v10.receiver = self;
    v10.super_class = PUNavigationController;
    v7 = [(PUNavigationController *)&v10 canPerformAction:action withSender:senderCopy];
LABEL_6:
    v8 = v7;
    goto LABEL_7;
  }

  if (![(PUNavigationController *)self _canPerformAlternateBackKeyCommandToPopViewController])
  {
    v7 = [(PUNavigationController *)self _canUseAlternateBackKeyCommandToTriggerSidebarKeyCommandWithSender:senderCopy];
    goto LABEL_6;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (void)_setCurrentToolbarViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->__currentToolbarViewController);

  if (WeakRetained != controllerCopy)
  {
    v8 = objc_loadWeakRetained(&self->__currentToolbarViewController);
    pu_wantsToolbarVisible = [v8 pu_wantsToolbarVisible];

    v10 = objc_loadWeakRetained(&self->__currentToolbarViewController);
    v11 = objc_storeWeak(&self->__currentToolbarViewController, controllerCopy);
    pu_wantsToolbarVisible2 = [controllerCopy pu_wantsToolbarVisible];

    _extendedToolbar = [(PUNavigationController *)self _extendedToolbar];
    pu_toolbarViewModel = [controllerCopy pu_toolbarViewModel];
    transitionCoordinator = [controllerCopy transitionCoordinator];
    if ([transitionCoordinator isCancelled])
    {

      if (pu_wantsToolbarVisible2 & 1 | ((pu_wantsToolbarVisible & 1) == 0))
      {
        transitionCoordinator = 0;
        v16 = 0;
LABEL_12:
        [_extendedToolbar setToolbarViewModel:pu_toolbarViewModel withAnimatorBlock:v16];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_5;
        v18[3] = &unk_1E7B7AC08;
        v18[4] = self;
        v19 = v10;
        [transitionCoordinator animateAlongsideTransitionInView:_extendedToolbar animation:0 completion:v18];

LABEL_15:
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
      if (pu_wantsToolbarVisible2 & 1 | ((pu_wantsToolbarVisible & 1) == 0))
      {
        v16 = 0;
        if (transitionCoordinator)
        {
          v17 = pu_wantsToolbarVisible;
        }

        else
        {
          v17 = 0;
        }

        if ((v17 & pu_wantsToolbarVisible2) == 1 && animatedCopy)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke_2;
          aBlock[3] = &unk_1E7B79518;
          transitionCoordinator = transitionCoordinator;
          v21 = transitionCoordinator;
          v22 = _extendedToolbar;
          v16 = _Block_copy(aBlock);
        }

        goto LABEL_12;
      }

      if (transitionCoordinator)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __68__PUNavigationController__setCurrentToolbarViewController_animated___block_invoke;
        v23[3] = &unk_1E7B7AC08;
        v24 = _extendedToolbar;
        v25 = pu_toolbarViewModel;
        [transitionCoordinator animateAlongsideTransitionInView:v24 animation:0 completion:v23];

        goto LABEL_15;
      }
    }

    [_extendedToolbar setToolbarViewModel:pu_toolbarViewModel withAnimatorBlock:0];
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

- (void)viewController:(id)controller willSetupInitialBarsVisibilityOnViewWillAppearAnimated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  topViewController = [(PUNavigationController *)self topViewController];

  v7 = controllerCopy;
  if (topViewController == controllerCopy)
  {
    [(PUNavigationController *)self _updateBarStyle];
    [(PUNavigationController *)self _updateChromelessBarsIsBeforeTransition:1];
    pu_wantsToolbarVisible = [controllerCopy pu_wantsToolbarVisible];
    transitionCoordinator = [controllerCopy transitionCoordinator];
    isCancelled = [transitionCoordinator isCancelled];

    v7 = controllerCopy;
    if ((pu_wantsToolbarVisible & 1) != 0 || isCancelled)
    {
      [(PUNavigationController *)self _setCurrentToolbarViewController:controllerCopy animated:animatedCopy];
      v7 = controllerCopy;
    }
  }
}

- (void)_performAlternateBackKeyCommand:(id)command
{
  commandCopy = command;
  if ([(PUNavigationController *)self _canPerformAlternateBackKeyCommandToPopViewController])
  {
    v4 = [(PUNavigationController *)self popViewControllerAnimated:1];
  }

  else if ([(PUNavigationController *)self _canUseAlternateBackKeyCommandToTriggerSidebarKeyCommandWithSender:commandCopy])
  {
    splitViewController = [(PUNavigationController *)self splitViewController];
    [splitViewController toggleSidebar:commandCopy];
  }
}

- (BOOL)_canUseAlternateBackKeyCommandToTriggerSidebarKeyCommandWithSender:(id)sender
{
  senderCopy = sender;
  splitViewController = [(PUNavigationController *)self splitViewController];
  v6 = splitViewController;
  if (!splitViewController || [splitViewController displayMode] == 2 || objc_msgSend(v6, "displayMode") == 4 || !objc_msgSend(v6, "canPerformAction:withSender:", sel_toggleSidebar_, senderCopy) || -[PUNavigationController _isNavigating](self, "_isNavigating"))
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
  childViewControllers = [(PUNavigationController *)self childViewControllers];
  if ([childViewControllers count] < 2 || -[PUNavigationController _isNavigating](self, "_isNavigating") || (-[PUNavigationController isNavigationBarHidden](self, "isNavigationBarHidden") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    navigationBar = [(PUNavigationController *)self navigationBar];
    topItem = [navigationBar topItem];
    v4 = [topItem hidesBackButton] ^ 1;
  }

  return v4;
}

- (void)_setShouldOptOutChromelessBars:(BOOL)bars
{
  barsCopy = bars;
  if ([(PUNavigationController *)self _shouldOptOutFromChromelessBars]!= bars)
  {
    if (barsCopy)
    {
      navigationBar = [(PUNavigationController *)self navigationBar];
      standardAppearance = [navigationBar standardAppearance];
    }

    else
    {
      standardAppearance = 0;
    }

    navigationBar2 = [(PUNavigationController *)self navigationBar];
    [navigationBar2 setScrollEdgeAppearance:standardAppearance];

    if (barsCopy)
    {

      toolbar = [(PUNavigationController *)self toolbar];
      standardAppearance2 = [toolbar standardAppearance];
    }

    else
    {
      standardAppearance2 = 0;
    }

    toolbar2 = [(PUNavigationController *)self toolbar];
    [toolbar2 setScrollEdgeAppearance:standardAppearance2];

    if (barsCopy)
    {
    }
  }
}

- (void)_updateChromelessBarsIsBeforeTransition:(BOOL)transition
{
  transitionCopy = transition;
  topViewController = [(PUNavigationController *)self topViewController];
  pu_shouldOptOutFromChromelessBars = [topViewController pu_shouldOptOutFromChromelessBars];
  _shouldOptOutFromChromelessBars = pu_shouldOptOutFromChromelessBars;
  if (transitionCopy && (pu_shouldOptOutFromChromelessBars & 1) == 0)
  {
    _shouldOptOutFromChromelessBars = [(PUNavigationController *)self _shouldOptOutFromChromelessBars];
  }

  [(PUNavigationController *)self _setShouldOptOutChromelessBars:_shouldOptOutFromChromelessBars];
}

- (void)_setBarStyle:(int64_t)style
{
  if (self->__barStyle != style)
  {
    self->__barStyle = style;
    v6 = +[PUInterfaceManager currentTheme];
    v9 = [v6 tintColorForBarStyle:style];

    navigationBar = [(PUNavigationController *)self navigationBar];
    [navigationBar setBarStyle:style];
    [navigationBar setTintColor:v9];
    toolbar = [(PUNavigationController *)self toolbar];
    [toolbar setBarStyle:style];
    [toolbar setTintColor:v9];
  }
}

- (void)pu_navigationTransitionDidEnd:(id)end
{
  v4.receiver = self;
  v4.super_class = PUNavigationController;
  [(UINavigationController *)&v4 pu_navigationTransitionDidEnd:end];
  [(PUNavigationController *)self _updateBarStyle];
  [(PUNavigationController *)self _updateChromelessBarsIsBeforeTransition:0];
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  controllersCopy = controllers;
  if (-[PUNavigationController pu_disablePushPopAnimation](self, "pu_disablePushPopAnimation") || ([MEMORY[0x1E69DD250] areAnimationsEnabled] & 1) == 0)
  {
    animatedCopy = 0;
  }

  v7.receiver = self;
  v7.super_class = PUNavigationController;
  [(PUNavigationController *)&v7 setViewControllers:controllersCopy animated:animatedCopy];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = PUNavigationController;
  v3 = [(PUNavigationController *)&v5 popViewControllerAnimated:animated & ~[(PUNavigationController *)self pu_disablePushPopAnimation]];

  return v3;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  pu_disablePushPopAnimation = [(PUNavigationController *)self pu_disablePushPopAnimation];
  if ((PUNavigationControllerPushingWithTransition & 1) != 0 || (v8 = PURequestedNavigationTransitionIsInteractive, (v9 = PURequestedNavigationTransition) == 0))
  {
    v11.receiver = self;
    v11.super_class = PUNavigationController;
    [(PUNavigationController *)&v11 pushViewController:controllerCopy animated:animatedCopy & ~pu_disablePushPopAnimation];
  }

  else
  {
    v10 = v9;
    PUNavigationControllerPushingWithTransition = 1;
    [(UINavigationController *)self pu_pushViewController:controllerCopy withTransition:v9 animated:animatedCopy & ~pu_disablePushPopAnimation isInteractive:v8];
    PUNavigationControllerPushingWithTransition = 0;
  }
}

- (PUNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = PUNavigationController;
  v4 = [(PUNavigationController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(PUNavigationController *)v4 _commonPUNavigationControllerInitialization];
  }

  return v5;
}

- (PUNavigationController)initWithRootViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = PUNavigationController;
  v3 = [(PUNavigationController *)&v6 initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    [(PUNavigationController *)v3 _commonPUNavigationControllerInitialization];
  }

  return v4;
}

- (PUNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = PUNavigationController;
  v4 = [(PUNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
  v5 = v4;
  if (v4)
  {
    [(PUNavigationController *)v4 _commonPUNavigationControllerInitialization];
  }

  return v5;
}

@end