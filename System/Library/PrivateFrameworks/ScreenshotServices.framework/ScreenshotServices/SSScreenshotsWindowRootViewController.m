@interface SSScreenshotsWindowRootViewController
- (SSScreenshotsWindowRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setManagedViewController:(id)a3;
- (void)viewDidLoad;
@end

@implementation SSScreenshotsWindowRootViewController

- (SSScreenshotsWindowRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = SSScreenshotsWindowRootViewController;
  v4 = [(SSScreenshotsWindowRootViewController *)&v6 initWithNibName:a3 bundle:a4];
  [(SSScreenshotsWindowRootViewController *)v4 _setIgnoreAppSupportedOrientations:1];
  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SSScreenshotsWindowRootViewController;
  [(SSScreenshotsWindowRootViewController *)&v5 viewDidLoad];
  v3 = [(SSScreenshotsWindowRootViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];
}

- (void)setManagedViewController:(id)a3
{
  v11 = a3;
  [(UIViewController *)self->_managedViewController willMoveToParentViewController:0];
  v5 = [(UIViewController *)self->_managedViewController view];
  [v5 removeFromSuperview];

  [(UIViewController *)self->_managedViewController removeFromParentViewController];
  managedViewController = self->_managedViewController;
  self->_managedViewController = 0;

  objc_storeStrong(&self->_managedViewController, a3);
  if (self->_managedViewController)
  {
    [(SSScreenshotsWindowRootViewController *)self addChildViewController:?];
    v7 = [(SSScreenshotsWindowRootViewController *)self view];
    v8 = [(UIViewController *)self->_managedViewController view];
    [v7 addSubview:v8];

    [(UIViewController *)self->_managedViewController didMoveToParentViewController:self];
    v9 = [(UIViewController *)self->_managedViewController view];
    v10 = [(SSScreenshotsWindowRootViewController *)self view];
    [v10 bounds];
    [v9 setFrame:?];
  }
}

@end