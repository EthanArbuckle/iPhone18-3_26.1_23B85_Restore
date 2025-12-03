@interface _UISearchAtomBackgroundView
- (_UISearchAtomBackgroundView)initWithFrame:(CGRect)frame;
- (void)_transitionFromBlurEffect:(id)effect toBlurEffect:(id)blurEffect;
- (void)_updateSelectionStyleMask;
- (void)layoutSubviews;
- (void)setBlurEffect:(id)effect;
- (void)setSelectionStyle:(int64_t)style;
@end

@implementation _UISearchAtomBackgroundView

- (_UISearchAtomBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UISearchAtomBackgroundView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UISearchAtomBackgroundView *)v3 _updateSelectionStyleMask];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UISearchAtomBackgroundView;
  [(UIView *)&v3 layoutSubviews];
  [(_UISearchAtomBackgroundView *)self _updateSelectionStyleMask];
  [(UIView *)self bounds];
  [(UIView *)self->_visualEffectView setFrame:?];
}

- (void)setSelectionStyle:(int64_t)style
{
  if (self->_selectionStyle != style)
  {
    self->_selectionStyle = style;
    [(_UISearchAtomBackgroundView *)self _updateSelectionStyleMask];

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setBlurEffect:(id)effect
{
  effectCopy = effect;
  [(_UISearchAtomBackgroundView *)self _transitionFromBlurEffect:self->_blurEffect toBlurEffect:effectCopy];
  blurEffect = self->_blurEffect;
  self->_blurEffect = effectCopy;
}

- (void)_transitionFromBlurEffect:(id)effect toBlurEffect:(id)blurEffect
{
  effectCopy = effect;
  blurEffectCopy = blurEffect;
  v8 = blurEffectCopy;
  if (!effectCopy && blurEffectCopy)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70___UISearchAtomBackgroundView__transitionFromBlurEffect_toBlurEffect___block_invoke;
    v20[3] = &unk_1E70F3590;
    v20[4] = self;
    [UIView performWithoutAnimation:v20];
  }

  [(UIVisualEffectView *)self->_visualEffectView setEffect:effectCopy];
  if (effectCopy && !v8)
  {
    v9 = self->_visualEffectView;
    visualEffectView = self->_visualEffectView;
    self->_visualEffectView = 0;

    [(UIVisualEffectView *)v9 setEffect:0];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __70___UISearchAtomBackgroundView__transitionFromBlurEffect_toBlurEffect___block_invoke_2;
    v16 = &unk_1E711EDC0;
    selfCopy = self;
    v18 = v9;
    v19 = effectCopy;
    v11 = v9;
    v12 = _Block_copy(&v13);
    if (![UIView _isInAnimationBlockWithAnimationsEnabled:v13]|| ![UIView _addCompletionWithPosition:v12])
    {
      v12[2](v12, 1, 0);
    }
  }
}

- (void)_updateSelectionStyleMask
{
  selectionStyle = self->_selectionStyle;
  if (selectionStyle <= 7)
  {
    if (selectionStyle < 2)
    {
      v4 = 15;
      goto LABEL_12;
    }

    if (selectionStyle == 4)
    {
      v4 = 10;
      goto LABEL_12;
    }

LABEL_10:
    NSLog(&cfstr_UnexpectedSele.isa, a2, self->_selectionStyle);
    goto LABEL_11;
  }

  if (selectionStyle == 8)
  {
    v4 = 5;
    goto LABEL_12;
  }

  if (selectionStyle != 12)
  {
    goto LABEL_10;
  }

LABEL_11:
  v4 = 0;
LABEL_12:
  layer = [(UIView *)self layer];
  [layer setMaskedCorners:v4];

  visualEffectView = self->_visualEffectView;
  layer2 = [(UIView *)self layer];
  [layer2 cornerRadius];
  v8 = v7;
  layer3 = [(UIView *)self layer];
  cornerCurve = [layer3 cornerCurve];
  [(UIVisualEffectView *)visualEffectView _setCornerRadius:cornerCurve == *MEMORY[0x1E69796E8] continuous:v4 maskedCorners:v8];
}

@end