@interface _UIFocusLinearMovementDebugGestureRecognizer
- (_UIFocusLinearMovementDebugGestureRecognizer)initWithTarget:(id)target action:(SEL)action allowsGroupMode:(BOOL)mode;
- (void)_update;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIFocusLinearMovementDebugGestureRecognizer

- (_UIFocusLinearMovementDebugGestureRecognizer)initWithTarget:(id)target action:(SEL)action allowsGroupMode:(BOOL)mode
{
  modeCopy = mode;
  v11.receiver = self;
  v11.super_class = _UIFocusLinearMovementDebugGestureRecognizer;
  v6 = [(UIGestureRecognizer *)&v11 initWithTarget:target action:action];
  if (v6)
  {
    v7 = objc_opt_new();
    presses = v6->_presses;
    v6->_presses = v7;

    if (modeCopy)
    {
      v9 = [&unk_1EFE2D930 arrayByAddingObjectsFromArray:&unk_1EFE2D948];
    }

    else
    {
      v9 = &unk_1EFE2D930;
    }

    [(UIGestureRecognizer *)v6 setAllowedPressTypes:v9];
    [(UIGestureRecognizer *)v6 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(UIGestureRecognizer *)v6 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v6 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v6 setDelaysTouchesEnded:0];
    v6->_allowsGroupMode = modeCopy;
  }

  return v6;
}

- (void)_update
{
  selfCopy = self;
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = 296;
  v4 = self->_presses;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v22 = selfCopy;
    obj = v4;
    v21 = 296;
    v7 = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v4) = 0;
    v24 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 key];
        modifierFlags = [v11 modifierFlags];

        v13 = [v10 key];
        modifierFlags2 = [v13 modifierFlags];

        v15 = [v10 key];
        charactersIgnoringModifiers = [v15 charactersIgnoringModifiers];
        if ([charactersIgnoringModifiers length])
        {
          v7 = 1;
        }

        else
        {
          v17 = [v10 key];
          v7 |= ([v17 modifierFlags] & 0xFFFFFFFFFFF3FFFFLL) != 0;
        }

        LODWORD(v4) = v4 & 1 | ((modifierFlags & 0x80000) != 0);
        v8 = v8 & 1u | ((modifierFlags2 & 0x40000) != 0);
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);

    v3 = v21;
    selfCopy = v22;
    if (v4)
    {
      if (v8)
      {
        if (!(v7 & 1 | !v22->_allowsGroupMode))
        {
          goto LABEL_20;
        }
      }

      else if ((v7 & 1) == 0)
      {
LABEL_20:
        [(_UIFocusLinearMovementDebugGestureRecognizer *)v22 setGroupMode:v8];
        v18 = [(UIGestureRecognizer *)v22 state]== UIGestureRecognizerStatePossible;
        v19 = 1;
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  if ([(UIGestureRecognizer *)selfCopy state]== UIGestureRecognizerStatePossible)
  {
    v20 = 5;
    goto LABEL_24;
  }

  v18 = [*(&selfCopy->super.super.isa + v3) count] == 0;
  v19 = 3;
LABEL_21:
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 1;
  }

LABEL_24:
  [(UIGestureRecognizer *)selfCopy setState:v20];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [beganCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(beganCopy);
        }

        [(NSMutableSet *)self->_presses addObject:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [beganCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(_UIFocusLinearMovementDebugGestureRecognizer *)self _update];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [endedCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(endedCopy);
        }

        [(NSMutableSet *)self->_presses removeObject:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [endedCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(_UIFocusLinearMovementDebugGestureRecognizer *)self _update];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v15 = *MEMORY[0x1E69E9840];
  cancelledCopy = cancelled;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [cancelledCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(cancelledCopy);
        }

        [(NSMutableSet *)self->_presses removeObject:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [cancelledCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(_UIFocusLinearMovementDebugGestureRecognizer *)self _update];
}

@end