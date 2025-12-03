@interface _UISimplePressGestureRecognizer
- (_UISimplePressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_cancelOrFail;
- (void)_endOrFail;
- (void)dealloc;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)reset;
- (void)setTriggers:(id)triggers;
@end

@implementation _UISimplePressGestureRecognizer

- (void)dealloc
{
  [(UIDelayedAction *)self->_delayedAction cancel];
  delayedAction = self->_delayedAction;
  self->_delayedAction = 0;

  v4.receiver = self;
  v4.super_class = _UISimplePressGestureRecognizer;
  [(UIGestureRecognizer *)&v4 dealloc];
}

- (_UISimplePressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = _UISimplePressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = _UISimplePressGestureRecognizer;
    [(UIGestureRecognizer *)&v7 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  }

  return v5;
}

- (void)setTriggers:(id)triggers
{
  v23 = *MEMORY[0x1E69E9840];
  triggersCopy = triggers;
  objc_storeStrong(&self->_triggers, triggers);
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = triggersCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        if (v12)
        {
          [v12 _UIPressTriggerValue];
          v13 = v16;
        }

        else
        {
          v13 = 0;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
        [array addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v15.receiver = self;
  v15.super_class = _UISimplePressGestureRecognizer;
  [(UIGestureRecognizer *)&v15 setAllowedPressTypes:array];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v35 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  if (self->_activeTrigger)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [beganCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(beganCopy);
          }

          [(UIGestureRecognizer *)self ignorePress:*(*(&v29 + 1) + 8 * i) forEvent:eventCopy];
        }

        v9 = [beganCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }
  }

  else if ([beganCopy count] < 2)
  {
    anyObject = [beganCopy anyObject];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [(_UISimplePressGestureRecognizer *)self triggers];
    v13 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      while (2)
      {
        v16 = 0;
        v23 = v14;
        do
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v25 + 1) + 8 * v16);
          if (v17)
          {
            [v17 _UIPressTriggerValue];
          }

          if (![anyObject type])
          {
            [anyObject key];
            v19 = v18 = v15;
            modifierFlags = [v19 modifierFlags];

            v15 = v18;
            v14 = v23;
            if (!modifierFlags)
            {
              objc_storeStrong(&self->_activeTrigger, v17);
              if (fabs(0.0) >= 2.22044605e-16)
              {
                v21 = [[UIDelayedAction alloc] initWithTarget:self action:sel__begin userInfo:0 delay:0.0];
                delayedAction = self->_delayedAction;
                self->_delayedAction = v21;
              }

              else
              {
                [(_UISimplePressGestureRecognizer *)self _begin];
              }

              goto LABEL_28;
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    [(_UISimplePressGestureRecognizer *)self _endOrFail];
LABEL_28:
  }

  else
  {
    [(_UISimplePressGestureRecognizer *)self _endOrFail];
  }
}

- (void)reset
{
  [(UIDelayedAction *)self->_delayedAction cancel];
  delayedAction = self->_delayedAction;
  self->_delayedAction = 0;

  activeTrigger = self->_activeTrigger;
  self->_activeTrigger = 0;
}

- (void)_endOrFail
{
  if ([(UIGestureRecognizer *)self state]<= UIGestureRecognizerStateChanged)
  {
    if ([(UIGestureRecognizer *)self state])
    {
      v3 = 3;
    }

    else
    {
      v3 = 5;
    }

    [(UIGestureRecognizer *)self setState:v3];
  }

  activeTrigger = self->_activeTrigger;
  self->_activeTrigger = 0;
}

- (void)_cancelOrFail
{
  if ([(UIGestureRecognizer *)self state]<= UIGestureRecognizerStateChanged)
  {
    if ([(UIGestureRecognizer *)self state])
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }

    [(UIGestureRecognizer *)self setState:v3];
  }

  activeTrigger = self->_activeTrigger;
  self->_activeTrigger = 0;
}

@end