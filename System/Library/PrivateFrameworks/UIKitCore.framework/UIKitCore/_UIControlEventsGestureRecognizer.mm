@interface _UIControlEventsGestureRecognizer
- (_UIControlEventsGestureRecognizerDelegate)controlEventsDelegate;
- (void)gestureRecognizerFailed;
- (void)reset;
- (void)sendControlEvent:(unint64_t)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIControlEventsGestureRecognizer

- (void)sendControlEvent:(unint64_t)a3 withEvent:(id)a4
{
  v7 = [(_UIControlEventsGestureRecognizer *)self controlEventsDelegate];
  [v7 controlEventsGestureRecognizer:self recognizedControlEvent:a3 withEvent:a4];
}

- (void)gestureRecognizerFailed
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStateFailed && (*&self->_flags & 4) == 0)
  {
    [(_UIControlEventsGestureRecognizer *)self sendControlEvent:256 withEvent:0];
    *&self->_flags |= 4u;
  }
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = _UIControlEventsGestureRecognizer;
  [(UIGestureRecognizer *)&v4 reset];
  if ((*&self->_flags & 4) == 0 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStateFailed)
  {
    [(_UIControlEventsGestureRecognizer *)self sendControlEvent:256 withEvent:0];
  }

  *&self->_flags &= ~4u;
  activeTouch = self->_activeTouch;
  self->_activeTouch = 0;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8 = [a3 anyObject];
  objc_storeStrong(&self->_activeTouch, v8);
  v6 = v8;
  if (v8)
  {
    *&self->_flags = *&self->_flags & 0xFC | 1;
    [(_UIControlEventsGestureRecognizer *)self sendControlEvent:1 withEvent:a4];
    v7 = [v8 tapCount] >= 2;
    v6 = v8;
    if (v7)
    {
      [(_UIControlEventsGestureRecognizer *)self sendControlEvent:2 withEvent:a4];
      v6 = v8;
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v21 = [a3 anyObject];
  objc_storeStrong(&self->_activeTouch, v21);
  v6 = v21;
  if (v21)
  {
    v7 = [(UIGestureRecognizer *)self view];
    [v21 locationInView:v7];
    v9 = v8;
    v11 = v10;

    flags = self->_flags;
    v13 = [(UIGestureRecognizer *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v15 = [(UIGestureRecognizer *)self view];
    v16 = v15;
    if (isKindOfClass)
    {
      v17 = [v15 pointMostlyInside:a4 withEvent:{v9, v11}];
    }

    else
    {
      v17 = [v15 pointInside:a4 withEvent:{v9, v11}];
    }

    v18 = v17;

    *&self->_flags = *&self->_flags & 0xFC | v18 | 2;
    if (v18 != (flags & 1))
    {
      if (v18)
      {
        v19 = 16;
      }

      else
      {
        v19 = 32;
      }

      [(_UIControlEventsGestureRecognizer *)self sendControlEvent:v19 withEvent:a4];
    }

    if (v18)
    {
      v20 = 4;
    }

    else
    {
      v20 = 8;
    }

    [(_UIControlEventsGestureRecognizer *)self sendControlEvent:v20 withEvent:a4];
    v6 = v21;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = [a3 anyObject];
  if (v6)
  {
    v23 = v6;
    v7 = [(UIGestureRecognizer *)self view];
    [v23 locationInView:v7];
    v9 = v8;
    v11 = v10;

    flags = self->_flags;
    v13 = [(UIGestureRecognizer *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v15 = [(UIGestureRecognizer *)self view];
    v16 = v15;
    if (isKindOfClass)
    {
      v17 = [v15 pointMostlyInside:a4 withEvent:{v9, v11}];
    }

    else
    {
      v17 = [v15 pointInside:a4 withEvent:{v9, v11}];
    }

    v18 = v17;

    *&self->_flags = *&self->_flags & 0xFC | v18;
    if (v18 != (flags & 1))
    {
      if (v18)
      {
        v19 = 16;
      }

      else
      {
        v19 = 32;
      }

      [(_UIControlEventsGestureRecognizer *)self sendControlEvent:v19 withEvent:a4];
    }

    if (v18)
    {
      v20 = 64;
    }

    else
    {
      v20 = 128;
    }

    [(_UIControlEventsGestureRecognizer *)self sendControlEvent:v20 withEvent:a4];
    v21 = [(UIGestureRecognizer *)self _allActiveTouches];
    v22 = [v21 count];

    v6 = v23;
    if (!v22)
    {
      [(UIGestureRecognizer *)self setState:3];
      v6 = v23;
    }
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  [(_UIControlEventsGestureRecognizer *)self sendControlEvent:256 withEvent:a4];
  *&self->_flags |= 4u;

  [(UIGestureRecognizer *)self setState:5];
}

- (_UIControlEventsGestureRecognizerDelegate)controlEventsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controlEventsDelegate);

  return WeakRetained;
}

@end