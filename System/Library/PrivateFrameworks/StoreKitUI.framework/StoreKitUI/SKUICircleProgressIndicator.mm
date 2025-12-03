@interface SKUICircleProgressIndicator
+ (id)_borderImage;
+ (id)_fillImage;
+ (id)_indeterminateImage;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUICircleProgressIndicator)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)imageInsets;
- (void)_animateValueOnDisplayLink:(id)link;
- (void)_setHidesBorderView:(BOOL)view;
- (void)_startIndeterminateAnimation;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setImageInsets:(UIEdgeInsets)insets;
- (void)setIndeterminate:(BOOL)indeterminate;
- (void)setProgress:(double)progress animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation SKUICircleProgressIndicator

- (SKUICircleProgressIndicator)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUICircleProgressIndicator initWithFrame:];
  }

  v18.receiver = self;
  v18.super_class = SKUICircleProgressIndicator;
  height = [(SKUICircleProgressIndicator *)&v18 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    tintColor = [(SKUICircleProgressIndicator *)height tintColor];
    _borderImage = [objc_opt_class() _borderImage];
    v12 = [_borderImage _flatImageWithColor:tintColor];
    borderImage = v9->_borderImage;
    v9->_borderImage = v12;

    _fillImage = [objc_opt_class() _fillImage];

    v15 = [_fillImage _flatImageWithColor:tintColor];
    fillImage = v9->_fillImage;
    v9->_fillImage = v15;
  }

  return v9;
}

- (void)dealloc
{
  layer = [(UIImageView *)self->_indeterminateView layer];
  [layer removeAllAnimations];

  v4.receiver = self;
  v4.super_class = SKUICircleProgressIndicator;
  [(SKUICircleProgressIndicator *)&v4 dealloc];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlighted = self->_highlighted;
  if (highlighted != highlighted)
  {
    if (highlighted)
    {
      [(SKUICircleProgressIndicator *)self setBackgroundColor:self->_unhighlightedBackgroundColor];
      unhighlightedBackgroundColor = self->_unhighlightedBackgroundColor;
      self->_unhighlightedBackgroundColor = 0;
    }

    else
    {
      backgroundColor = [(SKUICircleProgressIndicator *)self backgroundColor];
      v8 = self->_unhighlightedBackgroundColor;
      self->_unhighlightedBackgroundColor = backgroundColor;

      unhighlightedBackgroundColor = [MEMORY[0x277D75348] clearColor];
      [(SKUICircleProgressIndicator *)self setBackgroundColor:unhighlightedBackgroundColor];
    }

    self->_highlighted = highlighted;

    [(SKUICircleProgressIndicator *)self setNeedsDisplay];
  }
}

- (void)setImage:(id)image
{
  if (self->_centerImage != image)
  {
    imageCopy = image;
    tintColor = [(SKUICircleProgressIndicator *)self tintColor];
    v6 = [imageCopy _flatImageWithColor:tintColor];

    centerImage = self->_centerImage;
    self->_centerImage = v6;

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__SKUICircleProgressIndicator_setImage___block_invoke;
    v9[3] = &unk_2781F80F0;
    v9[4] = self;
    [mEMORY[0x277D75128] _performBlockAfterCATransactionCommits:v9];
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
    [(SKUICircleProgressIndicator *)self setNeedsDisplay];
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
      tintColor = [(SKUICircleProgressIndicator *)self tintColor];
      v13 = [_indeterminateImage _flatImageWithColor:tintColor];

      v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v13];
      v8 = self->_indeterminateView;
      self->_indeterminateView = v7;

      v9 = self->_indeterminateView;
      backgroundColor = [(SKUICircleProgressIndicator *)self backgroundColor];
      [(UIImageView *)v9 setBackgroundColor:backgroundColor];

      [(SKUICircleProgressIndicator *)self addSubview:self->_indeterminateView];
      [(SKUICircleProgressIndicator *)self setNeedsDisplay];
      [(SKUICircleProgressIndicator *)self _startIndeterminateAnimation];
    }
  }

  else if (indeterminateView)
  {
    layer = [(UIImageView *)indeterminateView layer];
    [layer removeAllAnimations];

    [(UIImageView *)self->_indeterminateView removeFromSuperview];
    v12 = self->_indeterminateView;
    self->_indeterminateView = 0;

    [(SKUICircleProgressIndicator *)self setNeedsDisplay];
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

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    v9 = [mainScreen displayLinkWithTarget:self selector:sel__animateValueOnDisplayLink_];
    displayLink = self->_displayLink;
    self->_displayLink = v9;

    v11 = self->_displayLink;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v11 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];
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

  [(SKUICircleProgressIndicator *)self setNeedsDisplay];
}

