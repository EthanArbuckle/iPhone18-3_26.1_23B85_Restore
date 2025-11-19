@interface SBFLockScreenDateSubtitleView
+ ($01BB1521EC52D44A8E7628F5261DCEC8)labelFontMetrics;
+ (double)scaledFontSize:(double)a3 withMaximumFontSizeCategory:(id)a4;
+ (id)labelFont;
- (CGRect)accessoryViewFrame;
- (CGRect)subtitleLabelFrame;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBFLockScreenDateSubtitleView)initWithString:(id)a3 accessoryView:(id)a4;
- (UIEdgeInsets)subtitleLabelCharacterOverflowInsets;
- (double)baselineOffsetFromOrigin;
- (double)interItemSpacing;
- (void)_updateForCurrentSizeCategory;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setStrength:(double)a3;
@end

@implementation SBFLockScreenDateSubtitleView

- (double)interItemSpacing
{
  if (!self->_accessoryView)
  {
    return 0.0;
  }

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() == 2)
    {
      return 12.0;
    }

    else
    {
      return 9.0;
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom] == 1)
    {
      v2 = 12.0;
    }

    else
    {
      v2 = 9.0;
    }
  }

  return v2;
}

+ ($01BB1521EC52D44A8E7628F5261DCEC8)labelFontMetrics
{
  if (labelFontMetrics_onceToken != -1)
  {
    +[SBFLockScreenDateSubtitleView labelFontMetrics];
  }

  v3 = *&labelFontMetrics_labelFontMetrics;
  if (*&labelFontMetrics_labelFontMetrics == 0.0)
  {
    v4 = [a1 labelFont];
    [v4 ascender];
    v6 = v5;
    [v4 descender];
    v8 = v7;
    [v4 _bodyLeading];
    v10 = v9;
    [v4 capHeight];
    *&labelFontMetrics_labelFontMetrics = v6;
    *(&labelFontMetrics_labelFontMetrics + 1) = v8;
    qword_1ED69D2D8 = v10;
    qword_1ED69D2E0 = v11;

    v3 = *&labelFontMetrics_labelFontMetrics;
  }

  v12 = *(&labelFontMetrics_labelFontMetrics + 1);
  v13 = *&qword_1ED69D2D8;
  v14 = *&qword_1ED69D2E0;
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v3;
  return result;
}

- (SBFLockScreenDateSubtitleView)initWithString:(id)a3 accessoryView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = SBFLockScreenDateSubtitleView;
  v8 = [(SBFLockScreenDateSubtitleView *)&v23 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DD5B8]) initWithStyle:1];
    legibilitySettings = v8->_legibilitySettings;
    v8->_legibilitySettings = v9;

    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v11 = getSBUILegibilityLabelClass_softClass_0;
    v28 = getSBUILegibilityLabelClass_softClass_0;
    if (!getSBUILegibilityLabelClass_softClass_0)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __getSBUILegibilityLabelClass_block_invoke_0;
      v24[3] = &unk_1E807F028;
      v24[4] = &v25;
      __getSBUILegibilityLabelClass_block_invoke_0(v24);
      v11 = v26[3];
    }

    v12 = v11;
    _Block_object_dispose(&v25, 8);
    v13 = [v11 alloc];
    v14 = v8->_legibilitySettings;
    v15 = *MEMORY[0x1E69DE9E8];
    v16 = +[SBFLockScreenDateSubtitleView labelFont];
    v17 = [v13 initWithSettings:v14 strength:v6 string:v16 font:v15];
    label = v8->_label;
    v8->_label = v17;

    v19 = v8->_label;
    v20 = [MEMORY[0x1E69DC888] clearColor];
    [(SBUILegibilityLabel *)v19 setBackgroundColor:v20];

    [(SBUILegibilityLabel *)v8->_label setAdjustsFontSizeToFitWidth:1];
    [(SBUILegibilityLabel *)v8->_label setMinimumScaleFactor:0.25];
    [(SBFLockScreenDateSubtitleView *)v8 addSubview:v8->_label];
    [(SBFLockScreenDateSubtitleView *)v8 setAccessoryView:v7];
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v8 selector:sel__updateForCurrentSizeCategory name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBFLockScreenDateSubtitleView;
  [(SBFLockScreenDateSubtitleView *)&v4 dealloc];
}

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  accessoryView = self->_accessoryView;
  if (accessoryView != v5)
  {
    v7 = v5;
    if (accessoryView)
    {
      [(UIView *)accessoryView removeFromSuperview];
    }

    objc_storeStrong(&self->_accessoryView, a3);
    if (v7)
    {
      [(SBFLockScreenDateSubtitleView *)self addSubview:self->_accessoryView];
    }

    accessoryView = [(SBFLockScreenDateSubtitleView *)self layoutIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](accessoryView, v5);
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (![(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?])
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBUILegibilityLabel *)self->_label setLegibilitySettings:self->_legibilitySettings];
  }
}

