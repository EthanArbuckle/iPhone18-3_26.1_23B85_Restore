@interface SBUIBackgroundView
- (SBUIBackgroundView)initWithFrame:(CGRect)a3;
- (double)_darkenValueForBackgroundStyle:(int64_t)a3;
- (double)_lightenSourceOverValueForBackgroundStyle:(int64_t)a3;
- (double)_luminanceValueForBackgroundStyle:(int64_t)a3;
- (double)_reducedTransparencyValueForBackgroundStyle:(int64_t)a3;
- (double)_tintColorAlphaForBackgroundStyle:(int64_t)a3;
- (double)_tintValueForBackgroundStyle:(int64_t)a3;
- (id)_backgroundColorForDarkenAlpha:(double)a3 andProgress:(double)a4;
- (void)_darkenWithProgress:(double)a3;
- (void)_reduceTransparencyEnabledStateDidChange:(id)a3;
- (void)_reduceTransparencyWithProgress:(double)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_tintWithProgress:(double)a3 backgroundColorAlpha:(double)a4;
- (void)_updateAppearanceForBackgroundStyle:(int64_t)a3 transitionToSettings:(BOOL)a4;
- (void)_updateAppearanceForTransitionFromStyle:(int64_t)a3 toStyle:(int64_t)a4 withProgress:(double)a5;
- (void)_updateReduceTransparencyTinting;
- (void)_updateReduceTransparencyTintingWithProgressWeighting:(double)a3;
- (void)beginTransitionToBackgroundStyle:(int64_t)a3;
- (void)completeTransitionToBackgroundStyle:(int64_t)a3;
- (void)layoutSubviews;
- (void)modifyAllViewsWithChanges:(id)a3;
- (void)setBackgroundStyle:(int64_t)a3;
- (void)setReduceTransparencyBackingColor:(id)a3;
- (void)updateBackgroundStyleTransitionProgress:(double)a3;
@end

@implementation SBUIBackgroundView

