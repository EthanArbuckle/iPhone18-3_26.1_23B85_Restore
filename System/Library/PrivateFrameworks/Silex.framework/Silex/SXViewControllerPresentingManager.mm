@interface SXViewControllerPresentingManager
- (UIViewController)presentingViewController;
- (void)popOrDismissViewControllerAnimated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated;
- (void)presentViewController:(id)controller animated:(BOOL)animated sourceView:(id)view sourceRect:(CGRect)rect;
@end

@implementation SXViewControllerPresentingManager

- (void)presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  presentingViewController = [(SXViewControllerPresentingManager *)self presentingViewController];
  [presentingViewController presentViewController:controllerCopy animated:animatedCopy completion:0];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  animatedCopy = animated;
  controllerCopy = controller;
  viewCopy = view;
  popoverPresentationController = [controllerCopy popoverPresentationController];
  v15 = popoverPresentationController;
  if (viewCopy && popoverPresentationController)
  {
    [controllerCopy setModalPresentationStyle:7];
    presentingViewController = [(SXViewControllerPresentingManager *)self presentingViewController];
    view = [presentingViewController view];
    [view convertRect:viewCopy fromView:{x, y, width, height}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    presentingViewController2 = [(SXViewControllerPresentingManager *)self presentingViewController];
    view2 = [presentingViewController2 view];
    [view2 bounds];
    v39.origin.x = v19;
    v39.origin.y = v21;
    v39.size.width = v23;
    v39.size.height = v25;
    v38 = CGRectIntersection(v37, v39);
    v28 = v38.origin.x;
    v29 = v38.origin.y;
    v30 = v38.size.width;
    v31 = v38.size.height;

    [v15 setSourceRect:{v28, v29, v30, v31}];
    presentingViewController3 = [(SXViewControllerPresentingManager *)self presentingViewController];
    view3 = [presentingViewController3 view];
    [v15 setSourceView:view3];
  }

  presentingViewController4 = [(SXViewControllerPresentingManager *)self presentingViewController];
  [presentingViewController4 presentViewController:controllerCopy animated:animatedCopy completion:0];
}

- (void)popOrDismissViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentingViewController = [(SXViewControllerPresentingManager *)self presentingViewController];
  v10PresentingViewController = [presentingViewController presentingViewController];

  if (v10PresentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:animatedCopy completion:0];
  }

  else
  {
    navigationController = [presentingViewController navigationController];

    if (navigationController)
    {
      navigationController2 = [presentingViewController navigationController];
      if (navigationController2)
      {
        v7 = navigationController2;
        do
        {
          v8 = [v7 popViewControllerAnimated:animatedCopy];

          if (v8)
          {
            break;
          }

          navigationController3 = [v7 navigationController];

          v7 = navigationController3;
        }

        while (navigationController3);
      }
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end