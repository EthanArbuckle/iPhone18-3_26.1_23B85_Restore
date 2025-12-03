@interface _UIControlEventsGestureRecognizer
- (_UIControlEventsGestureRecognizerDelegate)controlEventsDelegate;
- (void)gestureRecognizerFailed;
- (void)reset;
- (void)sendControlEvent:(unint64_t)event withEvent:(id)withEvent;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIControlEventsGestureRecognizer

- (void)sendControlEvent:(unint64_t)event withEvent:(id)withEvent
{
  controlEventsDelegate = [(_UIControlEventsGestureRecognizer *)self controlEventsDelegate];
  [controlEventsDelegate controlEventsGestureRecognizer:self recognizedControlEvent:event withEvent:withEvent];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  anyObject = [began anyObject];
  objc_storeStrong(&self->_activeTouch, anyObject);
  v6 = anyObject;
  if (anyObject)
  {
    *&self->_flags = *&self->_flags & 0xFC | 1;
    [(_UIControlEventsGestureRecognizer *)self sendControlEvent:1 withEvent:event];
    v7 = [anyObject tapCount] >= 2;
    v6 = anyObject;
    if (v7)
    {
      [(_UIControlEventsGestureRecognizer *)self sendControlEvent:2 withEvent:event];
      v6 = anyObject;
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  anyObject = [moved anyObject];
  objc_storeStrong(&self->_activeTouch, anyObject);
  v6 = anyObject;
  if (anyObject)
  {
    view = [(UIGestureRecognizer *)self view];
    [anyObject locationInView:view];
    v9 = v8;
    v11 = v10;

    flags = self->_flags;
    view2 = [(UIGestureRecognizer *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    view3 = [(UIGestureRecognizer *)self view];
    v16 = view3;
    if (isKindOfClass)
    {
      v17 = [view3 pointMostlyInside:event withEvent:{v9, v11}];
    }

    else
    {
      v17 = [view3 pointInside:event withEvent:{v9, v11}];
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

      [(_UIControlEventsGestureRecognizer *)self sendControlEvent:v19 withEvent:event];
    }

    if (v18)
    {
      v20 = 4;
    }

    else
    {
      v20 = 8;
    }

    [(_UIControlEventsGestureRecognizer *)self sendControlEvent:v20 withEvent:event];
    v6 = anyObject;
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  anyObject = [ended anyObject];
  if (anyObject)
  {
    v23 = anyObject;
    view = [(UIGestureRecognizer *)self view];
    [v23 locationInView:view];
    v9 = v8;
    v11 = v10;

    flags = self->_flags;
    view2 = [(UIGestureRecognizer *)self view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    view3 = [(UIGestureRecognizer *)self view];
    v16 = view3;
    if (isKindOfClass)
    {
      v17 = [view3 pointMostlyInside:event withEvent:{v9, v11}];
    }

    else
    {
      v17 = [view3 pointInside:event withEvent:{v9, v11}];
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

      [(_UIControlEventsGestureRecognizer *)self sendControlEvent:v19 withEvent:event];
    }

    if (v18)
    {
      v20 = 64;
    }

    else
    {
      v20 = 128;
    }

    [(_UIControlEventsGestureRecognizer *)self sendControlEvent:v20 withEvent:event];
    _allActiveTouches = [(UIGestureRecognizer *)self _allActiveTouches];
    v22 = [_allActiveTouches count];

    anyObject = v23;
    if (!v22)
    {
      [(UIGestureRecognizer *)self setState:3];
      anyObject = v23;
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  [(_UIControlEventsGestureRecognizer *)self sendControlEvent:256 withEvent:event];
  *&self->_flags |= 4u;

  [(UIGestureRecognizer *)self setState:5];
}

- (_UIControlEventsGestureRecognizerDelegate)controlEventsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controlEventsDelegate);

  return WeakRetained;
}

@end