@interface UIDragRecognizer
- (CGPoint)startPosition;
- (UIDragRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_resetGestureRecognizer;
- (void)clearIgnoreTouch;
- (void)clearTimer;
- (void)dealloc;
- (void)tooSlow:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UIDragRecognizer

- (UIDragRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = UIDragRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIDragRecognizer *)v4 setRestrictsToAngle:1];
    [(UIDragRecognizer *)v5 setAngle:0.0];
    [(UIDragRecognizer *)v5 setMinimumDistance:50.0];
    [(UIDragRecognizer *)v5 setMaximumDeviation:0.261799388];
    [(UIGestureRecognizer *)v5 reset];
  }

  return v5;
}

- (void)dealloc
{
  [(UIDragRecognizer *)self clearTimer];
  [(UIDragRecognizer *)self setTouch:0];
  [(UIDragRecognizer *)self clearIgnoreTouch];
  v3.receiver = self;
  v3.super_class = UIDragRecognizer;
  [(UIGestureRecognizer *)&v3 dealloc];
}

- (void)_resetGestureRecognizer
{
  [(UIDragRecognizer *)self clearTimer];
  [(UIDragRecognizer *)self setTouch:0];
  v3.receiver = self;
  v3.super_class = UIDragRecognizer;
  [(UIGestureRecognizer *)&v3 _resetGestureRecognizer];
}

- (void)clearTimer
{
  [(UIDelayedAction *)self->_tooSlow unschedule];
  tooSlow = self->_tooSlow;
  self->_tooSlow = 0;
}

- (void)tooSlow:(id)a3
{
  [(UIDragRecognizer *)self clearTimer];

  [(UIGestureRecognizer *)self setState:5];
}

- (void)clearIgnoreTouch
{
  v3 = [(UIDragRecognizer *)self ignoreTouch];
  [v3 unschedule];

  [(UIDragRecognizer *)self setIgnoreTouch:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v16 = a3;
  tooSlow = [(UIDragRecognizer *)self ignoreTouch];
  if (tooSlow)
  {
    goto LABEL_2;
  }

  v6 = [(UIDragRecognizer *)self touch];

  if (!v6)
  {
    v11 = [v16 anyObject];
    [(UIDragRecognizer *)self setTouch:v11];

    v12 = [(UIDragRecognizer *)self touch];
    v13 = [(UIGestureRecognizer *)self view];
    [v12 locationInView:v13];
    [(UIDragRecognizer *)self setStartPosition:?];

    v14 = [UIDelayedAction alloc];
    v15 = [(UIDelayedAction *)v14 initWithTarget:self action:sel_tooSlow_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:2.0];
    tooSlow = self->_tooSlow;
    self->_tooSlow = v15;
LABEL_2:
  }

  [(UIDragRecognizer *)self quietPeriod];
  if (v7 > 0.0)
  {
    v8 = [(UIDragRecognizer *)self ignoreTouch];

    if (v8)
    {
      v9 = [(UIDragRecognizer *)self ignoreTouch];
      [(UIDragRecognizer *)self quietPeriod];
      [(UIDelayedAction *)v9 touchWithDelay:?];
    }

    else
    {
      v10 = [UIDelayedAction alloc];
      [(UIDragRecognizer *)self quietPeriod];
      v9 = [(UIDelayedAction *)v10 initWithTarget:self action:sel_clearIgnoreTouch userInfo:0 delay:*MEMORY[0x1E695DA28] mode:?];
      [(UIDragRecognizer *)self setIgnoreTouch:v9];
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(UIDragRecognizer *)self touch];
  v7 = [v5 containsObject:v6];

  if (!v7)
  {
    return;
  }

  if (self && ([(UIGestureRecognizer *)self _state]- 1) < 3)
  {
    v8 = 2;
LABEL_35:

    [(UIGestureRecognizer *)self setState:v8];
    return;
  }

  v9 = [(UIDragRecognizer *)self touch];
  v10 = [(UIGestureRecognizer *)self view];
  [v9 locationInView:v10];
  v12 = v11;
  v14 = v13;

  [(UIDragRecognizer *)self startPosition];
  v17 = (v15 - v12) * (v15 - v12) + (v16 - v14) * (v16 - v14);
  [(UIDragRecognizer *)self startPosition];
  v19 = v12 - v18;
  [(UIDragRecognizer *)self startPosition];
  v21 = atan2(v14 - v20, v19);
  if (v21 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 3.14159265;
  }

  [(UIDragRecognizer *)self angle];
  v24 = v23 - v22;
  if (v24 >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = -v24;
  }

  [(UIDragRecognizer *)self angle];
  v27 = v26 + 3.14159265 - v22;
  if (v27 < 0.0)
  {
    v27 = -v27;
  }

  if (v27 < v25)
  {
    [(UIDragRecognizer *)self angle];
    v29 = v28 + 3.14159265 - v22;
    if (v29 >= 0.0)
    {
      v25 = v29;
    }

    else
    {
      v25 = -v29;
    }
  }

  v30 = sqrt(v17);
  [(UIDragRecognizer *)self angle];
  v32 = v31 - (v22 + 3.14159265);
  if (v32 < 0.0)
  {
    v32 = -v32;
  }

  if (v32 < v25)
  {
    [(UIDragRecognizer *)self angle];
    v34 = v33 - (v22 + 3.14159265);
    if (v34 >= 0.0)
    {
      v25 = v34;
    }

    else
    {
      v25 = -v34;
    }
  }

  [(UIDragRecognizer *)self minimumDistance];
  v36 = v35;
  v37 = [(UIDragRecognizer *)self restrictsToAngle];
  if (v30 <= v36)
  {
    if (v30 > 20.0 && v37)
    {
      [(UIDragRecognizer *)self maximumDeviation];
      if (v25 > v41)
      {
        [(UIDragRecognizer *)self clearTimer];
        v8 = 5;
        goto LABEL_35;
      }
    }
  }

  else
  {
    if (v37)
    {
      [(UIDragRecognizer *)self maximumDeviation];
      v39 = v25 <= v38;
    }

    else
    {
      v39 = 1;
    }

    [(UIDragRecognizer *)self setCanBeginDrag:v39];
    if ([(UIDragRecognizer *)self canBeginDrag])
    {
      [(UIDragRecognizer *)self clearTimer];
      [(UIDragRecognizer *)self setStartAngle:v22];
      v8 = 1;
      goto LABEL_35;
    }
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  v6 = [(UIDragRecognizer *)self touch];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    if (self && ([(UIGestureRecognizer *)self _state]- 1) < 3)
    {
      v8 = 3;
    }

    else
    {
      [(UIDragRecognizer *)self clearTimer];
      v8 = 5;
    }

    [(UIGestureRecognizer *)self setState:v8];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(UIDragRecognizer *)self clearTimer:a3];

  [(UIGestureRecognizer *)self setState:5];
}

- (CGPoint)startPosition
{
  x = self->_startPosition.x;
  y = self->_startPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end