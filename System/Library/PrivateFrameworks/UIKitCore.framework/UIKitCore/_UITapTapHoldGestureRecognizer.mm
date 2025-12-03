@interface _UITapTapHoldGestureRecognizer
- (BOOL)_shouldFailInResponseToPresses:(id)presses withEvent:(id)event;
- (_UITapTapHoldGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)cancelPendingHoldToAction;
- (void)cancelPendingTooSlowForDoubleTap;
- (void)holdToAction:(id)action;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)reset;
- (void)tooSlowForDoubleTap:(id)tap;
@end

@implementation _UITapTapHoldGestureRecognizer

- (_UITapTapHoldGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v5.receiver = self;
  v5.super_class = _UITapTapHoldGestureRecognizer;
  return [(UITapGestureRecognizer *)&v5 initWithTarget:target action:action];
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

- (void)pressesBegan:(id)began withEvent:(id)event
{
  if ([(_UITapTapHoldGestureRecognizer *)self _shouldFailInResponseToPresses:began withEvent:event])
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

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v5 = CACurrentMediaTime();
  v6 = v5;
  if (!self->_isInHoldToAction && v5 - self->_pressEventBeginTimestamp > 0.75)
  {
    selfCopy2 = self;
    v8 = 5;
LABEL_15:

    [(UIGestureRecognizer *)selfCopy2 setState:v8];
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
    selfCopy2 = self;
    v8 = 3;
    goto LABEL_15;
  }

  if (currentNumberOfPresses == 1)
  {

    [(_UITapTapHoldGestureRecognizer *)self scheduleTooSlowForDoubleTap];
  }
}

- (void)tooSlowForDoubleTap:(id)tap
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

- (void)holdToAction:(id)action
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

- (BOOL)_shouldFailInResponseToPresses:(id)presses withEvent:(id)event
{
  pressesCopy = presses;
  if (+[UIDictationUtilities _isUsingLargeFormatDictationUI])
  {
    allowedTouchTypes = [(UIGestureRecognizer *)self allowedTouchTypes];
    if ([allowedTouchTypes containsObject:&unk_1EFE31390])
    {
      v7 = _UIPressesContainsPressType(pressesCopy, 4);

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
    allowedPressTypes = [(UIGestureRecognizer *)self allowedPressTypes];
    v8 = _UIPressesOnlyContainsPressTypes(pressesCopy, allowedPressTypes) ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

LABEL_10:

  return v8;
}

@end