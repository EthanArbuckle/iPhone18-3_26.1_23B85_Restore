@interface _SiriUINavigationControllerDelegateAdapter
- (UINavigationControllerDelegate)externalDelegate;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)navigationController:(id)controller interactionControllerForAnimationController:(id)animationController;
- (int64_t)navigationControllerPreferredInterfaceOrientationForPresentation:(id)presentation;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
@end

@implementation _SiriUINavigationControllerDelegateAdapter

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  externalDelegate = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
  if (objc_opt_respondsToSelector())
  {
    [externalDelegate navigationController:controllerCopy willShowViewController:viewControllerCopy animated:animatedCopy];
  }

  transitionController = [(_SiriUINavigationControllerDelegateAdapter *)self transitionController];
  if (objc_opt_respondsToSelector())
  {
    transitionCoordinator = [controllerCopy transitionCoordinator];
    [transitionController coordinateAdditionalTransitionsWithTransitionCoordinator:transitionCoordinator];
  }
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  viewControllerCopy = viewController;
  externalDelegate = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
  if (objc_opt_respondsToSelector())
  {
    [externalDelegate navigationController:controllerCopy didShowViewController:viewControllerCopy animated:animatedCopy];
  }
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)orientations
{
  orientationsCopy = orientations;
  externalDelegate = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [externalDelegate navigationControllerSupportedInterfaceOrientations:orientationsCopy];
  }

  else
  {
    v6 = 30;
  }

  return v6;
}

- (int64_t)navigationControllerPreferredInterfaceOrientationForPresentation:(id)presentation
{
  presentationCopy = presentation;
  externalDelegate = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [externalDelegate navigationControllerPreferredInterfaceOrientationForPresentation:presentationCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  transitionController = [(_SiriUINavigationControllerDelegateAdapter *)self transitionController];
  if (objc_opt_respondsToSelector())
  {
    [transitionController setOperation:operation];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 || ([transitionController animationController], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    externalDelegate = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
    if (objc_opt_respondsToSelector())
    {
      v14 = [externalDelegate navigationController:controllerCopy animationControllerForOperation:operation fromViewController:viewControllerCopy toViewController:toViewControllerCopy];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)navigationController:(id)controller interactionControllerForAnimationController:(id)animationController
{
  controllerCopy = controller;
  animationControllerCopy = animationController;
  transitionController = [(_SiriUINavigationControllerDelegateAdapter *)self transitionController];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([transitionController interactionControllerForAnimationController:animationControllerCopy], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    externalDelegate = [(_SiriUINavigationControllerDelegateAdapter *)self externalDelegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [externalDelegate navigationController:controllerCopy interactionControllerForAnimationController:animationControllerCopy];
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