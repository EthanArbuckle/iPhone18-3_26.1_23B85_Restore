@interface _UIPassthroughScrollGestureRecognizer
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (BOOL)shouldReceiveEvent:(id)event;
- (_UIPassthroughScrollGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_beginAtLocation:(CGPoint)location;
- (void)_scrollingChangedWithEvent:(id)event;
- (void)_setAcceptsFailureRequirements:(BOOL)requirements;
- (void)_transformChangedWithEvent:(id)event;
- (void)reset;
- (void)setView:(id)view;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIPassthroughScrollGestureRecognizer

- (_UIPassthroughScrollGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIPassthroughScrollGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    *(&v4->super._gestureFlags + 4) &= ~0x10u;
    [(UIGestureRecognizer *)v4 _setRequiresSystemGesturesToFail:1];
    *&v5->_flags |= 2u;
  }

  return v5;
}

- (void)setView:(id)view
{
  if (view)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPassthroughScrollGestureRecognizer.m" lineNumber:69 description:{@"%@ can only be added to a window", v8}];
    }
  }

  v9.receiver = self;
  v9.super_class = _UIPassthroughScrollGestureRecognizer;
  [(UIGestureRecognizer *)&v9 setView:view];
}

- (void)_setAcceptsFailureRequirements:(BOOL)requirements
{
  if (requirements)
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

- (void)_beginAtLocation:(CGPoint)location
{
  self->_startPoint = location;
  self->_startTime = CACurrentMediaTime();
  self->_endReason = 0;

  [(UIGestureRecognizer *)self setState:1];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    view = [(UIGestureRecognizer *)self view];
    [(UIGestureRecognizer *)self locationInView:view];
    [(_UIPassthroughScrollGestureRecognizer *)self _beginAtLocation:?];

    *&self->_flags = *&self->_flags & 0xFE | (([(UIGestureRecognizer *)self modifierFlags]& 0x100000) != 0);
    if (-[_UIPassthroughScrollGestureRecognizer endForSecondaryButtonDown](self, "endForSecondaryButtonDown") && ([event buttonMask] & 2) != 0)
    {
      v7 = 5;
    }

    else
    {
      if (!-[_UIPassthroughScrollGestureRecognizer endForPrimaryButtonDown](self, "endForPrimaryButtonDown") || ([event buttonMask] & 1) == 0)
      {
        return;
      }

      v7 = 2;
    }

    [(_UIPassthroughScrollGestureRecognizer *)self _endWithReason:v7];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v5 = [(UIGestureRecognizer *)self view:moved];
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
    _window = [(_UIPassthroughScrollGestureRecognizer *)self _window];
    if ([_window _hasSystemGestureGate])
    {

LABEL_10:

      [(_UIPassthroughScrollGestureRecognizer *)self _endWithReason:4];
      return;
    }

    _window2 = [(_UIPassthroughScrollGestureRecognizer *)self _window];
    _systemGestureRecognitionIsPossible = [_window2 _systemGestureRecognitionIsPossible];

    if ((_systemGestureRecognitionIsPossible & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  [(UIGestureRecognizer *)self setState:2];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [(UIGestureRecognizer *)self view:ended];
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

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  delegate = [(UIGestureRecognizer *)self delegate];
  if (delegate)
  {
    view = [(UIGestureRecognizer *)self view];
    [touch locationInView:view];
    v10 = v9;
    v12 = v11;

    v13 = [delegate _passthroughGestureRecognizer:self shouldInteractAtLocation:event withEvent:{v10, v12}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldReceiveEvent:(id)event
{
  if ([_UIPassthroughScrollGestureRecognizer canHandleEventForPassthrough:?])
  {
    delegate = [(UIGestureRecognizer *)self delegate];
    if (delegate)
    {
      if ([event type] == 10 || objc_msgSend(event, "type") == 14)
      {
        view = [(UIGestureRecognizer *)self view];
        [event locationInView:view];
        v8 = v7;
        v10 = v9;

        v11 = [delegate _passthroughGestureRecognizer:self shouldInteractAtLocation:event withEvent:{v8, v10}];
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
    return [(UIGestureRecognizer *)&v13 shouldReceiveEvent:event];
  }

  return v11;
}

- (void)_scrollingChangedWithEvent:(id)event
{
  view = [(UIGestureRecognizer *)self view];
  [event locationInView:view];
  v7 = v6;
  v9 = v8;

  if ([event phase] == 2)
  {

    [(_UIPassthroughScrollGestureRecognizer *)self _beginAtLocation:v7, v9];
    return;
  }

  if ([event phase] == 5)
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

  view2 = [(UIGestureRecognizer *)self view];
  [event _adjustedAcceleratedDeltaInView:view2];
  v14 = v13;
  v16 = v15;

  v17 = v14 + self->_accumulatedScrollEventDelta.dx;
  v18 = v16 + self->_accumulatedScrollEventDelta.dy;
  self->_accumulatedScrollEventDelta.dx = v17;
  self->_accumulatedScrollEventDelta.dy = v18;
  if (sqrt(v17 * v17 + v18 * v18) > 10.0)
  {
    selfCopy2 = self;
    v11 = 4;
    goto LABEL_12;
  }

  if ([event phase] != 3)
  {
LABEL_7:
    selfCopy2 = self;
    v11 = 1;
LABEL_12:

    [(_UIPassthroughScrollGestureRecognizer *)selfCopy2 _endWithReason:v11];
    return;
  }

  [(UIGestureRecognizer *)self setState:2];
}

- (void)_transformChangedWithEvent:(id)event
{
  view = [(UIGestureRecognizer *)self view];
  [event locationInView:view];
  v7 = v6;
  v9 = v8;

  phase = [event phase];
  if ((phase - 2) < 2)
  {
    selfCopy2 = self;
    v12 = 6;
  }

  else
  {
    if (phase != 4)
    {
      if (phase == 1)
      {

        [(_UIPassthroughScrollGestureRecognizer *)self _beginAtLocation:v7, v9];
      }

      return;
    }

    selfCopy2 = self;
    v12 = 1;
  }

  [(_UIPassthroughScrollGestureRecognizer *)selfCopy2 _endWithReason:v12];
}

@end