- (SBUIBackgroundView)initWithFrame:(CGRect)a3
{
  v41.receiver = self;
  v41.super_class = SBUIBackgroundView;
  v3 = [(SBUIBackgroundView *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_transitionStyle = -1;
    v3->_isReducedTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    reduceTransparencyView = v4->_reduceTransparencyView;
    v4->_reduceTransparencyView = v5;

    if (v4->_reduceTransparencyBackingColor)
    {
      [(SBUIBackgroundView *)v4 setReduceTransparencyBackingColor:?];
    }

    else
    {
      v7 = [MEMORY[0x277D75348] whiteColor];
      [(SBUIBackgroundView *)v4 setReduceTransparencyBackingColor:v7];
    }

    [(UIView *)v4->_reduceTransparencyView setHidden:!v4->_isReducedTransparencyEnabled];
    [(SBUIBackgroundView *)v4 addSubview:v4->_reduceTransparencyView];
    v8 = objc_alloc_init(MEMORY[0x277D75D18]);
    reduceTransparencyTintingView = v4->_reduceTransparencyTintingView;
    v4->_reduceTransparencyTintingView = v8;

    [(UIView *)v4->_reduceTransparencyTintingView setHidden:!v4->_isReducedTransparencyEnabled];
    [(SBUIBackgroundView *)v4 addSubview:v4->_reduceTransparencyTintingView];
    v10 = objc_alloc(MEMORY[0x277D75D18]);
    [(BSUIBackdropView *)v4->_backdropView bounds];
    v11 = [v10 initWithFrame:?];
    sourceOverView = v4->_sourceOverView;
    v4->_sourceOverView = v11;

    v13 = [(UIView *)v4->_sourceOverView layer];
    [v13 setCompositingFilter:*MEMORY[0x277CDA620]];

    [(SBUIBackgroundView *)v4 addSubview:v4->_sourceOverView];
    v14 = objc_alloc(MEMORY[0x277D75D18]);
    [(BSUIBackdropView *)v4->_backdropView bounds];
    v15 = [v14 initWithFrame:?];
    darkenSourceOverView = v4->_darkenSourceOverView;
    v4->_darkenSourceOverView = v15;

    v17 = [(UIView *)v4->_darkenSourceOverView layer];
    [v17 setCompositingFilter:*MEMORY[0x277CDA2F8]];

    [(SBUIBackgroundView *)v4 addSubview:v4->_darkenSourceOverView];
    v18 = objc_alloc(MEMORY[0x277CF0D40]);
    v19 = [v18 initWithFrame:-2 privateStyle:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    backdropView = v4->_backdropView;
    v4->_backdropView = v19;

    [(BSUIBackdropView *)v4->_backdropView setHidden:v4->_isReducedTransparencyEnabled];
    [(SBUIBackgroundView *)v4 addSubview:v4->_backdropView];
    v21 = MEMORY[0x277D26718];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v21 materialViewWithRecipeNamed:@"sbuiBackgroundViewLuminance" inBundle:v22 options:0 initialWeighting:0 scaleAdjustment:1.0];
    luminanceView = v4->_luminanceView;
    v4->_luminanceView = v23;

    [(SBUIBackgroundView *)v4 addSubview:v4->_luminanceView];
    v25 = [(SBUIBackgroundView *)v4 layer];
    [v25 setAllowsGroupBlending:0];

    [(SBUIBackgroundView *)v4 bounds];
    v30 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v26, v27, v28, v29}];
    lightenSourceOverView = v4->_lightenSourceOverView;
    v4->_lightenSourceOverView = v30;

    [(UIView *)v4->_lightenSourceOverView setAutoresizingMask:18];
    v32 = v4->_lightenSourceOverView;
    v33 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];
    [(UIView *)v32 setBackgroundColor:v33];

    v34 = [(UIView *)v4->_lightenSourceOverView layer];
    v35 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA550]];
    [v34 setCompositingFilter:v35];

    [(SBUIBackgroundView *)v4 addSubview:v4->_lightenSourceOverView];
    v36 = objc_alloc(MEMORY[0x277D75D18]);
    [(BSUIBackdropView *)v4->_backdropView bounds];
    v37 = [v36 initWithFrame:?];
    tintView = v4->_tintView;
    v4->_tintView = v37;

    [(SBUIBackgroundView *)v4 addSubview:v4->_tintView];
    [(SBUIBackgroundView *)v4 setBackgroundStyle:1];
    v39 = [MEMORY[0x277CCAB98] defaultCenter];
    [v39 addObserver:v4 selector:sel__reduceTransparencyEnabledStateDidChange_ name:*MEMORY[0x277D764C8] object:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SBUIBackgroundView;
  [(SBUIBackgroundView *)&v8 layoutSubviews];
  [(SBUIBackgroundView *)self bounds];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__SBUIBackgroundView_layoutSubviews__block_invoke;
  v7[3] = &__block_descriptor_64_e16_v16__0__UIView_8l;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v5;
  v7[7] = v6;
  [(SBUIBackgroundView *)self modifyAllViewsWithChanges:v7];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__SBUIBackgroundView__setContinuousCornerRadius___block_invoke;
  v3[3] = &__block_descriptor_40_e16_v16__0__UIView_8l;
  *&v3[4] = a3;
  [(SBUIBackgroundView *)self modifyAllViewsWithChanges:v3];
}

void __49__SBUIBackgroundView__setContinuousCornerRadius___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 _setContinuousCornerRadius:v2];
  [v3 setClipsToBounds:1];
}

