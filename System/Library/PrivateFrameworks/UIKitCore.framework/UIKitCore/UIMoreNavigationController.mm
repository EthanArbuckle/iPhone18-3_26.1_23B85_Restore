@interface UIMoreNavigationController
- (UIMoreNavigationController)init;
- (UIViewController)displayedViewController;
- (id)_preparedViewController:(id)a3;
- (id)_resolvedTab;
- (id)_stateRestorationParentForChildViewController:(id)a3 index:(unint64_t *)a4;
- (void)_ensureChildrenHaveParentViewController;
- (void)_redisplayMoreTableView;
- (void)_restoreOriginalNavigationController;
- (void)_willChangeToIdiom:(int64_t)a3 onScreen:(id)a4;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)restoreOriginalNavigationControllerIfNecessary:(id)a3;
- (void)setDisplayedViewController:(id)a3;
- (void)setMoreViewControllers:(id)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
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
  v2 = [(UIViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 viewControllers];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [(UIViewController *)v8 _parentViewController];

          if (v8)
          {
            v10 = v9 == 0;
          }

          else
          {
            v10 = 0;
          }

          if (v10)
          {
            v11 = *(v8 + 384);
            *(v8 + 384) = v11 | 0x100;
            [v8 setParentViewController:v2];
            *(v8 + 384) = *(v8 + 384) & 0xFEFF | v11 & 0x100;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

- (id)_preparedViewController:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_originalNavigationController, a3);
      v6 = [v5 viewControllers];
      if (dyld_program_sdk_at_least())
      {
        [v6 firstObject];
      }

      else
      {
        [v6 lastObject];
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
      v13[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (void)restoreOriginalNavigationControllerIfNecessary:(id)a3
{
  if (self->_originalNavigationController == a3)
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
      v3 = [(UINavigationController *)self viewControllers];
      v4 = [v3 firstObject];
      moreListController = self->_moreListController;

      if (v4 == moreListController)
      {
        v6 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];

        v3 = v6;
      }

      if (![v3 count])
      {
        if (self->_originalRootViewController)
        {
          v19[0] = self->_originalRootViewController;
          v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

          v3 = v7;
        }

        else
        {

          v3 = MEMORY[0x1E695E0F0];
        }
      }

      v9 = [(UINavigationController *)self popToRootViewControllerAnimated:0];
    }

    else
    {
      if (self->_originalRootViewController)
      {
        originalRootViewController = self->_originalRootViewController;
        v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&originalRootViewController count:1];
      }

      else
      {
        v3 = MEMORY[0x1E695E0F0];
      }

      v8 = [(UINavigationController *)self popViewControllerAnimated:0];
    }

    v10 = [v3 lastObject];
    v11 = [v10 _existingView];
    v12 = [v11 superview];
    [v12 removeFromSuperview];

    originalNavigationController = self->_originalNavigationController;
    v14 = [(UIViewController *)self tabBarController];
    if (originalNavigationController)
    {
      v15 = *(&originalNavigationController->super._viewControllerFlags + 4);
      *(&originalNavigationController->super._viewControllerFlags + 4) = v15 | 0x100;
      [(UIViewController *)originalNavigationController setParentViewController:v14];
      *(&originalNavigationController->super._viewControllerFlags + 4) = *(&originalNavigationController->super._viewControllerFlags + 4) & 0xFEFF | v15 & 0x100;
    }

    [(UINavigationController *)self->_originalNavigationController setViewControllers:v3];
    v16 = self->_originalNavigationController;
    self->_originalNavigationController = 0;

    v17 = self->_originalRootViewController;
    self->_originalRootViewController = 0;
  }
}

- (UIViewController)displayedViewController
{
  v2 = self;
  v3 = v2;
  originalNavigationController = v2->_originalNavigationController;
  if (originalNavigationController)
  {
    v5 = originalNavigationController;
  }

  else
  {
    v6 = [(UINavigationController *)v2 viewControllers];
    v7 = [v6 count];

    if (v7 < 2)
    {
      goto LABEL_6;
    }

    v8 = [(UINavigationController *)v3 viewControllers];
    v5 = [(UIMoreNavigationController *)v8 objectAtIndex:1];

    v3 = v8;
  }

  v3 = v5;
LABEL_6:

  return v3;
}

- (void)setDisplayedViewController:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIMoreNavigationController *)self _restoreOriginalNavigationController];
  v5 = [(UIMoreNavigationController *)self _preparedViewController:v4];

  v8[0] = self->_moreListController;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = [v6 arrayByAddingObjectsFromArray:v5];
  [(UINavigationController *)self setViewControllers:v7];

  [UIApp _findBestActivityToMakeCurrent:self];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = [(UIMoreNavigationController *)self _preparedViewController:a3];
  if ([v6 count] == 1 || (dyld_program_sdk_at_least() & 1) == 0)
  {
    v8 = [v6 firstObject];
    if (!v8)
    {
LABEL_8:

      goto LABEL_9;
    }

    v9.receiver = self;
    v9.super_class = UIMoreNavigationController;
    [(UINavigationController *)&v9 pushViewController:v8 animated:v4];
LABEL_7:
    [UIApp _findBestActivityToMakeCurrent:self];
    goto LABEL_8;
  }

  if ([v6 count])
  {
    v10[0] = self->_moreListController;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [v7 arrayByAddingObjectsFromArray:v6];

    [(UINavigationController *)self setViewControllers:v8 animated:v4];
    goto LABEL_7;
  }

LABEL_9:
}

- (id)_stateRestorationParentForChildViewController:(id)a3 index:(unint64_t *)a4
{
  v6 = a3;
  v7 = [(UIMoreNavigationController *)self moreViewControllers];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = [(UIViewController *)self tabBarController];
    goto LABEL_9;
  }

  if (!self->_originalNavigationController || self->_moreListController == v6 || (-[UINavigationController viewControllers](self, "viewControllers"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:v6], v10, !v11))
  {
    v9 = 0;
LABEL_9:
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = self->_originalNavigationController;
  v12 = 0;
  if (a4)
  {
LABEL_10:
    *a4 = v12;
  }

LABEL_11:

  return v9;
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = UIMoreNavigationController;
  v6 = a3;
  [(UINavigationController *)&v8 didShowViewController:v6 animated:v4];
  moreListController = self->_moreListController;

  if (moreListController == v6)
  {
    [(UIMoreNavigationController *)self _restoreOriginalNavigationController:v8.receiver];
  }

  [(UIMoreNavigationController *)self _ensureChildrenHaveParentViewController:v8.receiver];
}

- (void)_redisplayMoreTableView
{
  v2 = [(UIMoreListController *)self->_moreListController table];
  [v2 reloadData];
}

- (void)_willChangeToIdiom:(int64_t)a3 onScreen:(id)a4
{
  v6.receiver = self;
  v6.super_class = UIMoreNavigationController;
  [(UIViewController *)&v6 _willChangeToIdiom:a3 onScreen:a4];
  [(UINavigationController *)self setNavigationBarHidden:a3 == 3 animated:0];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = UIMoreNavigationController;
  [(UINavigationController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (!a3)
  {
    if ([(UINavigationController *)self needsDeferredTransition])
    {
      [(UINavigationController *)self _startDeferredTransitionIfNeeded];
    }
  }
}

- (void)setMoreViewControllers:(id)a3
{
  [(UIMoreListController *)self->_moreListController setMoreViewControllers:a3];

  [(UIMoreNavigationController *)self _ensureChildrenHaveParentViewController];
}

- (id)_resolvedTab
{
  v2 = objc_alloc_init(_UIMoreTabElement);

  return v2;
}

@end