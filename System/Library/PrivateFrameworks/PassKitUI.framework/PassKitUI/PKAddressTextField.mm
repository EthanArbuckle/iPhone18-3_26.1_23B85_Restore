@interface PKAddressTextField
- (PKAddressTextField)initWithFrame:(CGRect)frame style:(int64_t)style;
- (PKAddressTextFieldDelegate)addressDelegate;
- (void)insertTextSuggestion:(id)suggestion;
- (void)setIsInvalid:(BOOL)invalid showErrorGlyph:(BOOL)glyph;
@end

@implementation PKAddressTextField

- (PKAddressTextField)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v17.receiver = self;
  v17.super_class = PKAddressTextField;
  v5 = [(PKAddressTextField *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_style = style;
    if (style == 2)
    {
      PKBridgeTextColor();
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v7 = ;
    objc_storeStrong(&v6->_defaultColor, v7);

    pkui_osloErrorColor = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
    invalidColor = v6->_invalidColor;
    v6->_invalidColor = pkui_osloErrorColor;

    v10 = PKUISmallExclamationMarkImage();
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    [v11 setTintColor:v6->_invalidColor];
    [v11 setContentMode:7];
    [v10 size];
    v13 = v12 + 20.0;
    [v10 size];
    [v11 setFrame:{0.0, 0.0, v13, v14}];
    [(PKAddressTextField *)v6 setRightView:v11];
    [(PKAddressTextField *)v6 setRightViewMode:0];
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(PKAddressTextField *)v6 setFont:v15];

    [(PKAddressTextField *)v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9410]];
  }

  return v6;
}

- (void)insertTextSuggestion:(id)suggestion
{
  inputText = [suggestion inputText];
  [(PKAddressTextField *)self setText:?];
  WeakRetained = objc_loadWeakRetained(&self->_addressDelegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained addressTextField:self textDidChange:inputText];
  }
}

- (void)setIsInvalid:(BOOL)invalid showErrorGlyph:(BOOL)glyph
{
  glyphCopy = glyph;
  if (self->_isInvalid != invalid)
  {
    self->_isInvalid = invalid;
    v6 = 1;
    if (invalid)
    {
      v6 = 2;
    }

    [(PKAddressTextField *)self setTextColor:*(&self->super.super.super.super.super.isa + OBJC_IVAR___PKAddressTextField__style[v6])];
  }

  if (glyphCopy)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  [(PKAddressTextField *)self setRightViewMode:v7];
}

- (PKAddressTextFieldDelegate)addressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_addressDelegate);

  return WeakRetained;
}

@end