- (void)modifyAllViewsWithChanges:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  reduceTransparencyTintingView = self->_reduceTransparencyTintingView;
  luminanceView = self->_luminanceView;
  backdropView = self->_backdropView;
  v22[0] = self->_reduceTransparencyView;
  v22[1] = reduceTransparencyTintingView;
  sourceOverView = self->_sourceOverView;
  v22[2] = luminanceView;
  v22[3] = backdropView;
  darkenSourceOverView = self->_darkenSourceOverView;
  v22[4] = sourceOverView;
  v22[5] = darkenSourceOverView;
  tintView = self->_tintView;
  lightenSourceOverView = self->_lightenSourceOverView;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22[6] = tintView;
  v22[7] = lightenSourceOverView;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{8, 0}];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        if (v4)
        {
          v4[2](v4, *(*(&v18 + 1) + 8 * v16));
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setBackgroundStyle:(int64_t)a3
{
  [(SBUIBackgroundView *)self beginTransitionToBackgroundStyle:?];

  [(SBUIBackgroundView *)self completeTransitionToBackgroundStyle:a3];
}

- (void)beginTransitionToBackgroundStyle:(int64_t)a3
{
  if (self->_transitioning)
  {
    if (self->_transitionStyle == a3)
    {
      return;
    }

    p_style = &self->_style;
    if (self->_style == a3)
    {

      [(SBUIBackgroundView *)self completeTransitionToBackgroundStyle:a3];
      return;
    }
  }

  else
  {
    p_style = &self->_style;
    if (self->_style == a3)
    {
      return;
    }
  }

  [SBUIBackgroundView _updateAppearanceForBackgroundStyle:"_updateAppearanceForBackgroundStyle:transitionToSettings:" transitionToSettings:?];
  self->_transitionStyle = a3;
  self->_transitioning = 1;
  v6 = !SBUIHasBlurForBackgroundStyle(*p_style) && !SBUIHasBlurForBackgroundStyle(self->_transitionStyle);
  backdropView = self->_backdropView;
  v8 = self->_isReducedTransparencyEnabled || v6;

  [(BSUIBackdropView *)backdropView setHidden:v8];
}

- (void)updateBackgroundStyleTransitionProgress:(double)a3
{
  if (self->_transitioning)
  {
    self->_progress = a3;
    if (([(BSUIBackdropView *)self->_backdropView isHidden]& 1) == 0)
    {
      backdropView = self->_backdropView;
      v7 = SBUIGetBackdropSettingsForBackgroundStyle(self->_transitionStyle);
      [(BSUIBackdropView *)backdropView transitionIncrementallyToSettings:v7 weighting:self->_progress];
    }

    [(SBUIBackgroundView *)self _updateReduceTransparencyTintingWithProgressWeighting:self->_progress];
    style = self->_style;
    transitionStyle = self->_transitionStyle;

    [(SBUIBackgroundView *)self _updateAppearanceForTransitionFromStyle:style toStyle:transitionStyle withProgress:a3];
  }
}

- (void)completeTransitionToBackgroundStyle:(int64_t)a3
{
  if (self->_transitioning)
  {
    self->_progress = 0.0;
    self->_transitioning = 0;
    self->_style = a3;
    self->_transitionStyle = -1;
    [SBUIBackgroundView _updateAppearanceForBackgroundStyle:"_updateAppearanceForBackgroundStyle:transitionToSettings:" transitionToSettings:?];
  }
}

- (void)setReduceTransparencyBackingColor:(id)a3
{
  v5 = a3;
  if (self->_reduceTransparencyBackingColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_reduceTransparencyBackingColor, a3);
    reduceTransparencyView = self->_reduceTransparencyView;
    if (self->_reduceTransparencyBackingColor)
    {
      [(UIView *)self->_reduceTransparencyView setBackgroundColor:?];
    }

    else
    {
      v7 = [MEMORY[0x277D75348] whiteColor];
      [(UIView *)reduceTransparencyView setBackgroundColor:v7];
    }

    v5 = v8;
  }
}

- (void)_updateReduceTransparencyTintingWithProgressWeighting:(double)a3
{
  v4 = SBUIGetBackdropSettingsForBackgroundStyle(self->_transitionStyle);
  v5 = SBUIGetBackdropSettingsForBackgroundStyle(self->_style);
  v6 = [(SBUIBackgroundView *)self _shouldApplyReducedTransparencyTintForBackgroundStyle:self->_style];
  if (v6 == [(SBUIBackgroundView *)self _shouldApplyReducedTransparencyTintForBackgroundStyle:self->_transitionStyle])
  {
    if (!v6)
    {
      [(UIView *)self->_reduceTransparencyTintingView setBackgroundColor:0];
      goto LABEL_10;
    }

    [v5 grayscaleTintLevel];
    [v4 grayscaleTintLevel];
    [v5 grayscaleTintAlpha];
    v13 = v12;
    [v4 grayscaleTintAlpha];
    v15 = v14;
    reduceTransparencyTintingView = self->_reduceTransparencyTintingView;
    v17 = MEMORY[0x277D75348];
    BSIntervalValueForFraction();
    v19 = v18;
    BSIntervalValueForFraction();
    v21 = [v17 colorWithWhite:v19 alpha:{v20, v13, 1, v15, 1}];
    v22 = reduceTransparencyTintingView;
  }

  else
  {
    if (v6)
    {
      [v5 grayscaleTintAlpha];
      v8 = v7;
      v9 = MEMORY[0x277D75348];
      [v5 grayscaleTintLevel];
    }

    else
    {
      [v4 grayscaleTintAlpha];
      v8 = v23;
      v9 = MEMORY[0x277D75348];
      [v4 grayscaleTintLevel];
    }

    v11 = v10;
    LOBYTE(v25) = 1;
    *(&v25 + 1) = 0;
    LOBYTE(v26) = 1;
    *(&v26 + 1) = 0;
    DWORD1(v26) = 0;
    BSIntervalValueForFraction();
    v21 = [v9 colorWithWhite:v11 alpha:{v24, v8, v25, 0, v26}];
    v22 = self->_reduceTransparencyTintingView;
  }

  [(UIView *)v22 setBackgroundColor:v21];

LABEL_10:
}

