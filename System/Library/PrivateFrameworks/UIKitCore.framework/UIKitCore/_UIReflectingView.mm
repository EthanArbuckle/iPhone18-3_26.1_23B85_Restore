@interface _UIReflectingView
- (_UIReflectingView)initWithFrame:(CGRect)frame;
- (double)reflectionFraction;
- (void)_updateGradientColors;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)setReflectionAlpha:(double)alpha;
- (void)setReflectionFraction:(double)fraction;
@end

@implementation _UIReflectingView

- (_UIReflectingView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = _UIReflectingView;
  v3 = [(UIView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    layer = [(UIView *)v4->_containerView layer];
    [layer setInstanceCount:2];

    v13 = [(UIView *)[_UIReflectingGradientView alloc] initWithFrame:v6, v7, v8, v9];
    gradientView = v4->_gradientView;
    v4->_gradientView = &v13->super;

    _gradientLayer = [(_UIReflectingView *)v4 _gradientLayer];
    [_gradientLayer setEndPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];

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
  backgroundColor = [(UIView *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(UIView *)self backgroundColor];
    backgroundColor3 = [(UIView *)self backgroundColor];
    [(_UIReflectingView *)self reflectionAlpha];
    v6 = [backgroundColor3 colorWithAlphaComponent:1.0 - v5];
  }

  else
  {
    backgroundColor2 = +[UIColor whiteColor];
    [(_UIReflectingView *)self reflectionAlpha];
    v6 = [UIColor colorWithWhite:1.0 alpha:v7];
  }

  _gradientLayer = [(_UIReflectingView *)self _gradientLayer];
  v9 = MEMORY[0x1E695DEC8];
  v10 = backgroundColor2;
  v11 = [v9 arrayWithObjects:{objc_msgSend(backgroundColor2, "CGColor"), objc_msgSend(v6, "CGColor"), 0}];
  [_gradientLayer setColors:v11];
}

- (void)setReflectionAlpha:(double)alpha
{
  if (alpha > 1.0 || alpha < 0.0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@'s reflectionAlpha value must be between 0 and 1", v8}];
  }

  self->_reflectionAlpha = alpha;

  [(_UIReflectingView *)self _updateGradientColors];
}

- (double)reflectionFraction
{
  _gradientLayer = [(_UIReflectingView *)self _gradientLayer];
  [_gradientLayer startPoint];
  v4 = v3;

  return v4;
}

- (void)setReflectionFraction:(double)fraction
{
  if (fraction > 1.0 || fraction < 0.0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"%@'s reflectionFraction value must be between 0 and 1", v8}];
  }

  _gradientLayer = [(_UIReflectingView *)self _gradientLayer];
  [_gradientLayer setStartPoint:{0.0, fraction}];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = _UIReflectingView;
  [(UIView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  layer = [(UIView *)self->_containerView layer];
  CATransform3DMakeTranslation(&v11, 0.0, v6, 0.0);
  CATransform3DScale(&v12, &v11, 1.0, -1.0, 1.0);
  [layer setInstanceTransform:&v12];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  v5 = colorCopy;
  if (colorCopy)
  {
    [colorCopy alphaComponent];
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
  _gradientLayer = [(_UIReflectingView *)self _gradientLayer];
  [_gradientLayer setCompositingFilter:v11];

  [(_UIReflectingView *)self _updateGradientColors];
}

@end