@interface PXAnimatedCountView
- (BOOL)_requiresDigitAnimationForNewText:(id)text;
- (BOOL)_requiresLabelSwitchForNewText:(id)text;
- (CGSize)intrinsicContentSize;
- (PXAnimatedCountView)initWithCoder:(id)coder;
- (PXAnimatedCountView)initWithFrame:(CGRect)frame;
- (id)_labelWithText:(id)text;
- (void)_animateLabelSwitchFromLabel:(id)label toLabel:(id)toLabel andAnimationStyle:(int64_t)style completionBlock:(id)block;
- (void)_updateSizingWithText:(id)text;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setFont:(id)font;
- (void)setText:(id)text withAnimationStyle:(int64_t)style spinDigits:(BOOL)digits;
@end

@implementation PXAnimatedCountView

- (void)_animateLabelSwitchFromLabel:(id)label toLabel:(id)toLabel andAnimationStyle:(int64_t)style completionBlock:(id)block
{
  labelCopy = label;
  toLabelCopy = toLabel;
  blockCopy = block;
  v13 = labelCopy;
  v14 = toLabelCopy;
  [(PXAnimatedCountView *)self bounds];
  [v14 setFrame:?];
  [(PXAnimatedCountView *)self addSubview:v14];
  [(PXAnimatedCountView *)self setCurrentLabel:v14];
  currentLabel = [(PXAnimatedCountView *)self currentLabel];
  [currentLabel bounds];
  v16 = CGRectGetHeight(v35) + 1.0;

  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeTranslation(&v34, 0.0, 0.0 - v16);
  memset(&v33, 0, sizeof(v33));
  CGAffineTransformMakeTranslation(&v33, 0.0, v16);
  if (style == 2)
  {
    v32 = v34;
    v29 = *&v33.a;
    v30 = *&v33.c;
    v17 = *&v33.tx;
  }

  else
  {
    v32 = v33;
    v29 = *&v34.a;
    v30 = *&v34.c;
    v17 = *&v34.tx;
  }

  v31 = v17;
  [v14 setTransform:&v29];
  v18 = MEMORY[0x1E69DD250];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __94__PXAnimatedCountView__animateLabelSwitchFromLabel_toLabel_andAnimationStyle_completionBlock___block_invoke;
  v25[3] = &unk_1E773D358;
  v26 = v14;
  v19 = v13;
  v27 = v19;
  v28 = v32;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __94__PXAnimatedCountView__animateLabelSwitchFromLabel_toLabel_andAnimationStyle_completionBlock___block_invoke_2;
  v22[3] = &unk_1E7740890;
  v23 = v19;
  v24 = blockCopy;
  v20 = blockCopy;
  v21 = v14;
  [v18 animateWithDuration:0x10000 delay:v25 options:v22 animations:0.400000006 completion:0.0];
}

uint64_t __94__PXAnimatedCountView__animateLabelSwitchFromLabel_toLabel_andAnimationStyle_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v7 = *MEMORY[0x1E695EFD0];
  v8 = v3;
  v9 = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:&v7];
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = v5;
  v9 = *(a1 + 80);
  [v4 setTransform:&v7];
  [*(a1 + 32) setAlpha:1.0];
  return [*(a1 + 40) setAlpha:0.0];
}

uint64_t __94__PXAnimatedCountView__animateLabelSwitchFromLabel_toLabel_andAnimationStyle_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_updateSizingWithText:(id)text
{
  textCopy = text;
  sizingLabel = [(PXAnimatedCountView *)self sizingLabel];
  [sizingLabel setText:textCopy];

  [(PXAnimatedCountView *)self invalidateIntrinsicContentSize];
  v6 = MEMORY[0x1E6979518];

  [v6 flush];
}

- (id)_labelWithText:(id)text
{
  textCopy = text;
  v5 = objc_alloc_init(PXAnimatedLabel);
  v6 = v5;
  if (textCopy)
  {
    v7 = textCopy;
  }

  else
  {
    v7 = &stru_1F1741150;
  }

  [(PXAnimatedLabel *)v5 setText:v7];

  [(PXAnimatedLabel *)v6 setAlpha:0.0];
  font = [(PXAnimatedCountView *)self font];
  if (font)
  {
    [(PXAnimatedLabel *)v6 setFont:font];
  }

  return v6;
}

