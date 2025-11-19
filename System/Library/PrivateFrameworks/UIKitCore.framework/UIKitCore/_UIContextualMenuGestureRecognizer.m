@interface _UIContextualMenuGestureRecognizer
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIContextualMenuGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    if (a4 && (([a4 _modifierFlags] & 0x40000) != 0 || (objc_msgSend(a4, "_buttonMask") & 2) != 0))
    {
      v6 = 1;
    }

    else
    {
      v6 = 5;
    }

    [(UIGestureRecognizer *)self setState:v6];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]> UIGestureRecognizerStatePossible)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

@end