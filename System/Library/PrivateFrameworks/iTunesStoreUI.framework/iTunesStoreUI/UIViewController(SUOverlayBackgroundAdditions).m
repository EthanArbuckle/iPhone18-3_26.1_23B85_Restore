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
  v1 = [a1 parentViewController];
  if (!v1)
  {
    v1 = SUClientDispatch;
  }

  return [(__objc2_class *)v1 dismissOverlayBackgroundViewController];
}

- (uint64_t)overlayBackgroundViewController
{
  v1 = [a1 parentViewController];
  if (!v1)
  {
    v1 = SUClientDispatch;
  }

  return [(__objc2_class *)v1 overlayBackgroundViewController];
}

- (uint64_t)presentOverlayBackgroundViewController:()SUOverlayBackgroundAdditions
{
  v4 = [a1 parentViewController];
  if (!v4)
  {
    v4 = SUClientDispatch;
  }

  return [(__objc2_class *)v4 presentOverlayBackgroundViewController:a3];
}

- (BOOL)presentOverlayViewController:()SUOverlayBackgroundAdditions withTransition:
{
  v7 = [a1 overlayBackgroundViewController];
  if (!v7)
  {
    v8 = objc_alloc_init(SUOverlayBackgroundViewController);
    -[SUViewController setClientInterface:](v8, "setClientInterface:", [0 clientInterface]);
    if ([a1 presentOverlayBackgroundViewController:v8])
    {
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  if (![a3 clientInterface])
  {
    [a3 setClientInterface:{-[SUViewController clientInterface](v7, "clientInterface")}];
  }

  [(SUOverlayBackgroundViewController *)v7 presentOverlay:a3 withTransition:a4];
  return v7 != 0;
}

- (uint64_t)presentViewController:()SUOverlayBackgroundAdditions inOverlayWithConfiguration:
{
  objc_opt_class();
  v7 = a3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [a3 navigationController];
  }

  [v7 setNavigationBarHidden:{objc_msgSend(a4, "shouldShowNavigationBar") ^ 1}];
  v8 = [[SUOverlayViewController alloc] initWithOverlayConfiguration:a4];
  [(SUOverlayViewController *)v8 setBackViewController:a3];
  v9 = objc_alloc_init(SUOverlayTransition);
  -[SUOverlayTransition setType:](v9, "setType:", +[SUOverlayTransition transitionTypeFromString:](SUOverlayTransition, "transitionTypeFromString:", [a4 transitionName]));
  v10 = [a1 presentOverlayViewController:v8 withTransition:v9];

  return v10;
}

@end