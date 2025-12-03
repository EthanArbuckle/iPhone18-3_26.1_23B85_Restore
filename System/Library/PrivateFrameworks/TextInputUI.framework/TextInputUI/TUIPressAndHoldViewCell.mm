@interface TUIPressAndHoldViewCell
- (TUIPressAndHoldViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAccentVariant:(id)variant;
- (void)setAccentVariantNumber:(unint64_t)number;
- (void)updateColors;
- (void)updateLabels;
@end

@implementation TUIPressAndHoldViewCell

- (void)updateColors
{
  if (([(TUIPressAndHoldViewCell *)self isSelected]& 1) != 0 || ([(TUIPressAndHoldViewCell *)self isHighlighted]& 1) != 0)
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v4 = 1;
  }

  else
  {
    systemBlueColor = [MEMORY[0x1E69DC888] clearColor];
    v4 = 0;
  }

  [(TUIPressAndHoldViewCell *)self setBackgroundColor:systemBlueColor];

  traitCollection = [(TUIPressAndHoldViewCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_textLabel setTextColor:whiteColor];

    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_13;
  }

  if (v4)
  {
    whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_textLabel setTextColor:whiteColor3];

    goto LABEL_10;
  }

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [(UILabel *)self->_textLabel setTextColor:blackColor];

LABEL_12:
  whiteColor2 = [MEMORY[0x1E69DC888] systemGrayColor];
LABEL_13:
  v11 = whiteColor2;
  [(UILabel *)self->_accentVariantNumberLabel setTextColor:whiteColor2];
}

- (void)updateLabels
{
  v26[1] = *MEMORY[0x1E69E9840];
  accentVariant = [(TUIPressAndHoldViewCell *)self accentVariant];

  if (accentVariant)
  {
    [(TUIPressAndHoldViewCell *)self bounds];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = v5 + v4;
    v8 = *MEMORY[0x1E69DDCE0] + v7;
    v10 = v9 - (v4 + *(MEMORY[0x1E69DDCE0] + 24));
    v12 = v11 - (*MEMORY[0x1E69DDCE0] + *(MEMORY[0x1E69DDCE0] + 16));
    v25 = *MEMORY[0x1E69DB648];
    font = [(UILabel *)self->_textLabel font];
    v26[0] = font;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    text = [(UILabel *)self->_textLabel text];
    [text sizeWithAttributes:v14];
    v17 = v16;

    text2 = [(UILabel *)self->_textLabel text];
    [text2 sizeWithAttributes:v14];
    v20 = v19;

    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    v21 = CGRectGetMinY(v27) + 3.0;
    [(TUIPressAndHoldViewCell *)self bounds];
    Width = CGRectGetWidth(v28);
    [(TUIPressAndHoldViewCell *)self bounds];
    v23 = CGRectGetWidth(v29);
    v24 = TUIScreenScaleForView(self);
    [(UILabel *)self->_textLabel setFrame:TUIRectIntegralWithScale(0.0, v21, Width, v17, v24)];
    [(UILabel *)self->_accentVariantNumberLabel setFrame:TUIRectIntegralWithScale(0.0, v17 + 3.0 + 3.0, v23, v20, v24)];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIPressAndHoldViewCell;
  [(TUIPressAndHoldViewCell *)&v3 layoutSubviews];
  [(TUIPressAndHoldViewCell *)self updateLabels];
  [(TUIPressAndHoldViewCell *)self updateColors];
}

- (void)setAccentVariantNumber:(unint64_t)number
{
  if (self->_accentVariantNumber != number)
  {
    self->_accentVariantNumber = number;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    stringValue = [v5 stringValue];

    accentVariantNumberLabel = [(TUIPressAndHoldViewCell *)self accentVariantNumberLabel];
    [accentVariantNumberLabel setText:stringValue];

    [(TUIPressAndHoldViewCell *)self setNeedsLayout];
  }
}

- (void)setAccentVariant:(id)variant
{
  variantCopy = variant;
  accentVariant = self->_accentVariant;
  if (accentVariant != variantCopy)
  {
    v8 = variantCopy;
    if (([(NSString *)accentVariant isEqual:?]& 1) == 0)
    {
      objc_storeStrong(&self->_accentVariant, variant);
      if ([(NSString *)v8 length]|| self->_textLabel)
      {
        textLabel = [(TUIPressAndHoldViewCell *)self textLabel];
        [textLabel setText:v8];
      }

      [(TUIPressAndHoldViewCell *)self setNeedsLayout];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (TUIPressAndHoldViewCell)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = TUIPressAndHoldViewCell;
  v3 = [(TUIPressAndHoldViewCell *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_alignment = 1;
    [(TUIPressAndHoldViewCell *)v3 _setCornerRadius:6.0];
    [(TUIPressAndHoldViewCell *)v4 setClipsToBounds:1];
    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(TUIPressAndHoldViewCell *)v4 bounds];
    Width = CGRectGetWidth(v16);
    [(TUIPressAndHoldViewCell *)v4 bounds];
    v7 = [v5 initWithFrame:{0.0, 0.0, Width, CGRectGetHeight(v17)}];
    textLabel = v4->_textLabel;
    v4->_textLabel = v7;

    [(UILabel *)v4->_textLabel setAdjustsFontSizeToFitWidth:0];
    [(UILabel *)v4->_textLabel setTextAlignment:1];
    contentView = [(TUIPressAndHoldViewCell *)v4 contentView];
    [contentView addSubview:v4->_textLabel];

    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    accentVariantNumberLabel = v4->_accentVariantNumberLabel;
    v4->_accentVariantNumberLabel = v11;

    [(UILabel *)v4->_accentVariantNumberLabel setTextAlignment:1];
    contentView2 = [(TUIPressAndHoldViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_accentVariantNumberLabel];
  }

  return v4;
}

@end