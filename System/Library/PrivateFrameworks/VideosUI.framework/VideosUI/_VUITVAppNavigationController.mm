@interface _VUITVAppNavigationController
- (UINavigationControllerDelegate)externalDelegate;
- (UIViewController)currentViewController;
- (_VUITVAppNavigationController)initWithRootViewController:(id)controller;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (id)vui_rootViewController;
- (void)_handleMaxStackDepth;
- (void)_notifyObserversOfViewControllerChange:(unint64_t)change animated:(BOOL)animated;
- (void)dismissAllModals:(id)modals;
- (void)loadView;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setDelegate:(id)delegate;
- (void)setMaxNavControllerStackDepth:(unint64_t)depth;
- (void)setTitle:(id)title;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
- (void)vui_addControllerObserver:(id)observer;
- (void)vui_removeControllerObserver:(id)observer;
- (void)vui_setViewControllers:(id)controllers animated:(BOOL)animated;
@end

@implementation _VUITVAppNavigationController

- (_VUITVAppNavigationController)initWithRootViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = _VUITVAppNavigationController;
  v3 = [(_VUITVAppNavigationController *)&v9 initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    v8.receiver = v3;
    v8.super_class = _VUITVAppNavigationController;
    [(_VUITVAppNavigationController *)&v8 setDelegate:v3];
    v4->_oldControllerCountBeforeTransition = 1;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v4->_observers;
    v4->_observers = weakObjectsHashTable;

    v4->_maxNavControllerStackDepth = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)setMaxNavControllerStackDepth:(unint64_t)depth
{
  v7 = *MEMORY[0x1E69E9840];
  if (depth < 3)
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      depthCopy = depth;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "_VUITVAppNavigationController:: New max navigation controller stack depth is ignored as the value %lu is less than the minimum stack depth.", &v5, 0xCu);
    }
  }

  else
  {
    self->_maxNavControllerStackDepth = depth;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = _VUITVAppNavigationController;
  [(_VUITVAppNavigationController *)&v6 viewWillAppear:appear];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    [(_VUITVAppNavigationController *)self setNavigationBarHidden:1];
  }
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy == self)
  {
    objc_storeWeak(&self->_externalDelegate, 0);
  }

  else
  {
    objc_storeWeak(&self->_externalDelegate, delegateCopy);
    if (delegateCopy)
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(_VUITVAppNavigationController *)self title];
  if (title)
  {
  }

  else
  {
    title2 = [(_VUITVAppNavigationController *)self title];

    if (title2 != titleCopy)
    {
      v7.receiver = self;
      v7.super_class = _VUITVAppNavigationController;
      [(_VUITVAppNavigationController *)&v7 setTitle:titleCopy];
    }
  }
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = _VUITVAppNavigationController;
  [(_VUITVAppNavigationController *)&v4 loadView];
  navigationBar = [(_VUITVAppNavigationController *)self navigationBar];
  [navigationBar _setHidesShadow:1];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [(_VUITVAppNavigationController *)self _handleMaxStackDepth];
  viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [viewControllers count];

  v8.receiver = self;
  v8.super_class = _VUITVAppNavigationController;
  [(_VUITVAppNavigationController *)&v8 pushViewController:controllerCopy animated:animatedCopy];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [viewControllers count];

  v8.receiver = self;
  v8.super_class = _VUITVAppNavigationController;
  v6 = [(_VUITVAppNavigationController *)&v8 popViewControllerAnimated:animatedCopy];

  return v6;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [viewControllers count];

  v10.receiver = self;
  v10.super_class = _VUITVAppNavigationController;
  v8 = [(_VUITVAppNavigationController *)&v10 popToViewController:controllerCopy animated:animatedCopy];

  return v8;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [viewControllers count];

  v8.receiver = self;
  v8.super_class = _VUITVAppNavigationController;
  v6 = [(_VUITVAppNavigationController *)&v8 popToRootViewControllerAnimated:animatedCopy];

  return v6;
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  controllersCopy = controllers;
  viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [viewControllers count];

  v8.receiver = self;
  v8.super_class = _VUITVAppNavigationController;
  [(_VUITVAppNavigationController *)&v8 setViewControllers:controllersCopy animated:animatedCopy];
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:controllerCopy];

  [(_VUITVAppNavigationController *)self _notifyObserversOfViewControllerChange:self->_oldControllerCountBeforeTransition animated:animatedCopy];
  viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [viewControllers count];

  externalDelegate = [(_VUITVAppNavigationController *)self externalDelegate];
  v12 = externalDelegate;
  if (externalDelegate && self->_externalDelegateImplementsDidShow)
  {
    [externalDelegate navigationController:controllerCopy didShowViewController:viewControllerCopy animated:animatedCopy];
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = MEMORY[0x1E696AD88];
  controllerCopy = controller;
  defaultCenter = [v7 defaultCenter];
  [defaultCenter postNotificationName:@"VUITVAppNavigationWillDisplayViewControllerNotification" object:controllerCopy];

  [(_VUITVAppNavigationController *)self _notifyObserversOfViewControllerChange:self->_oldControllerCountBeforeTransition animated:animatedCopy];
  viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
  self->_oldControllerCountBeforeTransition = [viewControllers count];
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  externalDelegate = [(_VUITVAppNavigationController *)self externalDelegate];
  v14 = externalDelegate;
  if (externalDelegate && self->_externalDelegateImplementsAnimationController)
  {
    v15 = [externalDelegate navigationController:controllerCopy animationControllerForOperation:operation fromViewController:viewControllerCopy toViewController:toViewControllerCopy];
LABEL_12:
    v17 = v15;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedViewController = [viewControllerCopy selectedViewController];
    v17 = [selectedViewController customAnimatorForNavigationControllerOperation:operation toViewController:toViewControllerCopy];
  }

  else
  {
    v17 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedViewController2 = [toViewControllerCopy selectedViewController];
    v19 = [selectedViewController2 customAnimatorForNavigationControllerOperation:operation fromViewController:viewControllerCopy];

    v17 = v19;
  }

  if (!v17)
  {
    v17 = [viewControllerCopy customAnimatorForNavigationControllerOperation:operation toViewController:toViewControllerCopy];
    if (!v17)
    {
      v15 = [toViewControllerCopy customAnimatorForNavigationControllerOperation:operation fromViewController:viewControllerCopy];
      goto LABEL_12;
    }
  }

LABEL_13:

  return v17;
}

