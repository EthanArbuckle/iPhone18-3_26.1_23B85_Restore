@interface PRXTransitioningController
- (PRXPullDismissalProvider)pullDismissalProvider;
- (PRXTransitioningController)initWithPullDismissalProvider:(id)provider;
- (id)animationControllerForDismissedController:(id)controller;
- (id)interactionControllerForDismissal:(id)dismissal;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
@end

@implementation PRXTransitioningController

- (PRXTransitioningController)initWithPullDismissalProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PRXTransitioningController;
  v5 = [(PRXTransitioningController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pullDismissalProvider, providerCopy);
    v7 = v6;
  }

  return v6;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[PRXCardSlideUpPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

- (id)animationControllerForDismissedController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_pullDismissalProvider);
  pullDismissalInteractionDriver = [WeakRetained pullDismissalInteractionDriver];
  animationController = [pullDismissalInteractionDriver animationController];

  return animationController;
}

- (id)interactionControllerForDismissal:(id)dismissal
{
  WeakRetained = objc_loadWeakRetained(&self->_pullDismissalProvider);
  pullDismissalInteractionDriver = [WeakRetained pullDismissalInteractionDriver];
  interactionController = [pullDismissalInteractionDriver interactionController];

  return interactionController;
}

- (PRXPullDismissalProvider)pullDismissalProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_pullDismissalProvider);

  return WeakRetained;
}

@end