@interface UITextMultiTapRecognizer
- (BOOL)_allowsEventWithRequiredButtonMask:(id)a3;
- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4;
- (BOOL)canPreventGestureRecognizer:(id)a3;
- (CGPoint)location;
- (CGPoint)locationInView:(id)a3;
- (UITextMultiTapRecognizer)initWithTarget:(id)a3 tapAction:(SEL)a4;
- (double)_touchSloppinessFactor;
- (unint64_t)tapCount;
- (void)onStateUpdate:(id)a3;
- (void)reset;
- (void)tapRecognizerFailedToRecognizeTap:(id)a3;
- (void)tapRecognizerRecognizedTap:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UITextMultiTapRecognizer

- (UITextMultiTapRecognizer)initWithTarget:(id)a3 tapAction:(SEL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = UITextMultiTapRecognizer;
  v7 = [(UIGestureRecognizer *)&v12 initWithTarget:self action:sel_onStateUpdate_];
  if (v7)
  {
    v8 = objc_alloc_init(UITapRecognizer);
    tapRecognizer = v7->_tapRecognizer;
    v7->_tapRecognizer = v8;

    [(UITapRecognizer *)v7->_tapRecognizer setDelegate:v7];
    objc_storeWeak(&v7->_target, v6);
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v7->_tapAction = v10;
    [(UITapRecognizer *)v7->_tapRecognizer setNumberOfTouchesRequired:1];
    [(UITapRecognizer *)v7->_tapRecognizer setContinuousTapRecognition:1];
    [(UITapRecognizer *)v7->_tapRecognizer setAllowableMovement:45.0];
    [(UITapRecognizer *)v7->_tapRecognizer setMaximumTapDuration:0.75];
    [(UITapRecognizer *)v7->_tapRecognizer setMaximumIntervalBetweenSuccessiveTaps:0.35];
  }

  return v7;
}

- (void)onStateUpdate:(id)a3
{
  v8 = a3;
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
  v3 = [(UITextMultiTapRecognizer *)self recognizesOnSubsequentTouchDowns];
  v4 = 5;
  if (v3)
  {
    v4 = 4;
  }

  return *(&self->super.super.isa + OBJC_IVAR___UITextMultiTapRecognizer__tapRecognizer[v4]);
}

- (CGPoint)location
{
  v3 = [(UIGestureRecognizer *)self view];
  [(UITextMultiTapRecognizer *)self locationInView:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)tapRecognizerRecognizedTap:(id)a3
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

- (void)tapRecognizerFailedToRecognizeTap:(id)a3
{
  v4 = [(UITapRecognizer *)self->_tapRecognizer activeTouches];
  if ([v4 count])
  {

    v5 = 5;
  }

  else
  {
    touchDownCount = self->_touchDownCount;
    v7 = [(UITextMultiTapRecognizer *)self minimumNumberOfTapsRequired];

    if (touchDownCount >= v7)
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
  v2 = [(UIGestureRecognizer *)self view];
  [v2 _touchSloppinessFactor];
  v4 = v3;

  return v4;
}

- (CGPoint)locationInView:(id)a3
{
  [(UITapRecognizer *)self->_tapRecognizer locationInView:a3];
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

- (BOOL)canPreventGestureRecognizer:(id)a3
{
  v4 = a3;
  if ([v4 _isGestureType:0])
  {
    v5 = v4;
    v6 = [v5 numberOfTouchesRequired];
    if (v6 == [(UITextMultiTapRecognizer *)self numberOfTouchesRequired])
    {
      v7 = [v5 numberOfTapsRequired] > 1;
LABEL_8:

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([v4 _isGestureType:1])
  {
    v5 = v4;
    v8 = [v5 numberOfTouchesRequired];
    if (v8 == [(UITextMultiTapRecognizer *)self numberOfTouchesRequired])
    {
      v7 = [v5 numberOfTapsRequired] != 0;
      goto LABEL_8;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && [v4 numberOfFullTaps] > 0;
LABEL_9:

  return !v7;
}

- (BOOL)_shouldReceiveTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 modifierFlags] & 0x40000) != 0)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UITextMultiTapRecognizer;
    v8 = [(UIGestureRecognizer *)&v10 _shouldReceiveTouch:v6 withEvent:v7];
  }

  return v8;
}

- (BOOL)_allowsEventWithRequiredButtonMask:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (self->_requiredButtonMask && [v4 _buttonMask] && objc_msgSend(v6, "_containsHIDPointerEvent"))
  {
    requiredButtonMask = self->_requiredButtonMask;
    v8 = ([v4 _buttonMask] & requiredButtonMask) == requiredButtonMask;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = UITextMultiTapRecognizer;
  v6 = a4;
  v7 = a3;
  [(UIGestureRecognizer *)&v9 touchesBegan:v7 withEvent:v6];
  [(UITapRecognizer *)self->_tapRecognizer touchesBegan:v7 withEvent:v6, v9.receiver, v9.super_class];

  LODWORD(v7) = [(UITextMultiTapRecognizer *)self _allowsEventWithRequiredButtonMask:v6];
  if (!v7)
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

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8.receiver = self;
  v8.super_class = UITextMultiTapRecognizer;
  [(UIGestureRecognizer *)&v8 touchesMoved:v6 withEvent:v7];
  if ([(UIGestureRecognizer *)self state]!= UIGestureRecognizerStateFailed)
  {
    [(UITapRecognizer *)self->_tapRecognizer touchesMoved:v6 withEvent:v7];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UITextMultiTapRecognizer;
  v6 = a4;
  v7 = a3;
  [(UIGestureRecognizer *)&v8 touchesEnded:v7 withEvent:v6];
  [(UITapRecognizer *)self->_tapRecognizer touchesEnded:v7 withEvent:v6, v8.receiver, v8.super_class];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = UITextMultiTapRecognizer;
  v6 = a4;
  v7 = a3;
  [(UIGestureRecognizer *)&v8 touchesCancelled:v7 withEvent:v6];
  [(UITapRecognizer *)self->_tapRecognizer touchesCancelled:v7 withEvent:v6, v8.receiver, v8.super_class];

  [(UIGestureRecognizer *)self setState:4];
}

@end