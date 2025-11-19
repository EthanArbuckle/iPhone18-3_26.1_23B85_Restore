@interface UIViewController(PXSettings)
- (void)px_presentViewControllerInNavigationController:()PXSettings animated:dimissButtonLocation:completion:;
@end

@implementation UIViewController(PXSettings)

- (void)px_presentViewControllerInNavigationController:()PXSettings animated:dimissButtonLocation:completion:
{
  v14 = a6;
  v9 = MEMORY[0x1E69DCCD8];
  v10 = a3;
  v11 = [[v9 alloc] initWithRootViewController:v10];
  [v11 setToolbarHidden:0];
  [v11 setModalPresentationStyle:{objc_msgSend(v10, "modalPresentationStyle")}];
  v12 = [v10 navigationItem];
  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v10 action:sel__px_dismiss_];

  if (a5 == 1)
  {
    [v12 setRightBarButtonItem:v13];
  }

  else if (!a5)
  {
    [v12 setLeftBarButtonItem:v13];
  }

  [a1 presentViewController:v11 animated:1 completion:v14];
}

@end