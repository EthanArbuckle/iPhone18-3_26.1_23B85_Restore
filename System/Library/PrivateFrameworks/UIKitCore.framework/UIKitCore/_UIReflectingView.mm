@interface _UIReflectingView
- (_UIReflectingView)initWithFrame:(CGRect)a3;
- (double)reflectionFraction;
- (void)_updateGradientColors;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setReflectionAlpha:(double)a3;
- (void)setReflectionFraction:(double)a3;
@end

@implementation _UIReflectingView

- (_UIReflectingView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = _UIReflectingView;
  v3 = [(UIView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setClipsToBounds:0];
    v5 = [_UIReflectingContainerView alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    containerView = v4->_containerView;
    v4->_containerView = v10;

    [(UIView *)v4->_containerView setClipsToBounds:0];
    v12 = [(UIView *)v4->_containerView layer];
    [v12 setInstanceCount:2];

    v13 = [(UIView *)[_UIReflectingGradientView alloc] initWithFrame:v6, v7, v8, v9];
    gradientView = v4->_gradientView;
    v4->_gradientView = &v13->super;

    v15 = [(_UIReflectingView *)v4 _gradientLayer];
    [v15 setEndPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

    [(UIView *)v4->_gradientView setUserInteractionEnabled:0];
    [(UIView *)v4 addSubview:v4->_containerView];
    [(UIView *)v4 addSubview:v4->_gradientView];
    [(_UIReflectingView *)v4 setReflectionAlpha:0.5];
    [(_UIReflectingView *)v4 setReflectionFraction:0.5];
    [(_UIReflectingView *)v4 setBackgroundColor:0];
    [(UIView *)v4 setNeedsLayout];
    [(UIView *)v4 layoutIfNeeded];
  }

  return v4;
}

- (void)_updateGradientColors
{
  v3 = [(UIView *)self backgroundColor];

  if (v3)
  {
    v12 = [(UIView *)self backgroundColor];
    v4 = [(UIView *)self backgroundColor];
    [(_UIReflectingView *)self reflectionAlpha];
    v6 = [v4 colorWithAlphaComponent:1.0 - v5];
  }

  else
  {
    v12 = +[UIColor whiteColor];
    [(_UIReflectingView *)self reflectionAlpha];
    v6 = [UIColor colorWithWhite:1.0 alpha:v7];
  }

  v8 = [(_UIReflectingView *)self _gradientLayer];
  v9 = MEMORY[0x1E695DEC8];
  v10 = v12;
  v11 = [v9 arrayWithObjects:{objc_msgSend(v12, "CGColor"), objc_msgSend(v6, "CGColor"), 0}];
  [v8 setColors:v11];
}

- (void)setReflectionAlpha:(double)a3
{
  if (a3 > 1.0 || a3 < 0.0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@'s reflectionAlpha value must be between 0 and 1", v8}];
  }

  self->_reflectionAlpha = a3;

  [(_UIReflectingView *)self _updateGradientColors];
}

- (double)reflectionFraction
{
  v2 = [(_UIReflectingView *)self _gradientLayer];
  [v2 startPoint];
  v4 = v3;

  return v4;
}

- (void)setReflectionFraction:(double)a3
{
  if (a3 > 1.0 || a3 < 0.0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@'s reflectionFraction value must be between 0 and 1", v8}];
  }

  v9 = [(_UIReflectingView *)self _gradientLayer];
  [v9 setStartPoint:{0.0, a3}];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UIReflectingView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)self setNeedsLayout];
  [(UIView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = _UIReflectingView;
  [(UIView *)&v13 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIView *)self bounds];
  [(UIView *)self->_containerView setFrame:?];
  [(UIView *)self bounds];
  v8 = v7;
  [(UIView *)self bounds];
  [(UIView *)self->_gradientView setFrame:v8, v6 + v9, v4, v6];
  v10 = [(UIView *)self->_containerView layer];
  CATransform3DMakeTranslation(&v11, 0.0, v6, 0.0);
  CATransform3DScale(&v12, &v11, 1.0, -1.0, 1.0);
  [v10 setInstanceTransform:&v12];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 alphaComponent];
    if (v6 < 1.0)
    {
      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D940];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [v7 raise:v8 format:{@"%@ doesn't support non-opaque background colors.", v10}];
    }
  }

  v13.receiver = self;
  v13.super_class = _UIReflectingView;
  [(UIView *)&v13 setBackgroundColor:v5];
  if (v5)
  {
    v11 = 0;
  }

  else
  {
    v11 = *MEMORY[0x1E69798E8];
  }

  [(UIView *)self setOpaque:v5 != 0];
  [(UIView *)self->_containerView setOpaque:v5 != 0];
  [(UIView *)self->_gradientView setOpaque:0];
  v12 = [(_UIReflectingView *)self _gradientLayer];
  [v12 setCompositingFilter:v11];

  [(_UIReflectingView *)self _updateGradientColors];
}

@end