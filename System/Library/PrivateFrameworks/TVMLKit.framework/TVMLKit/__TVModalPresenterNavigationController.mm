@interface __TVModalPresenterNavigationController
- (BOOL)shouldAutorotate;
- (__TVModalPresenterNavigationController)initWithRootViewController:(id)controller;
- (id)activeDocument;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)_dismissForLastViewController:(BOOL)controller;
- (void)_ensureNavigationBarHiddenSafelyForViewSize:(CGSize)size;
- (void)didShowViewController:(id)controller animated:(BOOL)animated;
- (void)popViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)pushViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)reset;
- (void)updatePreferredFocusedViewStateForFocus:(BOOL)focus;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation __TVModalPresenterNavigationController

- (__TVModalPresenterNavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = __TVModalPresenterNavigationController;
  v6 = [(__TVModalPresenterNavigationController *)&v15 initWithRootViewController:controllerCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootViewController, controller);
    v8 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0x10000];
    pushCompletionBlocks = v7->_pushCompletionBlocks;
    v7->_pushCompletionBlocks = v8;

    v10 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0x10000];
    popCompletionBlocks = v7->_popCompletionBlocks;
    v7->_popCompletionBlocks = v10;

    [(__TVModalPresenterNavigationController *)v7 setNavigationBarHidden:1 animated:0];
    navigationBar = [(__TVModalPresenterNavigationController *)v7 navigationBar];
    [navigationBar setPrefersLargeTitles:1];

    navigationBar2 = [(__TVModalPresenterNavigationController *)v7 navigationBar];
    [navigationBar2 _setHidesShadow:1];
  }

  return v7;
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  childViewControllers = [(__TVModalPresenterNavigationController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  return lastObject;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v6 viewDidLayoutSubviews];
  view = [(__TVModalPresenterNavigationController *)self view];
  [view frame];
  [(__TVModalPresenterNavigationController *)self _ensureNavigationBarHiddenSafelyForViewSize:v4, v5];
}

- (void)_ensureNavigationBarHiddenSafelyForViewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  topViewController = [(__TVModalPresenterNavigationController *)self topViewController];
  v13 = objc_getAssociatedObject(topViewController, "TVMLPresenterConfiguration");

  v8 = v13;
  if (v13)
  {
    navigationBarHidden = [v13 navigationBarHidden];
    v8 = v13;
    if (navigationBarHidden)
    {
      configurationType = [v13 configurationType];
      v8 = v13;
      if (configurationType == 1 || (navigationBarHidden = [v13 configurationType], v8 = v13, navigationBarHidden == 3))
      {
        if ([v8 configurationType] == 1)
        {
          [v13 formSheetSize];
        }

        else
        {
          [v13 popoverSize];
        }

        if (width == v10 && height == v11 || ([v13 navigationBarHidden] & 1) == 0)
        {
          navigationBarHidden2 = [v13 navigationBarHidden];
        }

        else
        {
          navigationBarHidden2 = 0;
        }

        navigationBarHidden = [(__TVModalPresenterNavigationController *)self setNavigationBarHidden:navigationBarHidden2];
        v8 = v13;
      }
    }
  }

  MEMORY[0x2821F96F8](navigationBarHidden, v8);
}

- (void)pushViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  if (completion)
  {
    pushCompletionBlocks = self->_pushCompletionBlocks;
    v9 = MEMORY[0x26D6AFBB0](completion);
    [(NSMapTable *)pushCompletionBlocks setObject:v9 forKey:controllerCopy];
  }

  [(__TVModalPresenterNavigationController *)self pushViewController:controllerCopy animated:animatedCopy];
}

