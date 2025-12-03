@interface TLKStoreButton
- (CGSize)intrinsicContentSize;
- (NSString)title;
- (TLKStoreButton)init;
- (UIFont)font;
- (double)cornerRadius;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setFont:(id)font;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRichTitle:(id)title;
- (void)setTitle:(id)title;
- (void)setUseCompactMode:(BOOL)mode;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
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

- (void)setUseCompactMode:(BOOL)mode
{
  self->_useCompactMode = mode;
  v4 = 15.0;
  if (mode)
  {
    v4 = 12.0;
  }

  v5 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:v4];
  [(TLKStoreButton *)self setFont:v5];

  [(TLKStoreButton *)self setCornerRadius:0.0];
}

- (UIFont)font
{
  label = [(TLKStoreButton *)self label];
  font = [label font];

  return font;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  label = [(TLKStoreButton *)self label];
  [label setFont:fontCopy];

  [(TLKStoreButton *)self invalidateIntrinsicContentSize];
}

- (double)cornerRadius
{
  backgroundView = [(TLKStoreButton *)self backgroundView];
  layer = [backgroundView layer];
  [layer cornerRadius];
  v5 = v4;

  return v5;
}

- (void)setCornerRadius:(double)radius
{
  radiusCopy = radius;
  if (radius == 0.0)
  {
    [(TLKStoreButton *)self effectiveLayoutSizeFittingSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    radiusCopy = v6 * 0.5;
  }

  backgroundView = [(TLKStoreButton *)self backgroundView];
  layer = [backgroundView layer];
  [layer setCornerRadius:radiusCopy];

  v9 = MEMORY[0x1E69796E8];
  if (radius == 0.0)
  {
    v9 = MEMORY[0x1E69796E0];
  }

  v10 = *v9;
  backgroundView2 = [(TLKStoreButton *)self backgroundView];
  layer2 = [backgroundView2 layer];
  [layer2 setCornerCurve:v10];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightView = [(TLKStoreButton *)self highlightView];

  if (!highlightView)
  {
    v6 = [TLKProminenceView viewWithProminence:2];
    [(TLKStoreButton *)self setHighlightView:v6];

    backgroundView = [(TLKStoreButton *)self backgroundView];
    layer = [backgroundView layer];
    [layer cornerRadius];
    v10 = v9;
    highlightView2 = [(TLKStoreButton *)self highlightView];
    layer2 = [highlightView2 layer];
    [layer2 setCornerRadius:v10];

    backgroundView2 = [(TLKStoreButton *)self backgroundView];
    layer3 = [backgroundView2 layer];
    cornerCurve = [layer3 cornerCurve];
    highlightView3 = [(TLKStoreButton *)self highlightView];
    layer4 = [highlightView3 layer];
    [layer4 setCornerCurve:cornerCurve];

    highlightView4 = [(TLKStoreButton *)self highlightView];
    [highlightView4 setAlpha:0.0];

    highlightView5 = [(TLKStoreButton *)self highlightView];
    [(TLKStoreButton *)self addSubview:highlightView5];
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __33__TLKStoreButton_setHighlighted___block_invoke;
  v20[3] = &unk_1E7FD8F38;
  v20[4] = self;
  highlightedCopy = highlighted;
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
  label = [(TLKStoreButton *)self label];
  [label intrinsicContentSize];
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
  label2 = [(TLKStoreButton *)self label];
  [label2 setFrame:{v22, v24, v26, v28}];

  [(TLKStoreButton *)self bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  backgroundView = [(TLKStoreButton *)self backgroundView];
  [backgroundView setFrame:{v31, v33, v35, v37}];

  [(TLKStoreButton *)self bounds];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  highlightView = [(TLKStoreButton *)self highlightView];
  [highlightView setFrame:{v40, v42, v44, v46}];
}

- (CGSize)intrinsicContentSize
{
  label = [(TLKStoreButton *)self label];
  [label intrinsicContentSize];
  v5 = v4;

  backgroundView = [(TLKStoreButton *)self backgroundView];
  layer = [backgroundView layer];
  [layer cornerRadius];
  v9 = v5 + v8 * 2.0;

  useCompactMode = [(TLKStoreButton *)self useCompactMode];
  v11 = 74.0;
  if (useCompactMode)
  {
    v11 = 59.0;
  }

  if (v9 < v11)
  {
    v9 = v11;
  }

  useCompactMode2 = [(TLKStoreButton *)self useCompactMode];
  v13 = 24.0;
  if (!useCompactMode2)
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
  richTitle = [(TLKStoreButton *)self richTitle];
  text = [richTitle text];

  return text;
}

- (void)setTitle:(id)title
{
  v4 = [(TLKMultilineText *)TLKRichText textWithString:title];
  [v4 setMaxLines:1];
  [(TLKStoreButton *)self setRichTitle:v4];
  [(TLKStoreButton *)self invalidateIntrinsicContentSize];
}

- (void)setRichTitle:(id)title
{
  objc_storeStrong(&self->_richTitle, title);
  titleCopy = title;
  label = [(TLKStoreButton *)self label];
  [label setRichText:titleCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKStoreButton;
  [(TLKStoreButton *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKStoreButton *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKStoreButton *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v12.receiver = self;
  v12.super_class = TLKStoreButton;
  [(UIView *)&v12 tlk_updateForAppearance:appearanceCopy];
  if (([appearanceCopy isVibrant] & 1) != 0 || -[TLKStoreButton isEmphasized](self, "isEmphasized"))
  {
    v5 = 0;
    secondaryButtonColor = 0;
  }

  else
  {
    secondaryButtonColor = [appearanceCopy secondaryButtonColor];
    v5 = 1;
  }

  label = [(TLKStoreButton *)self label];
  [label setTextColor:secondaryButtonColor];

  if (v5)
  {
  }

  quaternaryColor = [appearanceCopy quaternaryColor];
  if (([appearanceCopy isVibrant] & 1) == 0)
  {
    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];

    quaternaryColor = tertiarySystemFillColor;
  }

  backgroundView = [(TLKStoreButton *)self backgroundView];
  [backgroundView setBackgroundColor:quaternaryColor];

  backgroundView2 = [(TLKStoreButton *)self backgroundView];
  [appearanceCopy enableAppearanceForView:backgroundView2];
}

@end