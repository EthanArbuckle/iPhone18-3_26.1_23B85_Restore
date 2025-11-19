@interface _UIPassthroughScrollGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (BOOL)shouldReceiveEvent:(id)a3;
- (_UIPassthroughScrollGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_beginAtLocation:(CGPoint)a3;
- (void)_scrollingChangedWithEvent:(id)a3;
- (void)_setAcceptsFailureRequirements:(BOOL)a3;
- (void)_transformChangedWithEvent:(id)a3;
- (void)reset;
- (void)setView:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIPassthroughScrollGestureRecognizer

- (_UIPassthroughScrollGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIPassthroughScrollGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    *(&v4->super._gestureFlags + 4) &= ~0x10u;
    [(UIGestureRecognizer *)v4 _setRequiresSystemGesturesToFail:1];
    *&v5->_flags |= 2u;
  }

  return v5;
}

- (void)setView:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v6 handleFailureInMethod:a2 object:self file:@"_UIPassthroughScrollGestureRecognizer.m" lineNumber:69 description:{@"%@ can only be added to a window", v8}];
    }
  }

  v9.receiver = self;
  v9.super_class = _UIPassthroughScrollGestureRecognizer;
  [(UIGestureRecognizer *)&v9 setView:a3];
}

- (void)_setAcceptsFailureRequirements:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFD | v3;
}

- (void)reset
{
  self->_startPoint = *MEMORY[0x1E695EFF8];
  self->_startTime = 0.0;
  self->_accumulatedScrollEventDelta.dx = 0.0;
  self->_accumulatedScrollEventDelta.dy = 0.0;
  *&self->_flags &= ~1u;
}

- (void)_beginAtLocation:(CGPoint)a3
{
  self->_startPoint = a3;
  self->_startTime = CACurrentMediaTime();
  self->_endReason = 0;

  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    v6 = [(UIGestureRecognizer *)self view];
    [(UIGestureRecognizer *)self locationInView:v6];
    [(_UIPassthroughScrollGestureRecognizer *)self _beginAtLocation:?];

    *&self->_flags = *&self->_flags & 0xFE | (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) != 0);
    if (-[_UIPassthroughScrollGestureRecognizer endForSecondaryButtonDown](self, "endForSecondaryButtonDown") && ([a4 buttonMask] & 2) != 0)
    {
      v7 = 5;
    }

    else
    {
      if (!-[_UIPassthroughScrollGestureRecognizer endForPrimaryButtonDown](self, "endForPrimaryButtonDown") || ([a4 buttonMask] & 1) == 0)
      {
        return;
      }

      v7 = 2;
    }

    [(_UIPassthroughScrollGestureRecognizer *)self _endWithReason:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = [(UIGestureRecognizer *)self view:a3];
  [(UIGestureRecognizer *)self locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = sqrt((v7 - self->_startPoint.x) * (v7 - self->_startPoint.x) + (v9 - self->_startPoint.y) * (v9 - self->_startPoint.y));
  if (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) == 0)
  {
    *&self->_flags &= ~1u;
  }

  if (v10 > 10.0)
  {
    v11 = [(_UIPassthroughScrollGestureRecognizer *)self _window];
    if ([v11 _hasSystemGestureGate])
    {

LABEL_10:

      [(_UIPassthroughScrollGestureRecognizer *)self _endWithReason:4];
      return;
    }

    v12 = [(_UIPassthroughScrollGestureRecognizer *)self _window];
    v13 = [v12 _systemGestureRecognitionIsPossible];

    if ((v13 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  [(UIGestureRecognizer *)self setState:2];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [(UIGestureRecognizer *)self view:a3];
  [(UIGestureRecognizer *)self locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = sqrt((v7 - self->_startPoint.x) * (v7 - self->_startPoint.x) + (v9 - self->_startPoint.y) * (v9 - self->_startPoint.y));
  v11 = CACurrentMediaTime();
  startTime = self->_startTime;
  if (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) == 0)
  {
    *&self->_flags &= ~1u;
  }

  if (v10 <= 10.0)
  {
    if (v11 - startTime <= 1.5)
    {
      if (*&self->_flags)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 4;
  }

  [(_UIPassthroughScrollGestureRecognizer *)self _endWithReason:v13];
}

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v7 = [(UIGestureRecognizer *)self delegate];
  if (v7)
  {
    v8 = [(UIGestureRecognizer *)self view];
    [a3 locationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = [v7 _passthroughGestureRecognizer:self shouldInteractAtLocation:a4 withEvent:{v10, v12}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  if ([_UIPassthroughScrollGestureRecognizer canHandleEventForPassthrough:?])
  {
    v5 = [(UIGestureRecognizer *)self delegate];
    if (v5)
    {
      if ([a3 type] == 10 || objc_msgSend(a3, "type") == 14)
      {
        v6 = [(UIGestureRecognizer *)self view];
        [a3 locationInView:v6];
        v8 = v7;
        v10 = v9;

        v11 = [v5 _passthroughGestureRecognizer:self shouldInteractAtLocation:a3 withEvent:{v8, v10}];
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _UIPassthroughScrollGestureRecognizer;
    return [(UIGestureRecognizer *)&v13 shouldReceiveEvent:a3];
  }

  return v11;
}

- (void)_scrollingChangedWithEvent:(id)a3
{
  v5 = [(UIGestureRecognizer *)self view];
  [a3 locationInView:v5];
  v7 = v6;
  v9 = v8;

  if ([a3 phase] == 2)
  {

    [(_UIPassthroughScrollGestureRecognizer *)self _beginAtLocation:v7, v9];
    return;
  }

  if ([a3 phase] == 5)
  {
    if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateEnded)
    {
      return;
    }

    goto LABEL_7;
  }

  if (self->_startTime == 0.0)
  {
    return;
  }

  v12 = [(UIGestureRecognizer *)self view];
  [a3 _adjustedAcceleratedDeltaInView:v12];
  v14 = v13;
  v16 = v15;

  v17 = v14 + self->_accumulatedScrollEventDelta.dx;
  v18 = v16 + self->_accumulatedScrollEventDelta.dy;
  self->_accumulatedScrollEventDelta.dx = v17;
  self->_accumulatedScrollEventDelta.dy = v18;
  if (sqrt(v17 * v17 + v18 * v18) > 10.0)
  {
    v10 = self;
    v11 = 4;
    goto LABEL_12;
  }

  if ([a3 phase] != 3)
  {
LABEL_7:
    v10 = self;
    v11 = 1;
LABEL_12:

    [(_UIPassthroughScrollGestureRecognizer *)v10 _endWithReason:v11];
    return;
  }

  [(UIGestureRecognizer *)self setState:2];
}

- (void)_transformChangedWithEvent:(id)a3
{
  v5 = [(UIGestureRecognizer *)self view];
  [a3 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [a3 phase];
  if ((v10 - 2) < 2)
  {
    v11 = self;
    v12 = 6;
  }

  else
  {
    if (v10 != 4)
    {
      if (v10 == 1)
      {

        [(_UIPassthroughScrollGestureRecognizer *)self _beginAtLocation:v7, v9];
      }

      return;
    }

    v11 = self;
    v12 = 1;
  }

  [(_UIPassthroughScrollGestureRecognizer *)v11 _endWithReason:v12];
}

@end