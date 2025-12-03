@interface UISnapshotModalViewController
- (UISnapshotModalViewController)initWithInterfaceOrientation:(int64_t)orientation;
- (void)setDisappearingViewController:(id)controller;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation UISnapshotModalViewController

- (UISnapshotModalViewController)initWithInterfaceOrientation:(int64_t)orientation
{
  v5.receiver = self;
  v5.super_class = UISnapshotModalViewController;
  result = [(UIViewController *)&v5 init];
  if (result)
  {
    result->_interfaceOrientation = orientation;
  }

  return result;
}

- (void)setDisappearingViewController:(id)controller
{
  objc_storeStrong(&self->_disappearingViewController, controller);
  controllerCopy = controller;
  navigationController = [controllerCopy navigationController];
  parentController = self->_parentController;
  self->_parentController = navigationController;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = UISnapshotModalViewController;
  [(UIViewController *)&v7 viewWillDisappear:?];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    parentController = self->_parentController;
    if (parentController)
    {
      [(UIViewController *)parentController _addChildViewController:self->_disappearingViewController];
    }

    [(UIViewController *)self->_disappearingViewController willMoveToParentViewController:0];
    [(UIViewController *)&self->_disappearingViewController->super.super.isa __viewWillDisappear:disappearCopy];
    v6 = self->_parentController;
    if (v6)
    {
      [(UIViewController *)v6 _removeChildViewController:self->_disappearingViewController];
    }

    goto LABEL_8;
  }

  if (self)
  {
LABEL_8:
    [(UIViewController *)self _invalidatePreferences:0 excluding:?];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = UISnapshotModalViewController;
  [(UIViewController *)&v7 viewDidDisappear:?];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    disappearingViewController = [(UISnapshotModalViewController *)self disappearingViewController];
    [(UIViewController *)disappearingViewController __viewDidDisappear:disappearCopy];

    disappearingViewController2 = [(UISnapshotModalViewController *)self disappearingViewController];
    [disappearingViewController2 didMoveToParentViewController:0];
  }
}

@end