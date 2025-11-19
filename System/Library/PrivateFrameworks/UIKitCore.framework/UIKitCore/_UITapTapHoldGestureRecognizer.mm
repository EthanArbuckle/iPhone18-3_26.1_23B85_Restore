@interface _UITapTapHoldGestureRecognizer
- (BOOL)_shouldFailInResponseToPresses:(id)a3 withEvent:(id)a4;
- (_UITapTapHoldGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)cancelPendingHoldToAction;
- (void)cancelPendingTooSlowForDoubleTap;
- (void)holdToAction:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)reset;
- (void)tooSlowForDoubleTap:(id)a3;
@end

@implementation _UITapTapHoldGestureRecognizer

- (_UITapTapHoldGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v5.receiver = self;
  v5.super_class = _UITapTapHoldGestureRecognizer;
  return [(UITapGestureRecognizer *)&v5 initWithTarget:a3 action:a4];
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = _UITapTapHoldGestureRecognizer;
  [(UIGestureRecognizer *)&v3 reset];
  [(_UITapTapHoldGestureRecognizer *)self cancelPendingHoldToAction];
  [(_UITapTapHoldGestureRecognizer *)self cancelPendingTooSlowForDoubleTap];
  self->_gestureType = 0;
  self->_startTime = 0.0;
  self->_pressEventBeginTimestamp = 0.0;
  self->_isInHoldToAction = 0;
  self->_currentNumberOfPresses = 0;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  if ([(_UITapTapHoldGestureRecognizer *)self _shouldFailInResponseToPresses:a3 withEvent:a4])
  {

    [(UIGestureRecognizer *)self setState:5];
  }

  else
  {
    v5 = CACurrentMediaTime();
    self->_pressEventBeginTimestamp = v5;
    if (self->_startTime == 0.0)
    {
      self->_startTime = v5;
    }

    v6 = self->_currentNumberOfPresses + 1;
    self->_currentNumberOfPresses = v6;
    if (v6 == 2)
    {
      [(_UITapTapHoldGestureRecognizer *)self cancelPendingTooSlowForDoubleTap];

      [(_UITapTapHoldGestureRecognizer *)self scheduleHoldToAction];
    }
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v5 = CACurrentMediaTime();
  v6 = v5;
  if (!self->_isInHoldToAction && v5 - self->_pressEventBeginTimestamp > 0.75)
  {
    v7 = self;
    v8 = 5;
LABEL_15:

    [(UIGestureRecognizer *)v7 setState:v8];
    return;
  }

  currentNumberOfPresses = self->_currentNumberOfPresses;
  if (currentNumberOfPresses == 2)
  {
    pressEventBeginTimestamp = self->_pressEventBeginTimestamp;
    if ([(_UITapTapHoldGestureRecognizer *)self isInHoldToAction]&& (v11 = v6 - pressEventBeginTimestamp, v6 - pressEventBeginTimestamp > 0.5))
    {
      v12 = 4;
    }

    else
    {
      [(_UITapTapHoldGestureRecognizer *)self cancelPendingHoldToAction];
      v12 = 2;
    }

    [(_UITapTapHoldGestureRecognizer *)self setGestureType:v12, v11];
    v7 = self;
    v8 = 3;
    goto LABEL_15;
  }

  if (currentNumberOfPresses == 1)
  {

    [(_UITapTapHoldGestureRecognizer *)self scheduleTooSlowForDoubleTap];
  }
}

- (void)tooSlowForDoubleTap:(id)a3
{
  self->_isWaitingForTooSlowForDoubleTap = 0;
  [(_UITapTapHoldGestureRecognizer *)self setGestureType:1];

  [(UIGestureRecognizer *)self setState:3];
}

- (void)cancelPendingTooSlowForDoubleTap
{
  if (self->_isWaitingForTooSlowForDoubleTap)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_tooSlowForDoubleTap_ object:0];
    self->_isWaitingForTooSlowForDoubleTap = 0;
  }
}

- (void)holdToAction:(id)a3
{
  self->_isWaitingForHoldToAction = 0;
  if ([(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateEnded && [(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateCancelled)
  {
    [(_UITapTapHoldGestureRecognizer *)self setGestureType:3];
    [(_UITapTapHoldGestureRecognizer *)self setIsInHoldToAction:1];

    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)cancelPendingHoldToAction
{
  if (self->_isWaitingForHoldToAction)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_holdToAction_ object:0];
    self->_isWaitingForHoldToAction = 0;
  }
}

- (BOOL)_shouldFailInResponseToPresses:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
  {
    v6 = [(UIGestureRecognizer *)self allowedTouchTypes];
    if ([v6 containsObject:&unk_1EFE31390])
    {
      v7 = _UIPressesContainsPressType(v5, 4);

      if (v7)
      {
        LOBYTE(v8) = 1;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (-[UITapGestureRecognizer isSingleKeyPressGesture](self, "isSingleKeyPressGesture") && (-[UIGestureRecognizer allowedPressTypes](self, "allowedPressTypes"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10))
  {
    v11 = [(UIGestureRecognizer *)self allowedPressTypes];
    v8 = _UIPressesOnlyContainsPressTypes(v5, v11) ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

LABEL_10:

  return v8;
}

@end