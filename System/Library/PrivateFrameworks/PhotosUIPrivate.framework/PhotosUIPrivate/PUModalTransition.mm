@interface PUModalTransition
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)interactionControllerForDismissal:(id)dismissal;
- (id)interactionControllerForPresentation:(id)presentation;
- (id)presentingViewController;
- (void)animateTransition:(id)transition;
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
- (void)imageModulationIntensityDidChange;
@end

@implementation PUModalTransition

- (id)interactionControllerForDismissal:(id)dismissal
{
  [(PUModalTransition *)self _setOperation:1];

  return [(PUViewControllerTransition *)self interactiveTransition];
}

- (id)interactionControllerForPresentation:(id)presentation
{
  [(PUModalTransition *)self _setOperation:0];

  return [(PUViewControllerTransition *)self interactiveTransition];
}

- (id)animationControllerForDismissedController:(id)controller
{
  [(PUModalTransition *)self _setOperation:1];
  [(PUModalTransition *)self transitionWillDismissInteractively:[(PUViewControllerTransition *)self isInteractive]];
  return self;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  [(PUModalTransition *)self _setOperation:0, presentingController, sourceController];
  [(PUModalTransition *)self transitionWillPresentInteractively:[(PUViewControllerTransition *)self isInteractive]];
  return self;
}

- (void)animateTransition:(id)transition
{
  v4.receiver = self;
  v4.super_class = PUModalTransition;
  [(PUViewControllerTransition *)&v4 animateTransition:transition];
  if ([(PUModalTransition *)self _operation])
  {
    if ([(PUModalTransition *)self _operation]== 1)
    {
      [(PUModalTransition *)self animateDismissTransition];
    }
  }

  else
  {
    [(PUModalTransition *)self animatePresentTransition];
  }
}

- (void)cancelInteractiveTransition
{
  if ([(PUViewControllerTransition *)self isInteractive])
  {
    if ([(PUModalTransition *)self _operation])
    {
      if ([(PUModalTransition *)self _operation]== 1)
      {
        [(PUModalTransition *)self completeInteractiveDismissTransitionFinished:0];
      }
    }

    else
    {
      [(PUModalTransition *)self completeInteractivePresentTransitionFinished:0];
    }
  }

  v3.receiver = self;
  v3.super_class = PUModalTransition;
  [(PUViewControllerTransition *)&v3 cancelInteractiveTransition];
}

- (void)finishInteractiveTransition
{
  if ([(PUViewControllerTransition *)self isInteractive])
  {
    if ([(PUModalTransition *)self _operation])
    {
      if ([(PUModalTransition *)self _operation]== 1)
      {
        [(PUModalTransition *)self completeInteractiveDismissTransitionFinished:1];
      }
    }

    else
    {
      [(PUModalTransition *)self completeInteractivePresentTransitionFinished:1];
    }
  }

  v3.receiver = self;
  v3.super_class = PUModalTransition;
  [(PUViewControllerTransition *)&v3 finishInteractiveTransition];
}

- (id)presentingViewController
{
  _operation = [(PUModalTransition *)self _operation];
  if (_operation == 1)
  {
    toViewController = [(PUViewControllerTransition *)self toViewController];
  }

  else if (_operation)
  {
    toViewController = 0;
  }

  else
  {
    toViewController = [(PUViewControllerTransition *)self fromViewController];
  }

  return toViewController;
}

- (void)imageModulationIntensityDidChange
{
  v4.receiver = self;
  v4.super_class = PUModalTransition;
  [(PUViewControllerTransition *)&v4 imageModulationIntensityDidChange];
  presentingViewController = [(PUModalTransition *)self presentingViewController];
  [presentingViewController px_setNeedsImageModulationIntensityUpdate];
}

@end