@interface UIHBClickGestureRecognizer
- (UIHBClickGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_fail;
- (void)_processPresses:(id)presses;
- (void)_resetGestureRecognizer;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEventDidReceiveTerminal:(id)terminal;
@end

@implementation UIHBClickGestureRecognizer

- (void)_resetGestureRecognizer
{
  v4.receiver = self;
  v4.super_class = UIHBClickGestureRecognizer;
  [(UIGestureRecognizer *)&v4 _resetGestureRecognizer];
  [(UIPressesEvent *)self->_registeredEventForTerminalEvents _unregisterForTerminalEvent:self];
  registeredEventForTerminalEvents = self->_registeredEventForTerminalEvents;
  self->_registeredEventForTerminalEvents = 0;

  self->_lastSeenClickCount = 0;
}

- (void)_fail
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (UIHBClickGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = UIHBClickGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v4->_clickCount = 1;
    v4->_lastSeenClickCount = 0;
    v4->_recognizesOnPressPhaseBegan = 0;
    [(UIGestureRecognizer *)v4 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v5 setAllowedPressTypes:&unk_1EFE2BF38];
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

  [(UIHBClickGestureRecognizer *)self _processPresses:began, event];
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
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pressesCopy = presses;
  v5 = [pressesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(pressesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        self->_lastSeenClickCount = [v9 clickCount];
        if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
        {
          if ([v9 clickCount] == self->_clickCount)
          {
            if (self->_recognizesOnPressPhaseBegan || [v9 phase] == 3)
            {
              [(UIHBClickGestureRecognizer *)self _succeed];
            }
          }

          else if ([v9 clickCount] > self->_clickCount)
          {
            [(UIHBClickGestureRecognizer *)self _fail];
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v10 = [pressesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v10;
    }

    while (v10);
  }
}

- (void)pressesEventDidReceiveTerminal:(id)terminal
{
  if (self && (*(&self->super._gestureFlags + 4) & 8) != 0 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && self->_lastSeenClickCount != self->_clickCount)
  {

    [(UIHBClickGestureRecognizer *)self _fail];
  }
}

@end