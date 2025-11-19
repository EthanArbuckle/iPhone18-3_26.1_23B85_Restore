@interface _UITextFieldImageBackgroundProvider
- (void)_applyCorrectImage;
- (void)addToTextField:(id)a3;
- (void)enabledDidChangeAnimated:(BOOL)a3;
- (void)layoutIfNeeded;
- (void)setNeedsDisplay;
@end

@implementation _UITextFieldImageBackgroundProvider

- (void)addToTextField:(id)a3
{
  v4 = a3;
  if (!self->_backgroundView)
  {
    v5 = objc_opt_new();
    backgroundView = self->_backgroundView;
    self->_backgroundView = v5;
  }

  v7.receiver = self;
  v7.super_class = _UITextFieldImageBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v7 addToTextField:v4];
}

- (void)enabledDidChangeAnimated:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = _UITextFieldImageBackgroundProvider;
  [(_UITextFieldBackgroundProvider *)&v8 enabledDidChangeAnimated:?];
  v5 = [(_UITextFieldBackgroundProvider *)self textField];
  if (v5)
  {
    if (v3)
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
  v8 = [(_UITextFieldBackgroundProvider *)self textField];
  v3 = [v8 background];
  if (([v8 isEnabled] & 1) == 0)
  {
    v4 = [v8 disabledBackground];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;

    v3 = v7;
  }

  [(UIImageView *)self->_backgroundView setImage:v3];
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
  v3 = [(_UITextFieldBackgroundProvider *)self textField];
  [v3 bounds];
  [v3 borderRectForBounds:?];
  [(UIImageView *)self->_backgroundView setFrame:?];
  v4.receiver = self;
  v4.super_class = _UITextFieldImageBackgroundProvider;
  [(_UITextFieldViewBackgroundProvider *)&v4 layoutIfNeeded];
}

@end