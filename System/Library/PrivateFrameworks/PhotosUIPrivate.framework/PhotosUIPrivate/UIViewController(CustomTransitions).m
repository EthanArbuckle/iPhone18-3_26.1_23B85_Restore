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
  v9 = [a1 presentedViewController];
  v10 = [v9 pu_modalTransition];
  v11 = v10;
  if (a3)
  {
    [v10 setStartedInteractively:a4];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __95__UIViewController_CustomTransitions__pu_dismissViewControllerAnimated_interactive_completion___block_invoke;
  v15[3] = &unk_1E7B80CB0;
  v16 = v11;
  v17 = v9;
  v18 = v8;
  v12 = v8;
  v13 = v9;
  v14 = v11;
  [a1 dismissViewControllerAnimated:a3 completion:v15];
}

- (void)pu_presentViewController:()CustomTransitions transition:animated:interactive:completion:
{
  v13 = a7;
  v14 = a4;
  v17 = a3;
  v15 = [v17 transitioningDelegate];

  if (v15)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"UIViewController+CustomTransitions.m" lineNumber:72 description:@"expected no transitioningDelegate"];
  }

  [v17 setTransitioningDelegate:v14];
  [v17 pu_setModalTransition:v14];
  [v14 setStartedInteractively:a6];

  [a1 presentViewController:v17 animated:a5 completion:v13];
}

- (id)pu_currentInteractiveNavigationTransition
{
  v1 = [a1 pu_navigationTransition];
  if (([v1 isInteractive] & 1) == 0)
  {

    v1 = 0;
  }

  return v1;
}

- (id)pu_currentInteractiveModalTransition
{
  v1 = [a1 pu_modalTransition];
  if (([v1 isInteractive] & 1) == 0)
  {

    v1 = 0;
  }

  return v1;
}

- (void)pu_restoreNavigationTransition
{
  v2 = objc_getAssociatedObject(a1, "com.apple.photosui.previousNavigationTransition");
  [a1 pu_setNavigationTransition:v2];
}

- (void)pu_removeNavigationTransition
{
  v2 = [a1 pu_navigationTransition];
  objc_setAssociatedObject(a1, "com.apple.photosui.previousNavigationTransition", v2, 1);
  [a1 pu_setNavigationTransition:0];
}

@end