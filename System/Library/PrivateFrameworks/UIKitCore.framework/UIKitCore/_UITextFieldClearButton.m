@interface _UITextFieldClearButton
- (_UITextFieldClearButtonImageProviding)imageProvider;
- (id)_defaultImageForState:(unint64_t)a3 withConfiguration:(id)a4;
- (void)setPointerInteractionEnabled:(BOOL)a3;
@end

@implementation _UITextFieldClearButton

- (_UITextFieldClearButtonImageProviding)imageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_imageProvider);

  return WeakRetained;
}

- (id)_defaultImageForState:(unint64_t)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = [(_UITextFieldClearButton *)self imageProvider];

  if (v7)
  {
    v8 = [(_UITextFieldClearButton *)self imageProvider];
    v9 = [v8 defaultClearButtonImageForState:a3];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UITextFieldClearButton;
    v9 = [(UIButton *)&v11 _defaultImageForState:a3 withConfiguration:v6];
  }

  return v9;
}

- (void)setPointerInteractionEnabled:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = _UITextFieldClearButton;
  [(UIControl *)&v7 setPointerInteractionEnabled:?];
  v5 = [(UIButton *)self pointerStyleProvider];
  if (a3 && v5 == 0)
  {
    v6 = &__block_literal_global_432;
  }

  else
  {
    v6 = v5;
  }

  [(UIButton *)self setPointerStyleProvider:v6];
}

@end