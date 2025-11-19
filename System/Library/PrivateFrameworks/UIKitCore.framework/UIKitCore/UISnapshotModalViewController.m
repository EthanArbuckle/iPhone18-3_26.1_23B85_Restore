@interface UISnapshotModalViewController
- (UISnapshotModalViewController)initWithInterfaceOrientation:(int64_t)a3;
- (void)setDisappearingViewController:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation UISnapshotModalViewController

- (UISnapshotModalViewController)initWithInterfaceOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UISnapshotModalViewController;
  result = [(UIViewController *)&v5 init];
  if (result)
  {
    result->_interfaceOrientation = a3;
  }

  return result;
}

- (void)setDisappearingViewController:(id)a3
{
  objc_storeStrong(&self->_disappearingViewController, a3);
  v7 = a3;
  v5 = [v7 navigationController];
  parentController = self->_parentController;
  self->_parentController = v5;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
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
    [(UIViewController *)&self->_disappearingViewController->super.super.isa __viewWillDisappear:v3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = UISnapshotModalViewController;
  [(UIViewController *)&v7 viewDidDisappear:?];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v5 = [(UISnapshotModalViewController *)self disappearingViewController];
    [(UIViewController *)v5 __viewDidDisappear:v3];

    v6 = [(UISnapshotModalViewController *)self disappearingViewController];
    [v6 didMoveToParentViewController:0];
  }
}

@end