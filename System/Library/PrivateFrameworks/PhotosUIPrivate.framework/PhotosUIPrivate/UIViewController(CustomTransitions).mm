@interface UIViewController(CustomTransitions)
- (id)pu_currentInteractiveModalTransition;
- (id)pu_currentInteractiveNavigationTransition;
- (void)pu_dismissViewControllerAnimated:()CustomTransitions interactive:completion:;
- (void)pu_presentViewController:()CustomTransitions transition:animated:interactive:completion:;
- (void)pu_removeNavigationTransition;
- (void)pu_restoreNavigationTransition;
@end

@implementation UIViewController(CustomTransitions)

- (void)pu_dismissViewControllerAnimated:()CustomTransitions interactive:completion:
{
  v8 = a5;
  presentedViewController = [self presentedViewController];
  pu_modalTransition = [presentedViewController pu_modalTransition];
  v11 = pu_modalTransition;
  if (a3)
  {
    [pu_modalTransition setStartedInteractively:a4];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__UIViewController_CustomTransitions__pu_dismissViewControllerAnimated_interactive_completion___block_invoke;
  v15[3] = &unk_1E7B80CB0;
  v16 = v11;
  v17 = presentedViewController;
  v18 = v8;
  v12 = v8;
  v13 = presentedViewController;
  v14 = v11;
  [self dismissViewControllerAnimated:a3 completion:v15];
}

- (void)pu_presentViewController:()CustomTransitions transition:animated:interactive:completion:
{
  v13 = a7;
  v14 = a4;
  v17 = a3;
  transitioningDelegate = [v17 transitioningDelegate];

  if (transitioningDelegate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIViewController+CustomTransitions.m" lineNumber:72 description:@"expected no transitioningDelegate"];
  }

  [v17 setTransitioningDelegate:v14];
  [v17 pu_setModalTransition:v14];
  [v14 setStartedInteractively:a6];

  [self presentViewController:v17 animated:a5 completion:v13];
}

- (id)pu_currentInteractiveNavigationTransition
{
  pu_navigationTransition = [self pu_navigationTransition];
  if (([pu_navigationTransition isInteractive] & 1) == 0)
  {

    pu_navigationTransition = 0;
  }

  return pu_navigationTransition;
}

- (id)pu_currentInteractiveModalTransition
{
  pu_modalTransition = [self pu_modalTransition];
  if (([pu_modalTransition isInteractive] & 1) == 0)
  {

    pu_modalTransition = 0;
  }

  return pu_modalTransition;
}

- (void)pu_restoreNavigationTransition
{
  v2 = objc_getAssociatedObject(self, "com.apple.photosui.previousNavigationTransition");
  [self pu_setNavigationTransition:v2];
}

- (void)pu_removeNavigationTransition
{
  pu_navigationTransition = [self pu_navigationTransition];
  objc_setAssociatedObject(self, "com.apple.photosui.previousNavigationTransition", pu_navigationTransition, 1);
  [self pu_setNavigationTransition:0];
}

@end