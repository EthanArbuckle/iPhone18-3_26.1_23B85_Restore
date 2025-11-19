@interface _UIAlertControllerTVBackgroundView
+ (CGSize)backgroundInsetAmount;
- (CGSize)_shadowOffset;
- (_UIAlertControllerTVBackgroundView)initWithFrame:(CGRect)a3;
- (double)_alphaForHighlighted:(BOOL)a3 pressed:(BOOL)a4;
- (double)alphaForState:(unint64_t)a3;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_updateBackgroundColor;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3 forState:(unint64_t)a4;
- (void)setCornerRadius:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setPressed:(BOOL)a3;
- (void)setRoundedCornerPosition:(unint64_t)a3;
- (void)setShouldShowShadow:(BOOL)a3;
- (void)setShouldUseTintColorAsBackgroundColor:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation _UIAlertControllerTVBackgroundView

+ (CGSize)backgroundInsetAmount
{
  v2 = 30.0;
  v3 = 7.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_UIAlertControllerTVBackgroundView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = _UIAlertControllerTVBackgroundView;
  v3 = [(UIView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_isHighlighted = 0;
    v3->_isPressed = 0;
    v5 = [UIView alloc];
    [(UIView *)v4 bounds];
    v6 = [(UIView *)v5 initWithFrame:?];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v6;

    [(UIView *)v4 addSubview:v4->_backgroundView];
    if ([objc_opt_class() usesHighlightShadow])
    {
      v8 = [_UIFloatingShadowView alloc];
      [(UIView *)v4 bounds];
      v9 = [(_UIFloatingShadowView *)v8 initWithFrame:?];
      shadowView = v4->_shadowView;
      v4->_shadowView = v9;

      [(_UIFloatingShadowView *)v4->_shadowView setShadowExpansion:5.0];
      [(UIView *)v4 insertSubview:v4->_shadowView atIndex:0];
    }

    [(_UIAlertControllerTVBackgroundView *)v4 setAlpha:0 forState:0.1];
    [(_UIAlertControllerTVBackgroundView *)v4 setAlpha:4 forState:0.8];
    [(_UIAlertControllerTVBackgroundView *)v4 setAlpha:1 forState:0.8];
  }

  return v4;
}

- (void)layoutSubviews
{
  backgroundView = self->_backgroundView;
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [objc_opt_class() backgroundInsetAmount];
  v13 = v12;
  [objc_opt_class() backgroundInsetAmount];
  v15 = v14;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v20 = CGRectInset(v19, v13, v15);
  [(UIView *)backgroundView setFrame:v20.origin.x, v20.origin.y, v20.size.width, v20.size.height];
  v16 = self->_backgroundView;
  [(_UIAlertControllerTVBackgroundView *)self _alphaForHighlighted:self->_isHighlighted pressed:self->_isPressed];
  [(UIView *)v16 setAlpha:?];
  shadowView = self->_shadowView;
  [(UIView *)self bounds];

  [(UIView *)shadowView setFrame:?];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UIAlertControllerTVBackgroundView;
  [(UIView *)&v3 tintColorDidChange];
  if (self->_shouldUseTintColorAsBackgroundColor)
  {
    [(_UIAlertControllerTVBackgroundView *)self _updateBackgroundColor];
  }
}

- (void)_updateBackgroundColor
{
  backgroundView = self->_backgroundView;
  v3 = [(UIView *)self tintColor];
  [(UIView *)backgroundView setBackgroundColor:v3];
}

- (void)setShouldUseTintColorAsBackgroundColor:(BOOL)a3
{
  if (self->_shouldUseTintColorAsBackgroundColor != a3)
  {
    if (a3)
    {
      [(_UIAlertControllerTVBackgroundView *)self _updateBackgroundColor];
    }

    else
    {
      [(UIView *)self->_backgroundView setBackgroundColor:0];
    }

    self->_shouldUseTintColorAsBackgroundColor = a3;
  }
}

- (void)setAlpha:(double)a3 forState:(unint64_t)a4
{
  v5 = a3;
  alphas = self->_alphas;
  if (!alphas)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = self->_alphas;
    self->_alphas = v8;

    alphas = self->_alphas;
  }

  *&a3 = v5;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:a3];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [(NSMutableDictionary *)alphas setObject:v11 forKey:v10];
}

- (double)alphaForState:(unint64_t)a3
{
  alphas = self->_alphas;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)alphas objectForKey:v4];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (void)setCornerRadius:(double)a3
{
  v5 = [(UIView *)self->_backgroundView layer];
  [v5 setCornerRadius:a3];

  shadowView = self->_shadowView;

  [(_UIFloatingShadowView *)shadowView setCornerRadius:a3];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  [(UIView *)self->_backgroundView _setContinuousCornerRadius:?];
  shadowView = self->_shadowView;

  [(UIView *)shadowView _setContinuousCornerRadius:a3];
}

