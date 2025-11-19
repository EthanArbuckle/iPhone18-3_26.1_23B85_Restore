@interface SKUIOnboardingCircleView
- (SKUIOnboardingCircleView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)edgeInsets;
- (UILabel)titleLabel;
- (id)description;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBackgroundImage:(id)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3;
- (void)setFillColor:(id)a3;
- (void)setTitlePosition:(int64_t)a3;
@end

@implementation SKUIOnboardingCircleView

- (SKUIOnboardingCircleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIOnboardingCircleView initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUIOnboardingCircleView;
  v8 = [(SKUIOnboardingCircleView *)&v14 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D755E8]);
    backgroundImageView = v8->_backgroundImageView;
    v8->_backgroundImageView = v9;

    [(UIImageView *)v8->_backgroundImageView setAlpha:0.0];
    v11 = v8->_backgroundImageView;
    v12 = [MEMORY[0x277D75348] clearColor];
    [(UIImageView *)v11 setBackgroundColor:v12];

    [(SKUIOnboardingCircleView *)v8 addSubview:v8->_backgroundImageView];
  }

  return v8;
}

- (void)setBackgroundImage:(id)a3
{
  v6 = a3;
  v4 = [(UIImageView *)self->_backgroundImageView image];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(UIImageView *)self->_backgroundImageView setImage:v6];
    [(SKUIOnboardingCircleView *)self setNeedsLayout];
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_edgeInsets.top), vceqq_f64(v4, *&self->_edgeInsets.bottom)))) & 1) == 0)
  {
    self->_edgeInsets = a3;
    [(SKUIOnboardingCircleView *)self setNeedsDisplay];

    [(SKUIOnboardingCircleView *)self setNeedsLayout];
  }
}

- (void)setFillColor:(id)a3
{
  if (self->_fillColor != a3)
  {
    v4 = [a3 copy];
    fillColor = self->_fillColor;
    self->_fillColor = v4;

    [(SKUIOnboardingCircleView *)self setNeedsDisplay];
  }
}

- (void)setTitlePosition:(int64_t)a3
{
  if (self->_titlePosition != a3)
  {
    self->_titlePosition = a3;
    [(SKUIOnboardingCircleView *)self setNeedsLayout];
  }
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_titleLabel;
    self->_titleLabel = v4;

    v6 = self->_titleLabel;
    v7 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v6 setBackgroundColor:v7];

    v8 = self->_titleLabel;
    v9 = [MEMORY[0x277D74300] boldSystemFontOfSize:10.0];
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)self->_titleLabel setNumberOfLines:3];
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    v10 = self->_titleLabel;
    v11 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v10 setTextColor:v11];

    [(SKUIOnboardingCircleView *)self addSubview:self->_titleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SKUIOnboardingCircleView;
  v4 = [(SKUIOnboardingCircleView *)&v8 description];
  v5 = [(UILabel *)self->_titleLabel text];
  v6 = [v3 stringWithFormat:@"%@: [%@]", v4, v5];

  return v6;
}

- (void)drawRect:(CGRect)a3
{
  v4 = MEMORY[0x277D75208];
  [(SKUIOnboardingCircleView *)self bounds:a3.origin.x];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SKUIOnboardingCircleView *)self edgeInsets];
  v18 = [v4 bezierPathWithOvalInRect:{v6 + v16, v8 + v13, v10 - (v16 + v14), v12 - (v13 + v15)}];
  v17 = [(SKUIOnboardingCircleView *)self fillColor];
  [v17 set];

  [v18 fill];
}

- (void)layoutSubviews
{
  [(SKUIOnboardingCircleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SKUIOnboardingCircleView *)self edgeInsets];
  v14 = v13;
  v15 = v11;
  v17 = v16;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    minimumDiameter = self->_minimumDiameter;
    if (minimumDiameter < 0.00000011920929)
    {
      minimumDiameter = v8;
    }

    v41 = v4;
    v20 = minimumDiameter - v11 - v12 + -6.0;
    v39 = v12;
    [(UILabel *)titleLabel sizeThatFits:v20, 1.79769313e308, *(MEMORY[0x277CBF3A0] + 8)];
    v40 = v6;
    v23 = v22;
    if (v21 < v20)
    {
      v20 = v21;
    }

    v24 = (v8 - v20) * 0.5;
    v25 = floorf(v24);
    titlePosition = self->_titlePosition;
    v27 = [(UIImageView *)self->_backgroundImageView image];

    if (v27)
    {
      v28 = titlePosition;
    }

    else
    {
      v28 = 0;
    }

    v29 = (v10 - v23) * 0.5;
    v30 = floorf(v29);
    v31 = v10 - v17 + -15.0 - v23;
    v32 = floorf(v31);
    if (v28 != 1)
    {
      v32 = v38;
    }

    if (!v28)
    {
      v32 = v30;
    }

    v33 = self->_titleLabel;
    v34 = v25;
    v35 = v20;
    v36 = v23;
    v6 = v40;
    v4 = v41;
    v43 = CGRectIntegral(*(&v32 - 1));
    [(UILabel *)v33 setFrame:v43.origin.x, v43.origin.y, v43.size.width, v43.size.height];
    v12 = v39;
  }

  backgroundImageView = self->_backgroundImageView;

  [(UIImageView *)backgroundImageView setFrame:v4 + v15, v6 + v14, v8 - (v15 + v12), v10 - (v14 + v17)];
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
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
  v1 = "[SKUIOnboardingCircleView initWithFrame:]";
}

@end