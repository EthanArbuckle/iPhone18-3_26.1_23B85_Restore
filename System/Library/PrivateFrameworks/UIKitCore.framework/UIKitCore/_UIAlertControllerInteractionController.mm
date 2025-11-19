@interface _UIAlertControllerInteractionController
- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4;
- (void)interactionProgressDidUpdate:(id)a3;
- (void)startInteractiveTransition:(id)a3;
@end

@implementation _UIAlertControllerInteractionController

- (void)startInteractiveTransition:(id)a3
{
  v9.receiver = self;
  v9.super_class = _UIAlertControllerInteractionController;
  v4 = a3;
  [(UIPercentDrivenInteractiveTransition *)&v9 startInteractiveTransition:v4];
  [(_UIAlertControllerInteractionController *)self setContext:v4, v9.receiver, v9.super_class];

  v5 = [(_UIAlertControllerInteractionController *)self alertController];
  v6 = [v5 _visualStyle];

  v7 = [(_UIAlertControllerInteractionController *)self alertController];
  v8 = [v6 interactionProgressForTransitionOfType:0 forAlertController:v7];

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

- (void)interactionProgressDidUpdate:(id)a3
{
  [a3 percentComplete];
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  v5 = fmax(v4, 0.0);

  [(UIPercentDrivenInteractiveTransition *)self updateInteractiveTransition:v5];
}

- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4
{
  if (a4)
  {
    [(UIPercentDrivenInteractiveTransition *)self finishInteractiveTransition];
  }

  else
  {
    [(UIPercentDrivenInteractiveTransition *)self cancelInteractiveTransition];
  }
}

@end