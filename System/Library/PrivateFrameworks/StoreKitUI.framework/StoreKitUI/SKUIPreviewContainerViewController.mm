@interface SKUIPreviewContainerViewController
- (void)setChildViewController:(id)controller;
@end

@implementation SKUIPreviewContainerViewController

- (void)setChildViewController:(id)controller
{
  controllerCopy = controller;
  childViewController = self->_childViewController;
  if (childViewController)
  {
    [(UIViewController *)childViewController removeFromParentViewController];
    view = [(UIViewController *)self->_childViewController view];
    [view removeFromSuperview];

    [(SKUIPreviewContainerViewController *)self _setExistingNavigationItem:0];
  }

  objc_storeStrong(&self->_childViewController, controller);
  v7 = controllerCopy;
  if (controllerCopy)
  {
    [(SKUIPreviewContainerViewController *)self addChildViewController:controllerCopy];
    view2 = [controllerCopy view];
    [view2 setAutoresizingMask:18];

    view3 = [(SKUIPreviewContainerViewController *)self view];
    view4 = [controllerCopy view];
    [view3 addSubview:view4];

    navigationItem = [controllerCopy navigationItem];
    [(SKUIPreviewContainerViewController *)self _setExistingNavigationItem:navigationItem];

    v7 = controllerCopy;
  }
}

@end