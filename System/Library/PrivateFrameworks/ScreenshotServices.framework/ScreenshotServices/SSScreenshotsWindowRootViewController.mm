@interface SSScreenshotsWindowRootViewController
- (SSScreenshotsWindowRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setManagedViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation SSScreenshotsWindowRootViewController

- (SSScreenshotsWindowRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = SSScreenshotsWindowRootViewController;
  v4 = [(SSScreenshotsWindowRootViewController *)&v6 initWithNibName:name bundle:bundle];
  [(SSScreenshotsWindowRootViewController *)v4 _setIgnoreAppSupportedOrientations:1];
  return v4;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SSScreenshotsWindowRootViewController;
  [(SSScreenshotsWindowRootViewController *)&v5 viewDidLoad];
  view = [(SSScreenshotsWindowRootViewController *)self view];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [view setBackgroundColor:clearColor];
}

- (void)setManagedViewController:(id)controller
{
  controllerCopy = controller;
  [(UIViewController *)self->_managedViewController willMoveToParentViewController:0];
  view = [(UIViewController *)self->_managedViewController view];
  [view removeFromSuperview];

  [(UIViewController *)self->_managedViewController removeFromParentViewController];
  managedViewController = self->_managedViewController;
  self->_managedViewController = 0;

  objc_storeStrong(&self->_managedViewController, controller);
  if (self->_managedViewController)
  {
    [(SSScreenshotsWindowRootViewController *)self addChildViewController:?];
    view2 = [(SSScreenshotsWindowRootViewController *)self view];
    view3 = [(UIViewController *)self->_managedViewController view];
    [view2 addSubview:view3];

    [(UIViewController *)self->_managedViewController didMoveToParentViewController:self];
    view4 = [(UIViewController *)self->_managedViewController view];
    view5 = [(SSScreenshotsWindowRootViewController *)self view];
    [view5 bounds];
    [view4 setFrame:?];
  }
}

@end