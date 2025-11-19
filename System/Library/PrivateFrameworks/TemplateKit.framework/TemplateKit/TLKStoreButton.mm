@interface TLKStoreButton
- (CGSize)intrinsicContentSize;
- (NSString)title;
- (TLKStoreButton)init;
- (UIFont)font;
- (double)cornerRadius;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
- (void)setFont:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setRichTitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUseCompactMode:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TLKStoreButton

- (TLKStoreButton)init
{
  v6.receiver = self;
  v6.super_class = TLKStoreButton;
  v2 = [(TLKStoreButton *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [v3 setUserInteractionEnabled:0];
    [(TLKStoreButton *)v2 setBackgroundView:v3];
    [(TLKStoreButton *)v2 addSubview:v3];
    v4 = objc_opt_new();
    [v4 setAdjustsFontSizeToFitWidth:1];
    [v4 setBaselineAdjustment:1];
    [v4 setTextAlignment:1];
    [(TLKStoreButton *)v2 setLabel:v4];
    [(TLKStoreButton *)v2 addSubview:v4];
    [(TLKStoreButton *)v2 setUseCompactMode:0];
  }

  return v2;
}

- (void)setUseCompactMode:(BOOL)a3
{
  self->_useCompactMode = a3;
  v4 = 15.0;
  if (a3)
  {
    v4 = 12.0;
  }

  v5 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:v4];
  [(TLKStoreButton *)self setFont:v5];

  [(TLKStoreButton *)self setCornerRadius:0.0];
}

- (UIFont)font
{
  v2 = [(TLKStoreButton *)self label];
  v3 = [v2 font];

  return v3;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(TLKStoreButton *)self label];
  [v5 setFont:v4];

  [(TLKStoreButton *)self invalidateIntrinsicContentSize];
}

- (double)cornerRadius
{
  v2 = [(TLKStoreButton *)self backgroundView];
  v3 = [v2 layer];
  [v3 cornerRadius];
  v5 = v4;

  return v5;
}

- (void)setCornerRadius:(double)a3
{
  v5 = a3;
  if (a3 == 0.0)
  {
    [(TLKStoreButton *)self effectiveLayoutSizeFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    v5 = v6 * 0.5;
  }

  v7 = [(TLKStoreButton *)self backgroundView];
  v8 = [v7 layer];
  [v8 setCornerRadius:v5];

  v9 = MEMORY[0x1E69796E8];
  if (a3 == 0.0)
  {
    v9 = MEMORY[0x1E69796E0];
  }

  v10 = *v9;
  v12 = [(TLKStoreButton *)self backgroundView];
  v11 = [v12 layer];
  [v11 setCornerCurve:v10];
}

- (void)setHighlighted:(BOOL)a3
{
  v5 = [(TLKStoreButton *)self highlightView];

  if (!v5)
  {
    v6 = [TLKProminenceView viewWithProminence:2];
    [(TLKStoreButton *)self setHighlightView:v6];

    v7 = [(TLKStoreButton *)self backgroundView];
    v8 = [v7 layer];
    [v8 cornerRadius];
    v10 = v9;
    v11 = [(TLKStoreButton *)self highlightView];
    v12 = [v11 layer];
    [v12 setCornerRadius:v10];

    v13 = [(TLKStoreButton *)self backgroundView];
    v14 = [v13 layer];
    v15 = [v14 cornerCurve];
    v16 = [(TLKStoreButton *)self highlightView];
    v17 = [v16 layer];
    [v17 setCornerCurve:v15];

    v18 = [(TLKStoreButton *)self highlightView];
    [v18 setAlpha:0.0];

    v19 = [(TLKStoreButton *)self highlightView];
    [(TLKStoreButton *)self addSubview:v19];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __33__TLKStoreButton_setHighlighted___block_invoke;
  v20[3] = &unk_1E7FD8F38;
  v20[4] = self;
  v21 = a3;
  [TLKUtilities performAnimatableChanges:v20];
}

void __33__TLKStoreButton_setHighlighted___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) highlightView];
  [v3 setAlpha:v2];
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = TLKStoreButton;
  [(TLKStoreButton *)&v48 layoutSubviews];
  [(TLKStoreButton *)self bounds];
  v3 = CGRectGetWidth(v49) * 0.5;
  if (v3 <= 6.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6.0;
  }

  [(TLKStoreButton *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(TLKStoreButton *)self bounds];
  Height = CGRectGetHeight(v50);
  v14 = [(TLKStoreButton *)self label];
  [v14 intrinsicContentSize];
  v16 = (Height - v15) * 0.5;
  v51.origin.x = v6;
  v51.origin.y = v8;
  v51.size.width = v10;
  v51.size.height = v12;
  v52 = CGRectInset(v51, v4, v16);
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  v20 = v52.size.height;

  [TLKLayoutUtilities deviceScaledRoundedRect:self forView:x, y, width, v20];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(TLKStoreButton *)self label];
  [v29 setFrame:{v22, v24, v26, v28}];

  [(TLKStoreButton *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(TLKStoreButton *)self backgroundView];
  [v38 setFrame:{v31, v33, v35, v37}];

  [(TLKStoreButton *)self bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = [(TLKStoreButton *)self highlightView];
  [v47 setFrame:{v40, v42, v44, v46}];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(TLKStoreButton *)self label];
  [v3 intrinsicContentSize];
  v5 = v4;

  v6 = [(TLKStoreButton *)self backgroundView];
  v7 = [v6 layer];
  [v7 cornerRadius];
  v9 = v5 + v8 * 2.0;

  v10 = [(TLKStoreButton *)self useCompactMode];
  v11 = 74.0;
  if (v10)
  {
    v11 = 59.0;
  }

  if (v9 < v11)
  {
    v9 = v11;
  }

  v12 = [(TLKStoreButton *)self useCompactMode];
  v13 = 24.0;
  if (!v12)
  {
    v13 = 30.0;
  }

  v14 = v9;
  result.height = v13;
  result.width = v14;
  return result;
}

- (NSString)title
{
  v2 = [(TLKStoreButton *)self richTitle];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = [(TLKMultilineText *)TLKRichText textWithString:a3];
  [v4 setMaxLines:1];
  [(TLKStoreButton *)self setRichTitle:v4];
  [(TLKStoreButton *)self invalidateIntrinsicContentSize];
}

- (void)setRichTitle:(id)a3
{
  objc_storeStrong(&self->_richTitle, a3);
  v5 = a3;
  v6 = [(TLKStoreButton *)self label];
  [v6 setRichText:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKStoreButton;
  [(TLKStoreButton *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKStoreButton *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKStoreButton *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TLKStoreButton;
  [(TLKStoreButton *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TLKStoreButton;
  [(UIView *)&v12 tlk_updateForAppearance:v4];
  if (([v4 isVibrant] & 1) != 0 || -[TLKStoreButton isEmphasized](self, "isEmphasized"))
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = [v4 secondaryButtonColor];
    v5 = 1;
  }

  v7 = [(TLKStoreButton *)self label];
  [v7 setTextColor:v6];

  if (v5)
  {
  }

  v8 = [v4 quaternaryColor];
  if (([v4 isVibrant] & 1) == 0)
  {
    v9 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];

    v8 = v9;
  }

  v10 = [(TLKStoreButton *)self backgroundView];
  [v10 setBackgroundColor:v8];

  v11 = [(TLKStoreButton *)self backgroundView];
  [v4 enableAppearanceForView:v11];
}

@end