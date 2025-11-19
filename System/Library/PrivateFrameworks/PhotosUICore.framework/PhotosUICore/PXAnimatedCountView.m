@interface PXAnimatedCountView
- (BOOL)_requiresDigitAnimationForNewText:(id)a3;
- (BOOL)_requiresLabelSwitchForNewText:(id)a3;
- (CGSize)intrinsicContentSize;
- (PXAnimatedCountView)initWithCoder:(id)a3;
- (PXAnimatedCountView)initWithFrame:(CGRect)a3;
- (id)_labelWithText:(id)a3;
- (void)_animateLabelSwitchFromLabel:(id)a3 toLabel:(id)a4 andAnimationStyle:(int64_t)a5 completionBlock:(id)a6;
- (void)_updateSizingWithText:(id)a3;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setText:(id)a3 withAnimationStyle:(int64_t)a4 spinDigits:(BOOL)a5;
@end

@implementation PXAnimatedCountView

- (void)_animateLabelSwitchFromLabel:(id)a3 toLabel:(id)a4 andAnimationStyle:(int64_t)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v10;
  v14 = v11;
  [(PXAnimatedCountView *)self bounds];
  [v14 setFrame:?];
  [(PXAnimatedCountView *)self addSubview:v14];
  [(PXAnimatedCountView *)self setCurrentLabel:v14];
  v15 = [(PXAnimatedCountView *)self currentLabel];
  [v15 bounds];
  v16 = CGRectGetHeight(v35) + 1.0;

  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeTranslation(&v34, 0.0, 0.0 - v16);
  memset(&v33, 0, sizeof(v33));
  CGAffineTransformMakeTranslation(&v33, 0.0, v16);
  if (a5 == 2)
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
  v24 = v12;
  v20 = v12;
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

- (void)_updateSizingWithText:(id)a3
{
  v4 = a3;
  v5 = [(PXAnimatedCountView *)self sizingLabel];
  [v5 setText:v4];

  [(PXAnimatedCountView *)self invalidateIntrinsicContentSize];
  v6 = MEMORY[0x1E6979518];

  [v6 flush];
}

- (id)_labelWithText:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PXAnimatedLabel);
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_1F1741150;
  }

  [(PXAnimatedLabel *)v5 setText:v7];

  [(PXAnimatedLabel *)v6 setAlpha:0.0];
  v8 = [(PXAnimatedCountView *)self font];
  if (v8)
  {
    [(PXAnimatedLabel *)v6 setFont:v8];
  }

  return v6;
}

- (BOOL)_requiresDigitAnimationForNewText:(id)a3
{
  v3 = a3;
  if ([v3 rangeOfDigits])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 containsDigits];
  }

  return v4;
}

- (BOOL)_requiresLabelSwitchForNewText:(id)a3
{
  v4 = a3;
  v5 = [(PXAnimatedCountView *)self text];
  v6 = [v5 stringByRemovingDigits];
  v7 = [v4 stringByRemovingDigits];
  v8 = [v4 rangeOfDigits];
  v10 = v9;
  [v5 rangeOfDigits];
  v12 = v11;
  if (v8)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v13 = [v4 containsDigits] ^ 1;
  }

  v14 = [v6 isEqualToString:v7];
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

- (void)setFont:(id)a3
{
  objc_storeStrong(&self->_font, a3);
  v5 = a3;
  v6 = [(PXAnimatedCountView *)self currentLabel];
  [v6 setFont:v5];

  v7 = [(PXAnimatedCountView *)self sizingLabel];
  [v7 setFont:v5];
}