- (void)didMoveToWindow
{
  window = [(SKUICircleProgressIndicator *)self window];
  if (window)
  {
    indeterminateView = self->_indeterminateView;

    if (indeterminateView)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __46__SKUICircleProgressIndicator_didMoveToWindow__block_invoke;
      v7[3] = &unk_2781F80F0;
      v7[4] = self;
      [mEMORY[0x277D75128] _performBlockAfterCATransactionCommits:v7];
    }
  }

  v6.receiver = self;
  v6.super_class = SKUICircleProgressIndicator;
  [(SKUICircleProgressIndicator *)&v6 didMoveToWindow];
}

uint64_t __46__SKUICircleProgressIndicator_didMoveToWindow__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 512) layer];
  [v2 removeAllAnimations];

  v3 = *(a1 + 32);

  return [v3 _startIndeterminateAnimation];
}

- (void)drawRect:(CGRect)rect
{
  if (!self->_indeterminateView)
  {
    bezierPath = [MEMORY[0x277D75208] bezierPath];
    [(SKUICircleProgressIndicator *)self bounds];
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
    if (self->_isAnimating)
    {
      v21 = &OBJC_IVAR___SKUICircleProgressIndicator__animatedValue;
    }

    else
    {
      v21 = &OBJC_IVAR___SKUICircleProgressIndicator__progress;
    }

    v22 = *(&self->super.super.super.isa + *v21);
    [bezierPath moveToPoint:{MidX, MidY}];
    [bezierPath addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:v20 clockwise:{-1.57079633, v22 * 6.28318531 + -1.57079633}];
    [bezierPath addLineToPoint:{MidX, MidY}];
    [bezierPath clip];
    [(UIImage *)self->_fillImage drawInRect:v6, v8, v10, v12];
  }
}

- (void)layoutSubviews
{
  if (self->_indeterminateView)
  {
    [(SKUICircleProgressIndicator *)self bounds];
    v4 = v3;
    v6 = v5;
    [(UIImageView *)self->_indeterminateView frame];
    v8 = (v4 - v7) * 0.5;
    v9 = roundf(v8);
    v11 = (v6 - v10) * 0.5;
    indeterminateView = self->_indeterminateView;
    v13 = roundf(v11);

    [(UIImageView *)indeterminateView setFrame:v9, v13];
  }
}

