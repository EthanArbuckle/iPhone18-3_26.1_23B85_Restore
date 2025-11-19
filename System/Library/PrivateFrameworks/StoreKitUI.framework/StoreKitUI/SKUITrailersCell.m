@interface SKUITrailersCell
- (CGRect)imageFrame;
- (SKUITrailersCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
- (void)setImage:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SKUITrailersCell

- (SKUITrailersCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITrailersCell initWithFrame:];
  }

  v12.receiver = self;
  v12.super_class = SKUITrailersCell;
  v8 = [(SKUITrailersCell *)&v12 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v8->_imageView;
    v8->_imageView = v9;

    [(SKUITrailersCell *)v8 addSubview:v8->_imageView];
  }

  return v8;
}

- (void)setTitle:(id)a3
{
  v15 = a3;
  v4 = [(UILabel *)self->_titleLabel text];

  v6 = v15;
  if (v4 != v15)
  {
    titleLabel = self->_titleLabel;
    if (v15)
    {
      if (!titleLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_titleLabel;
        self->_titleLabel = v8;

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:1];
        v12 = self->_titleLabel;
        v13 = [(SKUITrailersCell *)self backgroundColor];
        [(UILabel *)v12 setBackgroundColor:v13];

        [(SKUITrailersCell *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:v15];
      v5 = [(SKUITrailersCell *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    v6 = v15;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setSubtitle:(id)a3
{
  v15 = a3;
  v4 = [(UILabel *)self->_subtitleLabel text];

  v6 = v15;
  if (v4 != v15)
  {
    subtitleLabel = self->_subtitleLabel;
    if (v15)
    {
      if (!subtitleLabel)
      {
        v8 = objc_alloc_init(MEMORY[0x277D756B8]);
        v9 = self->_subtitleLabel;
        self->_subtitleLabel = v8;

        v10 = self->_subtitleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_subtitleLabel setNumberOfLines:1];
        v12 = self->_subtitleLabel;
        v13 = [(SKUITrailersCell *)self backgroundColor];
        [(UILabel *)v12 setBackgroundColor:v13];

        [(SKUITrailersCell *)self addSubview:self->_subtitleLabel];
        subtitleLabel = self->_subtitleLabel;
      }

      [(UILabel *)subtitleLabel setText:v15];
      v5 = [(SKUITrailersCell *)self setNeedsLayout];
    }

    else
    {
      [(UILabel *)subtitleLabel removeFromSuperview];
      v14 = self->_subtitleLabel;
      self->_subtitleLabel = 0;
    }

    v6 = v15;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setImage:(id)a3
{
  v6 = a3;
  v4 = [(UIImageView *)self->_imageView image];

  v5 = v6;
  if (v4 != v6)
  {
    [(UIImageView *)self->_imageView setImage:v6];
    [(UIImageView *)self->_imageView sizeToFit];
    [(SKUITrailersCell *)self setNeedsLayout];
    v5 = v6;
  }
}

- (CGRect)imageFrame
{
  [(UIImageView *)self->_imageView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = SKUITrailersCell;
  [(SKUITrailersCell *)&v28 layoutSubviews];
  [(SKUITrailersCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v9 = 7.5;
  v10 = 10.0;
  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v9 = 10.0;
  }

  v11 = floor(v9);
  [(UIImageView *)self->_imageView frame];
  v13 = v12;
  v15 = v14;
  [(SKUITrailersCell *)self bounds];
  v17 = floor((v16 - v13) * 0.5);
  v18 = [MEMORY[0x277D75418] currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if ((v19 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = 15.0;
  }

  [(UIImageView *)self->_imageView setFrame:v17, v10, v13, v15];
  v29.origin.x = v17;
  v29.origin.y = v10;
  v29.size.width = v13;
  v29.size.height = v15;
  MaxY = CGRectGetMaxY(v29);
  [(UILabel *)self->_titleLabel sizeThatFits:v4, v6];
  v22 = v21;
  v24 = v23;
  [(UILabel *)self->_titleLabel setFrame:v11, MaxY, v21, v23];
  v30.origin.x = v11;
  v30.origin.y = MaxY;
  v30.size.width = v22;
  v30.size.height = v24;
  v25 = CGRectGetMaxY(v30);
  [(UILabel *)self->_subtitleLabel sizeThatFits:v4, v6];
  [(UILabel *)self->_subtitleLabel setFrame:v11, v25, v26, v27];
}

- (void)setBackgroundColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = SKUITrailersCell;
  v4 = a3;
  [(SKUITrailersCell *)&v5 setBackgroundColor:v4];
  [(UIImageView *)self->_imageView setBackgroundColor:v4, v5.receiver, v5.super_class];
  [(UILabel *)self->_titleLabel setBackgroundColor:v4];
  [(UILabel *)self->_subtitleLabel setBackgroundColor:v4];
}

- (void)prepareForReuse
{
  [(UIImageView *)self->_imageView setImage:0];
  [(UILabel *)self->_titleLabel setText:0];
  subtitleLabel = self->_subtitleLabel;

  [(UILabel *)subtitleLabel setText:0];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITrailersCell initWithFrame:]";
}

@end