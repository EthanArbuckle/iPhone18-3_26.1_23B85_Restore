@interface SKUIOnboardingProgressView
+ (CGSize)preferredImageSizeForViewSize:(CGSize)a3;
- (CGSize)preferredImageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIOnboardingProgressView)initWithFrame:(CGRect)a3;
- (UIColor)fillColor;
- (id)_borderColor;
- (void)layoutSubviews;
- (void)setFillColor:(id)a3;
- (void)setImage:(id)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
- (void)setTitle:(id)a3;
- (void)tintColorDidChange;
@end

@implementation SKUIOnboardingProgressView

- (SKUIOnboardingProgressView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIOnboardingProgressView initWithFrame:];
  }

  v33.receiver = self;
  v33.super_class = SKUIOnboardingProgressView;
  v8 = [(SKUIOnboardingProgressView *)&v33 initWithFrame:x, y, width, height];
  v9 = v8;
  if (v8)
  {
    [(SKUIOnboardingProgressView *)v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [[SKUIShapeView alloc] initWithFrame:v10, v12, v14, v16];
    borderView = v9->_borderView;
    v9->_borderView = v18;

    [(SKUIOnboardingProgressView *)v9 addSubview:v9->_borderView];
    v20 = [(SKUIShapeView *)v9->_borderView layer];
    v21 = [MEMORY[0x277D75348] clearColor];
    [v20 setFillColor:{objc_msgSend(v21, "CGColor")}];

    [v20 setLineWidth:3.0];
    v22 = [(SKUIOnboardingProgressView *)v9 _borderColor];
    [v20 setStrokeColor:{objc_msgSend(v22, "CGColor")}];

    v23 = [[SKUIShapeView alloc] initWithFrame:v11, v13, v15, v17];
    progressView = v9->_progressView;
    v9->_progressView = v23;

    v25 = v9->_progressView;
    v26 = [MEMORY[0x277D75348] clearColor];
    [(SKUIShapeView *)v25 setBackgroundColor:v26];

    v27 = v9->_progressView;
    CGAffineTransformMakeRotation(&v32, -1.57079633);
    [(SKUIShapeView *)v27 setTransform:&v32];
    [(SKUIOnboardingProgressView *)v9 addSubview:v9->_progressView];
    v28 = [(SKUIShapeView *)v9->_progressView layer];
    v29 = [MEMORY[0x277D75348] clearColor];
    [v28 setFillColor:{objc_msgSend(v29, "CGColor")}];

    [v28 setLineWidth:6.0];
    v30 = [(SKUIOnboardingProgressView *)v9 tintColor];
    [v28 setStrokeColor:{objc_msgSend(v30, "CGColor")}];

    [v28 setStrokeEnd:0.0];
    [v28 setStrokeStart:0.0];
  }

  return v9;
}

