@interface _UIKBUndoGestureObserver
+ (id)undoGestureObserverWithTarget:(id)a3 action:(SEL)a4 delegate:(id)a5;
- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)a3;
- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)a3;
- (void)_failOrCancelIfNecessary;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UIKBUndoGestureObserver

+ (id)undoGestureObserverWithTarget:(id)a3 action:(SEL)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(UIGestureRecognizer *)[_UIKBUndoGestureObserver alloc] initWithTarget:v8 action:a4];

  if (v9)
  {
    [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.kbProductivity.dismissHUD"];
    [(UIGestureRecognizer *)v9 setDelegate:v7];
    [(UIGestureRecognizer *)v9 setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)v9 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v9 setRequiresExclusiveTouchType:0];
    v10 = v9;
  }

  return v9;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self numberOfTouches:a3]!= 3 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:3];
  }

  [(_UIKBUndoGestureObserver *)self _failOrCancelIfNecessary];
}

- (void)_failOrCancelIfNecessary
{
  if ([(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateEnded)
  {
    if ([(UIGestureRecognizer *)self state]> UIGestureRecognizerStatePossible)
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }

    [(UIGestureRecognizer *)self setState:v3];
  }
}

- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)a3
{
  if (a3)
  {
    return (*(a3 + 14) >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)a3
{
  if (a3)
  {
    return (*(a3 + 14) >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

@end