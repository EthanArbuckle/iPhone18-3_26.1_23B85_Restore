@interface _UIPendingEdgeSwipeGestureRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIPendingEdgeSwipeGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if (_UIEventHasEdgePendingOrLocked(a4))
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]== UIGestureRecognizerStatePossible)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]<= UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

@end