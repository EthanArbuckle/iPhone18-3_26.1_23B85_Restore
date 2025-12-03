@interface SUMoreNavigationController
- (BOOL)window:(id)window shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (SUMoreNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (id)copyScriptViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUMoreNavigationController

- (SUMoreNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = SUMoreNavigationController;
  v4 = [(SUMoreNavigationController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [(SUMoreNavigationController *)v4 setNavigationBarClass:objc_opt_class()];
  }

  return v4;
}

- (id)copyScriptViewController
{
  v3 = objc_alloc_init(SUScriptNavigationController);
  [(SUScriptViewController *)v3 setNativeViewController:self];
  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    return 30;
  }

  if (SUAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  tabBarController = [(SUMoreNavigationController *)self tabBarController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(objc_msgSend(tabBarController "clientInterface")];
  }

  v6.receiver = self;
  v6.super_class = SUMoreNavigationController;
  [(SUMoreNavigationController *)&v6 viewWillAppear:appearCopy];
}

- (BOOL)window:(id)window shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v11.receiver = self;
  v11.super_class = SUMoreNavigationController;
  v7 = [SUMoreNavigationController window:sel_window_shouldAutorotateToInterfaceOrientation_ shouldAutorotateToInterfaceOrientation:?];
  topViewController = [(SUMoreNavigationController *)self topViewController];
  if (v7)
  {
    v9 = topViewController == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    LOBYTE(v7) = [topViewController window:window shouldAutorotateToInterfaceOrientation:orientation];
  }

  return v7;
}

@end