@interface PRXTransitioningController
- (PRXPullDismissalProvider)pullDismissalProvider;
- (PRXTransitioningController)initWithPullDismissalProvider:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)interactionControllerForDismissal:(id)a3;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
@end

@implementation PRXTransitioningController

- (PRXTransitioningController)initWithPullDismissalProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRXTransitioningController;
  v5 = [(PRXTransitioningController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pullDismissalProvider, v4);
    v7 = v6;
  }

  return v6;
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[PRXCardSlideUpPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

  return v8;
}

- (id)animationControllerForDismissedController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_pullDismissalProvider);
  v4 = [WeakRetained pullDismissalInteractionDriver];
  v5 = [v4 animationController];

  return v5;
}

- (id)interactionControllerForDismissal:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_pullDismissalProvider);
  v4 = [WeakRetained pullDismissalInteractionDriver];
  v5 = [v4 interactionController];

  return v5;
}

- (PRXPullDismissalProvider)pullDismissalProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_pullDismissalProvider);

  return WeakRetained;
}

@end