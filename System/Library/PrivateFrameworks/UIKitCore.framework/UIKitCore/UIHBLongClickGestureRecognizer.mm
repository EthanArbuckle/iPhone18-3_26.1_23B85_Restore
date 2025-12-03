@interface UIHBLongClickGestureRecognizer
- (UIHBLongClickGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_processPresses:(id)presses;
- (void)_resetGestureRecognizer;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEventDidReceiveTerminal:(id)terminal;
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

- (UIHBLongClickGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = UIHBLongClickGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v4->_lastSeenClickCount = 0;
    [(UIGestureRecognizer *)v4 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v5 setAllowedPressTypes:&unk_1EFE2BF68];
  }

  return v5;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  if (!self->_registeredEventForTerminalEvents)
  {
    objc_storeStrong(&self->_registeredEventForTerminalEvents, event);
    [event _registerForTerminalEvent:self];
  }

  [(UIHBLongClickGestureRecognizer *)self _processPresses:began, event];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(UIGestureRecognizer *)self state:cancelled]> UIGestureRecognizerStatePossible)
  {
    v5 = 4;
  }

  else
  {
    v5 = 5;
  }

  [(UIGestureRecognizer *)self setState:v5];
}

- (void)_processPresses:(id)presses
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pressesCopy = presses;
  v5 = [pressesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(pressesCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        self->_lastSeenClickCount = [v9 clickCount];
        if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
        {
          v10 = [(UIHBLongClickGestureRecognizer *)self _requiredClickCountMetForPress:v9];
          isLongClick = [v9 isLongClick];
          if (!v10)
          {
            if (!isLongClick)
            {
              goto LABEL_7;
            }

LABEL_15:
            [(UIHBLongClickGestureRecognizer *)self _fail];
            goto LABEL_7;
          }

          if (isLongClick)
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
      v12 = [pressesCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v12;
    }

    while (v12);
  }
}

- (void)pressesEventDidReceiveTerminal:(id)terminal
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