- (void)setStrength:(double)a3
{
  if (self->_strength != a3)
  {
    self->_strength = a3;
    [(SBUILegibilityLabel *)self->_label setStrength:?];
  }
}

- (void)_updateForCurrentSizeCategory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SBFLockScreenDateSubtitleView__updateForCurrentSizeCategory__block_invoke;
  block[3] = &unk_1E807F178;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __62__SBFLockScreenDateSubtitleView__updateForCurrentSizeCategory__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() labelFont];
  [v2 setFont:v3];

  v4 = *(a1 + 32);

  return [v4 setNeedsLayout];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBFLockScreenDateSubtitleView;
  [(SBFLockScreenDateSubtitleView *)&v5 layoutSubviews];
  [(UIView *)self->_accessoryView sizeToFit];
  accessoryView = self->_accessoryView;
  [(SBFLockScreenDateSubtitleView *)self accessoryViewFrame];
  [(UIView *)accessoryView setFrame:?];
  [(SBUILegibilityLabel *)self->_label sizeToFit];
  label = self->_label;
  [(SBFLockScreenDateSubtitleView *)self subtitleLabelFrame];
  [(SBUILegibilityLabel *)label setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIView *)self->_accessoryView sizeThatFits:?];
  v7 = v6;
  [(SBUILegibilityLabel *)self->_label sizeThatFits:width, height];
  v9 = fmax(v7, v8);
  [(SBFLockScreenDateSubtitleView *)self interItemSpacing];
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  UIRoundToScreenScale();
  v12 = v11;

  v13 = v12;
  v14 = v9;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGRect)accessoryViewFrame
{
  [(SBFLockScreenDateSubtitleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_accessoryView frame];
  UIRectCenteredYInRectScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v12 = MaxX - CGRectGetWidth(v25);
  }

  v20 = v12;
  v21 = v14;
  v22 = v16;
  v23 = v18;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)subtitleLabelFrame
{
  [(SBFLockScreenDateSubtitleView *)self bounds];
  [(SBUILegibilityLabel *)self->_label bounds];
  [(SBFLockScreenDateSubtitleView *)self accessoryViewFrame];
  v24 = v4;
  v25 = v3;
  v26 = v5;
  rect = v6;
  UIRectCenteredYInRectScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v27.origin.y = v24;
    v27.origin.x = v25;
    v27.size.width = v26;
    v27.size.height = rect;
    MinX = CGRectGetMinX(v27);
    [(SBFLockScreenDateSubtitleView *)self interItemSpacing];
    v17 = MinX - v16;
    v28.origin.x = v8;
    v28.origin.y = v10;
    v28.size.width = v12;
    v28.size.height = v14;
    v18 = v17 - CGRectGetWidth(v28);
  }

  else
  {
    [(SBFLockScreenDateSubtitleView *)self interItemSpacing];
    v18 = v26 + v19;
  }

  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v18;
  return result;
}

