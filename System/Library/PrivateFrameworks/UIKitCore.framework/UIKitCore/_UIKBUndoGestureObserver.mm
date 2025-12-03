@interface _UIKBUndoGestureObserver
+ (id)undoGestureObserverWithTarget:(id)target action:(SEL)action delegate:(id)delegate;
- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)recognizer;
- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)recognizer;
- (void)_failOrCancelIfNecessary;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIKBUndoGestureObserver

+ (id)undoGestureObserverWithTarget:(id)target action:(SEL)action delegate:(id)delegate
{
  delegateCopy = delegate;
  targetCopy = target;
  v9 = [(UIGestureRecognizer *)[_UIKBUndoGestureObserver alloc] initWithTarget:targetCopy action:action];

  if (v9)
  {
    [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.kbProductivity.dismissHUD"];
    [(UIGestureRecognizer *)v9 setDelegate:delegateCopy];
    [(UIGestureRecognizer *)v9 setDelaysTouchesEnded:0];
    [(UIGestureRecognizer *)v9 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v9 setRequiresExclusiveTouchType:0];
    v10 = v9;
  }

  return v9;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self numberOfTouches:ended]!= 3 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
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

- (BOOL)_acceptsBeingFailureDependentOnGestureRecognizer:(id)recognizer
{
  if (recognizer)
  {
    return (*(recognizer + 14) >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_acceptsBeingFailureRequirementForGestureRecognizer:(id)recognizer
{
  if (recognizer)
  {
    return (*(recognizer + 14) >> 1) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

@end