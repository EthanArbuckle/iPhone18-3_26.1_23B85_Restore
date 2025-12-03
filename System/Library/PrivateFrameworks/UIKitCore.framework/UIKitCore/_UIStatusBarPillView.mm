@interface _UIStatusBarPillView
- (BOOL)canBecomeFocused;
- (BOOL)isUserInteractionEnabled;
- (UIEdgeInsets)alignmentRectInsets;
- (UIView)subviewForBaselineAlignment;
- (_UIStatusBarPillView)initWithFrame:(CGRect)frame;
- (void)_updateBackgroundColor;
- (void)applyStyleAttributes:(id)attributes;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)resumePersistentAnimation;
- (void)setPillColor:(id)color;
- (void)setPulsing:(BOOL)pulsing;
- (void)setVisualEffect:(id)effect;
@end

@implementation _UIStatusBarPillView

- (_UIStatusBarPillView)initWithFrame:(CGRect)frame
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UIStatusBarPillView;
  v3 = [(_UIStatusBarRoundedCornerView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(UIVisualEffectView);
  visualEffectView = v3->_visualEffectView;
  v3->_visualEffectView = v4;

  [(UIView *)v3->_visualEffectView setHidden:1];
  [(UIView *)v3 addSubview:v3->_visualEffectView];
  v3->_pulsing = 1;
  layer = [MEMORY[0x1E6979398] layer];
  pulseLayer = v3->_pulseLayer;
  v3->_pulseLayer = layer;

  v8 = [UIColor colorWithWhite:0.0980392157 alpha:0.18];
  -[CALayer setBackgroundColor:](v3->_pulseLayer, "setBackgroundColor:", [v8 CGColor]);

  [(CALayer *)v3->_pulseLayer setOpacity:0.0];
  layer2 = [(UIView *)v3 layer];
  [layer2 addSublayer:v3->_pulseLayer];

  [(UIView *)v3 setClipsToBounds:1];
  v13[0] = v3;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(_UIStatusBarPersistentAnimationView *)v3 setPersistentAnimations:v10];

  return v3;
}

- (void)setPillColor:(id)color
{
  objc_storeStrong(&self->_pillColor, color);

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
  layer = [(UIView *)self layer];
  [layer bounds];
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

- (void)setVisualEffect:(id)effect
{
  effectCopy = effect;
  if (self->_visualEffect != effectCopy)
  {
    v6 = effectCopy;
    objc_storeStrong(&self->_visualEffect, effect);
    [(UIVisualEffectView *)self->_visualEffectView setEffect:v6];
    [(UIView *)self->_visualEffectView setHidden:v6 == 0];
    effectCopy = v6;
  }
}

- (void)setPulsing:(BOOL)pulsing
{
  if (self->_pulsing != pulsing)
  {
    self->_pulsing = pulsing;
    if (pulsing)
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
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 3;

  return v3;
}

- (BOOL)isUserInteractionEnabled
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 3;

  return v3;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarPillView;
  [(UIView *)&v5 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  [(_UIStatusBarPillView *)self _updateBackgroundColor];
}

- (void)_updateBackgroundColor
{
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3)
  {
    isFocused = [(UIView *)self isFocused];

    if (isFocused)
    {
      pillColor = +[UIColor _carSystemFocusColor];
      goto LABEL_6;
    }
  }

  else
  {
  }

  pillColor = [(_UIStatusBarPillView *)self pillColor];
LABEL_6:
  v6 = pillColor;
  [(UIView *)self setBackgroundColor:pillColor];
}

- (void)applyStyleAttributes:(id)attributes
{
  v16 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subviews = [(UIView *)self subviews];
  v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 applyStyleAttributes:attributesCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
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