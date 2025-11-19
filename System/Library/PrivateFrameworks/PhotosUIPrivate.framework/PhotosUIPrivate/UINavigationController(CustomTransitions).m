@interface UINavigationController(CustomTransitions)
- (id)pu_currentInteractiveTransition;
- (uint64_t)pu_navigationTransitionWillEnd:()CustomTransitions;
- (void)pu_navigationTransitionWillStart:()CustomTransitions;
- (void)pu_popToViewController:()CustomTransitions animated:interactive:;
- (void)pu_pushViewController:()CustomTransitions withTransition:animated:isInteractive:;
@end

@implementation UINavigationController(CustomTransitions)

- (uint64_t)pu_navigationTransitionWillEnd:()CustomTransitions
{
  v5 = a3;
  v6 = [a1 pu_currentNavigationTransition];

  if (v6 != v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"UINavigationController+CustomTransitions.m" lineNumber:86 description:@"unexpected current navigation transition"];
  }

  return [a1 _pu_setCurrentNavigationTransition:0];
}

- (void)pu_navigationTransitionWillStart:()CustomTransitions
{
  v7 = a3;
  v5 = [a1 pu_currentNavigationTransition];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"UINavigationController+CustomTransitions.m" lineNumber:81 description:@"current navigation transition already exists"];
  }

  [a1 _pu_setCurrentNavigationTransition:v7];
}

- (id)pu_currentInteractiveTransition
{
  v1 = [a1 topViewController];
  v2 = [v1 pu_currentInteractiveNavigationTransition];

  return v2;
}

- (void)pu_popToViewController:()CustomTransitions animated:interactive:
{
  v13 = a3;
  v8 = [a1 topViewController];
  v9 = [v8 pu_navigationTransition];
  v10 = v9;
  if (a4)
  {
    [v9 setStartedInteractively:a5];
  }

  [v10 transitionWillStartOperation:2 animated:a4 interactive:a5];
  if (v13)
  {
    v11 = [a1 popToViewController:v13 animated:a4];
  }

  else
  {
    v12 = [a1 popViewControllerAnimated:a4];
  }

  [v10 transitionDidStartOperation:2 animated:a4 interactive:a5];
}

- (void)pu_pushViewController:()CustomTransitions withTransition:animated:isInteractive:
{
  v15 = a3;
  v10 = a4;
  [v15 pu_setNavigationTransition:v10];
  [v10 setStartedInteractively:a6];
  v11 = [a1 _useStandardStatusBarHeight];
  v12 = [a1 topViewController];
  v13 = [v12 prefersStatusBarHidden];
  v14 = [v15 prefersStatusBarHidden];

  if (v13 == v14)
  {
    [v10 transitionWillStartOperation:1 animated:a5 interactive:a6];
    [a1 pushViewController:v15 animated:a5];
    [v10 transitionDidStartOperation:1 animated:a5 interactive:a6];
  }

  else
  {
    [a1 _setUseStandardStatusBarHeight:1];
    [v10 transitionWillStartOperation:1 animated:a5 interactive:a6];
    [a1 pushViewController:v15 animated:a5];
    [v10 transitionDidStartOperation:1 animated:a5 interactive:a6];
    [a1 _setUseStandardStatusBarHeight:v11];
  }
}

@end