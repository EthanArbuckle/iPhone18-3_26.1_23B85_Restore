@interface STUIStatusBarPillView
- (BOOL)canBecomeFocused;
- (BOOL)isUserInteractionEnabled;
- (STUIStatusBarPillView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIView)subviewForBaselineAlignment;
- (void)_updateBackgroundColor;
- (void)applyStyleAttributes:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)resumePersistentAnimation;
- (void)setPillColor:(id)a3;
- (void)setPulsing:(BOOL)a3;
- (void)setVisualEffect:(id)a3;
@end

@implementation STUIStatusBarPillView

- (STUIStatusBarPillView)initWithFrame:(CGRect)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = STUIStatusBarPillView;
  v3 = [(STUIStatusBarRoundedCornerView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(MEMORY[0x277D75D68]);
  visualEffectView = v3->_visualEffectView;
  v3->_visualEffectView = v4;

  [(UIVisualEffectView *)v3->_visualEffectView setHidden:1];
  [(STUIStatusBarPillView *)v3 addSubview:v3->_visualEffectView];
  v3->_pulsing = 1;
  v6 = [MEMORY[0x277CD9ED0] layer];
  pulseLayer = v3->_pulseLayer;
  v3->_pulseLayer = v6;

  v8 = [MEMORY[0x277D75348] colorWithWhite:0.0980392157 alpha:0.18];
  -[CALayer setBackgroundColor:](v3->_pulseLayer, "setBackgroundColor:", [v8 CGColor]);

  [(CALayer *)v3->_pulseLayer setOpacity:0.0];
  v9 = [(STUIStatusBarPillView *)v3 layer];
  [v9 addSublayer:v3->_pulseLayer];

  [(STUIStatusBarPillView *)v3 setClipsToBounds:1];
  v13[0] = v3;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [(STUIStatusBarPersistentAnimationView *)v3 setPersistentAnimations:v10];

  return v3;
}

- (void)setPillColor:(id)a3
{
  objc_storeStrong(&self->_pillColor, a3);

  [(STUIStatusBarPillView *)self _updateBackgroundColor];
}

- (void)resumePersistentAnimation
{
  [(STUIStatusBarPillView *)self setNeedsLayout];
  if (self->_pulsing)
  {
    v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v5 setDuration:1.0];
    v3 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    [v5 setTimingFunction:v3];

    [v5 setToValue:&unk_287D1B2E0];
    LODWORD(v4) = 2139095040;
    [v5 setRepeatCount:v4];
    [v5 setAutoreverses:1];
    [v5 setDiscretizesTime:1];
    v7 = CAFrameRateRangeMake(10.0, 120.0, 20.0);
    [v5 setPreferredFrameRateRange:{*&v7.minimum, *&v7.maximum, *&v7.preferred}];
    [(CALayer *)self->_pulseLayer addAnimation:v5 forKey:@"pulse"];
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = STUIStatusBarPillView;
  [(STUIStatusBarRoundedCornerView *)&v14 layoutSubviews];
  v3 = [(STUIStatusBarPillView *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  pulseLayer = self->_pulseLayer;
  if (pulseLayer)
  {
    [(CALayer *)pulseLayer setFrame:v5, v7, v9, v11];
  }

  visualEffectView = self->_visualEffectView;
  if (visualEffectView)
  {
    [(UIVisualEffectView *)visualEffectView setFrame:v5, v7, v9, v11];
  }
}

- (void)setVisualEffect:(id)a3
{
  v5 = a3;
  if (self->_visualEffect != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_visualEffect, a3);
    [(UIVisualEffectView *)self->_visualEffectView setEffect:v6];
    [(UIVisualEffectView *)self->_visualEffectView setHidden:v6 == 0];
    v5 = v6;
  }
}

- (void)setPulsing:(BOOL)a3
{
  if (self->_pulsing != a3)
  {
    self->_pulsing = a3;
    if (a3)
    {
      [(STUIStatusBarPillView *)self resumePersistentAnimation];
    }

    else
    {
      [(CALayer *)self->_pulseLayer removeAllAnimations];
    }
  }
}

- (BOOL)canBecomeFocused
{
  v2 = [(STUIStatusBarPillView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 3;

  return v3;
}

- (BOOL)isUserInteractionEnabled
{
  v2 = [(STUIStatusBarPillView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 3;

  return v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarPillView;
  [(STUIStatusBarPillView *)&v5 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  [(STUIStatusBarPillView *)self _updateBackgroundColor];
}

- (void)_updateBackgroundColor
{
  v3 = [(STUIStatusBarPillView *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 3)
  {
    v4 = [(STUIStatusBarPillView *)self isFocused];

    if (v4)
    {
      v5 = [MEMORY[0x277D75348] _carSystemFocusColor];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = [(STUIStatusBarPillView *)self pillColor];
LABEL_6:
  v6 = v5;
  [(STUIStatusBarPillView *)self setBackgroundColor:v5];
}

- (void)applyStyleAttributes:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(STUIStatusBarPillView *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 applyStyleAttributes:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIView)subviewForBaselineAlignment
{
  WeakRetained = objc_loadWeakRetained(&self->_subviewForBaselineAlignment);

  return WeakRetained;
}

@end