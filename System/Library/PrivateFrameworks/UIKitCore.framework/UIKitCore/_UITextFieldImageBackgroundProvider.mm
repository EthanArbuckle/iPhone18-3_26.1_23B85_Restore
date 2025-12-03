@interface _UITextFieldImageBackgroundProvider
- (void)_applyCorrectImage;
- (void)addToTextField:(id)field;
- (void)enabledDidChangeAnimated:(BOOL)animated;
- (void)layoutIfNeeded;
- (void)setNeedsDisplay;
@end

@implementation _UITextFieldImageBackgroundProvider

- (void)addToTextField:(id)field
{
  fieldCopy = field;
  if (!self->_backgroundView)
  {
    v5 = objc_opt_new();
    backgroundView = self->_backgroundView;
    self->_backgroundView = v5;
  }

  v7.receiver = self;
  v7.super_class = _UITextFieldImageBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v7 addToTextField:fieldCopy];
}

- (void)enabledDidChangeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = _UITextFieldImageBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v8 enabledDidChangeAnimated:?];
  textField = [(_UITextFieldBackgroundProvider *)self textField];
  if (textField)
  {
    if (animatedCopy)
    {
      backgroundView = self->_backgroundView;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __64___UITextFieldImageBackgroundProvider_enabledDidChangeAnimated___block_invoke;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      [UIView transitionWithView:backgroundView duration:5242880 options:v7 animations:0 completion:0.35];
    }

    else
    {
      [(_UITextFieldImageBackgroundProvider *)self _applyCorrectImage];
    }

    [(_UITextFieldImageBackgroundProvider *)self layoutIfNeeded];
  }
}

- (void)_applyCorrectImage
{
  textField = [(_UITextFieldBackgroundProvider *)self textField];
  background = [textField background];
  if (([textField isEnabled] & 1) == 0)
  {
    disabledBackground = [textField disabledBackground];
    v5 = disabledBackground;
    if (disabledBackground)
    {
      v6 = disabledBackground;
    }

    else
    {
      v6 = background;
    }

    v7 = v6;

    background = v7;
  }

  [(UIImageView *)self->_backgroundView setImage:background];
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = _UITextFieldImageBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v3 setNeedsDisplay];
  [(_UITextFieldImageBackgroundProvider *)self _applyCorrectImage];
}

- (void)layoutIfNeeded
{
  textField = [(_UITextFieldBackgroundProvider *)self textField];
  [textField bounds];
  [textField borderRectForBounds:?];
  [(UIImageView *)self->_backgroundView setFrame:?];
  v4.receiver = self;
  v4.super_class = _UITextFieldImageBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v4 layoutIfNeeded];
}

@end