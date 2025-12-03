@interface PUTouchingGestureRecognizer
- (void)_decrementTouchesBy:(unint64_t)by;
- (void)_incrementTouchesBy:(unint64_t)by;
- (void)_setTouchCount:(unint64_t)count;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation PUTouchingGestureRecognizer

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  [(PUTouchingGestureRecognizer *)self setState:4];
  v6 = [cancelledCopy count];

  [(PUTouchingGestureRecognizer *)self _decrementTouchesBy:v6];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [ended count];

  [(PUTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5 = [began count];

  [(PUTouchingGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)_setTouchCount:(unint64_t)count
{
  touchCount = self->__touchCount;
  if (touchCount != count)
  {
    self->__touchCount = count;
    if (count)
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

- (void)_decrementTouchesBy:(unint64_t)by
{
  if ([(PUTouchingGestureRecognizer *)self _touchCount]>= by)
  {
    v5 = [(PUTouchingGestureRecognizer *)self _touchCount]- by;
  }

  else
  {
    v5 = 0;
  }

  [(PUTouchingGestureRecognizer *)self _setTouchCount:v5];
}

- (void)_incrementTouchesBy:(unint64_t)by
{
  v4 = [(PUTouchingGestureRecognizer *)self _touchCount]+ by;

  [(PUTouchingGestureRecognizer *)self _setTouchCount:v4];
}

@end