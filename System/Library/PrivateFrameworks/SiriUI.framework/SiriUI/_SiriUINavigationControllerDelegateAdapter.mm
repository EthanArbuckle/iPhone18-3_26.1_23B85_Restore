@interface _SiriUINavigationControllerDelegateAdapter
- (UINavigationControllerDelegate)externalDelegate;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)navigationController:(id)a3 interactionControllerForAnimationController:(id)a4;
- (int64_t)navigationControllerPreferredInterfaceOrientationForPresentation:(id)a3;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
@end

@implementation _SiriUINavigationControllerDelegateAdapter

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12 = a3;
  v8 = a4;
  v9 = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 navigationController:v12 willShowViewController:v8 animated:v5];
  }

  v10 = [(_SiriUINavigationControllerDelegateAdapter *)self transitionController];
  if (objc_opt_respondsToSelector())
  {
    v11 = [v12 transitionCoordinator];
    [v10 coordinateAdditionalTransitionsWithTransitionCoordinator:v11];
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v8 = a4;
  v9 = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 navigationController:v10 didShowViewController:v8 animated:v5];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  v4 = a3;
  v5 = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 navigationControllerSupportedInterfaceOrientations:v4];
  }

  else
  {
    v6 = 30;
  }

  return v6;
}

- (int64_t)navigationControllerPreferredInterfaceOrientationForPresentation:(id)a3
{
  v4 = a3;
  v5 = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 navigationControllerPreferredInterfaceOrientationForPresentation:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(_SiriUINavigationControllerDelegateAdapter *)self transitionController];
  if (objc_opt_respondsToSelector())
  {
    [v13 setOperation:a4];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v13 animationController], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v15 navigationController:v10 animationControllerForOperation:a4 fromViewController:v11 toViewController:v12];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)navigationController:(id)a3 interactionControllerForAnimationController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SiriUINavigationControllerDelegateAdapter *)self transitionController];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v8 interactionControllerForAnimationController:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v10 navigationController:v6 interactionControllerForAnimationController:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (UINavigationControllerDelegate)externalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_externalDelegate);

  return WeakRetained;
}

@end