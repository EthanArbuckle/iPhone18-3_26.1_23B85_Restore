@interface _UITabBarTouchDetectionGestureRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UITabBarTouchDetectionGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]== UIGestureRecognizerStatePossible)
  {

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]>= UIGestureRecognizerStateBegan)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]>= UIGestureRecognizerStateBegan)
  {

    [(UIGestureRecognizer *)self setState:4];
  }
}

@end