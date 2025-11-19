@interface SBTraitsOrientedResizableContentViewController
- (SBTraitsOrientedResizableContentViewController)initWithContentViewController:(id)a3 delegate:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBTraitsOrientedResizableContentViewController

- (SBTraitsOrientedResizableContentViewController)initWithContentViewController:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBTraitsOrientedResizableContentViewController;
  v9 = [(SBTraitsOrientedResizableContentViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, a4);
    objc_storeStrong(&v10->_contentViewController, a3);
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
  v4 = [(SBTraitsOrientedResizableContentViewController *)self view];
  [v4 bounds];
  [(SBResizableContentViewControllerDelegate *)delegate resizableContentViewController:self didUpdateToBounds:?];
}

@end