- (BOOL)_requiresDigitAnimationForNewText:(id)text
{
  textCopy = text;
  if ([textCopy rangeOfDigits])
  {
    containsDigits = 0;
  }

  else
  {
    containsDigits = [textCopy containsDigits];
  }

  return containsDigits;
}

- (BOOL)_requiresLabelSwitchForNewText:(id)text
{
  textCopy = text;
  text = [(PXAnimatedCountView *)self text];
  stringByRemovingDigits = [text stringByRemovingDigits];
  stringByRemovingDigits2 = [textCopy stringByRemovingDigits];
  rangeOfDigits = [textCopy rangeOfDigits];
  v10 = v9;
  [text rangeOfDigits];
  v12 = v11;
  if (rangeOfDigits)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v13 = [textCopy containsDigits] ^ 1;
  }

  v14 = [stringByRemovingDigits isEqualToString:stringByRemovingDigits2];
  if (v12 == v10)
  {
    v15 = v13;
  }

  else
  {
    v15 = 1;
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)setFont:(id)font
{
  objc_storeStrong(&self->_font, font);
  fontCopy = font;
  currentLabel = [(PXAnimatedCountView *)self currentLabel];
  [currentLabel setFont:fontCopy];

  sizingLabel = [(PXAnimatedCountView *)self sizingLabel];
  [sizingLabel setFont:fontCopy];
}

- (void)setText:(id)text withAnimationStyle:(int64_t)style spinDigits:(BOOL)digits
{
  digitsCopy = digits;
  textCopy = text;
  if (style)
  {
    v10 = 1;
    if (style != 1)
    {
      v10 = 2;
    }

    v39 = v10;
    currentLabel = [(PXAnimatedCountView *)self currentLabel];
    v12 = self->_text;
    v13 = [(PXAnimatedCountView *)self _requiresLabelSwitchForNewText:textCopy];
    v14 = [(PXAnimatedCountView *)self _requiresDigitAnimationForNewText:textCopy]&& digitsCopy;
    objc_storeStrong(&self->_text, text);
    if (v13 && v14)
    {
      v37 = currentLabel;
      v15 = textCopy;
      rangeOfDigits = [v15 rangeOfDigits];
      v17 = v16;
      v38 = v12;
      digits = [(NSString *)v12 digits];
      if (digits == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = 0;
      }

      else
      {
        v19 = digits;
      }

      v20 = MEMORY[0x1E696ADA0];
      v21 = [MEMORY[0x1E696AD98] numberWithInteger:v19];
      v22 = [v20 localizedStringFromNumber:v21 numberStyle:0];

      if ([v22 length] >= v17)
      {
        v24 = v22;
      }

      else
      {
        do
        {
          v23 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1F190CB50 numberStyle:0];
          v24 = [v23 stringByAppendingString:v22];

          v22 = v24;
        }

        while ([v24 length] < v17);
      }

      v27 = [v15 stringByReplacingCharactersInRange:rangeOfDigits withString:{v17, v24}];

      [(NSString *)v38 rangeOfDigits];
      v29 = v28;
      [v15 rangeOfDigits];
      if (v30 >= v29)
      {
        v33 = [(PXAnimatedCountView *)self _labelWithText:v27];
        [(PXAnimatedCountView *)self _updateSizingWithText:v15];
        currentLabel = v37;
        [(PXAnimatedCountView *)self _animateLabelSwitchFromLabel:v37 toLabel:v33 andAnimationStyle:style completionBlock:0];
        v34 = dispatch_time(0, 240000003);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __61__PXAnimatedCountView_setText_withAnimationStyle_spinDigits___block_invoke;
        v44[3] = &unk_1E7749FF8;
        v45 = v33;
        v46 = v15;
        v47 = v39;
        v35 = v33;
        dispatch_after(v34, MEMORY[0x1E69E96A0], v44);
      }

      else
      {
        currentLabel2 = [(PXAnimatedCountView *)self currentLabel];
        [currentLabel2 setText:v15 withAnimationStyle:v39 completionBlock:&__block_literal_global_140251];

        v32 = dispatch_time(0, 330000013);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __61__PXAnimatedCountView_setText_withAnimationStyle_spinDigits___block_invoke_3;
        block[3] = &unk_1E774A768;
        block[4] = self;
        v41 = v15;
        currentLabel = v37;
        v42 = v37;
        styleCopy = style;
        dispatch_after(v32, MEMORY[0x1E69E96A0], block);
      }

      v12 = v38;
    }

    else if (v13)
    {
      v26 = [(PXAnimatedCountView *)self _labelWithText:textCopy];
      [(PXAnimatedCountView *)self _updateSizingWithText:textCopy];
      [(PXAnimatedCountView *)self _animateLabelSwitchFromLabel:currentLabel toLabel:v26 andAnimationStyle:style completionBlock:0];
    }

    else if (v14)
    {
      [currentLabel setText:textCopy withAnimationStyle:v39 completionBlock:0];
      [(PXAnimatedCountView *)self _updateSizingWithText:textCopy];
    }
  }

  else
  {
    objc_storeStrong(&self->_text, text);
    currentLabel3 = [(PXAnimatedCountView *)self currentLabel];
    [currentLabel3 setText:textCopy];

    [(PXAnimatedCountView *)self _updateSizingWithText:textCopy];
  }
}

