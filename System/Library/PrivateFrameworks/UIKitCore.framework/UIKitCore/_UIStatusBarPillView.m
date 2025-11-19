@interface _UIStatusBarPillView
- (BOOL)canBecomeFocused;
- (BOOL)isUserInteractionEnabled;
- (UIEdgeInsets)alignmentRectInsets;
- (UIView)subviewForBaselineAlignment;
- (_UIStatusBarPillView)initWithFrame:(CGRect)a3;
- (void)_updateBackgroundColor;
- (void)applyStyleAttributes:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)resumePersistentAnimation;
- (void)setPillColor:(id)a3;
- (void)setPulsing:(BOOL)a3;
- (void)setVisualEffect:(id)a3;
@end

@implementation _UIStatusBarPillView

- (_UIStatusBarPillView)initWithFrame:(CGRect)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIStatusBarPillView;
  v3 = [(_UIStatusBarRoundedCornerView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(UIVisualEffectView);
  visualEffectView = v3->_visualEffectView;
  v3->_visualEffectView = v4;

  [(UIView *)v3->_visualEffectView setHidden:1];
  [(UIView *)v3 addSubview:v3->_visualEffectView];
  v3->_pulsing = 1;
  v6 = [MEMORY[0x1E6979398] layer];
  pulseLayer = v3->_pulseLayer;
  v3->_pulseLayer = v6;

  v8 = [UIColor colorWithWhite:0.0980392157 alpha:0.18];
  -[CALayer setBackgroundColor:](v3->_pulseLayer, "setBackgroundColor:", [v8 CGColor]);

  [(CALayer *)v3->_pulseLayer setOpacity:0.0];
  v9 = [(UIView *)v3 layer];
  [v9 addSublayer:v3->_pulseLayer];

  [(UIView *)v3 setClipsToBounds:1];
  v13[0] = v3;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(_UIStatusBarPersistentAnimationView *)v3 setPersistentAnimations:v10];

  return v3;
}

- (void)setPillColor:(id)a3
{
  objc_storeStrong(&self->_pillColor, a3);

  [(_UIStatusBarPillView *)self _updateBackgroundColor];
}

- (void)resumePersistentAnimation
{
  [(UIView *)self setNeedsLayout];
  if (self->_pulsing)
  {
    v5 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [v5 setDuration:1.0];
    v3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
    [v5 setTimingFunction:v3];

    [v5 setToValue:&unk_1EFE2E1E8];
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
  v14.super_class = _UIStatusBarPillView;
  [(_UIStatusBarRoundedCornerView *)&v14 layoutSubviews];
  v3 = [(UIView *)self layer];
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
    [(UIView *)visualEffectView setFrame:v5, v7, v9, v11];
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
    [(UIView *)self->_visualEffectView setHidden:v6 == 0];
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
      [(_UIStatusBarPillView *)self resumePersistentAnimation];
    }

    else
    {
      [(CALayer *)self->_pulseLayer removeAllAnimations];
    }
  }
}

- (BOOL)canBecomeFocused
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 3;

  return v3;
}

- (BOOL)isUserInteractionEnabled
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 3;

  return v3;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarPillView;
  [(UIView *)&v5 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  [(_UIStatusBarPillView *)self _updateBackgroundColor];
}

- (void)_updateBackgroundColor
{
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 3)
  {
    v4 = [(UIView *)self isFocused];

    if (v4)
    {
      v5 = +[UIColor _carSystemFocusColor];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = [(_UIStatusBarPillView *)self pillColor];
LABEL_6:
  v6 = v5;
  [(UIView *)self setBackgroundColor:v5];
}

- (void)applyStyleAttributes:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(UIView *)self subviews];
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