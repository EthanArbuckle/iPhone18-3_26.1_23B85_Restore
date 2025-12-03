@interface PXTouchingUIGestureRecognizer
- (CGPoint)_initialPointInView;
- (CGPoint)initialLocationInView:(id)view;
- (PXTouchingUIGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (PXTouchingUIGestureRecognizerDelegate)touchDelegate;
- (void)_beginWithRequestID:(unint64_t)d;
- (void)_decrementTouchesBy:(unint64_t)by;
- (void)_incrementTouchesBy:(unint64_t)by;
- (void)_setDidBegin:(BOOL)begin;
- (void)_setTouchCount:(unint64_t)count;
- (void)_setWillBegin:(BOOL)begin;
- (void)setEnabled:(BOOL)enabled;
- (void)setState:(int64_t)state;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
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

- (void)setState:(int64_t)state
{
  if (state <= 5 && ((0x3Bu >> state) & 1) != 0)
  {
    v5 = 6u >> state;
    [(PXTouchingUIGestureRecognizer *)self _setWillBegin:(6u >> state) & 1];
    v6.receiver = self;
    v6.super_class = PXTouchingUIGestureRecognizer;
    [(PXTouchingUIGestureRecognizer *)&v6 setState:state];
    [(PXTouchingUIGestureRecognizer *)self _setDidBegin:v5 & 1];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXTouchingUIGestureRecognizer;
    [(PXTouchingUIGestureRecognizer *)&v6 setState:state];
  }
}

- (void)_setDidBegin:(BOOL)begin
{
  if (self->__didBegin != begin)
  {
    beginCopy = begin;
    self->__didBegin = begin;
    touchDelegate = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
    if (beginCopy)
    {
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      touchDelegate2 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
      [touchDelegate2 touchingUIGestureRecognizerDidBeginTouching:self];
    }

    else
    {
      v7 = objc_opt_respondsToSelector();

      if ((v7 & 1) == 0)
      {
        return;
      }

      touchDelegate2 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
      [touchDelegate2 touchingUIGestureRecognizerDidEndTouching:self];
    }
  }
}

- (void)_setWillBegin:(BOOL)begin
{
  if (self->__willBegin != begin)
  {
    beginCopy = begin;
    self->__willBegin = begin;
    touchDelegate = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
    if (beginCopy)
    {
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      touchDelegate2 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
      [touchDelegate2 touchingUIGestureRecognizerWillBeginTouching:self];
    }

    else
    {
      v7 = objc_opt_respondsToSelector();

      if ((v7 & 1) == 0)
      {
        return;
      }

      touchDelegate2 = [(PXTouchingUIGestureRecognizer *)self touchDelegate];
      [touchDelegate2 touchingUIGestureRecognizerWillEndTouching:self];
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = PXTouchingUIGestureRecognizer;
  [(PXTouchingUIGestureRecognizer *)&v5 setEnabled:?];
  if (!enabled)
  {
    [(PXTouchingUIGestureRecognizer *)self _setTouchCount:0];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = PXTouchingUIGestureRecognizer;
  [(PXTouchingUIGestureRecognizer *)&v14 touchesMoved:moved withEvent:event];
  view = [(PXTouchingUIGestureRecognizer *)self view];
  [(PXTouchingUIGestureRecognizer *)self locationInView:view];
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

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  cancelledCopy = cancelled;
  [(PXTouchingUIGestureRecognizer *)self setState:4];
  v6 = [cancelledCopy count];

  [(PXTouchingUIGestureRecognizer *)self _decrementTouchesBy:v6];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [ended count];

  [(PXTouchingUIGestureRecognizer *)self _decrementTouchesBy:v5];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5 = [began count];

  [(PXTouchingUIGestureRecognizer *)self _incrementTouchesBy:v5];
}

- (void)_beginWithRequestID:(unint64_t)d
{
  if ([(PXTouchingUIGestureRecognizer *)self _beginRequestID]== d)
  {

    [(PXTouchingUIGestureRecognizer *)self setState:1];
  }
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

      view = [(PXTouchingUIGestureRecognizer *)self view];
      [(PXTouchingUIGestureRecognizer *)self locationInView:view];
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

      selfCopy2 = self;
      v15 = 1;
    }

    else
    {
      [(PXTouchingUIGestureRecognizer *)self _setBeginRequestID:[(PXTouchingUIGestureRecognizer *)self _beginRequestID]+ 1];
      selfCopy2 = self;
      v15 = 3;
    }

    [(PXTouchingUIGestureRecognizer *)selfCopy2 setState:v15];
  }
}

- (void)_decrementTouchesBy:(unint64_t)by
{
  if ([(PXTouchingUIGestureRecognizer *)self _touchCount]>= by)
  {
    v5 = [(PXTouchingUIGestureRecognizer *)self _touchCount]- by;
  }

  else
  {
    v5 = 0;
  }

  [(PXTouchingUIGestureRecognizer *)self _setTouchCount:v5];
}

- (void)_incrementTouchesBy:(unint64_t)by
{
  v4 = [(PXTouchingUIGestureRecognizer *)self _touchCount]+ by;

  [(PXTouchingUIGestureRecognizer *)self _setTouchCount:v4];
}

- (CGPoint)initialLocationInView:(id)view
{
  viewCopy = view;
  [(PXTouchingUIGestureRecognizer *)self _initialPointInView];
  v6 = v5;
  v8 = v7;
  view = [(PXTouchingUIGestureRecognizer *)self view];
  [viewCopy convertPoint:view fromView:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.y = v15;
  result.x = v14;
  return result;
}

- (PXTouchingUIGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = PXTouchingUIGestureRecognizer;
  result = [(PXTouchingUIGestureRecognizer *)&v5 initWithTarget:target action:action];
  if (result)
  {
    result->_maximumTouchMovement = 1.79769313e308;
    result->_minimumTouchDuration = 0.0;
  }

  return result;
}

@end