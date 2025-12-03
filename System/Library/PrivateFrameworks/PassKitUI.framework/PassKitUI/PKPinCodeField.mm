@interface PKPinCodeField
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)pinCode;
- (PKPinCodeField)initWithPinCodeLength:(unint64_t)length style:(unint64_t)style delegate:(id)delegate;
- (PKPinCodeFieldDelegate)delegate;
- (int64_t)keyboardType;
- (void)deleteBackward;
- (void)insertText:(id)text;
- (void)layoutSubviews;
- (void)setHyphenatePinCode:(BOOL)code;
- (void)setPinCode:(id)code;
- (void)setSecureTextEntry:(BOOL)entry;
- (void)updateCharacterVisibility;
@end

@implementation PKPinCodeField

- (PKPinCodeField)initWithPinCodeLength:(unint64_t)length style:(unint64_t)style delegate:(id)delegate
{
  delegateCopy = delegate;
  if (length)
  {
    v9 = [(PKPinCodeField *)self init];
    v10 = v9;
    if (!v9)
    {
LABEL_14:
      self = v10;
      selfCopy = self;
      goto LABEL_15;
    }

    v11 = 408;
    v9->_pinCodeLength = length;
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10->_style = style;
    p_config = &v10->_config;
    v49 = delegateCopy;
    if (style == 1)
    {
      v13 = xmmword_1BE116CE0;
    }

    else
    {
      if (style)
      {
        v13 = 0uLL;
        v15 = 0.0;
        goto LABEL_10;
      }

      v13 = xmmword_1BE116CF0;
    }

    v15 = -7.0;
LABEL_10:
    *&p_config->dashLength = v13;
    v10->_config.hyphenOffset = v15;
    v10->_keyboardOverrideEnabled = PKPinCodeViewKeyboardOverride();
    v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
    pinCode = v10->_pinCode;
    v10->_pinCode = v16;

    v18 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789"];
    numbersOnlyCharacterSet = v10->_numbersOnlyCharacterSet;
    v10->_numbersOnlyCharacterSet = v18;

    v20 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC30], 2, 32);
    v21 = MEMORY[0x1E69DCAB8];
    v22 = PKPassKitUIBundle();
    v23 = [v21 imageNamed:@"passcodeDot-full" inBundle:v22];
    v24 = [v23 imageWithRenderingMode:2];
    dotImage = v10->_dotImage;
    v10->_dotImage = v24;

    v26 = 0x1E69DC000uLL;
    v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    hyphenLabel = v10->_hyphenLabel;
    v10->_hyphenLabel = v27;

    [(UILabel *)v10->_hyphenLabel setFont:v20];
    [(UILabel *)v10->_hyphenLabel setTextAlignment:1];
    [(UILabel *)v10->_hyphenLabel setHidden:1];
    [(UILabel *)v10->_hyphenLabel setText:@"-"];
    [(PKPinCodeField *)v10 addSubview:v10->_hyphenLabel];
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10->_pinCodeLength];
    v52 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10->_pinCodeLength];
    v51 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v10->_pinCodeLength];
    if (v10->_pinCodeLength)
    {
      v30 = 0;
      do
      {
        v31 = objc_alloc_init(*(v26 + 3088));
        v32 = v11;
        v33 = v31;
        [v31 setFont:v20];
        [v33 setTextAlignment:1];
        [v33 setHidden:1];
        [v29 addObject:v33];
        [(PKPinCodeField *)v10 addSubview:v33];
        v34 = objc_alloc_init(MEMORY[0x1E69DD250]);
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        [v34 setBackgroundColor:labelColor];

        layer = [v34 layer];
        [layer setCornerRadius:p_config->dashWidth * 0.5];

        v37 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10->_dotImage];
        [MEMORY[0x1E69DC888] labelColor];
        v38 = v29;
        v40 = v39 = p_config;
        [v37 setTintColor:v40];

        p_config = v39;
        v29 = v38;
        [v37 setHidden:1];
        [v51 addObject:v37];
        [(PKPinCodeField *)v10 addSubview:v37];
        [v52 addObject:v34];
        [(PKPinCodeField *)v10 addSubview:v34];

        v11 = v32;
        v26 = 0x1E69DC000;
        v30 = (v30 + 1);
      }

      while (v30 < *(&v10->super.super.super.isa + v11));
    }

    v41 = [v29 copy];
    numberLabels = v10->_numberLabels;
    v10->_numberLabels = v41;

    v43 = [v52 copy];
    dashViews = v10->_dashViews;
    v10->_dashViews = v43;

    v45 = [v51 copy];
    dotViews = v10->_dotViews;
    v10->_dotViews = v45;

    [v20 lineHeight];
    v10->_fontHeight = v47;

    delegateCopy = v50;
    goto LABEL_14;
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (void)setPinCode:(id)code
{
  codeCopy = code;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  pinCode = self->_pinCode;
  self->_pinCode = v4;

  v6 = [codeCopy length];
  if (v6)
  {
    if (self->_pinCodeLength >= v6)
    {
      pinCodeLength = v6;
    }

    else
    {
      pinCodeLength = self->_pinCodeLength;
    }

    v8 = self->_pinCode;
    v9 = [codeCopy substringToIndex:pinCodeLength];
    [(NSMutableString *)v8 appendString:v9];
  }

  [(PKPinCodeField *)self updateCharacterVisibility];
}

- (NSString)pinCode
{
  v2 = [(NSMutableString *)self->_pinCode copy];

  return v2;
}

- (void)setSecureTextEntry:(BOOL)entry
{
  if (self->_secureTextEntry == !entry)
  {
    self->_secureTextEntry = entry;
    [(PKPinCodeField *)self updateCharacterVisibility];
  }
}

