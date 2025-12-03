@interface UIMoreNavigationController
- (UIMoreNavigationController)init;
- (UIViewController)displayedViewController;
- (id)_preparedViewController:(id)controller;
- (id)_resolvedTab;
- (id)_stateRestorationParentForChildViewController:(id)controller index:(unint64_t *)index;
- (void)_ensureChildrenHaveParentViewController;
- (void)_redisplayMoreTableView;
- (void)_restoreOriginalNavigationController;
- (void)_willChangeToIdiom:(int64_t)idiom onScreen:(id)screen;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)restoreOriginalNavigationControllerIfNecessary:(id)necessary;
- (void)setDisplayedViewController:(id)controller;
- (void)setMoreViewControllers:(id)controllers;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation UIMoreNavigationController

- (UIMoreNavigationController)init
{
  v6.receiver = self;
  v6.super_class = UIMoreNavigationController;
  v2 = [(UIViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init([objc_opt_class() _moreListControllerClass]);
    moreListController = v2->_moreListController;
    v2->_moreListController = v3;

    [(UIMoreNavigationController *)v2 pushViewController:v2->_moreListController animated:0];
  }

  return v2;
}

- (void)_ensureChildrenHaveParentViewController
{
  v17 = *MEMORY[0x1E69E9840];
  parentViewController = [(UIViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    viewControllers = [parentViewController viewControllers];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(viewControllers);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          _parentViewController = [(UIViewController *)v8 _parentViewController];

          if (v8)
          {
            v10 = _parentViewController == 0;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            v11 = *(v8 + 384);
            *(v8 + 384) = v11 | 0x100;
            [v8 setParentViewController:parentViewController];
            *(v8 + 384) = *(v8 + 384) & 0xFEFF | v11 & 0x100;
          }
        }

        v5 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

- (id)_preparedViewController:(id)controller
{
  v13[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (controllerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_originalNavigationController, controller);
      viewControllers = [controllerCopy viewControllers];
      if (dyld_program_sdk_at_least())
      {
        [viewControllers firstObject];
      }

      else
      {
        [viewControllers lastObject];
      }
      v7 = ;
      originalRootViewController = self->_originalRootViewController;
      self->_originalRootViewController = v7;

      originalNavigationController = self->_originalNavigationController;
      if (originalNavigationController)
      {
        v10 = *(&originalNavigationController->super._viewControllerFlags + 4);
        *(&originalNavigationController->super._viewControllerFlags + 4) = v10 | 0x100;
        [(UIViewController *)originalNavigationController setParentViewController:0];
        *(&originalNavigationController->super._viewControllerFlags + 4) = *(&originalNavigationController->super._viewControllerFlags + 4) & 0xFEFF | v10 & 0x100;
        v11 = self->_originalNavigationController;
      }

      else
      {
        v11 = 0;
      }

      [(UINavigationController *)v11 setViewControllers:MEMORY[0x1E695E0F0]];
    }

    else
    {
      v13[0] = controllerCopy;
      viewControllers = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }
  }

  else
  {
    viewControllers = MEMORY[0x1E695E0F0];
  }

  return viewControllers;
}

- (void)restoreOriginalNavigationControllerIfNecessary:(id)necessary
{
  if (self->_originalNavigationController == necessary)
  {
    [(UIMoreNavigationController *)self _restoreOriginalNavigationController];
  }
}

- (void)_restoreOriginalNavigationController
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (self->_originalNavigationController)
  {
    if (dyld_program_sdk_at_least())
    {
      viewControllers = [(UINavigationController *)self viewControllers];
      firstObject = [viewControllers firstObject];
      moreListController = self->_moreListController;

      if (firstObject == moreListController)
      {
        v6 = [viewControllers subarrayWithRange:{1, objc_msgSend(viewControllers, "count") - 1}];

        viewControllers = v6;
      }

      if (![viewControllers count])
      {
        if (self->_originalRootViewController)
        {
          v19[0] = self->_originalRootViewController;
          v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

          viewControllers = v7;
        }

        else
        {

          viewControllers = MEMORY[0x1E695E0F0];
        }
      }

      v9 = [(UINavigationController *)self popToRootViewControllerAnimated:0];
    }

    else
    {
      if (self->_originalRootViewController)
      {
        originalRootViewController = self->_originalRootViewController;
        viewControllers = [MEMORY[0x1E695DEC8] arrayWithObjects:&originalRootViewController count:1];
      }

      else
      {
        viewControllers = MEMORY[0x1E695E0F0];
      }

      v8 = [(UINavigationController *)self popViewControllerAnimated:0];
    }

    lastObject = [viewControllers lastObject];
    _existingView = [lastObject _existingView];
    superview = [_existingView superview];
    [superview removeFromSuperview];

    originalNavigationController = self->_originalNavigationController;
    tabBarController = [(UIViewController *)self tabBarController];
    if (originalNavigationController)
    {
      v15 = *(&originalNavigationController->super._viewControllerFlags + 4);
      *(&originalNavigationController->super._viewControllerFlags + 4) = v15 | 0x100;
      [(UIViewController *)originalNavigationController setParentViewController:tabBarController];
      *(&originalNavigationController->super._viewControllerFlags + 4) = *(&originalNavigationController->super._viewControllerFlags + 4) & 0xFEFF | v15 & 0x100;
    }

    [(UINavigationController *)self->_originalNavigationController setViewControllers:viewControllers];
    v16 = self->_originalNavigationController;
    self->_originalNavigationController = 0;

    v17 = self->_originalRootViewController;
    self->_originalRootViewController = 0;
  }
}

- (UIViewController)displayedViewController
{
  selfCopy = self;
  v3 = selfCopy;
  originalNavigationController = selfCopy->_originalNavigationController;
  if (originalNavigationController)
  {
    v5 = originalNavigationController;
  }

  else
  {
    viewControllers = [(UINavigationController *)selfCopy viewControllers];
    v7 = [viewControllers count];

    if (v7 < 2)
    {
      goto LABEL_6;
    }

    viewControllers2 = [(UINavigationController *)v3 viewControllers];
    v5 = [(UIMoreNavigationController *)viewControllers2 objectAtIndex:1];

    v3 = viewControllers2;
  }

  v3 = v5;
LABEL_6:

  return v3;
}

- (void)setDisplayedViewController:(id)controller
{
  v8[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  [(UIMoreNavigationController *)self _restoreOriginalNavigationController];
  v5 = [(UIMoreNavigationController *)self _preparedViewController:controllerCopy];

  v8[0] = self->_moreListController;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:v5];
  [(UINavigationController *)self setViewControllers:v7];

  [UIApp _findBestActivityToMakeCurrent:self];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = [(UIMoreNavigationController *)self _preparedViewController:controller];
  if ([v6 count] == 1 || (dyld_program_sdk_at_least() & 1) == 0)
  {
    firstObject = [v6 firstObject];
    if (!firstObject)
    {
LABEL_8:

      goto LABEL_9;
    }

    v9.receiver = self;
    v9.super_class = UIMoreNavigationController;
    [(UINavigationController *)&v9 pushViewController:firstObject animated:animatedCopy];
LABEL_7:
    [UIApp _findBestActivityToMakeCurrent:self];
    goto LABEL_8;
  }

  if ([v6 count])
  {
    v10[0] = self->_moreListController;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    firstObject = [v7 arrayByAddingObjectsFromArray:v6];

    [(UINavigationController *)self setViewControllers:firstObject animated:animatedCopy];
    goto LABEL_7;
  }

LABEL_9:
}

- (id)_stateRestorationParentForChildViewController:(id)controller index:(unint64_t *)index
{
  controllerCopy = controller;
  moreViewControllers = [(UIMoreNavigationController *)self moreViewControllers];
  v8 = [moreViewControllers containsObject:controllerCopy];

  if (v8)
  {
    tabBarController = [(UIViewController *)self tabBarController];
    goto LABEL_9;
  }

  if (!self->_originalNavigationController || self->_moreListController == controllerCopy || (-[UINavigationController viewControllers](self, "viewControllers"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:controllerCopy], v10, !v11))
  {
    tabBarController = 0;
LABEL_9:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!index)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  tabBarController = self->_originalNavigationController;
  v12 = 0;
  if (index)
  {
LABEL_10:
    *index = v12;
  }

LABEL_11:

  return tabBarController;
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = UIMoreNavigationController;
  controllerCopy = controller;
  [(UINavigationController *)&v8 didShowViewController:controllerCopy animated:animatedCopy];
  moreListController = self->_moreListController;

  if (moreListController == controllerCopy)
  {
    [(UIMoreNavigationController *)self _restoreOriginalNavigationController:v8.receiver];
  }

  [(UIMoreNavigationController *)self _ensureChildrenHaveParentViewController:v8.receiver];
}

- (void)_redisplayMoreTableView
{
  table = [(UIMoreListController *)self->_moreListController table];
  [table reloadData];
}

- (void)_willChangeToIdiom:(int64_t)idiom onScreen:(id)screen
{
  v6.receiver = self;
  v6.super_class = UIMoreNavigationController;
  [(UIViewController *)&v6 _willChangeToIdiom:idiom onScreen:screen];
  [(UINavigationController *)self setNavigationBarHidden:idiom == 3 animated:0];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = UIMoreNavigationController;
  [(UINavigationController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (!window)
  {
    if ([(UINavigationController *)self needsDeferredTransition])
    {
      [(UINavigationController *)self _startDeferredTransitionIfNeeded];
    }
  }
}

- (void)setMoreViewControllers:(id)controllers
{
  [(UIMoreListController *)self->_moreListController setMoreViewControllers:controllers];

  [(UIMoreNavigationController *)self _ensureChildrenHaveParentViewController];
}

- (id)_resolvedTab
{
  v2 = objc_alloc_init(_UIMoreTabElement);

  return v2;
}

@end