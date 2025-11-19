@interface SPUIDynamicKeyboardVisualEffectView
- (BOOL)hideFeatheredBlur;
- (BOOL)hideVisualEffectView;
- (SPUIDynamicKeyboardVisualEffectView)init;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setHideFeatheredBlur:(BOOL)a3;
- (void)setHideVisualEffectView:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SPUIDynamicKeyboardVisualEffectView

- (SPUIDynamicKeyboardVisualEffectView)init
{
  v10.receiver = self;
  v10.super_class = SPUIDynamicKeyboardVisualEffectView;
  v2 = [(SPUIDynamicKeyboardVisualEffectView *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(SPUIDynamicKeyboardVisualEffectView *)v2 setSearchFieldHeight:60.0];
    v4 = MEMORY[0x277D26718];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 materialViewWithRecipeNamed:@"darkModeKeyboardBackground" inBundle:v5 options:0 initialWeighting:&__block_literal_global scaleAdjustment:1.0];
    [(SPUIDynamicKeyboardVisualEffectView *)v3 setFeatheredBlur:v6];

    v7 = [(SPUIDynamicKeyboardVisualEffectView *)v3 featheredBlur];
    [(SPUIDynamicKeyboardVisualEffectView *)v3 addSubview:v7];

    [(SPUIDynamicKeyboardVisualEffectView *)v3 setNeedsLayout];
    [(SPUIDynamicKeyboardVisualEffectView *)v3 layoutIfNeeded];
    [(SPUIDynamicKeyboardVisualEffectView *)v3 setHideVisualEffectView:0];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v3 selector:sel_tlk_updateWithCurrentAppearance name:*MEMORY[0x277D764C8] object:0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3 = [(SPUIDynamicKeyboardVisualEffectView *)self tlks_screen];
  [v3 _referenceBounds];
  v5 = v4;

  v32.receiver = self;
  v32.super_class = SPUIDynamicKeyboardVisualEffectView;
  [(SPUIDynamicKeyboardVisualEffectView *)&v32 layoutSubviews];
  [(SPUIDynamicKeyboardVisualEffectView *)self bounds];
  v8 = v7;
  v10 = v9;
  v11 = v6;
  v13 = v12;
  v14 = v12 < 363.0 || v6 < v5;
  if (v14 && ![(SPUIDynamicKeyboardVisualEffectView *)self hideVisualEffectView])
  {
    v13 = 363.0;
    v11 = v5;
  }

  v15 = *&SPUIExtendedEdgesDimensionConstant;
  v33.origin.x = v8;
  v33.origin.y = v10;
  v33.size.width = v11;
  v33.size.height = v13;
  v34 = CGRectInset(v33, -*&SPUIExtendedEdgesDimensionConstant, 0.0);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v20 = v34.origin.y + 8.0;
  v21 = v34.size.height + v15 * 2.0;
  v22 = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
  [v22 setFrame:{x, v20, width, v21}];

  [(SPUIDynamicKeyboardVisualEffectView *)self searchFieldHeight];
  v24 = v23;
  if ([(SPUIDynamicKeyboardVisualEffectView *)self hideVisualEffectView])
  {
    v25 = v24 + 60.0;
  }

  else
  {
    v25 = 104.0;
  }

  v26 = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [v26 setFrame:{x, y + 12.0, width, v25}];

  v27 = [(SPUIDynamicKeyboardVisualEffectView *)self hideVisualEffectView];
  v28 = 30.0;
  if (!v27)
  {
    v28 = 0.0;
  }

  v29 = y + v24 + v28;
  v30 = [(SPUIDynamicKeyboardVisualEffectView *)self gaussianBlurView];
  [v30 setFrame:{x, v29, width, height - (v24 + -30.0)}];

  v31 = [(SPUIDynamicKeyboardVisualEffectView *)self keyboardVisualEffectView];
  [v31 setFrame:{x, y, width, height}];
}

- (BOOL)hideVisualEffectView
{
  v2 = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
  [v2 alpha];
  v4 = v3 == 0.0;

  return v4;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SPUIDynamicKeyboardVisualEffectView;
  [(SPUIDynamicKeyboardVisualEffectView *)&v3 didMoveToWindow];
  [(SPUIDynamicKeyboardVisualEffectView *)self tlk_updateWithCurrentAppearance];
}

- (void)setHideFeatheredBlur:(BOOL)a3
{
  v4 = 0.0;
  if (!a3)
  {
    v4 = !UIAccessibilityIsReduceTransparencyEnabled();
  }

  v5 = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [v5 setAlpha:v4];

  [(SPUIDynamicKeyboardVisualEffectView *)self setNeedsLayout];

  [(SPUIDynamicKeyboardVisualEffectView *)self layoutIfNeeded];
}

