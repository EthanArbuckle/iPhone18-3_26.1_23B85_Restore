@interface _UITouchesObservingGestureRecognizer
- (BOOL)_allTouchesAreEndedOrCancelled:(id)cancelled;
- (_UITouchesObservingGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_updateTouchesFromEvent:(id)event;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UITouchesObservingGestureRecognizer

- (_UITouchesObservingGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UITouchesObservingGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:1];
  }

  [(_UITouchesObservingGestureRecognizer *)self _updateTouchesFromEvent:eventCopy];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  eventCopy = event;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:1];
  }

  [(_UITouchesObservingGestureRecognizer *)self _updateTouchesFromEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  [(_UITouchesObservingGestureRecognizer *)self _updateTouchesFromEvent:eventCopy];
  v6 = [(_UITouchesObservingGestureRecognizer *)self _allTouchesAreEndedOrCancelled:eventCopy];

  if (v6)
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  [(_UITouchesObservingGestureRecognizer *)self _updateTouchesFromEvent:eventCopy];
  v6 = [(_UITouchesObservingGestureRecognizer *)self _allTouchesAreEndedOrCancelled:eventCopy];

  if (v6)
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (BOOL)_allTouchesAreEndedOrCancelled:(id)cancelled
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [cancelled touchesForGestureRecognizer:{self, 0}];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 phase] != 3 && objc_msgSend(v8, "phase") != 4)
        {
          v9 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (void)_updateTouchesFromEvent:(id)event
{
  v4 = [event touchesForGestureRecognizer:self];
  [(_UITouchesObservingGestureRecognizer *)self setTouches:v4];
}

@end