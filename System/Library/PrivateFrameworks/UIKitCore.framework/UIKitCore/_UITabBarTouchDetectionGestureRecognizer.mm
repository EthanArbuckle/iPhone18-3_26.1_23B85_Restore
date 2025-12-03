@interface _UITabBarTouchDetectionGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UITabBarTouchDetectionGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:began]== UIGestureRecognizerStatePossible)
  {

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:ended]>= UIGestureRecognizerStateBegan)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:cancelled]>= UIGestureRecognizerStateBegan)
  {

    [(UIGestureRecognizer *)self setState:4];
  }
}

@end