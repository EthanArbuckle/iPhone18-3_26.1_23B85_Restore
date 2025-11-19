@interface _VUITVAppNavigationController
- (UINavigationControllerDelegate)externalDelegate;
- (UIViewController)currentViewController;
- (_VUITVAppNavigationController)initWithRootViewController:(id)a3;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (id)vui_rootViewController;
- (void)_handleMaxStackDepth;
- (void)_notifyObserversOfViewControllerChange:(unint64_t)a3 animated:(BOOL)a4;
- (void)dismissAllModals:(id)a3;
- (void)loadView;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setDelegate:(id)a3;
- (void)setMaxNavControllerStackDepth:(unint64_t)a3;
- (void)setTitle:(id)a3;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)vui_addControllerObserver:(id)a3;
- (void)vui_removeControllerObserver:(id)a3;
- (void)vui_setViewControllers:(id)a3 animated:(BOOL)a4;
@end

@implementation _VUITVAppNavigationController

- (_VUITVAppNavigationController)initWithRootViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = _VUITVAppNavigationController;
  v3 = [(_VUITVAppNavigationController *)&v9 initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = _VUITVAppNavigationController;
    [(_VUITVAppNavigationController *)&v8 setDelegate:v3];
    v4->_oldControllerCountBeforeTransition = 1;
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v4->_observers;
    v4->_observers = v5;

    v4->_maxNavControllerStackDepth = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)setMaxNavControllerStackDepth:(unint64_t)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3 < 3)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = a3;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "_VUITVAppNavigationController:: New max navigation controller stack depth is ignored as the value %lu is less than the minimum stack depth.", &v5, 0xCu);
    }
  }

  else
  {
    self->_maxNavControllerStackDepth = a3;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _VUITVAppNavigationController;
  [(_VUITVAppNavigationController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 2)
  {
    [(_VUITVAppNavigationController *)self setNavigationBarHidden:1];
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    objc_storeWeak(&self->_externalDelegate, 0);
  }

  else
  {
    objc_storeWeak(&self->_externalDelegate, v4);
    if (v4)
    {
      self->_externalDelegateImplementsDidShow = objc_opt_respondsToSelector() & 1;
      self->_externalDelegateImplementsAnimationController = objc_opt_respondsToSelector() & 1;
    }

    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_VUITVAppNavigationController setDelegate:v5];
    }
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(_VUITVAppNavigationController *)self title];
  if (v5)
  {
  }

  else
  {
    v6 = [(_VUITVAppNavigationController *)self title];

    if (v6 != v4)
    {
      v7.receiver = self;
      v7.super_class = _VUITVAppNavigationController;
      [(_VUITVAppNavigationController *)&v7 setTitle:v4];
    }
  }
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = _VUITVAppNavigationController;
  [(_VUITVAppNavigationController *)&v4 loadView];
  v3 = [(_VUITVAppNavigationController *)self navigationBar];
  [v3 _setHidesShadow:1];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(_VUITVAppNavigationController *)self _handleMaxStackDepth];
  v7 = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [v7 count];

  v8.receiver = self;
  v8.super_class = _VUITVAppNavigationController;
  [(_VUITVAppNavigationController *)&v8 pushViewController:v6 animated:v4];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [v5 count];

  v8.receiver = self;
  v8.super_class = _VUITVAppNavigationController;
  v6 = [(_VUITVAppNavigationController *)&v8 popViewControllerAnimated:v3];

  return v6;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [v7 count];

  v10.receiver = self;
  v10.super_class = _VUITVAppNavigationController;
  v8 = [(_VUITVAppNavigationController *)&v10 popToViewController:v6 animated:v4];

  return v8;
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [v5 count];

  v8.receiver = self;
  v8.super_class = _VUITVAppNavigationController;
  v6 = [(_VUITVAppNavigationController *)&v8 popToRootViewControllerAnimated:v3];

  return v6;
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [v7 count];

  v8.receiver = self;
  v8.super_class = _VUITVAppNavigationController;
  [(_VUITVAppNavigationController *)&v8 setViewControllers:v6 animated:v4];
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 postNotificationName:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:v13];

  [(_VUITVAppNavigationController *)self _notifyObserversOfViewControllerChange:self->_oldControllerCountBeforeTransition animated:v5];
  v10 = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [v10 count];

  v11 = [(_VUITVAppNavigationController *)self externalDelegate];
  v12 = v11;
  if (v11 && self->_externalDelegateImplementsDidShow)
  {
    [v11 navigationController:v13 didShowViewController:v8 animated:v5];
  }
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v7 = MEMORY[0x1E696AD88];
  v8 = a3;
  v9 = [v7 defaultCenter];
  [v9 postNotificationName:@"VUITVAppNavigationWillDisplayViewControllerNotification" object:v8];

  [(_VUITVAppNavigationController *)self _notifyObserversOfViewControllerChange:self->_oldControllerCountBeforeTransition animated:v5];
  v10 = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [v10 count];
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(_VUITVAppNavigationController *)self externalDelegate];
  v14 = v13;
  if (v13 && self->_externalDelegateImplementsAnimationController)
  {
    v15 = [v13 navigationController:v10 animationControllerForOperation:a4 fromViewController:v11 toViewController:v12];
LABEL_12:
    v17 = v15;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v11 selectedViewController];
    v17 = [v16 customAnimatorForNavigationControllerOperation:a4 toViewController:v12];
  }

  else
  {
    v17 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v12 selectedViewController];
    v19 = [v18 customAnimatorForNavigationControllerOperation:a4 fromViewController:v11];

    v17 = v19;
  }

  if (!v17)
  {
    v17 = [v11 customAnimatorForNavigationControllerOperation:a4 toViewController:v12];
    if (!v17)
    {
      v15 = [v12 customAnimatorForNavigationControllerOperation:a4 fromViewController:v11];
      goto LABEL_12;
    }
  }

