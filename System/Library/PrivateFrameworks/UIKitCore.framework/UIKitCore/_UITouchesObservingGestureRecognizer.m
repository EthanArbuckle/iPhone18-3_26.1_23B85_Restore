@interface _UITouchesObservingGestureRecognizer
- (BOOL)_allTouchesAreEndedOrCancelled:(id)a3;
- (_UITouchesObservingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_updateTouchesFromEvent:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UITouchesObservingGestureRecognizer

- (_UITouchesObservingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UITouchesObservingGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v5 setDelaysTouchesEnded:0];
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:1];
  }

  [(_UITouchesObservingGestureRecognizer *)self _updateTouchesFromEvent:v5];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:1];
  }

  [(_UITouchesObservingGestureRecognizer *)self _updateTouchesFromEvent:v5];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  [(_UITouchesObservingGestureRecognizer *)self _updateTouchesFromEvent:v5];
  v6 = [(_UITouchesObservingGestureRecognizer *)self _allTouchesAreEndedOrCancelled:v5];

  if (v6)
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  [(_UITouchesObservingGestureRecognizer *)self _updateTouchesFromEvent:v5];
  v6 = [(_UITouchesObservingGestureRecognizer *)self _allTouchesAreEndedOrCancelled:v5];

  if (v6)
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (BOOL)_allTouchesAreEndedOrCancelled:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 touchesForGestureRecognizer:{self, 0}];
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

- (void)_updateTouchesFromEvent:(id)a3
{
  v4 = [a3 touchesForGestureRecognizer:self];
  [(_UITouchesObservingGestureRecognizer *)self setTouches:v4];
}

@end