@interface UIImmediateEdgeSwipeGestureRecognizer
- (void)_processTouches:(id)touches withEvent:(id)event;
@end

@implementation UIImmediateEdgeSwipeGestureRecognizer

- (void)_processTouches:(id)touches withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    if (_UIEventHasEdgePendingOrLocked(event))
    {
      v6 = 3;
    }

    else
    {
      v6 = 5;
    }

    [(UIGestureRecognizer *)self setState:v6];
  }
}

@end