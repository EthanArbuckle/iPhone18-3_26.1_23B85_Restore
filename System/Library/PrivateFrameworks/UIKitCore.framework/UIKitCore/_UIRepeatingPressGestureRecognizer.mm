@interface _UIRepeatingPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)press;
- (_UIRepeatingPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (int64_t)_buttonType;
- (void)_resetGestureRecognizer;
- (void)_setButtonType:(int64_t)type;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)repeatingGestureClockDidTick:(id)tick;
- (void)setView:(id)view;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIRepeatingPressGestureRecognizer

- (_UIRepeatingPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIRepeatingPressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:target action:action];
  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setDelegate:v4];
    [(_UIRepeatingPressGestureRecognizer *)v4 setClock:v5];
  }

  return v4;
}

- (int64_t)_buttonType
{
  allowedPressTypes = [(UIGestureRecognizer *)self allowedPressTypes];
  if ([allowedPressTypes count])
  {
    firstObject = [allowedPressTypes firstObject];
    integerValue = [firstObject integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (void)_setButtonType:(int64_t)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType]!= type)
  {
    view = [(UIGestureRecognizer *)self view];

    if (view)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIRepeatingPressGestureRecognizer.m" lineNumber:59 description:@"_buttonType can't be changed after a gesture recognizer is added to a view"];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UIGestureRecognizer *)self setAllowedPressTypes:v8];
  }
}

- (BOOL)_shouldReceivePress:(id)press
{
  v7.receiver = self;
  v7.super_class = _UIRepeatingPressGestureRecognizer;
  if ([(UIGestureRecognizer *)&v7 _shouldReceivePress:?])
  {
    return 1;
  }

  _buttonType = [(_UIRepeatingPressGestureRecognizer *)self _buttonType];
  return _buttonType == [press type];
}

- (void)setView:(id)view
{
  if (!view)
  {
    clock = [(_UIRepeatingPressGestureRecognizer *)self clock];
    [clock stopClock];
  }

  v6.receiver = self;
  v6.super_class = _UIRepeatingPressGestureRecognizer;
  [(UIGestureRecognizer *)&v6 setView:view];
}

- (void)_resetGestureRecognizer
{
  self->_force = 0.0;
  clock = [(_UIRepeatingPressGestureRecognizer *)self clock];
  [clock stopClock];

  v4.receiver = self;
  v4.super_class = _UIRepeatingPressGestureRecognizer;
  [(UIGestureRecognizer *)&v4 _resetGestureRecognizer];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  self->_force = 1.0;
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType:began]== -1)
  {
    [(_UIRepeatingPressGestureRecognizer *)self setChangeCount:0];
    [(UIGestureRecognizer *)self setState:1];
    clock = [(_UIRepeatingPressGestureRecognizer *)self clock];
    [clock startClock];
  }

  else
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType:moved]== -1)
  {

    [(UIGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType:ended]== -1)
  {
    [(UIGestureRecognizer *)self setState:3];
    clock = [(_UIRepeatingPressGestureRecognizer *)self clock];
    [clock stopClock];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType:cancelled]== -1)
  {
    [(UIGestureRecognizer *)self setState:4];
    clock = [(_UIRepeatingPressGestureRecognizer *)self clock];
    [clock stopClock];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  _lastPreparedPress = [event _lastPreparedPress];
  [_lastPreparedPress force];
  self->_force = v6;

  [(_UIRepeatingPressGestureRecognizer *)self setChangeCount:0];
  [(UIGestureRecognizer *)self setState:1];
  clock = [(_UIRepeatingPressGestureRecognizer *)self clock];
  [clock startClock];
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  _lastPreparedPress = [event _lastPreparedPress];
  [_lastPreparedPress force];
  self->_force = v6;

  [(UIGestureRecognizer *)self setState:2];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  self->_force = 0.0;
  [(UIGestureRecognizer *)self setState:3, event];
  clock = [(_UIRepeatingPressGestureRecognizer *)self clock];
  [clock stopClock];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  self->_force = 0.0;
  [(UIGestureRecognizer *)self setState:4, event];
  clock = [(_UIRepeatingPressGestureRecognizer *)self clock];
  [clock stopClock];
}

- (void)repeatingGestureClockDidTick:(id)tick
{
  [(_UIRepeatingPressGestureRecognizer *)self setChangeCount:[(_UIRepeatingPressGestureRecognizer *)self changeCount]+ 1];

  [(UIGestureRecognizer *)self setState:2];
}

@end