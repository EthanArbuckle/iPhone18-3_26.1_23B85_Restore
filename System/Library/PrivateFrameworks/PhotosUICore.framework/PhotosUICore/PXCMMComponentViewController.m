@interface PXCMMComponentViewController
- (PXCMMComponentViewController)initWithCoder:(id)a3;
- (PXCMMComponentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXCMMComponentViewController)initWithSession:(id)a3;
@end

@implementation PXCMMComponentViewController

- (PXCMMComponentViewController)initWithSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXCMMComponentViewController;
  v6 = [(PXCMMComponentViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
  }

  return v7;
}

- (PXCMMComponentViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMComponentViewController.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXCMMComponentViewController initWithCoder:]"}];

  abort();
}

- (PXCMMComponentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXCMMComponentViewController.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXCMMComponentViewController initWithNibName:bundle:]"}];

  abort();
}

@end