@interface SKUIPreviewProgressIndicator
- (SKUIPreviewProgressIndicator)initWithFrame:(CGRect)frame;
- (id)_newShapeViewWithBounds:(CGRect)bounds lineWidth:(double)width;
- (void)_beginIndeterminateAnimation;
- (void)beginIndeterminateAnimation;
- (void)endIndeterminateAnimation;
- (void)reloadWithPlayerStatus:(id)status animated:(BOOL)animated;
- (void)setBackgroundColor:(id)color;
- (void)setProgress:(float)progress animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation SKUIPreviewProgressIndicator

- (SKUIPreviewProgressIndicator)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPreviewProgressIndicator initWithFrame:];
  }

  v33.receiver = self;
  v33.super_class = SKUIPreviewProgressIndicator;
  height = [(SKUIPreviewProgressIndicator *)&v33 initWithFrame:x, y, width, height];
  v9 = height;
  if (height)
  {
    [(SKUIPreviewProgressIndicator *)height bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [SKUIPreviewProgressIndicator _newShapeViewWithBounds:v9 lineWidth:"_newShapeViewWithBounds:lineWidth:"];
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v18;

    [(SKUIShapeView *)v9->_backgroundView setUserInteractionEnabled:0];
    [(SKUIPreviewProgressIndicator *)v9 addSubview:v9->_backgroundView];
    v20 = [(SKUIPreviewProgressIndicator *)v9 _newShapeViewWithBounds:v11 lineWidth:v13, v15, v17, 4.0];
    foregroundView = v9->_foregroundView;
    v9->_foregroundView = v20;

    v22 = v9->_foregroundView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SKUIShapeView *)v22 setBackgroundColor:clearColor];

    [(SKUIShapeView *)v9->_foregroundView setUserInteractionEnabled:0];
    layer = [(SKUIShapeView *)v9->_foregroundView layer];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [layer setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

    [layer setStrokeEnd:0.0];
    [(SKUIPreviewProgressIndicator *)v9 addSubview:v9->_foregroundView];
    v26 = MEMORY[0x277D755B8];
    v27 = SKUIBundle();
    v28 = [v26 imageNamed:@"DownloadProgressButtonConnecting" inBundle:v27];
    v29 = [v28 imageWithRenderingMode:2];

    v30 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v29];
    cancelImageView = v9->_cancelImageView;
    v9->_cancelImageView = v30;

    [(UIImageView *)v9->_cancelImageView setAutoresizingMask:18];
    [(UIImageView *)v9->_cancelImageView setContentMode:4];
    [(UIImageView *)v9->_cancelImageView setFrame:v11, v13, v15, v17];
    [(SKUIPreviewProgressIndicator *)v9 addSubview:v9->_cancelImageView];
  }

  return v9;
}

- (void)beginIndeterminateAnimation
{
  isIndeterminate = self->_isIndeterminate;
  layer = [(SKUIShapeView *)self->_backgroundView layer];
  v5 = layer;
  if (isIndeterminate)
  {
    animationKeys = [layer animationKeys];
    v7 = [animationKeys count];

    if (v7)
    {
      return;
    }
  }

  else
  {
    [layer setStrokeStart:0.119999997];
    self->_isIndeterminate = 1;
  }

  window = [(SKUIPreviewProgressIndicator *)self window];

  if (window)
  {

    [(SKUIPreviewProgressIndicator *)self _beginIndeterminateAnimation];
  }
}

- (void)endIndeterminateAnimation
{
  if (self->_isIndeterminate)
  {
    layer = [(SKUIShapeView *)self->_backgroundView layer];
    [layer setStrokeStart:0.0];
    [layer removeAllAnimations];
    backgroundView = self->_backgroundView;
    CGAffineTransformMakeRotation(&v5, -1.57079633);
    [(SKUIShapeView *)backgroundView setTransform:&v5];
    self->_isIndeterminate = 0;
  }
}

- (void)reloadWithPlayerStatus:(id)status animated:(BOOL)animated
{
  animatedCopy = animated;
  statusCopy = status;
  if ([statusCopy playerState] == 1)
  {
    [(SKUIPreviewProgressIndicator *)self beginIndeterminateAnimation];
  }

  else
  {
    [statusCopy duration];
    v7 = v6;
    if (v6 >= 2.22044605e-16)
    {
      [statusCopy currentTime];
      v8 = v9 / v7;
      *&v8 = v8;
    }

    else
    {
      v8 = 0.0;
    }

    [(SKUIPreviewProgressIndicator *)self setProgress:animatedCopy animated:v8];
  }
}

