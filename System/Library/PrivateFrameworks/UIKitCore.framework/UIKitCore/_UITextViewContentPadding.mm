@interface _UITextViewContentPadding
- (_UITextViewContentPadding)initWithDelegate:(id)delegate;
- (_UITextViewContentPaddingDelegate)delegate;
- (id)description;
- (void)_checkNewCurrentValue;
- (void)increaseToValue:(double)targetValue;
- (void)resetCurrentValue;
- (void)setMode:(int64_t)mode;
- (void)setTargetValue:(double)value;
@end

@implementation _UITextViewContentPadding

- (void)_checkNewCurrentValue
{
  targetValue = self->_targetValue;
  currentValue = self->_currentValue;
  if (self->_mode != 1)
  {
    if (currentValue == targetValue)
    {
      return;
    }

    goto LABEL_7;
  }

  if (currentValue < targetValue)
  {
    targetValue = self->_currentValue;
  }

  if (currentValue > targetValue)
  {
LABEL_7:
    self->_currentValue = targetValue;
    delegate = [(_UITextViewContentPadding *)self delegate];
    [delegate _textViewContentPaddingDidChange:self];
  }
}

- (_UITextViewContentPaddingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UITextViewContentPadding)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = _UITextViewContentPadding;
  v5 = [(_UITextViewContentPadding *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(_UITextViewContentPadding *)self _checkNewCurrentValue];
  }
}

- (void)setTargetValue:(double)value
{
  if (value < 0.0)
  {
    value = 0.0;
  }

  if (value != self->_targetValue)
  {
    self->_targetValue = value;
    [(_UITextViewContentPadding *)self _checkNewCurrentValue];
  }
}

- (void)increaseToValue:(double)targetValue
{
  if (self->_mode == 1)
  {
    if (self->_targetValue <= targetValue)
    {
      targetValue = self->_targetValue;
    }

    if (targetValue > self->_currentValue)
    {
      self->_currentValue = targetValue;
      delegate = [(_UITextViewContentPadding *)self delegate];
      [delegate _textViewContentPaddingDidChange:self];
    }
  }
}

- (void)resetCurrentValue
{
  if (self->_mode == 1 && self->_currentValue != 0.0)
  {
    self->_currentValue = 0.0;
    delegate = [(_UITextViewContentPadding *)self delegate];
    [delegate _textViewContentPaddingDidChange:self];
  }
}

- (id)description
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [UIDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = v3;
  if (self->_mode)
  {
    v5 = @"flexible";
  }

  else
  {
    v5 = @"fixed";
  }

  v6 = [v3 appendName:@"mode" object:v5];
  v7 = NSStringFromSelector(sel_currentValue);
  v13[0] = v7;
  v8 = NSStringFromSelector(sel_targetValue);
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v10 = [v4 appendKeys:v9];

  string = [v4 string];

  return string;
}

@end