- (void)setHyphenatePinCode:(BOOL)code
{
  if (self->_hyphenatePinCode != code)
  {
    self->_hyphenatePinCode = code;
    [(UILabel *)self->_hyphenLabel setHidden:!code];

    [(PKPinCodeField *)self setNeedsLayout];
  }
}

- (void)updateCharacterVisibility
{
  v3 = [(NSMutableString *)self->_pinCode length];
  if (self->_pinCodeLength)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_dashViews objectAtIndexedSubscript:v5];
      [v6 setHidden:v5 < v4];

      v7 = [(NSArray *)self->_numberLabels objectAtIndexedSubscript:v5];
      v8 = v7;
      v9 = v5 >= v4 || self->_secureTextEntry;
      [v7 setHidden:v9];

      v10 = [(NSArray *)self->_dotViews objectAtIndexedSubscript:v5];
      v11 = v10;
      v12 = v5 >= v4 || !self->_secureTextEntry;
      [v10 setHidden:v12];

      ++v5;
    }

    while (v5 < self->_pinCodeLength);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKPinCodeField *)self layoutMargins:fits.width];
  v7 = v5 + v6 + self->_config.dashLength * self->_pinCodeLength;
  v10 = v9 + v8 + self->_fontHeight;
  v11 = fmax(v7, width);
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = PKPinCodeField;
  [(PKPinCodeField *)&v24 layoutSubviews];
  [(PKPinCodeField *)self bounds];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  v20 = *MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 16);
  v22 = *(MEMORY[0x1E695F058] + 24);
  v23 = *(MEMORY[0x1E695F058] + 8);
  dashLength = self->_config.dashLength;
  CGRectGetMidY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGRectGetWidth(v26);
  PKFloatRoundToPixel();
  if (self->_pinCodeLength)
  {
    v9 = 0;
    v10 = dashLength + v8;
    do
    {
      PKFloatRoundToPixel();
      v12 = v11;
      fontHeight = self->_fontHeight;
      v14 = [(NSArray *)self->_numberLabels objectAtIndexedSubscript:v9];
      [v14 setFrame:{x, v12, dashLength, fontHeight}];

      v15 = [(NSArray *)self->_dashViews objectAtIndexedSubscript:v9];
      PKSizeAlignedInRect();
      [v15 setFrame:?];

      v16 = [(NSArray *)self->_dotViews objectAtIndexedSubscript:v9];
      PKSizeAlignedInRect();
      [v16 setFrame:?];

      v17 = v10 + x;
      pinCodeLength = self->_pinCodeLength;
      ++v9;
      if (self->_hyphenatePinCode && v9 == pinCodeLength >> 1)
      {
        PKFloatRoundToPixel();
        v23 = v19;
        v21 = dashLength;
        v22 = self->_fontHeight;
        x = v10 + v17;
        pinCodeLength = self->_pinCodeLength;
        v20 = v17;
      }

      else
      {
        x = v10 + x;
      }
    }

    while (v9 < pinCodeLength);
  }

  if (self->_hyphenatePinCode)
  {
    [(UILabel *)self->_hyphenLabel setFrame:v20, v23, v21, v22];
  }
}

- (void)insertText:(id)text
{
  textCopy = text;
  pinCodeLength = self->_pinCodeLength;
  v5 = [(NSMutableString *)self->_pinCode length];
  v6 = self->_pinCodeLength;
  if (v5 < v6)
  {
    v6 = [(NSMutableString *)self->_pinCode length];
  }

  if (pinCodeLength - v6 >= [textCopy length])
  {
    v10 = [textCopy length];
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = self->_pinCodeLength;
    v8 = [(NSMutableString *)self->_pinCode length];
    v9 = self->_pinCodeLength;
    if (v8 < v9)
    {
      v9 = [(NSMutableString *)self->_pinCode length];
    }

    v10 = v7 - v9;
    if (v7 == v9)
    {
      goto LABEL_18;
    }
  }

  v11 = 0;
  while (-[NSCharacterSet characterIsMember:](self->_numbersOnlyCharacterSet, "characterIsMember:", [textCopy characterAtIndex:v11]) || self->_keyboardOverrideEnabled)
  {
    if (v10 == ++v11)
    {
      v11 = v10;
      goto LABEL_15;
    }
  }

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_15:
  v12 = [(NSMutableString *)self->_pinCode length];
  pinCode = self->_pinCode;
  v14 = [textCopy substringToIndex:v11];
  [(NSMutableString *)pinCode appendString:v14];

  if (v12 < v12 + v11)
  {
    do
    {
      v15 = [(NSArray *)self->_numberLabels objectAtIndexedSubscript:v12];
      v16 = self->_pinCode;
      v17 = [(NSMutableString *)v16 rangeOfComposedCharacterSequencesForRange:v12, 1];
      v19 = [(NSMutableString *)v16 substringWithRange:v17, v18];
      [v15 setText:v19];

      [(PKPinCodeField *)self updateCharacterVisibility];
      ++v12;
      --v11;
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pinCodeTextFieldWasUpdated:self isComplete:{-[NSMutableString length](self->_pinCode, "length") == self->_pinCodeLength}];

LABEL_18:
}

- (void)deleteBackward
{
  v3 = [(NSMutableString *)self->_pinCode length];
  if (v3)
  {
    [(NSMutableString *)self->_pinCode deleteCharactersInRange:v3 - 1, 1];
    [(PKPinCodeField *)self updateCharacterVisibility];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained pinCodeTextFieldWasUpdated:self isComplete:0];
  }
}

- (int64_t)keyboardType
{
  if (self->_keyboardOverrideEnabled)
  {
    return 0;
  }

  else
  {
    return 11;
  }
}

- (PKPinCodeFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end