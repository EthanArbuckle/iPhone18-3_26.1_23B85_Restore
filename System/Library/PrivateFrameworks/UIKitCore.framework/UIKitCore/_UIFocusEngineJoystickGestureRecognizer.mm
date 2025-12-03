@interface _UIFocusEngineJoystickGestureRecognizer
- (BOOL)_shouldReceivePress:(id)press;
- (CGPoint)previousStickPosition;
- (CGPoint)stickPosition;
- (_UIFocusEngineJoystickGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_calculateStickPositionFromPresses:(id)presses withEvent:(id)event;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIFocusEngineJoystickGestureRecognizer

- (_UIFocusEngineJoystickGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v6.receiver = self;
  v6.super_class = _UIFocusEngineJoystickGestureRecognizer;
  result = [(UIGestureRecognizer *)&v6 initWithTarget:target action:action];
  if (result)
  {
    v5 = *MEMORY[0x1E695EFF8];
    result->_stickPosition = *MEMORY[0x1E695EFF8];
    result->_previousStickPosition = v5;
  }

  return result;
}

- (BOOL)_shouldReceivePress:(id)press
{
  pressCopy = press;
  if ([pressCopy _source] == 2)
  {
    _isAnalogStickPress = [pressCopy _isAnalogStickPress];
  }

  else
  {
    _isAnalogStickPress = 0;
  }

  return _isAnalogStickPress;
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  allPresses = [eventCopy allPresses];
  [(_UIFocusEngineJoystickGestureRecognizer *)self _calculateStickPositionFromPresses:allPresses withEvent:eventCopy];
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  eventCopy = event;
  allPresses = [eventCopy allPresses];
  [(_UIFocusEngineJoystickGestureRecognizer *)self _calculateStickPositionFromPresses:allPresses withEvent:eventCopy];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  eventCopy = event;
  allPresses = [eventCopy allPresses];
  [(_UIFocusEngineJoystickGestureRecognizer *)self _calculateStickPositionFromPresses:allPresses withEvent:eventCopy];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  eventCopy = event;
  allPresses = [eventCopy allPresses];
  [(_UIFocusEngineJoystickGestureRecognizer *)self _calculateStickPositionFromPresses:allPresses withEvent:eventCopy];
}

- (void)_calculateStickPositionFromPresses:(id)presses withEvent:(id)event
{
  v29 = *MEMORY[0x1E69E9840];
  pressesCopy = presses;
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [pressesCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(pressesCopy);
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

      v11 = [pressesCopy countByEnumeratingWithState:&v24 objects:v28 count:16];
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