- (void)setHideVisualEffectView:(BOOL)a3
{
  v4 = 0.0;
  if (!a3)
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }
  }

  v5 = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
  [v5 setAlpha:v4];

  [(SPUIDynamicKeyboardVisualEffectView *)self setNeedsLayout];

  [(SPUIDynamicKeyboardVisualEffectView *)self layoutIfNeeded];
}

- (BOOL)hideFeatheredBlur
{
  v2 = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [v2 alpha];
  v4 = v3 == 0.0;

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SPUIDynamicKeyboardVisualEffectView;
  [(SPUIDynamicKeyboardVisualEffectView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SPUIDynamicKeyboardVisualEffectView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SPUIDynamicKeyboardVisualEffectView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SPUIDynamicKeyboardVisualEffectView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v41[4] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = SPUIDynamicKeyboardVisualEffectView;
  v4 = a3;
  [(SPUIDynamicKeyboardVisualEffectView *)&v39 tlk_updateForAppearance:v4];
  v5 = [v4 isDark];

  if (v5)
  {
    v6 = 0.17254902;
    v7 = 1.0;
  }

  else
  {
    v6 = 0.752941176;
    v7 = 0.95;
  }

  v8 = [MEMORY[0x277D75348] colorWithRed:v6 green:v6 blue:v6 alpha:v7];
  v9 = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];

  if (!v9)
  {
    v10 = objc_opt_new();
    [(SPUIDynamicKeyboardVisualEffectView *)self setColorView:v10];

    v11 = objc_opt_new();
    v12 = [v8 colorWithAlphaComponent:0.0];
    v41[0] = [v12 CGColor];
    v13 = [v8 colorWithAlphaComponent:0.4];
    v41[1] = [v13 CGColor];
    v14 = [v8 colorWithAlphaComponent:0.39];
    v41[2] = [v14 CGColor];
    v15 = [v8 colorWithAlphaComponent:0.27];
    v41[3] = [v15 CGColor];
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
    v17 = [v11 layer];
    [v17 setColors:v16];

    v18 = [v11 layer];
    [v18 setLocations:&unk_287C4F800];

    v19 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    v40 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v21 = [v11 layer];
    [v21 setInterpolations:v20];

    [(SPUIDynamicKeyboardVisualEffectView *)self setGradientView:v11];
    v22 = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
    v23 = [(SPUIDynamicKeyboardVisualEffectView *)self gradientView];
    [v22 addSubview:v23];

    v24 = MEMORY[0x277D4C828];
    v25 = [(SPUIDynamicKeyboardVisualEffectView *)self gradientView];
    [v24 fillContainerWithView:v25];
  }

  v26 = [(SPUIDynamicKeyboardVisualEffectView *)self gaussianBlurView];

  if (!v26)
  {
    v27 = objc_opt_new();
    [(SPUIDynamicKeyboardVisualEffectView *)self setGaussianBlurView:v27];
  }

  v28 = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
  v29 = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [(SPUIDynamicKeyboardVisualEffectView *)self insertSubview:v28 belowSubview:v29];

  v30 = [(SPUIDynamicKeyboardVisualEffectView *)self gaussianBlurView];
  v31 = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [(SPUIDynamicKeyboardVisualEffectView *)self insertSubview:v30 belowSubview:v31];

  LODWORD(v31) = UIAccessibilityIsReduceTransparencyEnabled();
  v32 = [(SPUIDynamicKeyboardVisualEffectView *)self keyboardVisualEffectView];
  v33 = v32;
  if (v31)
  {

    if (!v33)
    {
      v34 = objc_alloc(MEMORY[0x277D75648]);
      v35 = [MEMORY[0x277D75638] darkConfig];
      v36 = [v35 backdropStyle];
      v37 = [v34 initWithFrame:v36 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [(SPUIDynamicKeyboardVisualEffectView *)self setKeyboardVisualEffectView:v37];
    }

    v33 = [(SPUIDynamicKeyboardVisualEffectView *)self keyboardVisualEffectView];
    [(SPUIDynamicKeyboardVisualEffectView *)self insertSubview:v33 atIndex:0];
  }

  else
  {
    [v32 removeFromSuperview];
  }

  [(SPUIDynamicKeyboardVisualEffectView *)self setNeedsLayout];
  [(SPUIDynamicKeyboardVisualEffectView *)self layoutIfNeeded];

  v38 = *MEMORY[0x277D85DE8];
}

@end