- (void)_updateReduceTransparencyTinting
{
  v10 = SBUIGetBackdropSettingsForBackgroundStyle(self->_style);
  v3 = [(SBUIBackgroundView *)self _shouldApplyReducedTransparencyTintForBackgroundStyle:self->_style];
  reduceTransparencyTintingView = self->_reduceTransparencyTintingView;
  if (v3)
  {
    v5 = MEMORY[0x277D75348];
    [v10 grayscaleTintLevel];
    v7 = v6;
    [v10 grayscaleTintAlpha];
    v9 = [v5 colorWithWhite:v7 alpha:v8];
    [(UIView *)reduceTransparencyTintingView setBackgroundColor:v9];
  }

  else
  {
    [(UIView *)reduceTransparencyTintingView setBackgroundColor:0];
  }
}

- (void)_reduceTransparencyEnabledStateDidChange:(id)a3
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  self->_isReducedTransparencyEnabled = IsReduceTransparencyEnabled;
  [(UIView *)self->_reduceTransparencyView setHidden:!IsReduceTransparencyEnabled];
  [(UIView *)self->_reduceTransparencyTintingView setHidden:!self->_isReducedTransparencyEnabled];
  [(SBUIBackgroundView *)self _reducedTransparencyValueForBackgroundStyle:self->_style];
  v6 = v5;
  [(UIView *)self->_reduceTransparencyView setAlpha:?];
  [(UIView *)self->_reduceTransparencyTintingView setAlpha:v6];
  backdropView = self->_backdropView;
  v8 = 1.0;
  if (self->_isReducedTransparencyEnabled)
  {
    v8 = 0.0;
  }

  [(BSUIBackdropView *)backdropView setAlpha:v8];
}

- (void)_updateAppearanceForBackgroundStyle:(int64_t)a3 transitionToSettings:(BOOL)a4
{
  if (a4)
  {
    backdropView = self->_backdropView;
    v7 = SBUIGetBackdropSettingsForBackgroundStyle(a3);
    [(BSUIBackdropView *)backdropView transitionToSettings:v7];
  }

  [(SBUIBackgroundView *)self _darkenValueForBackgroundStyle:a3];
  [(SBUIBackgroundView *)self _darkenWithProgress:?];
  [(SBUIBackgroundView *)self _tintValueForBackgroundStyle:a3];
  v9 = v8;
  [(SBUIBackgroundView *)self _tintColorAlphaForBackgroundStyle:a3];
  [(SBUIBackgroundView *)self _tintWithProgress:v9 backgroundColorAlpha:v10];
  [(SBUIBackgroundView *)self _reducedTransparencyValueForBackgroundStyle:a3];
  [(SBUIBackgroundView *)self _reduceTransparencyWithProgress:?];
  [(SBUIBackgroundView *)self _updateReduceTransparencyTinting];
  [(SBUIBackgroundView *)self _luminanceValueForBackgroundStyle:a3];
  [(SBUIBackgroundView *)self _luminanceWithProgress:?];
  [(SBUIBackgroundView *)self _lightenSourceOverValueForBackgroundStyle:a3];

  [(SBUIBackgroundView *)self _lightenSourceOverWithProgress:?];
}

