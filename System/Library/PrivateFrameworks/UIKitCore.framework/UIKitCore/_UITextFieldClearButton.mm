@interface _UITextFieldClearButton
- (_UITextFieldClearButtonImageProviding)imageProvider;
- (id)_defaultImageForState:(unint64_t)state withConfiguration:(id)configuration;
- (void)setPointerInteractionEnabled:(BOOL)enabled;
@end

@implementation _UITextFieldClearButton

- (_UITextFieldClearButtonImageProviding)imageProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_imageProvider);

  return WeakRetained;
}

- (id)_defaultImageForState:(unint64_t)state withConfiguration:(id)configuration
{
  configurationCopy = configuration;
  imageProvider = [(_UITextFieldClearButton *)self imageProvider];

  if (imageProvider)
  {
    imageProvider2 = [(_UITextFieldClearButton *)self imageProvider];
    v9 = [imageProvider2 defaultClearButtonImageForState:state];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UITextFieldClearButton;
    v9 = [(UIButton *)&v11 _defaultImageForState:state withConfiguration:configurationCopy];
  }

  return v9;
}

- (void)setPointerInteractionEnabled:(BOOL)enabled
{
  v7.receiver = self;
  v7.super_class = _UITextFieldClearButton;
  [(UIControl *)&v7 setPointerInteractionEnabled:?];
  pointerStyleProvider = [(UIButton *)self pointerStyleProvider];
  if (enabled && pointerStyleProvider == 0)
  {
    v6 = &__block_literal_global_432;
  }

  else
  {
    v6 = pointerStyleProvider;
  }

  [(UIButton *)self setPointerStyleProvider:v6];
}

@end