- (void)popViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if (completion)
  {
    popCompletionBlocks = self->_popCompletionBlocks;
    v7 = MEMORY[0x26D6AFBB0](completion, a2);
    viewControllers = [(__TVModalPresenterNavigationController *)self viewControllers];
    lastObject = [viewControllers lastObject];
    [(NSMapTable *)popCompletionBlocks setObject:v7 forKey:lastObject];
  }

  v10 = [(__TVModalPresenterNavigationController *)self popViewControllerAnimated:animatedCopy];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllers = [(__TVModalPresenterNavigationController *)self viewControllers];
  v8 = [viewControllers count];

  if (v8 == 1)
  {
    navigationItem = [controllerCopy navigationItem];
    [navigationItem setHidesBackButton:1];
  }

  viewControllers2 = [(__TVModalPresenterNavigationController *)self viewControllers];
  [(__TVModalPresenterNavigationController *)self setPreviousViewControllers:viewControllers2];

  v11.receiver = self;
  v11.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v11 pushViewController:controllerCopy animated:animatedCopy];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllers = [(__TVModalPresenterNavigationController *)self viewControllers];
  [(__TVModalPresenterNavigationController *)self setPreviousViewControllers:viewControllers];

  viewControllers2 = [(__TVModalPresenterNavigationController *)self viewControllers];
  v7 = [viewControllers2 count];

  if (v7 == 2)
  {
    [(__TVModalPresenterNavigationController *)self _dismissForLastViewController:animatedCopy];
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = __TVModalPresenterNavigationController;
    v8 = [(__TVModalPresenterNavigationController *)&v10 popViewControllerAnimated:animatedCopy];
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)appear
{
  self->_isModalNavVisisble = 1;
  v3.receiver = self;
  v3.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v5 viewDidAppear:appear];
  interactivePopGestureRecognizer = [(__TVModalPresenterNavigationController *)self interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setEnabled:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([(__TVModalPresenterNavigationController *)self isBeingDismissed])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    delegate = [mEMORY[0x277D75128] delegate];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [delegate setOverrideOrientation:0];
    }

    self->_isModalNavVisisble = 0;
  }

  v7.receiver = self;
  v7.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v6 viewDidDisappear:disappear];
  if (!self->_isModalNavVisisble)
  {
    dismissalBlock = [(__TVModalPresenterNavigationController *)self dismissalBlock];

    if (dismissalBlock)
    {
      dismissalBlock2 = [(__TVModalPresenterNavigationController *)self dismissalBlock];
      dismissalBlock2[2]();

      [(__TVModalPresenterNavigationController *)self setDismissalBlock:0];
    }
  }
}

- (void)reset
{
  v4[1] = *MEMORY[0x277D85DE8];
  [(NSMapTable *)self->_popCompletionBlocks removeAllObjects];
  [(NSMapTable *)self->_pushCompletionBlocks removeAllObjects];
  v4[0] = self->_rootViewController;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [(__TVModalPresenterNavigationController *)self setViewControllers:v3];

  [(__TVModalPresenterNavigationController *)self setPreviousViewControllers:0];
}

- (BOOL)shouldAutorotate
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice userInterfaceIdiom] == 1 || self->_isModalNavVisisble;

  return v4;
}

- (void)didShowViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  previousViewControllers = [(__TVModalPresenterNavigationController *)self previousViewControllers];
  viewControllers = [(__TVModalPresenterNavigationController *)self viewControllers];
  if (([previousViewControllers containsObject:controllerCopy] & 1) == 0 && (objc_msgSend(viewControllers, "lastObject"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == controllerCopy))
  {
    v10 = [(NSMapTable *)self->_pushCompletionBlocks objectForKey:controllerCopy];
    [(NSMapTable *)self->_pushCompletionBlocks removeObjectForKey:controllerCopy];
  }

  else
  {
    popCompletionBlocks = self->_popCompletionBlocks;
    lastObject = [previousViewControllers lastObject];
    v10 = [(NSMapTable *)popCompletionBlocks objectForKey:lastObject];

    v11 = self->_popCompletionBlocks;
    lastObject2 = [previousViewControllers lastObject];
    [(NSMapTable *)v11 removeObjectForKey:lastObject2];
  }

  [(__TVModalPresenterNavigationController *)self setPreviousViewControllers:0];
  if (v10)
  {
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

- (void)_dismissForLastViewController:(BOOL)controller
{
  controllerCopy = controller;
  previousViewControllers = [(__TVModalPresenterNavigationController *)self previousViewControllers];
  lastObject = [previousViewControllers lastObject];

  v6 = [(NSMapTable *)self->_popCompletionBlocks objectForKey:lastObject];
  v7 = +[_TVModalPresenter presenter];
  [v7 _dismissAnimated:controllerCopy completion:v6];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVModalPresenterDismissedNotification" object:0];
}

- (void)updatePreferredFocusedViewStateForFocus:(BOOL)focus
{
  focusCopy = focus;
  childViewControllers = [(__TVModalPresenterNavigationController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  if ([lastObject conformsToProtocol:&unk_287E7C098])
  {
    [lastObject updatePreferredFocusedViewStateForFocus:focusCopy];
  }
}

- (id)activeDocument
{
  topViewController = [(__TVModalPresenterNavigationController *)self topViewController];
  if ([topViewController conformsToProtocol:&unk_287E7C190])
  {
    v3 = topViewController;
  }

  else
  {
    v3 = 0;
  }

  activeDocument = [v3 activeDocument];

  return activeDocument;
}

@end