void __61__PXAnimatedCountView_setText_withAnimationStyle_spinDigits___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _labelWithText:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__PXAnimatedCountView_setText_withAnimationStyle_spinDigits___block_invoke_4;
  v6[3] = &unk_1E7749628;
  v6[4] = v3;
  v7 = *(a1 + 40);
  [v3 _animateLabelSwitchFromLabel:v4 toLabel:v2 andAnimationStyle:v5 completionBlock:v6];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PXAnimatedCountView;
  [(PXAnimatedCountView *)&v13 layoutSubviews];
  [(PXAnimatedCountView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  gradientLayer = [(PXAnimatedCountView *)self gradientLayer];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  v15 = CGRectInset(v14, 0.0, 4.0);
  [gradientLayer setFrame:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];

  currentLabel = [(PXAnimatedCountView *)self currentLabel];
  [currentLabel setFrame:{v4, v6, v8, v10}];
}

- (CGSize)intrinsicContentSize
{
  sizingLabel = [(PXAnimatedCountView *)self sizingLabel];
  [sizingLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v6 + 8.0;
  v8 = v4;
  result.height = v7;
  result.width = v8;
  return result;
}

- (PXAnimatedCountView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PXAnimatedCountView;
  v3 = [(PXAnimatedCountView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PXAnimatedCountView *)v3 commonInit];
  }

  return v4;
}

- (PXAnimatedCountView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXAnimatedCountView;
  v3 = [(PXAnimatedCountView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXAnimatedCountView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v20[4] = *MEMORY[0x1E69E9840];
  layer = [MEMORY[0x1E6979380] layer];
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  cGColor = [v4 CGColor];

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
  cGColor2 = [v6 CGColor];

  v20[0] = cGColor;
  v20[1] = cGColor2;
  v20[2] = cGColor2;
  v20[3] = cGColor;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [(CAGradientLayer *)layer setColors:v8];
  [(CAGradientLayer *)layer setLocations:&unk_1F1910E58];
  layer2 = [(PXAnimatedCountView *)self layer];
  [layer2 bounds];
  [(CAGradientLayer *)layer setFrame:?];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  font = self->_font;
  self->_font = v10;

  gradientLayer = self->_gradientLayer;
  self->_gradientLayer = layer;
  v13 = layer;

  layer3 = [(PXAnimatedCountView *)self layer];
  [layer3 setMask:v13];

  v15 = objc_alloc_init(PXAnimatedLabel);
  [(PXAnimatedLabel *)v15 setText:&stru_1F1741150];
  [(PXAnimatedLabel *)v15 setFont:self->_font];
  [(PXAnimatedLabel *)v15 sizeToFit];
  currentLabel = self->_currentLabel;
  self->_currentLabel = v15;
  v17 = v15;

  [(PXAnimatedCountView *)self addSubview:v17];
  v18 = objc_alloc_init(PXAnimatedLabel);
  [(PXAnimatedLabel *)v18 setText:&stru_1F1741150];
  [(PXAnimatedLabel *)v18 setFont:self->_font];
  [(PXAnimatedLabel *)v18 sizeToFit];
  sizingLabel = self->_sizingLabel;
  self->_sizingLabel = v18;
}

@end