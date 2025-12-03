@interface UIViewController(SUOverlayBackgroundAdditions)
- (BOOL)presentOverlayViewController:()SUOverlayBackgroundAdditions withTransition:;
- (uint64_t)dismissOverlayBackgroundViewController;
- (uint64_t)overlayBackgroundViewController;
- (uint64_t)presentOverlayBackgroundViewController:()SUOverlayBackgroundAdditions;
- (uint64_t)presentViewController:()SUOverlayBackgroundAdditions inOverlayWithConfiguration:;
@end

@implementation UIViewController(SUOverlayBackgroundAdditions)

- (uint64_t)dismissOverlayBackgroundViewController
{
  parentViewController = [self parentViewController];
  if (!parentViewController)
  {
    parentViewController = SUClientDispatch;
  }

  return [(__objc2_class *)parentViewController dismissOverlayBackgroundViewController];
}

- (uint64_t)overlayBackgroundViewController
{
  parentViewController = [self parentViewController];
  if (!parentViewController)
  {
    parentViewController = SUClientDispatch;
  }

  return [(__objc2_class *)parentViewController overlayBackgroundViewController];
}

- (uint64_t)presentOverlayBackgroundViewController:()SUOverlayBackgroundAdditions
{
  parentViewController = [self parentViewController];
  if (!parentViewController)
  {
    parentViewController = SUClientDispatch;
  }

  return [(__objc2_class *)parentViewController presentOverlayBackgroundViewController:a3];
}

- (BOOL)presentOverlayViewController:()SUOverlayBackgroundAdditions withTransition:
{
  overlayBackgroundViewController = [self overlayBackgroundViewController];
  if (!overlayBackgroundViewController)
  {
    v8 = objc_alloc_init(SUOverlayBackgroundViewController);
    -[SUViewController setClientInterface:](v8, "setClientInterface:", [0 clientInterface]);
    if ([self presentOverlayBackgroundViewController:v8])
    {
      overlayBackgroundViewController = v8;
    }

    else
    {
      overlayBackgroundViewController = 0;
    }
  }

  if (![a3 clientInterface])
  {
    [a3 setClientInterface:{-[SUViewController clientInterface](overlayBackgroundViewController, "clientInterface")}];
  }

  [(SUOverlayBackgroundViewController *)overlayBackgroundViewController presentOverlay:a3 withTransition:a4];
  return overlayBackgroundViewController != 0;
}

- (uint64_t)presentViewController:()SUOverlayBackgroundAdditions inOverlayWithConfiguration:
{
  objc_opt_class();
  navigationController = a3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    navigationController = [a3 navigationController];
  }

  [navigationController setNavigationBarHidden:{objc_msgSend(a4, "shouldShowNavigationBar") ^ 1}];
  v8 = [[SUOverlayViewController alloc] initWithOverlayConfiguration:a4];
  [(SUOverlayViewController *)v8 setBackViewController:a3];
  v9 = objc_alloc_init(SUOverlayTransition);
  -[SUOverlayTransition setType:](v9, "setType:", +[SUOverlayTransition transitionTypeFromString:](SUOverlayTransition, "transitionTypeFromString:", [a4 transitionName]));
  v10 = [self presentOverlayViewController:v8 withTransition:v9];

  return v10;
}

@end