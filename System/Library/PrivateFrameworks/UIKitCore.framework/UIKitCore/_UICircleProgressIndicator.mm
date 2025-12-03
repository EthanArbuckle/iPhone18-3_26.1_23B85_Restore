@interface _UICircleProgressIndicator
+ (id)_borderImage;
+ (id)_fillImage;
+ (id)_indeterminateImage;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)imageInsets;
- (_UICircleProgressIndicator)initWithFrame:(CGRect)frame;
- (void)_animateValueOnDisplayLink:(id)link;
- (void)_setHidesBorderView:(BOOL)view;
- (void)_startIndeterminateAnimation;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageInsets:(UIEdgeInsets)insets;
- (void)setIndeterminate:(BOOL)indeterminate;
- (void)setProgress:(double)progress animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation _UICircleProgressIndicator

- (_UICircleProgressIndicator)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = _UICircleProgressIndicator;
  v3 = [(UIView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    tintColor = [(UIView *)v3 tintColor];
    _borderImage = [objc_opt_class() _borderImage];
    v7 = [_borderImage imageWithTintColor:tintColor];
    borderImage = v4->_borderImage;
    v4->_borderImage = v7;

    _fillImage = [objc_opt_class() _fillImage];

    v10 = [_fillImage imageWithTintColor:tintColor];
    fillImage = v4->_fillImage;
    v4->_fillImage = v10;

    [(UIView *)v4 setOpaque:0];
    [(UIView *)v4 setClearsContextBeforeDrawing:1];
  }

  return v4;
}

- (void)dealloc
{
  layer = [(UIView *)self->_indeterminateView layer];
  [layer removeAllAnimations];

  v4.receiver = self;
  v4.super_class = _UICircleProgressIndicator;
  [(UIView *)&v4 dealloc];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlighted = self->_highlighted;
  if (highlighted != highlighted)
  {
    if (highlighted)
    {
      [(UIView *)self setBackgroundColor:self->_unhighlightedBackgroundColor];
      unhighlightedBackgroundColor = self->_unhighlightedBackgroundColor;
      self->_unhighlightedBackgroundColor = 0;
    }

    else
    {
      backgroundColor = [(UIView *)self backgroundColor];
      v8 = self->_unhighlightedBackgroundColor;
      self->_unhighlightedBackgroundColor = backgroundColor;

      unhighlightedBackgroundColor = +[UIColor clearColor];
      [(UIView *)self setBackgroundColor:unhighlightedBackgroundColor];
    }

    self->_highlighted = highlighted;

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setImage:(id)image
{
  if (self->_centerImage != image)
  {
    imageCopy = image;
    tintColor = [(UIView *)self tintColor];
    v7 = [imageCopy imageWithTintColor:tintColor];

    [(_UICircleProgressIndicator *)self setImage:v7];

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setImageInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_centerImageInsets.top, v3), vceqq_f64(*&self->_centerImageInsets.bottom, v4)))) & 1) == 0)
  {
    self->_centerImageInsets = insets;
    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setIndeterminate:(BOOL)indeterminate
{
  indeterminateView = self->_indeterminateView;
  if (indeterminate)
  {
    if (!indeterminateView)
    {
      _indeterminateImage = [objc_opt_class() _indeterminateImage];
      tintColor = [(UIView *)self tintColor];
      v11 = [_indeterminateImage imageWithTintColor:tintColor];

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
    layer = [(UIView *)indeterminateView layer];
    [layer removeAllAnimations];

    [(UIView *)self->_indeterminateView removeFromSuperview];
    v10 = self->_indeterminateView;
    self->_indeterminateView = 0;

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  progress = self->_progress;
  if (progress == progress)
  {
    return;
  }

  if (animated)
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

    mainScreen = [objc_opt_self() mainScreen];
    v9 = [mainScreen displayLinkWithTarget:self selector:sel__animateValueOnDisplayLink_];
    displayLink = self->_displayLink;
    self->_displayLink = v9;

    v11 = self->_displayLink;
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v11 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];
  }

  else
  {
    self->_isAnimating = 0;
    [(CADisplayLink *)self->_displayLink invalidate];
    currentRunLoop = self->_displayLink;
    self->_displayLink = 0;
  }

LABEL_10:
  self->_progress = progress;

  [(UIView *)self setNeedsDisplay];
}

- (void)didMoveToWindow
{
  window = [(UIView *)self window];
  if (window)
  {
    indeterminateView = self->_indeterminateView;

    if (indeterminateView)
    {
      layer = [(UIView *)self->_indeterminateView layer];
      [layer removeAllAnimations];

      [(_UICircleProgressIndicator *)self _startIndeterminateAnimation];
    }
  }
}

- (void)drawRect:(CGRect)rect
{
  if (!self->_indeterminateView)
  {
    v23 = [UIBezierPath bezierPath:rect.origin.x];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIImage *)self->_fillImage size:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)tintColorDidChange
{
  v12.receiver = self;
  v12.super_class = _UICircleProgressIndicator;
  [(UIView *)&v12 tintColorDidChange];
  tintColor = [(UIView *)self tintColor];
  v4 = [(UIImage *)self->_centerImage imageWithTintColor:tintColor];
  [(_UICircleProgressIndicator *)self setImage:v4];

  if (self->_borderImage)
  {
    _borderImage = [objc_opt_class() _borderImage];
    v6 = [_borderImage imageWithTintColor:tintColor];
    [(_UICircleProgressIndicator *)self setBorderImage:v6];
  }

  _fillImage = [objc_opt_class() _fillImage];
  v8 = [_fillImage imageWithTintColor:tintColor];
  [(_UICircleProgressIndicator *)self setFillImage:v8];

  if (self->_indeterminateView)
  {
    _indeterminateImage = [objc_opt_class() _indeterminateImage];
    tintColor2 = [(UIView *)self tintColor];
    v11 = [_indeterminateImage imageWithTintColor:tintColor2];

    [(UIImageView *)self->_indeterminateView setImage:v11];
    _fillImage = v11;
  }

  [(UIView *)self setNeedsDisplay];
}

- (void)_setHidesBorderView:(BOOL)view
{
  if (view)
  {
    [(_UICircleProgressIndicator *)self setBorderImage:0];
  }

  else
  {
    _borderImage = [objc_opt_class() _borderImage];
    tintColor = [(UIView *)self tintColor];
    v6 = [_borderImage imageWithTintColor:tintColor];
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

- (void)_animateValueOnDisplayLink:(id)link
{
  [link timestamp];
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