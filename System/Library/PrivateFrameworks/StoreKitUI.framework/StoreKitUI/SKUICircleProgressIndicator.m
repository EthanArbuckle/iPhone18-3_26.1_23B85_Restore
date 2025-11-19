@interface SKUICircleProgressIndicator
+ (id)_borderImage;
+ (id)_fillImage;
+ (id)_indeterminateImage;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUICircleProgressIndicator)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)imageInsets;
- (void)_animateValueOnDisplayLink:(id)a3;
- (void)_setHidesBorderView:(BOOL)a3;
- (void)_startIndeterminateAnimation;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageInsets:(UIEdgeInsets)a3;
- (void)setIndeterminate:(BOOL)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation SKUICircleProgressIndicator

- (SKUICircleProgressIndicator)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUICircleProgressIndicator initWithFrame:];
  }

  v18.receiver = self;
  v18.super_class = SKUICircleProgressIndicator;
  v8 = [(SKUICircleProgressIndicator *)&v18 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    v10 = [(SKUICircleProgressIndicator *)v8 tintColor];
    v11 = [objc_opt_class() _borderImage];
    v12 = [v11 _flatImageWithColor:v10];
    borderImage = v9->_borderImage;
    v9->_borderImage = v12;

    v14 = [objc_opt_class() _fillImage];

    v15 = [v14 _flatImageWithColor:v10];
    fillImage = v9->_fillImage;
    v9->_fillImage = v15;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(UIImageView *)self->_indeterminateView layer];
  [v3 removeAllAnimations];

  v4.receiver = self;
  v4.super_class = SKUICircleProgressIndicator;
  [(SKUICircleProgressIndicator *)&v4 dealloc];
}

- (void)setHighlighted:(BOOL)a3
{
  highlighted = self->_highlighted;
  if (highlighted != a3)
  {
    if (highlighted)
    {
      [(SKUICircleProgressIndicator *)self setBackgroundColor:self->_unhighlightedBackgroundColor];
      unhighlightedBackgroundColor = self->_unhighlightedBackgroundColor;
      self->_unhighlightedBackgroundColor = 0;
    }

    else
    {
      v7 = [(SKUICircleProgressIndicator *)self backgroundColor];
      v8 = self->_unhighlightedBackgroundColor;
      self->_unhighlightedBackgroundColor = v7;

      unhighlightedBackgroundColor = [MEMORY[0x277D75348] clearColor];
      [(SKUICircleProgressIndicator *)self setBackgroundColor:unhighlightedBackgroundColor];
    }

    self->_highlighted = a3;

    [(SKUICircleProgressIndicator *)self setNeedsDisplay];
  }
}

- (void)setImage:(id)a3
{
  if (self->_centerImage != a3)
  {
    v4 = a3;
    v5 = [(SKUICircleProgressIndicator *)self tintColor];
    v6 = [v4 _flatImageWithColor:v5];

    centerImage = self->_centerImage;
    self->_centerImage = v6;

    v8 = [MEMORY[0x277D75128] sharedApplication];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__SKUICircleProgressIndicator_setImage___block_invoke;
    v9[3] = &unk_2781F80F0;
    v9[4] = self;
    [v8 _performBlockAfterCATransactionCommits:v9];
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
    [(SKUICircleProgressIndicator *)self setNeedsDisplay];
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
      v6 = [(SKUICircleProgressIndicator *)self tintColor];
      v13 = [v5 _flatImageWithColor:v6];

      v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v13];
      v8 = self->_indeterminateView;
      self->_indeterminateView = v7;

      v9 = self->_indeterminateView;
      v10 = [(SKUICircleProgressIndicator *)self backgroundColor];
      [(UIImageView *)v9 setBackgroundColor:v10];

      [(SKUICircleProgressIndicator *)self addSubview:self->_indeterminateView];
      [(SKUICircleProgressIndicator *)self setNeedsDisplay];
      [(SKUICircleProgressIndicator *)self _startIndeterminateAnimation];
    }
  }

  else if (indeterminateView)
  {
    v11 = [(UIImageView *)indeterminateView layer];
    [v11 removeAllAnimations];

    [(UIImageView *)self->_indeterminateView removeFromSuperview];
    v12 = self->_indeterminateView;
    self->_indeterminateView = 0;

    [(SKUICircleProgressIndicator *)self setNeedsDisplay];
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

    v8 = [MEMORY[0x277D759A0] mainScreen];
    v9 = [v8 displayLinkWithTarget:self selector:sel__animateValueOnDisplayLink_];
    displayLink = self->_displayLink;
    self->_displayLink = v9;

    v11 = self->_displayLink;
    v12 = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v11 addToRunLoop:v12 forMode:*MEMORY[0x277CBE738]];
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

  [(SKUICircleProgressIndicator *)self setNeedsDisplay];
}

- (void)didMoveToWindow
{
  v3 = [(SKUICircleProgressIndicator *)self window];
  if (v3)
  {
    indeterminateView = self->_indeterminateView;

    if (indeterminateView)
    {
      v5 = [MEMORY[0x277D75128] sharedApplication];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __46__SKUICircleProgressIndicator_didMoveToWindow__block_invoke;
      v7[3] = &unk_2781F80F0;
      v7[4] = self;
      [v5 _performBlockAfterCATransactionCommits:v7];
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

- (void)drawRect:(CGRect)a3
{
  if (!self->_indeterminateView)
  {
    v23 = [MEMORY[0x277D75208] bezierPath];
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

- (void)setBackgroundColor:(id)a3
{
  indeterminateView = self->_indeterminateView;
  v5 = a3;
  [(UIImageView *)indeterminateView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUICircleProgressIndicator;
  [(SKUICircleProgressIndicator *)&v6 setBackgroundColor:v5];
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
  v15.receiver = self;
  v15.super_class = SKUICircleProgressIndicator;
  [(SKUICircleProgressIndicator *)&v15 tintColorDidChange];
  v3 = [(SKUICircleProgressIndicator *)self tintColor];
  v4 = [(UIImage *)self->_centerImage _flatImageWithColor:v3];
  centerImage = self->_centerImage;
  self->_centerImage = v4;

  if (self->_borderImage)
  {
    v6 = [objc_opt_class() _borderImage];
    v7 = [v6 _flatImageWithColor:v3];
    borderImage = self->_borderImage;
    self->_borderImage = v7;
  }

  v9 = [objc_opt_class() _fillImage];
  v10 = [v9 _flatImageWithColor:v3];
  fillImage = self->_fillImage;
  self->_fillImage = v10;

  if (self->_indeterminateView)
  {
    v12 = [objc_opt_class() _indeterminateImage];
    v13 = [(SKUICircleProgressIndicator *)self tintColor];
    v14 = [v12 _flatImageWithColor:v13];

    [(UIImageView *)self->_indeterminateView setImage:v14];
    v9 = v14;
  }

  [(SKUICircleProgressIndicator *)self setNeedsDisplay];
}

- (void)_setHidesBorderView:(BOOL)a3
{
  if (a3)
  {
    borderImage = self->_borderImage;
    self->_borderImage = 0;
  }

  else
  {
    borderImage = [objc_opt_class() _borderImage];
    v5 = [(SKUICircleProgressIndicator *)self tintColor];
    v6 = [borderImage _flatImageWithColor:v5];
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