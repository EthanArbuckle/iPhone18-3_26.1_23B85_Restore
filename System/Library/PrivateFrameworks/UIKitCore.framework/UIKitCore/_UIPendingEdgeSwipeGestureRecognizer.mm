@interface _UIPendingEdgeSwipeGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIPendingEdgeSwipeGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (_UIEventHasEdgePendingOrLocked(event))
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:moved]== UIGestureRecognizerStatePossible)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:ended]<= UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

@end