- (void)setProgress:(float)progress animated:(BOOL)animated
{
  if (self->_progress != progress)
  {
    if (progress > 0.00000011921)
    {
      [(SKUIPreviewProgressIndicator *)self endIndeterminateAnimation];
    }

    v7 = fmax(fmin(progress, 1.0), 0.0);
    self->_progress = v7;
    layer = [(SKUIShapeView *)self->_foregroundView layer];
    if (animated)
    {
      v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
      [v8 setDuration:0.2];
      [v8 setFillMode:*MEMORY[0x277CDA238]];
      [v8 setRemovedOnCompletion:0];
      *&v9 = self->_progress;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      [v8 setToValue:v10];

      [layer addAnimation:v8 forKey:0];
    }

    else
    {
      [layer removeAllAnimations];
      [layer setStrokeEnd:self->_progress];
    }
  }
}

- (void)setBackgroundColor:(id)color
{
  backgroundView = self->_backgroundView;
  colorCopy = color;
  [(SKUIShapeView *)backgroundView setBackgroundColor:colorCopy];
  layer = [(SKUIShapeView *)self->_backgroundView layer];
  [layer setFillColor:{objc_msgSend(colorCopy, "CGColor")}];

  v7.receiver = self;
  v7.super_class = SKUIPreviewProgressIndicator;
  [(SKUIPreviewProgressIndicator *)&v7 setBackgroundColor:colorCopy];
}

- (void)tintColorDidChange
{
  tintColor = [(SKUIPreviewProgressIndicator *)self tintColor];
  cGColor = [tintColor CGColor];

  layer = [(SKUIShapeView *)self->_backgroundView layer];
  [layer setStrokeColor:cGColor];

  layer2 = [(SKUIShapeView *)self->_foregroundView layer];
  [layer2 setStrokeColor:cGColor];

  v7.receiver = self;
  v7.super_class = SKUIPreviewProgressIndicator;
  [(SKUIPreviewProgressIndicator *)&v7 tintColorDidChange];
}

- (void)_beginIndeterminateAnimation
{
  layer = [(SKUIShapeView *)self->_backgroundView layer];
  [layer removeAllAnimations];

  backgroundView = self->_backgroundView;
  CGAffineTransformMakeRotation(&v6, -1.57079633);
  [(SKUIShapeView *)backgroundView setTransform:&v6];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SKUIPreviewProgressIndicator__beginIndeterminateAnimation__block_invoke;
  v5[3] = &unk_2781F80F0;
  v5[4] = self;
  [MEMORY[0x277D75D18] animateKeyframesWithDuration:197228 delay:v5 options:0 animations:1.0 completion:0.0];
}

uint64_t __60__SKUIPreviewProgressIndicator__beginIndeterminateAnimation__block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D85DD0];
  do
  {
    v5[0] = v3;
    v5[1] = 3221225472;
    v5[2] = __60__SKUIPreviewProgressIndicator__beginIndeterminateAnimation__block_invoke_2;
    v5[3] = &unk_2781FC960;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    result = [MEMORY[0x277D75D18] addKeyframeWithRelativeStartTime:v5 relativeDuration:vcvtd_n_f64_u64(v2++ animations:{2uLL), 0.25}];
  }

  while (v2 != 4);
  return result;
}

uint64_t __60__SKUIPreviewProgressIndicator__beginIndeterminateAnimation__block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 456);
  CGAffineTransformMakeRotation(&v3, *(a1 + 40) * 1.57079633);
  return [v1 setTransform:&v3];
}

- (id)_newShapeViewWithBounds:(CGRect)bounds lineWidth:(double)width
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = [SKUIShapeView alloc];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectInset(v17, width * 0.5, width * 0.5);
  v11 = [(SKUIShapeView *)v10 initWithFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
  CGAffineTransformMakeRotation(&v16, -1.57079633);
  [(SKUIShapeView *)v11 setTransform:&v16];
  layer = [(SKUIShapeView *)v11 layer];
  [layer setLineWidth:width];
  tintColor = [(SKUIPreviewProgressIndicator *)self tintColor];
  [layer setStrokeColor:{objc_msgSend(tintColor, "CGColor")}];

  [(SKUIShapeView *)v11 bounds];
  v14 = CGPathCreateWithEllipseInRect(v19, 0);
  [layer setPath:v14];
  CGPathRelease(v14);

  return v11;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPreviewProgressIndicator initWithFrame:]";
}

@end