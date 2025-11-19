@interface _UIRepeatingPressGestureRecognizer
- (BOOL)_shouldReceivePress:(id)a3;
- (_UIRepeatingPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (int64_t)_buttonType;
- (void)_resetGestureRecognizer;
- (void)_setButtonType:(int64_t)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesChanged:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)repeatingGestureClockDidTick:(id)a3;
- (void)setView:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIRepeatingPressGestureRecognizer

- (_UIRepeatingPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIRepeatingPressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
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
  v2 = [(UIGestureRecognizer *)self allowedPressTypes];
  if ([v2 count])
  {
    v3 = [v2 firstObject];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)_setButtonType:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType]!= a3)
  {
    v6 = [(UIGestureRecognizer *)self view];

    if (v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"UIRepeatingPressGestureRecognizer.m" lineNumber:59 description:@"_buttonType can't be changed after a gesture recognizer is added to a view"];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UIGestureRecognizer *)self setAllowedPressTypes:v8];
  }
}

- (BOOL)_shouldReceivePress:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIRepeatingPressGestureRecognizer;
  if ([(UIGestureRecognizer *)&v7 _shouldReceivePress:?])
  {
    return 1;
  }

  v6 = [(_UIRepeatingPressGestureRecognizer *)self _buttonType];
  return v6 == [a3 type];
}

- (void)setView:(id)a3
{
  if (!a3)
  {
    v5 = [(_UIRepeatingPressGestureRecognizer *)self clock];
    [v5 stopClock];
  }

  v6.receiver = self;
  v6.super_class = _UIRepeatingPressGestureRecognizer;
  [(UIGestureRecognizer *)&v6 setView:a3];
}

- (void)_resetGestureRecognizer
{
  self->_force = 0.0;
  v3 = [(_UIRepeatingPressGestureRecognizer *)self clock];
  [v3 stopClock];

  v4.receiver = self;
  v4.super_class = _UIRepeatingPressGestureRecognizer;
  [(UIGestureRecognizer *)&v4 _resetGestureRecognizer];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_force = 1.0;
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType:a3]== -1)
  {
    [(_UIRepeatingPressGestureRecognizer *)self setChangeCount:0];
    [(UIGestureRecognizer *)self setState:1];
    v5 = [(_UIRepeatingPressGestureRecognizer *)self clock];
    [v5 startClock];
  }

  else
  {

    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType:a3]== -1)
  {

    [(UIGestureRecognizer *)self setState:2];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType:a3]== -1)
  {
    [(UIGestureRecognizer *)self setState:3];
    v5 = [(_UIRepeatingPressGestureRecognizer *)self clock];
    [v5 stopClock];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  if ([(_UIRepeatingPressGestureRecognizer *)self _buttonType:a3]== -1)
  {
    [(UIGestureRecognizer *)self setState:4];
    v5 = [(_UIRepeatingPressGestureRecognizer *)self clock];
    [v5 stopClock];
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [a4 _lastPreparedPress];
  [v5 force];
  self->_force = v6;

  [(_UIRepeatingPressGestureRecognizer *)self setChangeCount:0];
  [(UIGestureRecognizer *)self setState:1];
  v7 = [(_UIRepeatingPressGestureRecognizer *)self clock];
  [v7 startClock];
}

- (void)pressesChanged:(id)a3 withEvent:(id)a4
{
  v5 = [a4 _lastPreparedPress];
  [v5 force];
  self->_force = v6;

  [(UIGestureRecognizer *)self setState:2];
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  self->_force = 0.0;
  [(UIGestureRecognizer *)self setState:3, a4];
  v5 = [(_UIRepeatingPressGestureRecognizer *)self clock];
  [v5 stopClock];
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  self->_force = 0.0;
  [(UIGestureRecognizer *)self setState:4, a4];
  v5 = [(_UIRepeatingPressGestureRecognizer *)self clock];
  [v5 stopClock];
}

- (void)repeatingGestureClockDidTick:(id)a3
{
  [(_UIRepeatingPressGestureRecognizer *)self setChangeCount:[(_UIRepeatingPressGestureRecognizer *)self changeCount]+ 1];

  [(UIGestureRecognizer *)self setState:2];
}

@end