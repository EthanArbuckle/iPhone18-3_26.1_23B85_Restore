@interface SKUIPreviewProgressIndicator
- (SKUIPreviewProgressIndicator)initWithFrame:(CGRect)a3;
- (id)_newShapeViewWithBounds:(CGRect)a3 lineWidth:(double)a4;
- (void)_beginIndeterminateAnimation;
- (void)beginIndeterminateAnimation;
- (void)endIndeterminateAnimation;
- (void)reloadWithPlayerStatus:(id)a3 animated:(BOOL)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setProgress:(float)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation SKUIPreviewProgressIndicator

- (SKUIPreviewProgressIndicator)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIPreviewProgressIndicator initWithFrame:];
  }

  v33.receiver = self;
  v33.super_class = SKUIPreviewProgressIndicator;
  v8 = [(SKUIPreviewProgressIndicator *)&v33 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUIPreviewProgressIndicator *)v8 bounds];
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
    v23 = [MEMORY[0x277D75348] clearColor];
    [(SKUIShapeView *)v22 setBackgroundColor:v23];

    [(SKUIShapeView *)v9->_foregroundView setUserInteractionEnabled:0];
    v24 = [(SKUIShapeView *)v9->_foregroundView layer];
    v25 = [MEMORY[0x277D75348] clearColor];
    [v24 setFillColor:{objc_msgSend(v25, "CGColor")}];

    [v24 setStrokeEnd:0.0];
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
  v4 = [(SKUIShapeView *)self->_backgroundView layer];
  v5 = v4;
  if (isIndeterminate)
  {
    v6 = [v4 animationKeys];
    v7 = [v6 count];

    if (v7)
    {
      return;
    }
  }

  else
  {
    [v4 setStrokeStart:0.119999997];
    self->_isIndeterminate = 1;
  }

  v8 = [(SKUIPreviewProgressIndicator *)self window];

  if (v8)
  {

    [(SKUIPreviewProgressIndicator *)self _beginIndeterminateAnimation];
  }
}

- (void)endIndeterminateAnimation
{
  if (self->_isIndeterminate)
  {
    v3 = [(SKUIShapeView *)self->_backgroundView layer];
    [v3 setStrokeStart:0.0];
    [v3 removeAllAnimations];
    backgroundView = self->_backgroundView;
    CGAffineTransformMakeRotation(&v5, -1.57079633);
    [(SKUIShapeView *)backgroundView setTransform:&v5];
    self->_isIndeterminate = 0;
  }
}

- (void)reloadWithPlayerStatus:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if ([v10 playerState] == 1)
  {
    [(SKUIPreviewProgressIndicator *)self beginIndeterminateAnimation];
  }

  else
  {
    [v10 duration];
    v7 = v6;
    if (v6 >= 2.22044605e-16)
    {
      [v10 currentTime];
      v8 = v9 / v7;
      *&v8 = v8;
    }

    else
    {
      v8 = 0.0;
    }

    [(SKUIPreviewProgressIndicator *)self setProgress:v4 animated:v8];
  }
}

- (void)setProgress:(float)a3 animated:(BOOL)a4
{
  if (self->_progress != a3)
  {
    if (a3 > 0.00000011921)
    {
      [(SKUIPreviewProgressIndicator *)self endIndeterminateAnimation];
    }

    v7 = fmax(fmin(a3, 1.0), 0.0);
    self->_progress = v7;
    v11 = [(SKUIShapeView *)self->_foregroundView layer];
    if (a4)
    {
      v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
      [v8 setDuration:0.2];
      [v8 setFillMode:*MEMORY[0x277CDA238]];
      [v8 setRemovedOnCompletion:0];
      *&v9 = self->_progress;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      [v8 setToValue:v10];

      [v11 addAnimation:v8 forKey:0];
    }

    else
    {
      [v11 removeAllAnimations];
      [v11 setStrokeEnd:self->_progress];
    }
  }
}

- (void)setBackgroundColor:(id)a3
{
  backgroundView = self->_backgroundView;
  v5 = a3;
  [(SKUIShapeView *)backgroundView setBackgroundColor:v5];
  v6 = [(SKUIShapeView *)self->_backgroundView layer];
  [v6 setFillColor:{objc_msgSend(v5, "CGColor")}];

  v7.receiver = self;
  v7.super_class = SKUIPreviewProgressIndicator;
  [(SKUIPreviewProgressIndicator *)&v7 setBackgroundColor:v5];
}

- (void)tintColorDidChange
{
  v3 = [(SKUIPreviewProgressIndicator *)self tintColor];
  v4 = [v3 CGColor];

  v5 = [(SKUIShapeView *)self->_backgroundView layer];
  [v5 setStrokeColor:v4];

  v6 = [(SKUIShapeView *)self->_foregroundView layer];
  [v6 setStrokeColor:v4];

  v7.receiver = self;
  v7.super_class = SKUIPreviewProgressIndicator;
  [(SKUIPreviewProgressIndicator *)&v7 tintColorDidChange];
}

- (void)_beginIndeterminateAnimation
{
  v3 = [(SKUIShapeView *)self->_backgroundView layer];
  [v3 removeAllAnimations];

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

- (id)_newShapeViewWithBounds:(CGRect)a3 lineWidth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [SKUIShapeView alloc];
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v18 = CGRectInset(v17, a4 * 0.5, a4 * 0.5);
  v11 = [(SKUIShapeView *)v10 initWithFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
  CGAffineTransformMakeRotation(&v16, -1.57079633);
  [(SKUIShapeView *)v11 setTransform:&v16];
  v12 = [(SKUIShapeView *)v11 layer];
  [v12 setLineWidth:a4];
  v13 = [(SKUIPreviewProgressIndicator *)self tintColor];
  [v12 setStrokeColor:{objc_msgSend(v13, "CGColor")}];

  [(SKUIShapeView *)v11 bounds];
  v14 = CGPathCreateWithEllipseInRect(v19, 0);
  [v12 setPath:v14];
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