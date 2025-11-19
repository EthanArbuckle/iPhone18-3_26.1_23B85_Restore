@interface TUIPressAndHoldViewCell
- (TUIPressAndHoldViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAccentVariant:(id)a3;
- (void)setAccentVariantNumber:(unint64_t)a3;
- (void)updateColors;
- (void)updateLabels;
@end

@implementation TUIPressAndHoldViewCell

- (void)updateColors
{
  if (([(TUIPressAndHoldViewCell *)self isSelected]& 1) != 0 || ([(TUIPressAndHoldViewCell *)self isHighlighted]& 1) != 0)
  {
    v3 = [MEMORY[0x1E69DC888] systemBlueColor];
    v4 = 1;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    v4 = 0;
  }

  [(TUIPressAndHoldViewCell *)self setBackgroundColor:v3];

  v5 = [(TUIPressAndHoldViewCell *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 == 2)
  {
    v7 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_textLabel setTextColor:v7];

    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v9 = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_textLabel setTextColor:v8];

    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E69DC888] blackColor];
  [(UILabel *)self->_textLabel setTextColor:v10];

LABEL_12:
  v9 = [MEMORY[0x1E69DC888] systemGrayColor];
LABEL_13:
  v11 = v9;
  [(UILabel *)self->_accentVariantNumberLabel setTextColor:v9];
}

- (void)updateLabels
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUIPressAndHoldViewCell *)self accentVariant];

  if (v3)
  {
    [(TUIPressAndHoldViewCell *)self bounds];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v6 = v5 + v4;
    v8 = *MEMORY[0x1E69DDCE0] + v7;
    v10 = v9 - (v4 + *(MEMORY[0x1E69DDCE0] + 24));
    v12 = v11 - (*MEMORY[0x1E69DDCE0] + *(MEMORY[0x1E69DDCE0] + 16));
    v25 = *MEMORY[0x1E69DB648];
    v13 = [(UILabel *)self->_textLabel font];
    v26[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v15 = [(UILabel *)self->_textLabel text];
    [v15 sizeWithAttributes:v14];
    v17 = v16;

    v18 = [(UILabel *)self->_textLabel text];
    [v18 sizeWithAttributes:v14];
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

- (void)setAccentVariantNumber:(unint64_t)a3
{
  if (self->_accentVariantNumber != a3)
  {
    self->_accentVariantNumber = a3;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v7 = [v5 stringValue];

    v6 = [(TUIPressAndHoldViewCell *)self accentVariantNumberLabel];
    [v6 setText:v7];

    [(TUIPressAndHoldViewCell *)self setNeedsLayout];
  }
}

- (void)setAccentVariant:(id)a3
{
  v5 = a3;
  accentVariant = self->_accentVariant;
  if (accentVariant != v5)
  {
    v8 = v5;
    if (([(NSString *)accentVariant isEqual:?]& 1) == 0)
    {
      objc_storeStrong(&self->_accentVariant, a3);
      if ([(NSString *)v8 length]|| self->_textLabel)
      {
        v7 = [(TUIPressAndHoldViewCell *)self textLabel];
        [v7 setText:v8];
      }

      [(TUIPressAndHoldViewCell *)self setNeedsLayout];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (TUIPressAndHoldViewCell)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = TUIPressAndHoldViewCell;
  v3 = [(TUIPressAndHoldViewCell *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v9 = [(TUIPressAndHoldViewCell *)v4 contentView];
    [v9 addSubview:v4->_textLabel];

    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    accentVariantNumberLabel = v4->_accentVariantNumberLabel;
    v4->_accentVariantNumberLabel = v11;

    [(UILabel *)v4->_accentVariantNumberLabel setTextAlignment:1];
    v13 = [(TUIPressAndHoldViewCell *)v4 contentView];
    [v13 addSubview:v4->_accentVariantNumberLabel];
  }

  return v4;
}

@end