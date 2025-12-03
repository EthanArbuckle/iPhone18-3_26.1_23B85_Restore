@interface ISTouchingGestureRecognizer
- (CGPoint)_initialPointInView;
- (ISTouchingGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_beginWithRequestID:(unint64_t)d;
- (void)_decrementTouchesBy:(unint64_t)by;
- (void)_incrementTouchesBy:(unint64_t)by;
- (void)_setInitialPointInView:(CGPoint)view;
- (void)_setTouchCount:(unint64_t)count;
- (void)_updateDistanceFromInitialPoint;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setEnabled:(BOOL)enabled;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
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
  view = [(ISTouchingGestureRecognizer *)self view];
  [(ISTouchingGestureRecognizer *)self locationInView:view];
  v5 = v4;
  v7 = v6;

  [(ISTouchingGestureRecognizer *)self _initialPointInView];
  self->_distanceFromInitialPoint = sqrt((v7 - v9) * (v7 - v9) + (v5 - v8) * (v5 - v8));
}

- (void)_setInitialPointInView:(CGPoint)view
{
  if (view.x != self->__initialPointInView.x || view.y != self->__initialPointInView.y)
  {
    self->__initialPointInView = view;
    [(ISTouchingGestureRecognizer *)self _updateDistanceFromInitialPoint];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = ISTouchingGestureRecognizer;
  [(ISTouchingGestureRecognizer *)&v5 setEnabled:?];
  if (!enabled)
  {
    self->_distanceFromInitialPoint = 0.0;
    [(ISTouchingGestureRecognizer *)self _setTouchCount:0];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v5 = [cancelled count];

  [(ISTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v5 = [ended count];

  [(ISTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  [(ISTouchingGestureRecognizer *)self _updateDistanceFromInitialPoint:changed];
  [(ISTouchingGestureRecognizer *)self distanceFromInitialPoint];
  v6 = v5;
  [(ISTouchingGestureRecognizer *)self maximumTouchMovement];
  if (v6 > v7)
  {

    [(ISTouchingGestureRecognizer *)self setState:4];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v5 = [began count];

  [(ISTouchingGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = ISTouchingGestureRecognizer;
  [(ISTouchingGestureRecognizer *)&v8 touchesMoved:moved withEvent:event];
  [(ISTouchingGestureRecognizer *)self _updateDistanceFromInitialPoint];
  [(ISTouchingGestureRecognizer *)self distanceFromInitialPoint];
  v6 = v5;
  [(ISTouchingGestureRecognizer *)self maximumTouchMovement];
  if (v6 > v7)
  {
    [(ISTouchingGestureRecognizer *)self setState:4];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  [(ISTouchingGestureRecognizer *)self setState:4];
  v6 = [cancelledCopy count];

  [(ISTouchingGestureRecognizer *)self _decrementTouchesBy:v6];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [ended count];

  [(ISTouchingGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5 = [began count];

  [(ISTouchingGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)_beginWithRequestID:(unint64_t)d
{
  if ([(ISTouchingGestureRecognizer *)self _beginRequestID]== d)
  {

    [(ISTouchingGestureRecognizer *)self setState:1];
  }
}

- (void)_setTouchCount:(unint64_t)count
{
  touchCount = self->__touchCount;
  if (touchCount != count)
  {
    self->__touchCount = count;
    if (!count || (v6 = [(ISTouchingGestureRecognizer *)self requireSingleTouch], count != 1) && v6)
    {
      [(ISTouchingGestureRecognizer *)self _setBeginRequestID:[(ISTouchingGestureRecognizer *)self _beginRequestID]+ 1];
      [(ISTouchingGestureRecognizer *)self setState:3];
    }

    if (count && !touchCount)
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

- (void)_decrementTouchesBy:(unint64_t)by
{
  if ([(ISTouchingGestureRecognizer *)self _touchCount]>= by)
  {
    v5 = [(ISTouchingGestureRecognizer *)self _touchCount]- by;
  }

  else
  {
    v5 = 0;
  }

  [(ISTouchingGestureRecognizer *)self _setTouchCount:v5];
}

- (void)_incrementTouchesBy:(unint64_t)by
{
  _touchCount = [(ISTouchingGestureRecognizer *)self _touchCount];
  v6 = _touchCount + by;
  if (!_touchCount && v6)
  {
    view = [(ISTouchingGestureRecognizer *)self view];
    [(ISTouchingGestureRecognizer *)self locationInView:view];
    v9 = v8;
    v11 = v10;

    [(ISTouchingGestureRecognizer *)self _setInitialPointInView:v9, v11];
  }

  [(ISTouchingGestureRecognizer *)self _setTouchCount:v6];
}

- (ISTouchingGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = ISTouchingGestureRecognizer;
  result = [(ISTouchingGestureRecognizer *)&v5 initWithTarget:target action:action];
  if (result)
  {
    result->_maximumTouchMovement = 1.79769313e308;
    result->_minimumTouchDuration = 0.0;
  }

  return result;
}

@end