+ (CGSize)preferredImageSizeForViewSize:(CGSize)a3
{
  width = a3.width;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[SKUIOnboardingProgressView preferredImageSizeForViewSize:];
  }

  v4 = width + -12.0 + -8.0;
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (UIColor)fillColor
{
  v2 = [(SKUIShapeView *)self->_borderView layer];
  v3 = [v2 fillColor];

  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithCGColor:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)preferredImageSize
{
  v3 = objc_opt_class();
  [(SKUIOnboardingProgressView *)self frame];

  [v3 preferredImageSizeForViewSize:{v4, v5}];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setFillColor:(id)a3
{
  borderView = self->_borderView;
  v4 = a3;
  v6 = [(SKUIShapeView *)borderView layer];
  v5 = [v4 CGColor];

  [v6 setFillColor:v5];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  imageView = self->_imageView;
  v11 = v4;
  if (v4)
  {
    if (!imageView)
    {
      v6 = objc_alloc_init(MEMORY[0x277D755E8]);
      v7 = self->_imageView;
      self->_imageView = v6;

      v8 = self->_imageView;
      v9 = [MEMORY[0x277D75348] clearColor];
      [(UIImageView *)v8 setBackgroundColor:v9];

      [(SKUIOnboardingProgressView *)self addSubview:self->_imageView];
      v4 = v11;
      imageView = self->_imageView;
    }

    [(UIImageView *)imageView setImage:v4];
    [(SKUIOnboardingProgressView *)self setNeedsLayout];
  }

  else
  {
    [(UIImageView *)imageView removeFromSuperview];
    v10 = self->_imageView;
    self->_imageView = 0;
  }
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  progress = self->_progress;
  if (progress != a3)
  {
    if (a3 > 1.0)
    {
      a3 = 1.0;
    }

    v7 = fmax(a3, 0.0);
    self->_progress = v7;
    v11 = [(SKUIShapeView *)self->_progressView layer];
    if (a4)
    {
      v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
      [v8 setDuration:{vabdd_f64(progress, v7) * 0.6}];
      [v8 setFillMode:*MEMORY[0x277CDA238]];
      [v8 setRemovedOnCompletion:0];
      v9 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
      [v8 setTimingFunction:v9];

      v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progress];
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

- (void)setTitle:(id)a3
{
  v15 = a3;
  v4 = [v15 length];
  titleLabel = self->_titleLabel;
  if (v4)
  {
    if (!titleLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x277D756B8]);
      v7 = self->_titleLabel;
      self->_titleLabel = v6;

      v8 = self->_titleLabel;
      v9 = [MEMORY[0x277D75348] clearColor];
      [(UILabel *)v8 setBackgroundColor:v9];

      v10 = self->_titleLabel;
      v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
      [(UILabel *)v10 setFont:v11];

      [(UILabel *)self->_titleLabel setNumberOfLines:2];
      [(UILabel *)self->_titleLabel setTextAlignment:1];
      v12 = self->_titleLabel;
      v13 = [(SKUIOnboardingProgressView *)self tintColor];
      [(UILabel *)v12 setTextColor:v13];

      [(SKUIOnboardingProgressView *)self addSubview:self->_titleLabel];
      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setText:v15];
    [(SKUIOnboardingProgressView *)self setNeedsLayout];
  }

  else
  {
    [(UILabel *)titleLabel removeFromSuperview];
    v14 = self->_titleLabel;
    self->_titleLabel = 0;
  }
}

- (void)layoutSubviews
{
  [(SKUIOnboardingProgressView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIShapeView *)self->_borderView setFrame:?];
  [(SKUIShapeView *)self->_progressView setFrame:v4, v6, v8, v10];
  v29 = [(SKUIShapeView *)self->_borderView layer];
  [v29 lineWidth];
  v12 = v11 * 0.5;
  v13 = MEMORY[0x277D75208];
  [(SKUIShapeView *)self->_borderView bounds];
  v32 = CGRectInset(v31, v12, v12);
  v14 = [v13 bezierPathWithOvalInRect:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
  [v29 setPath:{objc_msgSend(v14, "CGPath")}];

  v15 = [(SKUIShapeView *)self->_progressView layer];
  [v15 lineWidth];
  v17 = v16 * 0.5;
  v18 = MEMORY[0x277D75208];
  [(SKUIShapeView *)self->_progressView bounds];
  v34 = CGRectInset(v33, v17, v17);
  v19 = [v18 bezierPathWithOvalInRect:{v34.origin.x, v34.origin.y, v34.size.width, v34.size.height}];
  [v15 setPath:{objc_msgSend(v19, "CGPath")}];

  imageView = self->_imageView;
  if (imageView)
  {
    [(UIImageView *)self->_imageView sizeThatFits:v8, v10];
    v22 = v21;
    v24 = v23;
    *&v21 = (v8 - v21) * 0.5;
    *&v23 = (v10 - v23) * 0.5;
    [(UIImageView *)self->_imageView setFrame:floorf(*&v21), floorf(*&v23), v22, v24];
    p_titleLabel = &self->_titleLabel;
  }

  else
  {
    p_titleLabel = &self->_titleLabel;
    if (!*p_titleLabel)
    {
      goto LABEL_6;
    }

    v26 = *MEMORY[0x277CBF3A0];
    [*p_titleLabel sizeThatFits:{v8, v10}];
    v28 = (v10 - v27) * 0.5;
    [*p_titleLabel setFrame:{v26, floorf(v28), v8, v27}];
  }

  [*p_titleLabel setHidden:imageView != 0];
LABEL_6:
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(SKUIOnboardingProgressView *)self traitCollection:a3.width];
  v4 = [v3 horizontalSizeClass];

  v5 = 78.0;
  if (v4 == 2)
  {
    v5 = 120.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)tintColorDidChange
{
  v3 = [(SKUIOnboardingProgressView *)self tintColor];
  v4 = [(SKUIShapeView *)self->_borderView layer];
  v5 = [(SKUIOnboardingProgressView *)self _borderColor];
  [v4 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

  v6 = [(SKUIShapeView *)self->_progressView layer];
  [v6 setStrokeColor:{objc_msgSend(v3, "CGColor")}];

  [(UILabel *)self->_titleLabel setTextColor:v3];
  v7.receiver = self;
  v7.super_class = SKUIOnboardingProgressView;
  [(SKUIOnboardingProgressView *)&v7 tintColorDidChange];
}

- (id)_borderColor
{
  v2 = [(SKUIOnboardingProgressView *)self tintColor];
  v3 = [v2 colorWithAlphaComponent:0.5];

  return v3;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIOnboardingProgressView initWithFrame:]";
}

+ (void)preferredImageSizeForViewSize:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[SKUIOnboardingProgressView preferredImageSizeForViewSize:]";
}

@end