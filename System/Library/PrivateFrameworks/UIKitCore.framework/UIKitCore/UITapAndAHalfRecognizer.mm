@interface UITapAndAHalfRecognizer
- (CGPoint)locationOfFirstTap;
- (CGPoint)translationInWindowCoordinates;
- (UITapAndAHalfRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_resetGestureRecognizer;
- (void)_verifyMovementInAllowableRange;
- (void)clearTapTimer;
- (void)dealloc;
- (void)recognized:(id)a3;
- (void)startRecognitionTimer:(double)a3;
- (void)startTapTimer:(double)a3;
- (void)tooSlow:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UITapAndAHalfRecognizer

- (void)dealloc
{
  [(UITapAndAHalfRecognizer *)self clearTapTimer];
  [(UITapAndAHalfRecognizer *)self setTouch:0];
  v3.receiver = self;
  v3.super_class = UITapAndAHalfRecognizer;
  [(UIGestureRecognizer *)&v3 dealloc];
}

- (void)clearTapTimer
{
  v2 = self;
  tapTimer = v2->_tapTimer;
  if (tapTimer)
  {
    v5 = v2;
    [(UIDelayedAction *)tapTimer setTarget:0];
    [(UIDelayedAction *)v5->_tapTimer unschedule];
    v4 = v5->_tapTimer;
    v5->_tapTimer = 0;

    v2 = v5;
  }
}

- (UITapAndAHalfRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v9.receiver = self;
  v9.super_class = UITapAndAHalfRecognizer;
  v4 = [(UIGestureRecognizer *)&v9 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v4->_numberOfFullTaps = 1;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activeTouches = v5->_activeTouches;
    v5->_activeTouches = v6;

    v5->_allowableMovement = 1.79769313e308;
    v5->_minimumFinalPressDuration = 0.15;
    [(UIGestureRecognizer *)v5 reset];
  }

  return v5;
}

- (void)_resetGestureRecognizer
{
  [(UITapAndAHalfRecognizer *)self clearTapTimer];
  self->_currentNumberOfTaps = 0;
  [(NSMutableSet *)self->_activeTouches removeAllObjects];
  [(UITapAndAHalfRecognizer *)self setTouch:0];
  v3.receiver = self;
  v3.super_class = UITapAndAHalfRecognizer;
  [(UIGestureRecognizer *)&v3 _resetGestureRecognizer];
}

- (void)startRecognitionTimer:(double)a3
{
  [(UITapAndAHalfRecognizer *)self clearTapTimer];
  v5 = [UIDelayedAction alloc];
  v6 = [(UIDelayedAction *)v5 initWithTarget:self action:sel_recognized_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:a3];
  tapTimer = self->_tapTimer;
  self->_tapTimer = v6;
}

- (void)startTapTimer:(double)a3
{
  [(UITapAndAHalfRecognizer *)self clearTapTimer];
  v5 = [UIDelayedAction alloc];
  v6 = [(UIDelayedAction *)v5 initWithTarget:self action:sel_tooSlow_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:a3];
  tapTimer = self->_tapTimer;
  self->_tapTimer = v6;
}

- (void)tooSlow:(id)a3
{
  [(UIGestureRecognizer *)self setState:5];

  [(UITapAndAHalfRecognizer *)self clearTapTimer];
}

- (void)recognized:(id)a3
{
  [(UIGestureRecognizer *)self setState:1];

  [(UITapAndAHalfRecognizer *)self clearTapTimer];
}

- (void)_verifyMovementInAllowableRange
{
  if (self->_allowableMovement != 1.79769313e308)
  {
    v3 = [(UITapAndAHalfRecognizer *)self touch];
    [v3 locationInView:0];
    v5 = v4;
    v7 = v6;

    if (sqrt((self->_startPoint.x - v5) * (self->_startPoint.x - v5) + (self->_startPoint.y - v7) * (self->_startPoint.y - v7)) > self->_allowableMovement)
    {
      [(UITapAndAHalfRecognizer *)self clearTapTimer];

      [(UIGestureRecognizer *)self setState:5];
    }
  }
}

- (CGPoint)translationInWindowCoordinates
{
  v3 = [(UITapAndAHalfRecognizer *)self touch];
  [v3 locationInView:0];
  v5 = v4;
  v7 = v6;

  v8 = v5 - self->_startPoint.x;
  v9 = v7 - self->_startPoint.y;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(NSMutableSet *)self->_activeTouches count]&& [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateFailed)
  {
    [(UIGestureRecognizer *)self reset];
  }

  if (([(UIGestureRecognizer *)self _state]- 1) > 2)
  {
    [(NSMutableSet *)self->_activeTouches unionSet:v6];
    if ([(NSMutableSet *)self->_activeTouches count]>= 2)
    {
      [(UITapAndAHalfRecognizer *)self clearTapTimer];
      [(UIGestureRecognizer *)self setState:5];
    }

    if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
    {
      v13 = [(NSMutableSet *)self->_activeTouches anyObject];
      [(UITapAndAHalfRecognizer *)self setTouch:v13];

      v14 = [(UITapAndAHalfRecognizer *)self touch];
      [v14 locationInView:0];
      v16 = v15;
      v18 = v17;

      if (self->_currentNumberOfTaps)
      {
        [(UITapAndAHalfRecognizer *)self allowableMovement];
        if (v19 != 1.79769313e308)
        {
          v20 = sqrt((v16 - self->_startPoint.x) * (v16 - self->_startPoint.x) + (v18 - self->_startPoint.y) * (v18 - self->_startPoint.y));
          [(UITapAndAHalfRecognizer *)self allowableMovement];
          if (v20 > v21)
          {
            [(UITapAndAHalfRecognizer *)self clearTapTimer];
            [(UIGestureRecognizer *)self setState:5];
          }
        }
      }

      else
      {
        self->_startPoint.x = v16;
        self->_startPoint.y = v18;
      }

      if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
      {
        currentNumberOfTaps = self->_currentNumberOfTaps;
        if (currentNumberOfTaps == [(UITapAndAHalfRecognizer *)self numberOfFullTaps])
        {
          [(UITapAndAHalfRecognizer *)self minimumFinalPressDuration];
          [(UITapAndAHalfRecognizer *)self startRecognitionTimer:?];
        }

        else
        {
          [(UITapAndAHalfRecognizer *)self startTapTimer:0.5];
        }
      }
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(UIGestureRecognizer *)self ignoreTouch:*(*(&v23 + 1) + 8 * i) forEvent:v7, v23];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(UITapAndAHalfRecognizer *)self touch];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    if (self && ([(UIGestureRecognizer *)self _state]- 1) <= 2)
    {
      [(UITapAndAHalfRecognizer *)self clearTapTimer];

      [(UIGestureRecognizer *)self setState:2];
    }

    else
    {
      currentNumberOfTaps = self->_currentNumberOfTaps;
      if (currentNumberOfTaps < [(UITapAndAHalfRecognizer *)self numberOfFullTaps])
      {

        [(UITapAndAHalfRecognizer *)self _verifyMovementInAllowableRange];
      }
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  activeTouches = self->_activeTouches;
  v6 = a3;
  [(NSMutableSet *)activeTouches minusSet:v6];
  v7 = [(UITapAndAHalfRecognizer *)self touch];
  v8 = [v6 containsObject:v7];

  if (!v8)
  {
    return;
  }

  if (([(UIGestureRecognizer *)self _state]- 1) <= 2)
  {
    [(UITapAndAHalfRecognizer *)self clearTapTimer];
    v9 = self;
    v10 = 3;
LABEL_4:

    [(UIGestureRecognizer *)v9 setState:v10];
    return;
  }

  if ([(UIGestureRecognizer *)self state])
  {
    return;
  }

  [(UITapAndAHalfRecognizer *)self _verifyMovementInAllowableRange];
  if ([(UIGestureRecognizer *)self state]|| [(NSMutableSet *)self->_activeTouches count])
  {
    return;
  }

  currentNumberOfTaps = self->_currentNumberOfTaps;
  self->_currentNumberOfTaps = currentNumberOfTaps + 1;
  if (currentNumberOfTaps >= [(UITapAndAHalfRecognizer *)self numberOfFullTaps])
  {
    [(UITapAndAHalfRecognizer *)self clearTapTimer];
    v9 = self;
    v10 = 5;
    goto LABEL_4;
  }

  [(UITapAndAHalfRecognizer *)self startTapTimer:0.3];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(NSMutableSet *)self->_activeTouches minusSet:a3, a4];
  [(UITapAndAHalfRecognizer *)self clearTapTimer];

  [(UIGestureRecognizer *)self setState:5];
}

- (CGPoint)locationOfFirstTap
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end