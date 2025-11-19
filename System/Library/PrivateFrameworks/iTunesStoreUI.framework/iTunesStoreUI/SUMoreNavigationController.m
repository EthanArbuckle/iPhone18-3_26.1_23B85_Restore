@interface SUMoreNavigationController
- (BOOL)window:(id)a3 shouldAutorotateToInterfaceOrientation:(int64_t)a4;
- (SUMoreNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)copyScriptViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUMoreNavigationController

- (SUMoreNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = SUMoreNavigationController;
  v4 = [(SUMoreNavigationController *)&v6 initWithNibName:a3 bundle:a4];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUMoreNavigationController *)self tabBarController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(objc_msgSend(v5 "clientInterface")];
  }

  v6.receiver = self;
  v6.super_class = SUMoreNavigationController;
  [(SUMoreNavigationController *)&v6 viewWillAppear:v3];
}

- (BOOL)window:(id)a3 shouldAutorotateToInterfaceOrientation:(int64_t)a4
{
  v11.receiver = self;
  v11.super_class = SUMoreNavigationController;
  v7 = [SUMoreNavigationController window:sel_window_shouldAutorotateToInterfaceOrientation_ shouldAutorotateToInterfaceOrientation:?];
  v8 = [(SUMoreNavigationController *)self topViewController];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    LOBYTE(v7) = [v8 window:a3 shouldAutorotateToInterfaceOrientation:a4];
  }

  return v7;
}

@end