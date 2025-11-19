@interface __TVModalPresenterNavigationController
- (BOOL)shouldAutorotate;
- (__TVModalPresenterNavigationController)initWithRootViewController:(id)a3;
- (id)activeDocument;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)popViewControllerAnimated:(BOOL)a3;
- (void)_dismissForLastViewController:(BOOL)a3;
- (void)_ensureNavigationBarHiddenSafelyForViewSize:(CGSize)a3;
- (void)didShowViewController:(id)a3 animated:(BOOL)a4;
- (void)popViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)reset;
- (void)updatePreferredFocusedViewStateForFocus:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation __TVModalPresenterNavigationController

- (__TVModalPresenterNavigationController)initWithRootViewController:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = __TVModalPresenterNavigationController;
  v6 = [(__TVModalPresenterNavigationController *)&v15 initWithRootViewController:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootViewController, a3);
    v8 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0x10000];
    pushCompletionBlocks = v7->_pushCompletionBlocks;
    v7->_pushCompletionBlocks = v8;

    v10 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0x10000];
    popCompletionBlocks = v7->_popCompletionBlocks;
    v7->_popCompletionBlocks = v10;

    [(__TVModalPresenterNavigationController *)v7 setNavigationBarHidden:1 animated:0];
    v12 = [(__TVModalPresenterNavigationController *)v7 navigationBar];
    [v12 setPrefersLargeTitles:1];

    v13 = [(__TVModalPresenterNavigationController *)v7 navigationBar];
    [v13 _setHidesShadow:1];
  }

  return v7;
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = [(__TVModalPresenterNavigationController *)self childViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v6 viewDidLayoutSubviews];
  v3 = [(__TVModalPresenterNavigationController *)self view];
  [v3 frame];
  [(__TVModalPresenterNavigationController *)self _ensureNavigationBarHiddenSafelyForViewSize:v4, v5];
}

- (void)_ensureNavigationBarHiddenSafelyForViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(__TVModalPresenterNavigationController *)self topViewController];
  v13 = objc_getAssociatedObject(v6, "TVMLPresenterConfiguration");

  v8 = v13;
  if (v13)
  {
    v7 = [v13 navigationBarHidden];
    v8 = v13;
    if (v7)
    {
      v9 = [v13 configurationType];
      v8 = v13;
      if (v9 == 1 || (v7 = [v13 configurationType], v8 = v13, v7 == 3))
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
          v12 = [v13 navigationBarHidden];
        }

        else
        {
          v12 = 0;
        }

        v7 = [(__TVModalPresenterNavigationController *)self setNavigationBarHidden:v12];
        v8 = v13;
      }
    }
  }

  MEMORY[0x2821F96F8](v7, v8);
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v10 = a3;
  if (a5)
  {
    pushCompletionBlocks = self->_pushCompletionBlocks;
    v9 = MEMORY[0x26D6AFBB0](a5);
    [(NSMapTable *)pushCompletionBlocks setObject:v9 forKey:v10];
  }

  [(__TVModalPresenterNavigationController *)self pushViewController:v10 animated:v6];
}

- (void)popViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  if (a4)
  {
    popCompletionBlocks = self->_popCompletionBlocks;
    v7 = MEMORY[0x26D6AFBB0](a4, a2);
    v8 = [(__TVModalPresenterNavigationController *)self viewControllers];
    v9 = [v8 lastObject];
    [(NSMapTable *)popCompletionBlocks setObject:v7 forKey:v9];
  }

  v10 = [(__TVModalPresenterNavigationController *)self popViewControllerAnimated:v4];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(__TVModalPresenterNavigationController *)self viewControllers];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [v6 navigationItem];
    [v9 setHidesBackButton:1];
  }

  v10 = [(__TVModalPresenterNavigationController *)self viewControllers];
  [(__TVModalPresenterNavigationController *)self setPreviousViewControllers:v10];

  v11.receiver = self;
  v11.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v11 pushViewController:v6 animated:v4];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(__TVModalPresenterNavigationController *)self viewControllers];
  [(__TVModalPresenterNavigationController *)self setPreviousViewControllers:v5];

  v6 = [(__TVModalPresenterNavigationController *)self viewControllers];
  v7 = [v6 count];

  if (v7 == 2)
  {
    [(__TVModalPresenterNavigationController *)self _dismissForLastViewController:v3];
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = __TVModalPresenterNavigationController;
    v8 = [(__TVModalPresenterNavigationController *)&v10 popViewControllerAnimated:v3];
  }

  return v8;
}

- (void)viewWillAppear:(BOOL)a3
{
  self->_isModalNavVisisble = 1;
  v3.receiver = self;
  v3.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v5 viewDidAppear:a3];
  v4 = [(__TVModalPresenterNavigationController *)self interactivePopGestureRecognizer];
  [v4 setEnabled:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if ([(__TVModalPresenterNavigationController *)self isBeingDismissed])
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    v6 = [v5 delegate];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setOverrideOrientation:0];
    }

    self->_isModalNavVisisble = 0;
  }

  v7.receiver = self;
  v7.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v7 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = __TVModalPresenterNavigationController;
  [(__TVModalPresenterNavigationController *)&v6 viewDidDisappear:a3];
  if (!self->_isModalNavVisisble)
  {
    v4 = [(__TVModalPresenterNavigationController *)self dismissalBlock];

    if (v4)
    {
      v5 = [(__TVModalPresenterNavigationController *)self dismissalBlock];
      v5[2]();

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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom] == 1 || self->_isModalNavVisisble;

  return v4;
}

- (void)didShowViewController:(id)a3 animated:(BOOL)a4
{
  v13 = a3;
  v5 = [(__TVModalPresenterNavigationController *)self previousViewControllers];
  v6 = [(__TVModalPresenterNavigationController *)self viewControllers];
  if (([v5 containsObject:v13] & 1) == 0 && (objc_msgSend(v6, "lastObject"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v13))
  {
    v10 = [(NSMapTable *)self->_pushCompletionBlocks objectForKey:v13];
    [(NSMapTable *)self->_pushCompletionBlocks removeObjectForKey:v13];
  }

  else
  {
    popCompletionBlocks = self->_popCompletionBlocks;
    v9 = [v5 lastObject];
    v10 = [(NSMapTable *)popCompletionBlocks objectForKey:v9];

    v11 = self->_popCompletionBlocks;
    v12 = [v5 lastObject];
    [(NSMapTable *)v11 removeObjectForKey:v12];
  }

  [(__TVModalPresenterNavigationController *)self setPreviousViewControllers:0];
  if (v10)
  {
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

- (void)_dismissForLastViewController:(BOOL)a3
{
  v3 = a3;
  v5 = [(__TVModalPresenterNavigationController *)self previousViewControllers];
  v9 = [v5 lastObject];

  v6 = [(NSMapTable *)self->_popCompletionBlocks objectForKey:v9];
  v7 = +[_TVModalPresenter presenter];
  [v7 _dismissAnimated:v3 completion:v6];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"TVModalPresenterDismissedNotification" object:0];
}

- (void)updatePreferredFocusedViewStateForFocus:(BOOL)a3
{
  v3 = a3;
  v4 = [(__TVModalPresenterNavigationController *)self childViewControllers];
  v5 = [v4 lastObject];

  if ([v5 conformsToProtocol:&unk_287E7C098])
  {
    [v5 updatePreferredFocusedViewStateForFocus:v3];
  }
}

- (id)activeDocument
{
  v2 = [(__TVModalPresenterNavigationController *)self topViewController];
  if ([v2 conformsToProtocol:&unk_287E7C190])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 activeDocument];

  return v4;
}

@end