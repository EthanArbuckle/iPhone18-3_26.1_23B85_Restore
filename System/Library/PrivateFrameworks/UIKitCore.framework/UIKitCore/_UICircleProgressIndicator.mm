@interface _UICircleProgressIndicator
+ (id)_borderImage;
+ (id)_fillImage;
+ (id)_indeterminateImage;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)imageInsets;
- (_UICircleProgressIndicator)initWithFrame:(CGRect)a3;
- (void)_animateValueOnDisplayLink:(id)a3;
- (void)_setHidesBorderView:(BOOL)a3;
- (void)_startIndeterminateAnimation;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageInsets:(UIEdgeInsets)a3;
- (void)setIndeterminate:(BOOL)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation _UICircleProgressIndicator

- (_UICircleProgressIndicator)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = _UICircleProgressIndicator;
  v3 = [(UIView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 tintColor];
    v6 = [objc_opt_class() _borderImage];
    v7 = [v6 imageWithTintColor:v5];
    borderImage = v4->_borderImage;
    v4->_borderImage = v7;

    v9 = [objc_opt_class() _fillImage];

    v10 = [v9 imageWithTintColor:v5];
    fillImage = v4->_fillImage;
    v4->_fillImage = v10;

    [(UIView *)v4 setOpaque:0];
    [(UIView *)v4 setClearsContextBeforeDrawing:1];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(UIView *)self->_indeterminateView layer];
  [v3 removeAllAnimations];

  v4.receiver = self;
  v4.super_class = _UICircleProgressIndicator;
  [(UIView *)&v4 dealloc];
}

- (void)setHighlighted:(BOOL)a3
{
  highlighted = self->_highlighted;
  if (highlighted != a3)
  {
    if (highlighted)
    {
      [(UIView *)self setBackgroundColor:self->_unhighlightedBackgroundColor];
      unhighlightedBackgroundColor = self->_unhighlightedBackgroundColor;
      self->_unhighlightedBackgroundColor = 0;
    }

    else
    {
      v7 = [(UIView *)self backgroundColor];
      v8 = self->_unhighlightedBackgroundColor;
      self->_unhighlightedBackgroundColor = v7;

      unhighlightedBackgroundColor = +[UIColor clearColor];
      [(UIView *)self setBackgroundColor:unhighlightedBackgroundColor];
    }

    self->_highlighted = a3;

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setImage:(id)a3
{
  if (self->_centerImage != a3)
  {
    v5 = a3;
    v6 = [(UIView *)self tintColor];
    v7 = [v5 imageWithTintColor:v6];

    [(_UICircleProgressIndicator *)self setImage:v7];

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setImageInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_centerImageInsets.top, v3), vceqq_f64(*&self->_centerImageInsets.bottom, v4)))) & 1) == 0)
  {
    self->_centerImageInsets = a3;
    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setIndeterminate:(BOOL)a3
{
  indeterminateView = self->_indeterminateView;
  if (a3)
  {
    if (!indeterminateView)
    {
      v5 = [objc_opt_class() _indeterminateImage];
      v6 = [(UIView *)self tintColor];
      v11 = [v5 imageWithTintColor:v6];

      v7 = [[UIImageView alloc] initWithImage:v11];
      v8 = self->_indeterminateView;
      self->_indeterminateView = v7;

      [(UIView *)self addSubview:self->_indeterminateView];
      [(UIView *)self setNeedsDisplay];
      [(_UICircleProgressIndicator *)self _startIndeterminateAnimation];
    }
  }

  else if (indeterminateView)
  {
    v9 = [(UIView *)indeterminateView layer];
    [v9 removeAllAnimations];

    [(UIView *)self->_indeterminateView removeFromSuperview];
    v10 = self->_indeterminateView;
    self->_indeterminateView = 0;

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  progress = self->_progress;
  if (progress == a3)
  {
    return;
  }

  if (a4)
  {
    if (self->_isAnimating)
    {
      progress = self->_animatedValue;
    }

    self->_animationStartValue = progress;
    self->_isAnimating = 1;
    self->_animatedValue = self->_progress;
    v7 = CACurrentMediaTime();
    self->_animationStartTime = v7;
    self->_animationEndTime = v7 + 0.2;
    if (self->_displayLink)
    {
      goto LABEL_10;
    }

    v8 = [objc_opt_self() mainScreen];
    v9 = [v8 displayLinkWithTarget:self selector:sel__animateValueOnDisplayLink_];
    displayLink = self->_displayLink;
    self->_displayLink = v9;

    v11 = self->_displayLink;
    v12 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v11 addToRunLoop:v12 forMode:*MEMORY[0x1E695DA28]];
  }

  else
  {
    self->_isAnimating = 0;
    [(CADisplayLink *)self->_displayLink invalidate];
    v12 = self->_displayLink;
    self->_displayLink = 0;
  }

LABEL_10:
  self->_progress = a3;

  [(UIView *)self setNeedsDisplay];
}

- (void)didMoveToWindow
{
  v3 = [(UIView *)self window];
  if (v3)
  {
    indeterminateView = self->_indeterminateView;

    if (indeterminateView)
    {
      v5 = [(UIView *)self->_indeterminateView layer];
      [v5 removeAllAnimations];

      [(_UICircleProgressIndicator *)self _startIndeterminateAnimation];
    }
  }
}

- (void)drawRect:(CGRect)a3
{
  if (!self->_indeterminateView)
  {
    v23 = [UIBezierPath bezierPath:a3.origin.x];
    [(UIView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIImage *)self->_borderImage drawInRect:?];
    centerImage = self->_centerImage;
    if (centerImage)
    {
      [(UIImage *)centerImage size];
      v15 = v14;
      *&v14 = (v10 - v14) * 0.5;
      *&v16 = (v12 - v16) * 0.5;
      [(UIImage *)self->_centerImage drawInRect:self->_centerImageInsets.left + floorf(*&v14), self->_centerImageInsets.top + floorf(*&v16), v15];
    }

    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    MidX = CGRectGetMidX(v24);
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    MidY = CGRectGetMidY(v25);
    v19 = v12 * 0.5;
    v20 = ceilf(v19);
    v21 = 7;
    if (self->_isAnimating)
    {
      v21 = 10;
    }

    v22 = *(&self->super.super.super.isa + OBJC_IVAR____UICircleProgressIndicator__borderImage[v21]);
    [v23 moveToPoint:{MidX, MidY}];
    [v23 addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v20 clockwise:{-1.57079633, v22 * 6.28318531 + -1.57079633}];
    [v23 addLineToPoint:{MidX, MidY}];
    [v23 clip];
    [(UIImage *)self->_fillImage drawInRect:v6, v8, v10, v12];
  }
}

- (void)layoutSubviews
{
  if (self->_indeterminateView)
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    [(UIView *)self->_indeterminateView frame];
    v8 = (v4 - v7) * 0.5;
    v9 = floorf(v8);
    v11 = (v6 - v10) * 0.5;
    indeterminateView = self->_indeterminateView;
    v13 = floorf(v11);

    [(UIImageView *)indeterminateView setFrame:v9, v13];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIImage *)self->_fillImage size:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)tintColorDidChange
{
  v12.receiver = self;
  v12.super_class = _UICircleProgressIndicator;
  [(UIView *)&v12 tintColorDidChange];
  v3 = [(UIView *)self tintColor];
  v4 = [(UIImage *)self->_centerImage imageWithTintColor:v3];
  [(_UICircleProgressIndicator *)self setImage:v4];

  if (self->_borderImage)
  {
    v5 = [objc_opt_class() _borderImage];
    v6 = [v5 imageWithTintColor:v3];
    [(_UICircleProgressIndicator *)self setBorderImage:v6];
  }

  v7 = [objc_opt_class() _fillImage];
  v8 = [v7 imageWithTintColor:v3];
  [(_UICircleProgressIndicator *)self setFillImage:v8];

  if (self->_indeterminateView)
  {
    v9 = [objc_opt_class() _indeterminateImage];
    v10 = [(UIView *)self tintColor];
    v11 = [v9 imageWithTintColor:v10];

    [(UIImageView *)self->_indeterminateView setImage:v11];
    v7 = v11;
  }

  [(UIView *)self setNeedsDisplay];
}