LABEL_13:

  return v17;
}

- (UIViewController)currentViewController
{
  v3 = [(_VUITVAppNavigationController *)self presentedViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_VUITVAppNavigationController *)self viewControllers];
    v5 = [v6 lastObject];
  }

  return v5;
}

- (void)dismissAllModals:(id)a3
{
  v4 = a3;
  v5 = [(_VUITVAppNavigationController *)self vuiPresentedViewController];

  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50___VUITVAppNavigationController_dismissAllModals___block_invoke;
    v6[3] = &unk_1E872D7E0;
    v7 = v4;
    [(_VUITVAppNavigationController *)self dismissViewControllerAnimated:0 completion:v6];
  }

  else
  {
    v4[2](v4);
  }
}

- (void)vui_setViewControllers:(id)a3 animated:(BOOL)a4
{
  if (a3)
  {
    [(_VUITVAppNavigationController *)self setViewControllers:a3 animated:a4];
  }
}

- (id)vui_rootViewController
{
  v2 = [(_VUITVAppNavigationController *)self viewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (void)vui_addControllerObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)vui_removeControllerObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_notifyObserversOfViewControllerChange:(unint64_t)a3 animated:(BOOL)a4
{
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81___VUITVAppNavigationController__notifyObserversOfViewControllerChange_animated___block_invoke;
  v10[3] = &unk_1E8732938;
  objc_copyWeak(v11, &location);
  v11[1] = a3;
  v12 = a4;
  v6 = _Block_copy(v10);
  v6[2](v6, v7, v8, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_handleMaxStackDepth
{
  v9 = [(_VUITVAppNavigationController *)self viewControllers];
  v3 = [v9 count];
  v4 = v9;
  if (v9 && v3 >= 4 && v3 >= self->_maxNavControllerStackDepth)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    v6 = [v9 firstObject];
    v7 = [v5 initWithObjects:{v6, 0}];

    v8 = [v9 subarrayWithRange:{2, v3 - 2}];
    [v7 addObjectsFromArray:v8];

    [(_VUITVAppNavigationController *)self setViewControllers:v7];
    v4 = v9;
  }
}

- (UINavigationControllerDelegate)externalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_externalDelegate);

  return WeakRetained;
}

@end