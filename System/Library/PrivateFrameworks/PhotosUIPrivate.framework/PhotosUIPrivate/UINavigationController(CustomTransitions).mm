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
  pu_currentNavigationTransition = [self pu_currentNavigationTransition];

  if (pu_currentNavigationTransition != v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController+CustomTransitions.m" lineNumber:86 description:@"unexpected current navigation transition"];
  }

  return [self _pu_setCurrentNavigationTransition:0];
}

- (void)pu_navigationTransitionWillStart:()CustomTransitions
{
  v7 = a3;
  pu_currentNavigationTransition = [self pu_currentNavigationTransition];

  if (pu_currentNavigationTransition)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UINavigationController+CustomTransitions.m" lineNumber:81 description:@"current navigation transition already exists"];
  }

  [self _pu_setCurrentNavigationTransition:v7];
}

- (id)pu_currentInteractiveTransition
{
  topViewController = [self topViewController];
  pu_currentInteractiveNavigationTransition = [topViewController pu_currentInteractiveNavigationTransition];

  return pu_currentInteractiveNavigationTransition;
}

- (void)pu_popToViewController:()CustomTransitions animated:interactive:
{
  v13 = a3;
  topViewController = [self topViewController];
  pu_navigationTransition = [topViewController pu_navigationTransition];
  v10 = pu_navigationTransition;
  if (a4)
  {
    [pu_navigationTransition setStartedInteractively:a5];
  }

  [v10 transitionWillStartOperation:2 animated:a4 interactive:a5];
  if (v13)
  {
    v11 = [self popToViewController:v13 animated:a4];
  }

  else
  {
    v12 = [self popViewControllerAnimated:a4];
  }

  [v10 transitionDidStartOperation:2 animated:a4 interactive:a5];
}

- (void)pu_pushViewController:()CustomTransitions withTransition:animated:isInteractive:
{
  v15 = a3;
  v10 = a4;
  [v15 pu_setNavigationTransition:v10];
  [v10 setStartedInteractively:a6];
  _useStandardStatusBarHeight = [self _useStandardStatusBarHeight];
  topViewController = [self topViewController];
  prefersStatusBarHidden = [topViewController prefersStatusBarHidden];
  prefersStatusBarHidden2 = [v15 prefersStatusBarHidden];

  if (prefersStatusBarHidden == prefersStatusBarHidden2)
  {
    [v10 transitionWillStartOperation:1 animated:a5 interactive:a6];
    [self pushViewController:v15 animated:a5];
    [v10 transitionDidStartOperation:1 animated:a5 interactive:a6];
  }

  else
  {
    [self _setUseStandardStatusBarHeight:1];
    [v10 transitionWillStartOperation:1 animated:a5 interactive:a6];
    [self pushViewController:v15 animated:a5];
    [v10 transitionDidStartOperation:1 animated:a5 interactive:a6];
    [self _setUseStandardStatusBarHeight:_useStandardStatusBarHeight];
  }
}

@end