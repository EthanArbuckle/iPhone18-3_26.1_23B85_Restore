@interface _UIFocusEngineJoystickGestureRecognizer
- (BOOL)_shouldReceivePress:(id)a3;
- (CGPoint)previousStickPosition;
- (CGPoint)stickPosition;
- (_UIFocusEngineJoystickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_calculateStickPositionFromPresses:(id)a3 withEvent:(id)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation _UIFocusEngineJoystickGestureRecognizer

- (_UIFocusEngineJoystickGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v6.receiver = self;
  v6.super_class = _UIFocusEngineJoystickGestureRecognizer;
  result = [(UIGestureRecognizer *)&v6 initWithTarget:a3 action:a4];
  if (result)
  {
    v5 = *MEMORY[0x1E695EFF8];
    result->_stickPosition = *MEMORY[0x1E695EFF8];
    result->_previousStickPosition = v5;
  }

  return result;
}

- (BOOL)_shouldReceivePress:(id)a3
{
  v3 = a3;
  if ([v3 _source] == 2)
  {
    v4 = [v3 _isAnalogStickPress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [v5 allPresses];
  [(_UIFocusEngineJoystickGestureRecognizer *)self _calculateStickPositionFromPresses:v6 withEvent:v5];
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [v5 allPresses];
  [(_UIFocusEngineJoystickGestureRecognizer *)self _calculateStickPositionFromPresses:v6 withEvent:v5];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [v5 allPresses];
  [(_UIFocusEngineJoystickGestureRecognizer *)self _calculateStickPositionFromPresses:v6 withEvent:v5];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = a4;
  v6 = [v5 allPresses];
  [(_UIFocusEngineJoystickGestureRecognizer *)self _calculateStickPositionFromPresses:v6 withEvent:v5];
}

- (void)_calculateStickPositionFromPresses:(id)a3 withEvent:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  v9 = v7;
  v10 = v6;
  if (v8)
  {
    v11 = v8;
    v12 = *v25;
    v9 = v7;
    v10 = v6;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        if ([(_UIFocusEngineJoystickGestureRecognizer *)self _shouldReceivePress:v14])
        {
          if (![v14 type])
          {
            [v14 force];
            v9 = v15;
          }

          if ([v14 type] == 1)
          {
            [v14 force];
            v9 = -v16;
          }

          if ([v14 type] == 3)
          {
            [v14 force];
            v10 = v17;
          }

          if ([v14 type] == 2)
          {
            [v14 force];
            v10 = -v18;
          }
        }
      }

      v11 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  p_stickPosition = &self->_stickPosition;
  if (v10 != self->_stickPosition.x || v9 != self->_stickPosition.y)
  {
    self->_previousStickPosition = *p_stickPosition;
    p_stickPosition->x = v10;
    self->_stickPosition.y = v9;
    v21 = v9 == v7 && v10 == v6;
    if (self->_previousStickPosition.x != v6 || self->_previousStickPosition.y != v7)
    {
      if (v21)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      goto LABEL_33;
    }

    if (!v21)
    {
      v23 = 1;
LABEL_33:
      [(UIGestureRecognizer *)self setState:v23];
    }
  }
}

- (CGPoint)stickPosition
{
  x = self->_stickPosition.x;
  y = self->_stickPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)previousStickPosition
{
  x = self->_previousStickPosition.x;
  y = self->_previousStickPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end