- (void)setBackgroundColor:(id)color
{
  indeterminateView = self->_indeterminateView;
  colorCopy = color;
  [(UIImageView *)indeterminateView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUICircleProgressIndicator;
  [(SKUICircleProgressIndicator *)&v6 setBackgroundColor:colorCopy];
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
  v15.receiver = self;
  v15.super_class = SKUICircleProgressIndicator;
  [(SKUICircleProgressIndicator *)&v15 tintColorDidChange];
  tintColor = [(SKUICircleProgressIndicator *)self tintColor];
  v4 = [(UIImage *)self->_centerImage _flatImageWithColor:tintColor];
  centerImage = self->_centerImage;
  self->_centerImage = v4;

  if (self->_borderImage)
  {
    _borderImage = [objc_opt_class() _borderImage];
    v7 = [_borderImage _flatImageWithColor:tintColor];
    borderImage = self->_borderImage;
    self->_borderImage = v7;
  }

  _fillImage = [objc_opt_class() _fillImage];
  v10 = [_fillImage _flatImageWithColor:tintColor];
  fillImage = self->_fillImage;
  self->_fillImage = v10;

  if (self->_indeterminateView)
  {
    _indeterminateImage = [objc_opt_class() _indeterminateImage];
    tintColor2 = [(SKUICircleProgressIndicator *)self tintColor];
    v14 = [_indeterminateImage _flatImageWithColor:tintColor2];

    [(UIImageView *)self->_indeterminateView setImage:v14];
    _fillImage = v14;
  }

  [(SKUICircleProgressIndicator *)self setNeedsDisplay];
}

- (void)_setHidesBorderView:(BOOL)view
{
  if (view)
  {
    borderImage = self->_borderImage;
    self->_borderImage = 0;
  }

  else
  {
    borderImage = [objc_opt_class() _borderImage];
    tintColor = [(SKUICircleProgressIndicator *)self tintColor];
    v6 = [borderImage _flatImageWithColor:tintColor];
    v7 = self->_borderImage;
    self->_borderImage = v6;
  }

  [(SKUICircleProgressIndicator *)self setNeedsDisplay];
}

+ (id)_borderImage
{
  v2 = _borderImage_image;
  if (!_borderImage_image)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = SKUIBundle();
    v5 = [v3 imageNamed:@"DownloadProgressBorderThin" inBundle:v4];
    v6 = _borderImage_image;
    _borderImage_image = v5;

    v2 = _borderImage_image;
  }

  return v2;
}

+ (id)_fillImage
{
  v2 = _fillImage_image;
  if (!_fillImage_image)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = SKUIBundle();
    v5 = [v3 imageNamed:@"DownloadProgressBorderThick" inBundle:v4];
    v6 = _fillImage_image;
    _fillImage_image = v5;

    v2 = _fillImage_image;
  }

  return v2;
}

+ (id)_indeterminateImage
{
  v2 = _indeterminateImage_image;
  if (!_indeterminateImage_image)
  {
    v3 = MEMORY[0x277D755B8];
    v4 = SKUIBundle();
    v5 = [v3 imageNamed:@"DownloadProgressBorderIndeterminate" inBundle:v4];
    v6 = _indeterminateImage_image;
    _indeterminateImage_image = v5;

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

  [(SKUICircleProgressIndicator *)self setNeedsDisplay];
}

- (void)_startIndeterminateAnimation
{
  indeterminateView = self->_indeterminateView;
  CGAffineTransformMakeRotation(&v5, -1.57079633);
  [(UIImageView *)indeterminateView setTransform:&v5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__SKUICircleProgressIndicator__startIndeterminateAnimation__block_invoke;
  v4[3] = &unk_2781F80F0;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:196616 delay:v4 options:0 animations:1.0 completion:0.0];
}

uint64_t __59__SKUICircleProgressIndicator__startIndeterminateAnimation__block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D85DD0];
  do
  {
    v5[0] = v3;
    v5[1] = 3221225472;
    v5[2] = __59__SKUICircleProgressIndicator__startIndeterminateAnimation__block_invoke_2;
    v5[3] = &unk_2781FC960;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    result = [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v5 relativeDuration:vcvtd_n_f64_u64(v2++ animations:{2uLL), 0.25}];
  }

  while (v2 != 4);
  return result;
}

uint64_t __59__SKUICircleProgressIndicator__startIndeterminateAnimation__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 512);
  CGAffineTransformMakeRotation(&v3, *(a1 + 40) * 1.57079633);
  return [v1 setTransform:&v3];
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

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICircleProgressIndicator initWithFrame:]";
}

@end