- (UIEdgeInsets)subtitleLabelCharacterOverflowInsets
{
  [(SBUILegibilityLabel *)self->_label characterOverflowInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)labelFont
{
  if (labelFont_onceToken[0] != -1)
  {
    +[SBFLockScreenDateSubtitleView labelFont];
  }

  if (labelFont_timeSubtitleFont)
  {
    goto LABEL_31;
  }

  v3 = 0x1E69DB000uLL;
  v4 = MEMORY[0x1E69DB878];
  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = 22.0;
  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v8 = 23.0;
  }

  else
  {
    v8 = 22.0;
  }

  v9 = [v4 systemFontOfSize:v8];
  v10 = labelFont_timeSubtitleFont;
  labelFont_timeSubtitleFont = v9;

  v11 = MEMORY[0x1E69DB878];
  v12 = [MEMORY[0x1E69DC938] currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = 23.0;
  }

  v14 = __sb__runningInSpringBoard();
  if (v14)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
LABEL_26:
      v18 = MEMORY[0x1E69DDC28];
      goto LABEL_27;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v12 userInterfaceIdiom])
    {
      v15 = 0;
      v16 = 0;
      v17 = 1;
      goto LABEL_26;
    }
  }

  v17 = v14 ^ 1;
  v3 = __sb__runningInSpringBoard();
  if (v3)
  {
    if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
    {
      v15 = 0;
      v16 = 0;
      v18 = MEMORY[0x1E69DDC30];
      goto LABEL_27;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v14 userInterfaceIdiom])
    {
      v16 = 0;
      v18 = MEMORY[0x1E69DDC30];
      v15 = 1;
      goto LABEL_27;
    }
  }

  v15 = v3 ^ 1;
  v19 = __sb__runningInSpringBoard();
  if (v19)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
  }

  v16 = v19 ^ 1;
  BSSizeRoundForScale();
  if (v20 >= *(MEMORY[0x1E69D4380] + 40))
  {
    goto LABEL_26;
  }

  v18 = MEMORY[0x1E69DDC30];
LABEL_27:
  [a1 scaledFontSize:*v18 withMaximumFontSizeCategory:v7];
  v21 = [v11 systemFontOfSize:?];
  v22 = labelFont_timeSubtitleFont;
  labelFont_timeSubtitleFont = v21;

  if (v16)
  {

    if (!v15)
    {
      goto LABEL_29;
    }
  }

  else if (!v15)
  {
LABEL_29:
    if (!v17)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v17)
  {
LABEL_30:
  }

LABEL_31:
  v23 = labelFont_timeSubtitleFont;

  return v23;
}

void __42__SBFLockScreenDateSubtitleView_labelFont__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_15];
}

void __42__SBFLockScreenDateSubtitleView_labelFont__block_invoke_2()
{
  v0 = labelFont_timeSubtitleFont;
  labelFont_timeSubtitleFont = 0;
}

void __49__SBFLockScreenDateSubtitleView_labelFontMetrics__block_invoke()
{
  labelFontMetrics_labelFontMetrics = SBFFontMetricsZero;
  *&qword_1ED69D2D8 = unk_1BEAD5BD8;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DDC48];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_20];
}

double __49__SBFLockScreenDateSubtitleView_labelFontMetrics__block_invoke_2()
{
  result = *&SBFFontMetricsZero;
  labelFontMetrics_labelFontMetrics = SBFFontMetricsZero;
  *&qword_1ED69D2D8 = unk_1BEAD5BD8;
  return result;
}

+ (double)scaledFontSize:(double)a3 withMaximumFontSizeCategory:(id)a4
{
  v5 = a4;
  v6 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  v7 = UIContentSizeCategoryCompareToCategory(v6, v5);

  v8 = MEMORY[0x1E69DB878];
  v9 = *MEMORY[0x1E69DDCF8];
  if (v7 == NSOrderedAscending)
  {
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  }

  else
  {
    v10 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v5];
    v11 = [v8 preferredFontForTextStyle:v9 compatibleWithTraitCollection:v10];
  }

  [v11 _scaledValueForValue:a3];
  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
  UIRoundToScreenScale();
  v14 = v13;

  return v14;
}

- (double)baselineOffsetFromOrigin
{
  [(SBUILegibilityLabel *)self->_label frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(SBFLockScreenDateSubtitleView *)self superview];
  [(SBFLockScreenDateSubtitleView *)self convertRect:v11 toView:v4, v6, v8, v10];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v23.origin.x = v13;
  v23.origin.y = v15;
  v23.size.width = v17;
  v23.size.height = v19;
  MaxY = CGRectGetMaxY(v23);
  [(SBUILegibilityLabel *)self->_label firstBaselineOffsetFromBottom];
  return MaxY - v21;
}

@end