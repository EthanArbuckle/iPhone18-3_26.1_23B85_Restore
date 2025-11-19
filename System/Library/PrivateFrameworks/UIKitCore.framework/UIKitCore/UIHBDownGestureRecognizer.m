@interface UIHBDownGestureRecognizer
- (UIHBDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_fail;
- (void)_processPresses:(id)a3;
- (void)_resetGestureRecognizer;
- (void)_succeed;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)setAllowedPressTypes:(id)a3;
@end

@implementation UIHBDownGestureRecognizer

- (UIHBDownGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v11.receiver = self;
  v11.super_class = UIHBDownGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v11 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v4->_maximumIntervalBetweenPresses = 0.25;
    v6 = [MEMORY[0x1E695DFD8] set];
    requiredPressTypes = v5->_requiredPressTypes;
    v5->_requiredPressTypes = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    currentlyPressedTypes = v5->_currentlyPressedTypes;
    v5->_currentlyPressedTypes = v8;

    [(UIGestureRecognizer *)v5 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIHBDownGestureRecognizer *)v5 setAllowedPressTypes:&unk_1EFE2BF50];
  }

  return v5;
}

- (void)setAllowedPressTypes:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIHBDownGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setAllowedPressTypes:?];
  v5 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  requiredPressTypes = self->_requiredPressTypes;
  self->_requiredPressTypes = v5;
}

- (void)_resetGestureRecognizer
{
  v3.receiver = self;
  v3.super_class = UIHBDownGestureRecognizer;
  [(UIGestureRecognizer *)&v3 _resetGestureRecognizer];
  [(NSMutableSet *)self->_currentlyPressedTypes removeAllObjects];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  if ([(NSSet *)self->_requiredPressTypes count:a3]&& !self->_delayedAction)
  {
    v6 = [UIDelayedAction alloc];
    v7 = [(UIDelayedAction *)v6 initWithTarget:self action:sel__fail userInfo:0 delay:*MEMORY[0x1E695DA28] mode:self->_maximumIntervalBetweenPresses];
    delayedAction = self->_delayedAction;
    self->_delayedAction = v7;
  }

  [(UIHBDownGestureRecognizer *)self _processPresses:a3];
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

- (void)_succeed
{
  [(UIDelayedAction *)self->_delayedAction cancel];
  delayedAction = self->_delayedAction;
  self->_delayedAction = 0;

  [(UIGestureRecognizer *)self setState:3];
}

- (void)_fail
{
  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [(UIDelayedAction *)self->_delayedAction cancel];
    delayedAction = self->_delayedAction;
    self->_delayedAction = 0;

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)_processPresses:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 phase])
        {
          if ([v9 phase] == 3)
          {
            currentlyPressedTypes = self->_currentlyPressedTypes;
            v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "type")}];
            [(NSMutableSet *)currentlyPressedTypes removeObject:v11];

            [(UIHBDownGestureRecognizer *)self _fail];
          }
        }

        else
        {
          v12 = self->_currentlyPressedTypes;
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "type")}];
          [(NSMutableSet *)v12 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    if ([(UIHBDownGestureRecognizer *)self _allRequiredButtonsDown])
    {
      [(UIHBDownGestureRecognizer *)self _succeed];
    }
  }
}

@end