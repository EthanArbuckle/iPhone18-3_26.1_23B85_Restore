@interface PXCMMComponentViewController
- (PXCMMComponentViewController)initWithCoder:(id)coder;
- (PXCMMComponentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXCMMComponentViewController)initWithSession:(id)session;
@end

@implementation PXCMMComponentViewController

- (PXCMMComponentViewController)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = PXCMMComponentViewController;
  v6 = [(PXCMMComponentViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (PXCMMComponentViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMComponentViewController.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXCMMComponentViewController initWithCoder:]"}];

  abort();
}

- (PXCMMComponentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMComponentViewController.m" lineNumber:23 description:{@"%s is not available as initializer", "-[PXCMMComponentViewController initWithNibName:bundle:]"}];

  abort();
}

@end