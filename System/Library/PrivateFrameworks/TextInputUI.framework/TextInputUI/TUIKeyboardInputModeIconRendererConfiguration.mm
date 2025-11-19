@interface TUIKeyboardInputModeIconRendererConfiguration
- (CGSize)size;
- (TUIKeyboardInputModeIconRendererConfiguration)init;
- (UIColor)backgroundColor;
- (UIColor)tintColor;
@end

@implementation TUIKeyboardInputModeIconRendererConfiguration

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIColor)tintColor
{
  tintColor = self->_tintColor;
  if (!tintColor)
  {
    v4 = [MEMORY[0x1E69DC888] labelColor];
    v5 = self->_tintColor;
    self->_tintColor = v4;

    tintColor = self->_tintColor;
  }

  return tintColor;
}

- (UIColor)backgroundColor
{
  backgroundColor = self->_backgroundColor;
  if (!backgroundColor)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    v5 = self->_backgroundColor;
    self->_backgroundColor = v4;

    backgroundColor = self->_backgroundColor;
  }

  return backgroundColor;
}

- (TUIKeyboardInputModeIconRendererConfiguration)init
{
  v5.receiver = self;
  v5.super_class = TUIKeyboardInputModeIconRendererConfiguration;
  v2 = [(TUIKeyboardInputModeIconRendererConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TUIKeyboardInputModeIconRendererConfiguration *)v2 setBaseFontSize:1.0];
    [(TUIKeyboardInputModeIconRendererConfiguration *)v3 setDetailLabelAlpha:0.8];
    [(TUIKeyboardInputModeIconRendererConfiguration *)v3 setBackgroundCornerRadius:6.0];
  }

  return v3;
}

@end