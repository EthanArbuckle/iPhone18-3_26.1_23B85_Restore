@interface UITextMultiTapRecognizer
- (BOOL)_allowsEventWithRequiredButtonMask:(id)mask;
- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event;
- (BOOL)canPreventGestureRecognizer:(id)recognizer;
- (CGPoint)location;
- (CGPoint)locationInView:(id)view;
- (UITextMultiTapRecognizer)initWithTarget:(id)target tapAction:(SEL)action;
- (double)_touchSloppinessFactor;
- (unint64_t)tapCount;
- (void)onStateUpdate:(id)update;
- (void)reset;
- (void)tapRecognizerFailedToRecognizeTap:(id)tap;
- (void)tapRecognizerRecognizedTap:(id)tap;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UITextMultiTapRecognizer

- (UITextMultiTapRecognizer)initWithTarget:(id)target tapAction:(SEL)action
{
  targetCopy = target;
  v12.receiver = self;
  v12.super_class = UITextMultiTapRecognizer;
  v7 = [(UIGestureRecognizer *)&v12 initWithTarget:self action:sel_onStateUpdate_];
  if (v7)
  {
    v8 = objc_alloc_init(UITapRecognizer);
    tapRecognizer = v7->_tapRecognizer;
    v7->_tapRecognizer = v8;

    [(UITapRecognizer *)v7->_tapRecognizer setDelegate:v7];
    objc_storeWeak(&v7->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v7->_tapAction = actionCopy;
    [(UITapRecognizer *)v7->_tapRecognizer setNumberOfTouchesRequired:1];
    [(UITapRecognizer *)v7->_tapRecognizer setContinuousTapRecognition:1];
    [(UITapRecognizer *)v7->_tapRecognizer setAllowableMovement:45.0];
    [(UITapRecognizer *)v7->_tapRecognizer setMaximumTapDuration:0.75];
    [(UITapRecognizer *)v7->_tapRecognizer setMaximumIntervalBetweenSuccessiveTaps:0.35];
  }

  return v7;
}

- (void)onStateUpdate:(id)update
{
  updateCopy = update;
  if ([(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateBegan && [(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateChanged || self->_sendTapAction)
  {
    WeakRetained = objc_loadWeakRetained(&self->_target);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      if (self->_tapAction)
      {

        v6 = UIApp;
        if (self->_tapAction)
        {
          tapAction = self->_tapAction;
        }

        else
        {
          tapAction = 0;
        }

        v5 = objc_loadWeakRetained(&self->_target);
        [v6 sendAction:tapAction to:v5 from:self forEvent:0];
      }
    }

    self->_sendTapAction = 0;
  }
}

- (unint64_t)tapCount
{
  recognizesOnSubsequentTouchDowns = [(UITextMultiTapRecognizer *)self recognizesOnSubsequentTouchDowns];
  v4 = 5;
  if (recognizesOnSubsequentTouchDowns)
  {
    v4 = 4;
  }

  return *(&self->super.super.isa + OBJC_IVAR___UITextMultiTapRecognizer__tapRecognizer[v4]);
}

- (CGPoint)location
{
  view = [(UIGestureRecognizer *)self view];
  [(UITextMultiTapRecognizer *)self locationInView:view];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)tapRecognizerRecognizedTap:(id)tap
{
  touchDownCount = self->_touchDownCount;
  if (touchDownCount == [(UITextMultiTapRecognizer *)self minimumNumberOfTapsRequired])
  {
    v5 = 1;
LABEL_5:
    [(UIGestureRecognizer *)self setState:v5];
    goto LABEL_6;
  }

  v6 = self->_touchDownCount;
  if (v6 > [(UITextMultiTapRecognizer *)self minimumNumberOfTapsRequired])
  {
    v5 = 2;
    goto LABEL_5;
  }

LABEL_6:
  ++self->_tapCount;
  self->_sendTapAction = 1;
}

- (void)tapRecognizerFailedToRecognizeTap:(id)tap
{
  activeTouches = [(UITapRecognizer *)self->_tapRecognizer activeTouches];
  if ([activeTouches count])
  {

    v5 = 5;
  }

  else
  {
    touchDownCount = self->_touchDownCount;
    minimumNumberOfTapsRequired = [(UITextMultiTapRecognizer *)self minimumNumberOfTapsRequired];

    if (touchDownCount >= minimumNumberOfTapsRequired)
    {
      v5 = 3;
    }

    else
    {
      v5 = 5;
    }
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (double)_touchSloppinessFactor
{
  view = [(UIGestureRecognizer *)self view];
  [view _touchSloppinessFactor];
  v4 = v3;

  return v4;
}

- (CGPoint)locationInView:(id)view
{
  [(UITapRecognizer *)self->_tapRecognizer locationInView:view];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = UITextMultiTapRecognizer;
  [(UIGestureRecognizer *)&v3 reset];
  self->_sendTapAction = 0;
  [(UITextMultiTapRecognizer *)self resetTapCountForTapRecognizer:self->_tapRecognizer];
  [(UITapRecognizer *)self->_tapRecognizer _reset];
}

- (BOOL)canPreventGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy _isGestureType:0])
  {
    v5 = recognizerCopy;
    numberOfTouchesRequired = [v5 numberOfTouchesRequired];
    if (numberOfTouchesRequired == [(UITextMultiTapRecognizer *)self numberOfTouchesRequired])
    {
      v7 = [v5 numberOfTapsRequired] > 1;
LABEL_8:

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([recognizerCopy _isGestureType:1])
  {
    v5 = recognizerCopy;
    numberOfTouchesRequired2 = [v5 numberOfTouchesRequired];
    if (numberOfTouchesRequired2 == [(UITextMultiTapRecognizer *)self numberOfTouchesRequired])
    {
      v7 = [v5 numberOfTapsRequired] != 0;
      goto LABEL_8;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && [recognizerCopy numberOfFullTaps] > 0;
LABEL_9:

  return !v7;
}

- (BOOL)_shouldReceiveTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  if (([eventCopy modifierFlags] & 0x40000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UITextMultiTapRecognizer;
    v8 = [(UIGestureRecognizer *)&v10 _shouldReceiveTouch:touchCopy withEvent:eventCopy];
  }

  return v8;
}

- (BOOL)_allowsEventWithRequiredButtonMask:(id)mask
{
  maskCopy = mask;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = maskCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (self->_requiredButtonMask && [maskCopy _buttonMask] && objc_msgSend(v6, "_containsHIDPointerEvent"))
  {
    requiredButtonMask = self->_requiredButtonMask;
    v8 = ([maskCopy _buttonMask] & requiredButtonMask) == requiredButtonMask;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = UITextMultiTapRecognizer;
  eventCopy = event;
  beganCopy = began;
  [(UIGestureRecognizer *)&v9 touchesBegan:beganCopy withEvent:eventCopy];
  [(UITapRecognizer *)self->_tapRecognizer touchesBegan:beganCopy withEvent:eventCopy, v9.receiver, v9.super_class];

  LODWORD(beganCopy) = [(UITextMultiTapRecognizer *)self _allowsEventWithRequiredButtonMask:eventCopy];
  if (!beganCopy)
  {
    v8 = 5;
    goto LABEL_6;
  }

  ++self->_touchDownCount;
  if ([(UITextMultiTapRecognizer *)self recognizesOnSubsequentTouchDowns]&& self->_touchDownCount >= 2)
  {
    self->_sendTapAction = 1;
    v8 = 2;
LABEL_6:
    [(UIGestureRecognizer *)self setState:v8];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = UITextMultiTapRecognizer;
  [(UIGestureRecognizer *)&v8 touchesMoved:movedCopy withEvent:eventCopy];
  if ([(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateFailed)
  {
    [(UITapRecognizer *)self->_tapRecognizer touchesMoved:movedCopy withEvent:eventCopy];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = UITextMultiTapRecognizer;
  eventCopy = event;
  endedCopy = ended;
  [(UIGestureRecognizer *)&v8 touchesEnded:endedCopy withEvent:eventCopy];
  [(UITapRecognizer *)self->_tapRecognizer touchesEnded:endedCopy withEvent:eventCopy, v8.receiver, v8.super_class];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = UITextMultiTapRecognizer;
  eventCopy = event;
  cancelledCopy = cancelled;
  [(UIGestureRecognizer *)&v8 touchesCancelled:cancelledCopy withEvent:eventCopy];
  [(UITapRecognizer *)self->_tapRecognizer touchesCancelled:cancelledCopy withEvent:eventCopy, v8.receiver, v8.super_class];

  [(UIGestureRecognizer *)self setState:4];
}

@end