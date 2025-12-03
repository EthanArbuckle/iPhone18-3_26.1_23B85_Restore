@interface SPUIDynamicKeyboardVisualEffectView
- (BOOL)hideFeatheredBlur;
- (BOOL)hideVisualEffectView;
- (SPUIDynamicKeyboardVisualEffectView)init;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setHideFeatheredBlur:(BOOL)blur;
- (void)setHideVisualEffectView:(BOOL)view;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
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

    featheredBlur = [(SPUIDynamicKeyboardVisualEffectView *)v3 featheredBlur];
    [(SPUIDynamicKeyboardVisualEffectView *)v3 addSubview:featheredBlur];

    [(SPUIDynamicKeyboardVisualEffectView *)v3 setNeedsLayout];
    [(SPUIDynamicKeyboardVisualEffectView *)v3 layoutIfNeeded];
    [(SPUIDynamicKeyboardVisualEffectView *)v3 setHideVisualEffectView:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_tlk_updateWithCurrentAppearance name:*MEMORY[0x277D764C8] object:0];
  }

  return v3;
}

- (void)layoutSubviews
{
  tlks_screen = [(SPUIDynamicKeyboardVisualEffectView *)self tlks_screen];
  [tlks_screen _referenceBounds];
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
  colorView = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
  [colorView setFrame:{x, v20, width, v21}];

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

  featheredBlur = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [featheredBlur setFrame:{x, y + 12.0, width, v25}];

  hideVisualEffectView = [(SPUIDynamicKeyboardVisualEffectView *)self hideVisualEffectView];
  v28 = 30.0;
  if (!hideVisualEffectView)
  {
    v28 = 0.0;
  }

  v29 = y + v24 + v28;
  gaussianBlurView = [(SPUIDynamicKeyboardVisualEffectView *)self gaussianBlurView];
  [gaussianBlurView setFrame:{x, v29, width, height - (v24 + -30.0)}];

  keyboardVisualEffectView = [(SPUIDynamicKeyboardVisualEffectView *)self keyboardVisualEffectView];
  [keyboardVisualEffectView setFrame:{x, y, width, height}];
}

- (BOOL)hideVisualEffectView
{
  colorView = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
  [colorView alpha];
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

- (void)setHideFeatheredBlur:(BOOL)blur
{
  v4 = 0.0;
  if (!blur)
  {
    v4 = !UIAccessibilityIsReduceTransparencyEnabled();
  }

  featheredBlur = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [featheredBlur setAlpha:v4];

  [(SPUIDynamicKeyboardVisualEffectView *)self setNeedsLayout];

  [(SPUIDynamicKeyboardVisualEffectView *)self layoutIfNeeded];
}

- (void)setHideVisualEffectView:(BOOL)view
{
  v4 = 0.0;
  if (!view)
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

  colorView = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
  [colorView setAlpha:v4];

  [(SPUIDynamicKeyboardVisualEffectView *)self setNeedsLayout];

  [(SPUIDynamicKeyboardVisualEffectView *)self layoutIfNeeded];
}

- (BOOL)hideFeatheredBlur
{
  featheredBlur = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [featheredBlur alpha];
  v4 = v3 == 0.0;

  return v4;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SPUIDynamicKeyboardVisualEffectView;
  [(SPUIDynamicKeyboardVisualEffectView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SPUIDynamicKeyboardVisualEffectView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SPUIDynamicKeyboardVisualEffectView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SPUIDynamicKeyboardVisualEffectView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v41[4] = *MEMORY[0x277D85DE8];
  v39.receiver = self;
  v39.super_class = SPUIDynamicKeyboardVisualEffectView;
  appearanceCopy = appearance;
  [(SPUIDynamicKeyboardVisualEffectView *)&v39 tlk_updateForAppearance:appearanceCopy];
  isDark = [appearanceCopy isDark];

  if (isDark)
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
  colorView = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];

  if (!colorView)
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
    layer = [v11 layer];
    [layer setColors:v16];

    layer2 = [v11 layer];
    [layer2 setLocations:&unk_287C4F800];

    v19 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    v40 = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    layer3 = [v11 layer];
    [layer3 setInterpolations:v20];

    [(SPUIDynamicKeyboardVisualEffectView *)self setGradientView:v11];
    colorView2 = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
    gradientView = [(SPUIDynamicKeyboardVisualEffectView *)self gradientView];
    [colorView2 addSubview:gradientView];

    v24 = MEMORY[0x277D4C828];
    gradientView2 = [(SPUIDynamicKeyboardVisualEffectView *)self gradientView];
    [v24 fillContainerWithView:gradientView2];
  }

  gaussianBlurView = [(SPUIDynamicKeyboardVisualEffectView *)self gaussianBlurView];

  if (!gaussianBlurView)
  {
    v27 = objc_opt_new();
    [(SPUIDynamicKeyboardVisualEffectView *)self setGaussianBlurView:v27];
  }

  colorView3 = [(SPUIDynamicKeyboardVisualEffectView *)self colorView];
  featheredBlur = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [(SPUIDynamicKeyboardVisualEffectView *)self insertSubview:colorView3 belowSubview:featheredBlur];

  gaussianBlurView2 = [(SPUIDynamicKeyboardVisualEffectView *)self gaussianBlurView];
  featheredBlur2 = [(SPUIDynamicKeyboardVisualEffectView *)self featheredBlur];
  [(SPUIDynamicKeyboardVisualEffectView *)self insertSubview:gaussianBlurView2 belowSubview:featheredBlur2];

  LODWORD(featheredBlur2) = UIAccessibilityIsReduceTransparencyEnabled();
  keyboardVisualEffectView = [(SPUIDynamicKeyboardVisualEffectView *)self keyboardVisualEffectView];
  keyboardVisualEffectView2 = keyboardVisualEffectView;
  if (featheredBlur2)
  {

    if (!keyboardVisualEffectView2)
    {
      v34 = objc_alloc(MEMORY[0x277D75648]);
      darkConfig = [MEMORY[0x277D75638] darkConfig];
      backdropStyle = [darkConfig backdropStyle];
      v37 = [v34 initWithFrame:backdropStyle style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [(SPUIDynamicKeyboardVisualEffectView *)self setKeyboardVisualEffectView:v37];
    }

    keyboardVisualEffectView2 = [(SPUIDynamicKeyboardVisualEffectView *)self keyboardVisualEffectView];
    [(SPUIDynamicKeyboardVisualEffectView *)self insertSubview:keyboardVisualEffectView2 atIndex:0];
  }

  else
  {
    [keyboardVisualEffectView removeFromSuperview];
  }

  [(SPUIDynamicKeyboardVisualEffectView *)self setNeedsLayout];
  [(SPUIDynamicKeyboardVisualEffectView *)self layoutIfNeeded];

  v38 = *MEMORY[0x277D85DE8];
}

@end