@interface _UIAlertControllerInteractionController
- (void)interactionProgress:(id)progress didEnd:(BOOL)end;
- (void)interactionProgressDidUpdate:(id)update;
- (void)startInteractiveTransition:(id)transition;
@end

@implementation _UIAlertControllerInteractionController

- (void)startInteractiveTransition:(id)transition
{
  v9.receiver = self;
  v9.super_class = _UIAlertControllerInteractionController;
  transitionCopy = transition;
  [(UIPercentDrivenInteractiveTransition *)&v9 startInteractiveTransition:transitionCopy];
  [(_UIAlertControllerInteractionController *)self setContext:transitionCopy, v9.receiver, v9.super_class];

  alertController = [(_UIAlertControllerInteractionController *)self alertController];
  _visualStyle = [alertController _visualStyle];

  alertController2 = [(_UIAlertControllerInteractionController *)self alertController];
  v8 = [_visualStyle interactionProgressForTransitionOfType:0 forAlertController:alertController2];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (([v8 enteredMinimumState] & 1) == 0)
  {
    [(UIPercentDrivenInteractiveTransition *)self cancelInteractiveTransition];
    goto LABEL_7;
  }

  if ([v8 didEnd])
  {
    [(UIPercentDrivenInteractiveTransition *)self finishInteractiveTransition];
  }

  else
  {
LABEL_5:
    [v8 addProgressObserver:self];
  }

LABEL_7:
}

- (void)interactionProgressDidUpdate:(id)update
{
  [update percentComplete];
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  v5 = fmax(v4, 0.0);

  [(UIPercentDrivenInteractiveTransition *)self updateInteractiveTransition:v5];
}

- (void)interactionProgress:(id)progress didEnd:(BOOL)end
{
  if (end)
  {
    [(UIPercentDrivenInteractiveTransition *)self finishInteractiveTransition];
  }

  else
  {
    [(UIPercentDrivenInteractiveTransition *)self cancelInteractiveTransition];
  }
}

@end