- (UIViewController)currentViewController
{
  presentedViewController = [(_VUITVAppNavigationController *)self presentedViewController];
  v4 = presentedViewController;
  if (presentedViewController)
  {
    lastObject = presentedViewController;
  }

  else
  {
    viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
    lastObject = [viewControllers lastObject];
  }

  return lastObject;
}

- (void)dismissAllModals:(id)modals
{
  modalsCopy = modals;
  vuiPresentedViewController = [(_VUITVAppNavigationController *)self vuiPresentedViewController];

  if (vuiPresentedViewController)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50___VUITVAppNavigationController_dismissAllModals___block_invoke;
    v6[3] = &unk_1E872D7E0;
    v7 = modalsCopy;
    [(_VUITVAppNavigationController *)self dismissViewControllerAnimated:0 completion:v6];
  }

  else
  {
    modalsCopy[2](modalsCopy);
  }
}

- (void)vui_setViewControllers:(id)controllers animated:(BOOL)animated
{
  if (controllers)
  {
    [(_VUITVAppNavigationController *)self setViewControllers:controllers animated:animated];
  }
}

- (id)vui_rootViewController
{
  viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (void)vui_addControllerObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)vui_removeControllerObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_notifyObserversOfViewControllerChange:(unint64_t)change animated:(BOOL)animated
{
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81___VUITVAppNavigationController__notifyObserversOfViewControllerChange_animated___block_invoke;
  v10[3] = &unk_1E8732938;
  objc_copyWeak(v11, &location);
  v11[1] = change;
  animatedCopy = animated;
  v6 = _Block_copy(v10);
  v6[2](v6, v7, v8, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_handleMaxStackDepth
{
  viewControllers = [(_VUITVAppNavigationController *)self viewControllers];
  v3 = [viewControllers count];
  v4 = viewControllers;
  if (viewControllers && v3 >= 4 && v3 >= self->_maxNavControllerStackDepth)
  {
    v5 = objc_alloc(MEMORY[0x1E695DF70]);
    firstObject = [viewControllers firstObject];
    v7 = [v5 initWithObjects:{firstObject, 0}];

    v8 = [viewControllers subarrayWithRange:{2, v3 - 2}];
    [v7 addObjectsFromArray:v8];

    [(_VUITVAppNavigationController *)self setViewControllers:v7];
    v4 = viewControllers;
  }
}

- (UINavigationControllerDelegate)externalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_externalDelegate);

  return WeakRetained;
}

@end