@interface PXTouchingUIGestureRecognizer
- (CGPoint)_initialPointInView;
- (CGPoint)initialLocationInView:(id)a3;
- (PXTouchingUIGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (PXTouchingUIGestureRecognizerDelegate)touchDelegate;
- (void)_beginWithRequestID:(unint64_t)a3;
- (void)_decrementTouchesBy:(unint64_t)a3;
- (void)_incrementTouchesBy:(unint64_t)a3;
- (void)_setDidBegin:(BOOL)a3;
- (void)_setTouchCount:(unint64_t)a3;
- (void)_setWillBegin:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setState:(int64_t)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation PXTouchingUIGestureRecognizer

- (CGPoint)_initialPointInView
{
  x = self->__initialPointInView.x;
  y = self->__initialPointInView.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXTouchingUIGestureRecognizerDelegate)touchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_touchDelegate);

  return WeakRetained;
}

- (void)setState:(int64_t)a3
{
  if (a3 <= 5 && ((0x3Bu >> a3) & 1) != 0)
  {
    v5 = 6u >> a3;
    [(PXTouchingUIGestureRecognizer *)self _setWillBegin:(6u >> a3) & 1];
    v6.receiver = self;
    v6.super_class = PXTouchingUIGestureRecognizer;
    [(PXTouchingUIGestureRecognizer *)&v6 setState:a3];
    [(PXTouchingUIGestureRecognizer *)self _setDidBegin:v5 & 1];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXTouchingUIGestureRecognizer;
    [(PXTouchingUIGestureRecognizer *)&v6 setState:a3];
  }
}

- (void)_setDidBegin:(BOOL)a3
{
  if (self->__didBegin != a3)
  {
    v3 = a3;
    self->__didBegin = a3;
    v5 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
    if (v3)
    {
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v8 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
      [v8 touchingUIGestureRecognizerDidBeginTouching:self];
    }

    else
    {
      v7 = objc_opt_respondsToSelector();

      if ((v7 & 1) == 0)
      {
        return;
      }

      v8 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
      [v8 touchingUIGestureRecognizerDidEndTouching:self];
    }
  }
}

- (void)_setWillBegin:(BOOL)a3
{
  if (self->__willBegin != a3)
  {
    v3 = a3;
    self->__willBegin = a3;
    v5 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
    if (v3)
    {
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v8 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
      [v8 touchingUIGestureRecognizerWillBeginTouching:self];
    }

    else
    {
      v7 = objc_opt_respondsToSelector();

      if ((v7 & 1) == 0)
      {
        return;
      }

      v8 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
      [v8 touchingUIGestureRecognizerWillEndTouching:self];
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PXTouchingUIGestureRecognizer;
  [(PXTouchingUIGestureRecognizer *)&v5 setEnabled:?];
  if (!a3)
  {
    [(PXTouchingUIGestureRecognizer *)self _setTouchCount:0];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v14.receiver = self;
  v14.super_class = PXTouchingUIGestureRecognizer;
  [(PXTouchingUIGestureRecognizer *)&v14 touchesMoved:a3 withEvent:a4];
  v5 = [(PXTouchingUIGestureRecognizer *)self view];
  [(PXTouchingUIGestureRecognizer *)self locationInView:v5];
  v7 = v6;
  v9 = v8;

  [(PXTouchingUIGestureRecognizer *)self _initialPointInView];
  v12 = sqrt((v9 - v11) * (v9 - v11) + (v7 - v10) * (v7 - v10));
  [(PXTouchingUIGestureRecognizer *)self maximumTouchMovement];
  if (v12 > v13)
  {
    [(PXTouchingUIGestureRecognizer *)self setState:4];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(PXTouchingUIGestureRecognizer *)self setState:4];
  v6 = [v5 count];

  [(PXTouchingUIGestureRecognizer *)self _decrementTouchesBy:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(PXTouchingUIGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [a3 count];

  [(PXTouchingUIGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)_beginWithRequestID:(unint64_t)a3
{
  if ([(PXTouchingUIGestureRecognizer *)self _beginRequestID]== a3)
  {

    [(PXTouchingUIGestureRecognizer *)self setState:1];
  }
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

      v5 = [(PXTouchingUIGestureRecognizer *)self view];
      [(PXTouchingUIGestureRecognizer *)self locationInView:v5];
      v7 = v6;
      v9 = v8;

      [(PXTouchingUIGestureRecognizer *)self _setInitialPointInView:v7, v9];
      [(PXTouchingUIGestureRecognizer *)self minimumTouchDuration];
      if (v10 > 0.0)
      {
        v11 = [(PXTouchingUIGestureRecognizer *)self _beginRequestID]+ 1;
        [(PXTouchingUIGestureRecognizer *)self _setBeginRequestID:v11];
        [(PXTouchingUIGestureRecognizer *)self minimumTouchDuration];
        v13 = dispatch_time(0, (v12 * 1000000000.0));
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __48__PXTouchingUIGestureRecognizer__setTouchCount___block_invoke;
        v16[3] = &unk_1E7BB81A0;
        v16[4] = self;
        v16[5] = v11;
        dispatch_after(v13, MEMORY[0x1E69E96A0], v16);
        return;
      }

      v14 = self;
      v15 = 1;
    }

    else
    {
      [(PXTouchingUIGestureRecognizer *)self _setBeginRequestID:[(PXTouchingUIGestureRecognizer *)self _beginRequestID]+ 1];
      v14 = self;
      v15 = 3;
    }

    [(PXTouchingUIGestureRecognizer *)v14 setState:v15];
  }
}

- (void)_decrementTouchesBy:(unint64_t)a3
{
  if ([(PXTouchingUIGestureRecognizer *)self _touchCount]>= a3)
  {
    v5 = [(PXTouchingUIGestureRecognizer *)self _touchCount]- a3;
  }

  else
  {
    v5 = 0;
  }

  [(PXTouchingUIGestureRecognizer *)self _setTouchCount:v5];
}

- (void)_incrementTouchesBy:(unint64_t)a3
{
  v4 = [(PXTouchingUIGestureRecognizer *)self _touchCount]+ a3;

  [(PXTouchingUIGestureRecognizer *)self _setTouchCount:v4];
}

- (CGPoint)initialLocationInView:(id)a3
{
  v4 = a3;
  [(PXTouchingUIGestureRecognizer *)self _initialPointInView];
  v6 = v5;
  v8 = v7;
  v9 = [(PXTouchingUIGestureRecognizer *)self view];
  [v4 convertPoint:v9 fromView:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (PXTouchingUIGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = PXTouchingUIGestureRecognizer;
  result = [(PXTouchingUIGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
  if (result)
  {
    result->_maximumTouchMovement = 1.79769313e308;
    result->_minimumTouchDuration = 0.0;
  }

  return result;
}

@end