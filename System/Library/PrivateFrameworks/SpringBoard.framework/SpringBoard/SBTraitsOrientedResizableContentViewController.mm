@interface SBTraitsOrientedResizableContentViewController
- (SBTraitsOrientedResizableContentViewController)initWithContentViewController:(id)controller delegate:(id)delegate;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBTraitsOrientedResizableContentViewController

- (SBTraitsOrientedResizableContentViewController)initWithContentViewController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = SBTraitsOrientedResizableContentViewController;
  v9 = [(SBTraitsOrientedResizableContentViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, delegate);
    objc_storeStrong(&v10->_contentViewController, controller);
  }

  return v10;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBTraitsOrientedResizableContentViewController;
  [(SBTraitsOrientedResizableContentViewController *)&v3 viewDidLoad];
  [(SBTraitsOrientedResizableContentViewController *)self bs_addChildViewController:self->_contentViewController];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBTraitsOrientedResizableContentViewController;
  [(SBTraitsOrientedResizableContentViewController *)&v5 viewDidLayoutSubviews];
  delegate = self->_delegate;
  view = [(SBTraitsOrientedResizableContentViewController *)self view];
  [view bounds];
  [(SBResizableContentViewControllerDelegate *)delegate resizableContentViewController:self didUpdateToBounds:?];
}

@end