- (void)setText:(id)a3 withAnimationStyle:(int64_t)a4 spinDigits:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  if (a4)
  {
    v10 = 1;
    if (a4 != 1)
    {
      v10 = 2;
    }

    v39 = v10;
    v11 = [(PXAnimatedCountView *)self currentLabel];
    v12 = self->_text;
    v13 = [(PXAnimatedCountView *)self _requiresLabelSwitchForNewText:v9];
    v14 = [(PXAnimatedCountView *)self _requiresDigitAnimationForNewText:v9]&& v5;
    objc_storeStrong(&self->_text, a3);
    if (v13 && v14)
    {
      v37 = v11;
      v15 = v9;
      v36 = [v15 rangeOfDigits];
      v17 = v16;
      v38 = v12;
      v18 = [(NSString *)v12 digits];
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
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

      v27 = [v15 stringByReplacingCharactersInRange:v36 withString:{v17, v24}];

      [(NSString *)v38 rangeOfDigits];
      v29 = v28;
      [v15 rangeOfDigits];
      if (v30 >= v29)
      {
        v33 = [(PXAnimatedCountView *)self _labelWithText:v27];
        [(PXAnimatedCountView *)self _updateSizingWithText:v15];
        v11 = v37;
        [(PXAnimatedCountView *)self _animateLabelSwitchFromLabel:v37 toLabel:v33 andAnimationStyle:a4 completionBlock:0];
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
        v31 = [(PXAnimatedCountView *)self currentLabel];
        [v31 setText:v15 withAnimationStyle:v39 completionBlock:&__block_literal_global_140251];

        v32 = dispatch_time(0, 330000013);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __61__PXAnimatedCountView_setText_withAnimationStyle_spinDigits___block_invoke_3;
        block[3] = &unk_1E774A768;
        block[4] = self;
        v41 = v15;
        v11 = v37;
        v42 = v37;
        v43 = a4;
        dispatch_after(v32, MEMORY[0x1E69E96A0], block);
      }

      v12 = v38;
    }

    else if (v13)
    {
      v26 = [(PXAnimatedCountView *)self _labelWithText:v9];
      [(PXAnimatedCountView *)self _updateSizingWithText:v9];
      [(PXAnimatedCountView *)self _animateLabelSwitchFromLabel:v11 toLabel:v26 andAnimationStyle:a4 completionBlock:0];
    }

    else if (v14)
    {
      [v11 setText:v9 withAnimationStyle:v39 completionBlock:0];
      [(PXAnimatedCountView *)self _updateSizingWithText:v9];
    }
  }

  else
  {
    objc_storeStrong(&self->_text, a3);
    v25 = [(PXAnimatedCountView *)self currentLabel];
    [v25 setText:v9];

    [(PXAnimatedCountView *)self _updateSizingWithText:v9];
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
  v11 = [(PXAnimatedCountView *)self gradientLayer];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  v15 = CGRectInset(v14, 0.0, 4.0);
  [v11 setFrame:{v15.origin.x, v15.origin.y, v15.size.width, v15.size.height}];

  v12 = [(PXAnimatedCountView *)self currentLabel];
  [v12 setFrame:{v4, v6, v8, v10}];
}

- (CGSize)intrinsicContentSize
{
  v2 = [(PXAnimatedCountView *)self sizingLabel];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v6 + 8.0;
  v8 = v4;
  result.height = v7;
  result.width = v8;
  return result;
}

- (PXAnimatedCountView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXAnimatedCountView;
  v3 = [(PXAnimatedCountView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PXAnimatedCountView *)v3 commonInit];
  }

  return v4;
}

- (PXAnimatedCountView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXAnimatedCountView;
  v3 = [(PXAnimatedCountView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [MEMORY[0x1E6979380] layer];
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  v5 = [v4 CGColor];

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
  v7 = [v6 CGColor];

  v20[0] = v5;
  v20[1] = v7;
  v20[2] = v7;
  v20[3] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  [(CAGradientLayer *)v3 setColors:v8];
  [(CAGradientLayer *)v3 setLocations:&unk_1F1910E58];
  v9 = [(PXAnimatedCountView *)self layer];
  [v9 bounds];
  [(CAGradientLayer *)v3 setFrame:?];

  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  font = self->_font;
  self->_font = v10;

  gradientLayer = self->_gradientLayer;
  self->_gradientLayer = v3;
  v13 = v3;

  v14 = [(PXAnimatedCountView *)self layer];
  [v14 setMask:v13];

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