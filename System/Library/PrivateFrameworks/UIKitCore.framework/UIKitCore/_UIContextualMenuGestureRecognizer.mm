@interface _UIContextualMenuGestureRecognizer
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIContextualMenuGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    if (event && (([event _modifierFlags] & 0x40000) != 0 || (objc_msgSend(event, "_buttonMask") & 2) != 0))
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

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:moved]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:ended]== UIGestureRecognizerStateBegan || [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateChanged)
  {

    [(UIGestureRecognizer *)self setState:3];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:cancelled]> UIGestureRecognizerStatePossible)
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