- (void)_updateAppearanceForTransitionFromStyle:(int64_t)a3 toStyle:(int64_t)a4 withProgress:(double)a5
{
  [(SBUIBackgroundView *)self _tintValueForBackgroundStyle:?];
  v10 = v9;
  [(SBUIBackgroundView *)self _tintValueForBackgroundStyle:a4];
  [(SBUIBackgroundView *)self _valueFromStart:v10 toEnd:v11 withFraction:a5];
  v13 = v12;
  [(SBUIBackgroundView *)self _tintColorAlphaForBackgroundStyle:a3];
  v15 = v14;
  [(SBUIBackgroundView *)self _tintColorAlphaForBackgroundStyle:a4];
  if (v15 >= v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  [(SBUIBackgroundView *)self _tintWithProgress:v13 backgroundColorAlpha:v17];
  [(SBUIBackgroundView *)self _darkenValueForBackgroundStyle:a3];
  v19 = v18;
  [(SBUIBackgroundView *)self _darkenValueForBackgroundStyle:a4];
  [(SBUIBackgroundView *)self _valueFromStart:v19 toEnd:v20 withFraction:a5];
  [(SBUIBackgroundView *)self _darkenWithProgress:?];
  [(SBUIBackgroundView *)self _reducedTransparencyValueForBackgroundStyle:a3];
  v22 = v21;
  [(SBUIBackgroundView *)self _reducedTransparencyValueForBackgroundStyle:a4];
  [(SBUIBackgroundView *)self _valueFromStart:v22 toEnd:v23 withFraction:a5];
  [(SBUIBackgroundView *)self _reduceTransparencyWithProgress:?];
  [(SBUIBackgroundView *)self _luminanceValueForBackgroundStyle:a3];
  v25 = v24;
  [(SBUIBackgroundView *)self _luminanceValueForBackgroundStyle:a4];
  [(SBUIBackgroundView *)self _valueFromStart:v25 toEnd:v26 withFraction:a5];
  [(SBUIBackgroundView *)self _luminanceWithProgress:?];
  [(SBUIBackgroundView *)self _lightenSourceOverValueForBackgroundStyle:a3];
  v28 = v27;
  [(SBUIBackgroundView *)self _lightenSourceOverValueForBackgroundStyle:a4];
  [(SBUIBackgroundView *)self _valueFromStart:v28 toEnd:v29 withFraction:a5];

  [(SBUIBackgroundView *)self _lightenSourceOverWithProgress:?];
}

- (double)_darkenValueForBackgroundStyle:(int64_t)a3
{
  v3 = a3 == 5 || a3 == 2;
  result = 0.0;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_tintColorAlphaForBackgroundStyle:(int64_t)a3
{
  result = 0.2;
  if (a3 != 8)
  {
    result = 0.0;
  }

  if (a3 == 5)
  {
    return 0.35;
  }

  return result;
}

- (double)_tintValueForBackgroundStyle:(int64_t)a3
{
  v3 = a3 == 8 || a3 == 5;
  result = 0.0;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_luminanceValueForBackgroundStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 == 9)
  {
    return 1.0;
  }

  return result;
}

- (double)_lightenSourceOverValueForBackgroundStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 == 8)
  {
    return 1.0;
  }

  return result;
}

- (double)_reducedTransparencyValueForBackgroundStyle:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 2) < 7 && self->_isReducedTransparencyEnabled)
  {
    return 1.0;
  }

  return result;
}

- (void)_darkenWithProgress:(double)a3
{
  v4 = [(SBUIBackgroundView *)self _backgroundColorForDarkenAlpha:0.07 andProgress:a3];
  [(UIView *)self->_sourceOverView setBackgroundColor:v4];
  [(UIView *)self->_darkenSourceOverView setBackgroundColor:v4];
}

- (void)_tintWithProgress:(double)a3 backgroundColorAlpha:(double)a4
{
  v5 = [(SBUIBackgroundView *)self _backgroundColorForDarkenAlpha:a4 andProgress:a3];
  [(UIView *)self->_tintView setBackgroundColor:v5];
}

- (void)_reduceTransparencyWithProgress:(double)a3
{
  [(UIView *)self->_reduceTransparencyView setAlpha:?];
  reduceTransparencyTintingView = self->_reduceTransparencyTintingView;

  [(UIView *)reduceTransparencyTintingView setAlpha:a3];
}

- (id)_backgroundColorForDarkenAlpha:(double)a3 andProgress:(double)a4
{
  [(SBUIBackgroundView *)self _valueFromStart:0.0 toEnd:a3 withFraction:a4];
  v5 = v4;
  v6 = [MEMORY[0x277D75348] blackColor];
  v7 = [v6 colorWithAlphaComponent:v5];

  return v7;
}

@end