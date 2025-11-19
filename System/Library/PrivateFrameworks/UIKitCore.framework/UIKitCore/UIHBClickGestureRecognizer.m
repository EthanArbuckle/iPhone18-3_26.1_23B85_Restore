@interface UIHBClickGestureRecognizer
- (UIHBClickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_fail;
- (void)_processPresses:(id)a3;
- (void)_resetGestureRecognizer;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEventDidReceiveTerminal:(id)a3;
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

- (UIHBClickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = UIHBClickGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
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

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  if (!self->_registeredEventForTerminalEvents)
  {
    objc_storeStrong(&self->_registeredEventForTerminalEvents, a4);
    [a4 _registerForTerminalEvent:self];
  }

  [(UIHBClickGestureRecognizer *)self _processPresses:a3, a4];
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
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
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
      v10 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = v10;
    }

    while (v10);
  }
}

- (void)pressesEventDidReceiveTerminal:(id)a3
{
  if (self && (*(&self->super._gestureFlags + 4) & 8) != 0 && [(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible && self->_lastSeenClickCount != self->_clickCount)
  {

    [(UIHBClickGestureRecognizer *)self _fail];
  }
}

@end