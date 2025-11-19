@interface ISTouchingGestureRecognizer
- (CGPoint)_initialPointInView;
- (ISTouchingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_beginWithRequestID:(unint64_t)a3;
- (void)_decrementTouchesBy:(unint64_t)a3;
- (void)_incrementTouchesBy:(unint64_t)a3;
- (void)_setInitialPointInView:(CGPoint)a3;
- (void)_setTouchCount:(unint64_t)a3;
- (void)_updateDistanceFromInitialPoint;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setEnabled:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation ISTouchingGestureRecognizer

- (CGPoint)_initialPointInView
{
  x = self->__initialPointInView.x;
  y = self->__initialPointInView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateDistanceFromInitialPoint
{
  v3 = [(ISTouchingGestureRecognizer *)self view];
  [(ISTouchingGestureRecognizer *)self locationInView:v3];
  v5 = v4;
  v7 = v6;

  [(ISTouchingGestureRecognizer *)self _initialPointInView];
  self->_distanceFromInitialPoint = sqrt((v7 - v9) * (v7 - v9) + (v5 - v8) * (v5 - v8));
}

- (void)_setInitialPointInView:(CGPoint)a3
{
  if (a3.x != self->__initialPointInView.x || a3.y != self->__initialPointInView.y)
  {
    self->__initialPointInView = a3;
    [(ISTouchingGestureRecognizer *)self _updateDistanceFromInitialPoint];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ISTouchingGestureRecognizer;
  [(ISTouchingGestureRecognizer *)&v5 setEnabled:?];
  if (!a3)
  {
    self->_distanceFromInitialPoint = 0.0;
    [(ISTouchingGestureRecognizer *)self _setTouchCount:0];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(ISTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(ISTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  [(ISTouchingGestureRecognizer *)self _updateDistanceFromInitialPoint:a3];
  [(ISTouchingGestureRecognizer *)self distanceFromInitialPoint];
  v6 = v5;
  [(ISTouchingGestureRecognizer *)self maximumTouchMovement];
  if (v6 > v7)
  {

    [(ISTouchingGestureRecognizer *)self setState:4];
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(ISTouchingGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = ISTouchingGestureRecognizer;
  [(ISTouchingGestureRecognizer *)&v8 touchesMoved:a3 withEvent:a4];
  [(ISTouchingGestureRecognizer *)self _updateDistanceFromInitialPoint];
  [(ISTouchingGestureRecognizer *)self distanceFromInitialPoint];
  v6 = v5;
  [(ISTouchingGestureRecognizer *)self maximumTouchMovement];
  if (v6 > v7)
  {
    [(ISTouchingGestureRecognizer *)self setState:4];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(ISTouchingGestureRecognizer *)self setState:4];
  v6 = [v5 count];

  [(ISTouchingGestureRecognizer *)self _decrementTouchesBy:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(ISTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(ISTouchingGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)_beginWithRequestID:(unint64_t)a3
{
  if ([(ISTouchingGestureRecognizer *)self _beginRequestID]== a3)
  {

    [(ISTouchingGestureRecognizer *)self setState:1];
  }
}

- (void)_setTouchCount:(unint64_t)a3
{
  touchCount = self->__touchCount;
  if (touchCount != a3)
  {
    self->__touchCount = a3;
    if (!a3 || (v6 = [(ISTouchingGestureRecognizer *)self requireSingleTouch], a3 != 1) && v6)
    {
      [(ISTouchingGestureRecognizer *)self _setBeginRequestID:[(ISTouchingGestureRecognizer *)self _beginRequestID]+ 1];
      [(ISTouchingGestureRecognizer *)self setState:3];
    }

    if (a3 && !touchCount)
    {
      [(ISTouchingGestureRecognizer *)self minimumTouchDuration];
      if (v7 <= 0.0)
      {

        [(ISTouchingGestureRecognizer *)self setState:1];
      }

      else
      {
        v8 = ([(ISTouchingGestureRecognizer *)self _beginRequestID]+ 1);
        [(ISTouchingGestureRecognizer *)self _setBeginRequestID:v8];
        objc_initWeak(&location, self);
        [(ISTouchingGestureRecognizer *)self minimumTouchDuration];
        v10 = v9;
        [(ISTouchingGestureRecognizer *)self extraMinimumTouchDuration];
        v12 = dispatch_time(0, ((v10 + v11) * 1000000000.0));
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__ISTouchingGestureRecognizer__setTouchCount___block_invoke;
        block[3] = &unk_279A2A018;
        objc_copyWeak(v14, &location);
        v14[1] = v8;
        dispatch_after(v12, MEMORY[0x277D85CD0], block);
        objc_destroyWeak(v14);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __46__ISTouchingGestureRecognizer__setTouchCount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _beginWithRequestID:*(a1 + 40)];
}

- (void)_decrementTouchesBy:(unint64_t)a3
{
  if ([(ISTouchingGestureRecognizer *)self _touchCount]>= a3)
  {
    v5 = [(ISTouchingGestureRecognizer *)self _touchCount]- a3;
  }

  else
  {
    v5 = 0;
  }

  [(ISTouchingGestureRecognizer *)self _setTouchCount:v5];
}

- (void)_incrementTouchesBy:(unint64_t)a3
{
  v5 = [(ISTouchingGestureRecognizer *)self _touchCount];
  v6 = v5 + a3;
  if (!v5 && v6)
  {
    v7 = [(ISTouchingGestureRecognizer *)self view];
    [(ISTouchingGestureRecognizer *)self locationInView:v7];
    v9 = v8;
    v11 = v10;

    [(ISTouchingGestureRecognizer *)self _setInitialPointInView:v9, v11];
  }

  [(ISTouchingGestureRecognizer *)self _setTouchCount:v6];
}

- (ISTouchingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = ISTouchingGestureRecognizer;
  result = [(ISTouchingGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
  if (result)
  {
    result->_maximumTouchMovement = 1.79769313e308;
    result->_minimumTouchDuration = 0.0;
  }

  return result;
}

@end