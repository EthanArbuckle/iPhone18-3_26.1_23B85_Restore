@interface UIHBLongClickGestureRecognizer
- (UIHBLongClickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_processPresses:(id)a3;
- (void)_resetGestureRecognizer;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEventDidReceiveTerminal:(id)a3;
@end

@implementation UIHBLongClickGestureRecognizer

- (void)_resetGestureRecognizer
{
  v4.receiver = self;
  v4.super_class = UIHBLongClickGestureRecognizer;
  [(UIGestureRecognizer *)&v4 _resetGestureRecognizer];
  [(UIPressesEvent *)self->_registeredEventForTerminalEvents _unregisterForTerminalEvent:self];
  registeredEventForTerminalEvents = self->_registeredEventForTerminalEvents;
  self->_registeredEventForTerminalEvents = 0;

  self->_lastSeenClickCount = 0;
}

- (UIHBLongClickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = UIHBLongClickGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v4->_lastSeenClickCount = 0;
    [(UIGestureRecognizer *)v4 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v5 setAllowedPressTypes:&unk_1EFE2BF68];
  }

  return v5;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  if (!self->_registeredEventForTerminalEvents)
  {
    objc_storeStrong(&self->_registeredEventForTerminalEvents, a4);
    [a4 _registerForTerminalEvent:self];
  }

  [(UIHBLongClickGestureRecognizer *)self _processPresses:a3, a4];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(UIGestureRecognizer *)self state:a3]> UIGestureRecognizerStatePossible)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)_processPresses:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        self->_lastSeenClickCount = [v9 clickCount];
        if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
        {
          v10 = [(UIHBLongClickGestureRecognizer *)self _requiredClickCountMetForPress:v9];
          v11 = [v9 isLongClick];
          if (!v10)
          {
            if (!v11)
            {
              goto LABEL_7;
            }

LABEL_15:
            [(UIHBLongClickGestureRecognizer *)self _fail];
            goto LABEL_7;
          }

          if (v11)
          {
            [(UIHBLongClickGestureRecognizer *)self _succeed];
            goto LABEL_7;
          }

          if ([v9 phase] == 3)
          {
            goto LABEL_15;
          }
        }

LABEL_7:
        ++v8;
      }

      while (v6 != v8);
      v12 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v12;
    }

    while (v12);
  }
}

- (void)pressesEventDidReceiveTerminal:(id)a3
{
  if (self)
  {
    if ((*(&self->super._gestureFlags + 4) & 8) != 0 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
    {
      lastSeenClickCount = self->_lastSeenClickCount;
      if (lastSeenClickCount != [(UIHBLongClickGestureRecognizer *)self _effectiveNumberOfClicksRequired])
      {

        [(UIHBLongClickGestureRecognizer *)self _fail];
      }
    }
  }
}

@end