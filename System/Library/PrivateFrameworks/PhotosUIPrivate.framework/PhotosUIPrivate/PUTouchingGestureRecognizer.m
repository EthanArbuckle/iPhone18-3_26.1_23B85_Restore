@interface PUTouchingGestureRecognizer
- (void)_decrementTouchesBy:(unint64_t)a3;
- (void)_incrementTouchesBy:(unint64_t)a3;
- (void)_setTouchCount:(unint64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation PUTouchingGestureRecognizer

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(PUTouchingGestureRecognizer *)self setState:4];
  v6 = [v5 count];

  [(PUTouchingGestureRecognizer *)self _decrementTouchesBy:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(PUTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(PUTouchingGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)_setTouchCount:(unint64_t)a3
{
  touchCount = self->__touchCount;
  if (touchCount != a3)
  {
    self->__touchCount = a3;
    if (a3)
    {
      if (touchCount)
      {
        return;
      }

      v4 = 1;
    }

    else
    {
      v4 = 3;
    }

    [(PUTouchingGestureRecognizer *)self setState:v4];
  }
}

- (void)_decrementTouchesBy:(unint64_t)a3
{
  if ([(PUTouchingGestureRecognizer *)self _touchCount]>= a3)
  {
    v5 = [(PUTouchingGestureRecognizer *)self _touchCount]- a3;
  }

  else
  {
    v5 = 0;
  }

  [(PUTouchingGestureRecognizer *)self _setTouchCount:v5];
}

- (void)_incrementTouchesBy:(unint64_t)a3
{
  v4 = [(PUTouchingGestureRecognizer *)self _touchCount]+ a3;

  [(PUTouchingGestureRecognizer *)self _setTouchCount:v4];
}

@end