- (void)setRoundedCornerPosition:(unint64_t)a3
{
  v5 = [(UIView *)self->_backgroundView layer];
  [v5 setMaskedCorners:a3];

  v6 = [(UIView *)self->_shadowView layer];
  [v6 setMaskedCorners:a3];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  isHighlighted = self->_isHighlighted;
  if (isHighlighted != v3)
  {
    [(_UIAlertControllerTVBackgroundView *)self _alphaForHighlighted:isHighlighted pressed:self->_isPressed];
    v7 = v6;
    [(_UIAlertControllerTVBackgroundView *)self _alphaForHighlighted:v3 pressed:self->_isPressed];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53___UIAlertControllerTVBackgroundView_setHighlighted___block_invoke;
    aBlock[3] = &unk_1E7101F90;
    aBlock[4] = self;
    aBlock[5] = v8;
    v14 = v3;
    v9 = _Block_copy(aBlock);
    if (+[UIView areAnimationsEnabled])
    {
      if (v3)
      {
        v10 = 0.1;
      }

      else
      {
        v10 = 0.2;
      }

      [(UIView *)self->_backgroundView setAlpha:v7];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __53___UIAlertControllerTVBackgroundView_setHighlighted___block_invoke_2;
      v11[3] = &unk_1E70F0F78;
      v12 = v9;
      [UIView animateWithDuration:v11 animations:v10];
    }

    else
    {
      v9[2](v9);
    }

    self->_isHighlighted = v3;
  }
}

- (void)setPressed:(BOOL)a3
{
  if (self->_isPressed != a3)
  {
    v3 = a3;
    [(_UIAlertControllerTVBackgroundView *)self _alphaForHighlighted:self->_isHighlighted pressed:?];
    v6 = v5;
    [(_UIAlertControllerTVBackgroundView *)self _alphaForHighlighted:self->_isHighlighted pressed:v3];
    v8 = v7;
    [(_UIAlertControllerTVBackgroundView *)self _shadowOpacity];
    v10 = v9;
    [(_UIAlertControllerTVBackgroundView *)self _shadowOffset];
    v12 = v11;
    v14 = v13;
    [(_UIAlertControllerTVBackgroundView *)self _shadowRadius];
    if (v3)
    {
      v16 = 0.1;
    }

    else
    {
      v16 = v10;
    }

    if (v3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 5.0;
    }

    if (v3)
    {
      v18 = 5.0;
    }

    else
    {
      v18 = v14;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49___UIAlertControllerTVBackgroundView_setPressed___block_invoke;
    aBlock[3] = &unk_1E7116870;
    v19 = 0.0;
    if (v3)
    {
      v20 = v15;
    }

    else
    {
      v19 = v12;
      v20 = 5.0;
    }

    aBlock[4] = self;
    aBlock[5] = v8;
    *&aBlock[6] = v16;
    if (v3)
    {
      v15 = 5.0;
    }

    *&aBlock[7] = v19;
    *&aBlock[8] = v18;
    *&aBlock[9] = v15;
    v21 = _Block_copy(aBlock);
    if (+[UIView areAnimationsEnabled])
    {
      if (!v3)
      {
        v10 = 0.1;
      }

      [(UIView *)self->_backgroundView setAlpha:v6];
      [(UIView *)self->_shadowView setAlpha:v10];
      if (self->_shouldShowShadow)
      {
        [(_UIFloatingShadowView *)self->_shadowView setShadowVerticalOffset:v17];
        [(_UIFloatingShadowView *)self->_shadowView setShadowRadius:v20];
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __49___UIAlertControllerTVBackgroundView_setPressed___block_invoke_2;
      v22[3] = &unk_1E70F0F78;
      v23 = v21;
      [UIView animateWithDuration:v22 animations:0.1];
    }

    else
    {
      v21[2](v21);
    }

    self->_isPressed = v3;
  }
}

- (void)setShouldShowShadow:(BOOL)a3
{
  if (self->_shouldShowShadow != a3)
  {
    shadowView = self->_shadowView;
    v6 = 0.0;
    if (a3)
    {
      [(_UIAlertControllerTVBackgroundView *)self _shadowOpacity];
    }

    [(_UIFloatingShadowView *)shadowView setShadowOpacity:v6];
    self->_shouldShowShadow = a3;
  }
}

- (double)_alphaForHighlighted:(BOOL)a3 pressed:(BOOL)a4
{
  if (a4)
  {
    *&a3 = 4;
  }

  else
  {
    *&a3 = a3;
  }

  [(_UIAlertControllerTVBackgroundView *)self alphaForState:a3];
  return result;
}

- (CGSize)_shadowOffset
{
  v2 = 0.0;
  v3 = 20.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end