- (void)_setHidesBorderView:(BOOL)a3
{
  if (a3)
  {
    [(_UICircleProgressIndicator *)self setBorderImage:0];
  }

  else
  {
    v4 = [objc_opt_class() _borderImage];
    v5 = [(UIView *)self tintColor];
    v6 = [v4 imageWithTintColor:v5];
    [(_UICircleProgressIndicator *)self setBorderImage:v6];
  }

  [(UIView *)self setNeedsDisplay];
}

+ (id)_borderImage
{
  v2 = _borderImage_image;
  if (!_borderImage_image)
  {
    v3 = _UIImageWithName(@"UIDownloadProgressBorderThin");
    v4 = _borderImage_image;
    _borderImage_image = v3;

    v2 = _borderImage_image;
  }

  return v2;
}

+ (id)_fillImage
{
  v2 = _fillImage_image;
  if (!_fillImage_image)
  {
    v3 = _UIImageWithName(@"UIDownloadProgressBorderThick");
    v4 = _fillImage_image;
    _fillImage_image = v3;

    v2 = _fillImage_image;
  }

  return v2;
}

+ (id)_indeterminateImage
{
  v2 = _indeterminateImage_image;
  if (!_indeterminateImage_image)
  {
    v3 = _UIImageWithName(@"UIDownloadProgressBorderIndeterminate");
    v4 = _indeterminateImage_image;
    _indeterminateImage_image = v3;

    v2 = _indeterminateImage_image;
  }

  return v2;
}

- (void)_animateValueOnDisplayLink:(id)a3
{
  [a3 timestamp];
  v5 = (v4 - self->_animationStartTime) / (self->_animationEndTime - self->_animationStartTime);
  if (v5 >= 0.99)
  {
    self->_isAnimating = 0;
    self->_animatedValue = self->_progress;
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
  }

  else
  {
    self->_animatedValue = self->_animationStartValue + (self->_progress - self->_animationStartValue) * v5;
  }

  [(UIView *)self setNeedsDisplay];
}

- (void)_startIndeterminateAnimation
{
  indeterminateView = self->_indeterminateView;
  CGAffineTransformMakeRotation(&v5, -1.57079633);
  [(UIView *)indeterminateView setTransform:&v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58___UICircleProgressIndicator__startIndeterminateAnimation__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [UIView animateKeyframesWithDuration:196616 delay:v4 options:0 animations:1.0 completion:0.0];
}

- (UIEdgeInsets)imageInsets
{
  top = self->_centerImageInsets.top;
  left = self->_centerImageInsets.left;
  bottom = self->_centerImageInsets.bottom;
  right = self->_centerImageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end