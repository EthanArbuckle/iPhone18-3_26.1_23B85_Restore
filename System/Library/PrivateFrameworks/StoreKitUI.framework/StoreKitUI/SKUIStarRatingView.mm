@interface SKUIStarRatingView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SKUIStarRatingView)initWithFrame:(CGRect)a3;
- (UILabel)textLabel;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setRatingStarsImage:(id)a3;
@end

@implementation SKUIStarRatingView

- (SKUIStarRatingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStarRatingView initWithFrame:];
  }

  v9.receiver = self;
  v9.super_class = SKUIStarRatingView;
  result = [(SKUIStarRatingView *)&v9 initWithFrame:x, y, width, height];
  if (result)
  {
    result->_elementSpacing = 3.0;
  }

  return result;
}

- (void)setRatingStarsImage:(id)a3
{
  v13 = a3;
  v4 = [(UIImageView *)self->_ratingStarsImageView image];

  v6 = v13;
  if (v4 != v13)
  {
    ratingStarsImageView = self->_ratingStarsImageView;
    if (v13)
    {
      if (!ratingStarsImageView)
      {
        v8 = objc_alloc_init(MEMORY[0x277D755E8]);
        v9 = self->_ratingStarsImageView;
        self->_ratingStarsImageView = v8;

        v10 = self->_ratingStarsImageView;
        v11 = [(SKUIStarRatingView *)self backgroundColor];
        [(UIImageView *)v10 setBackgroundColor:v11];

        [(SKUIStarRatingView *)self addSubview:self->_ratingStarsImageView];
        ratingStarsImageView = self->_ratingStarsImageView;
      }

      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    v5 = [(UIImageView *)ratingStarsImageView setImage:v12];
    v6 = v13;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (UILabel)textLabel
{
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    v5 = self->_textLabel;
    self->_textLabel = v4;

    v6 = self->_textLabel;
    v7 = [(SKUIStarRatingView *)self backgroundColor];
    [(UILabel *)v6 setBackgroundColor:v7];

    [(SKUIStarRatingView *)self addSubview:self->_textLabel];
    textLabel = self->_textLabel;
  }

  return textLabel;
}

- (void)layoutSubviews
{
  [(SKUIStarRatingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v15 = [(UIImageView *)self->_ratingStarsImageView image];
  if (v15)
  {
    [(UIImageView *)self->_ratingStarsImageView frame];
    [v15 size];
    v8 = v7;
    v10 = v9;
    *&v7 = (v6 - v9) * 0.5;
    v11 = ceilf(*&v7);
    [(UIImageView *)self->_ratingStarsImageView setFrame:-1.0, v11, v8, v9];
    v17.origin.x = -1.0;
    v17.origin.y = v11;
    v17.size.width = v8;
    v17.size.height = v10;
    v12 = CGRectGetMaxX(v17) + self->_elementSpacing;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [(UILabel *)self->_textLabel text];
  v14 = [v13 length];

  if (v14)
  {
    [(UILabel *)self->_textLabel frame];
    [(UILabel *)self->_textLabel setFrame:v12, 0.0, v4 - v12, v6];
  }
}

- (void)setBackgroundColor:(id)a3
{
  ratingStarsImageView = self->_ratingStarsImageView;
  v5 = a3;
  [(UIImageView *)ratingStarsImageView setBackgroundColor:v5];
  [(UILabel *)self->_textLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUIStarRatingView;
  [(SKUIStarRatingView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(UIImageView *)self->_ratingStarsImageView image:a3.width];
  v6 = v5;
  if (v5)
  {
    [v5 size];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = [(UILabel *)self->_textLabel text];
  v12 = [v11 length];

  if (v12)
  {
    if (v6)
    {
      v8 = v8 + self->_elementSpacing;
      width = width - v8;
    }

    [(UILabel *)self->_textLabel sizeThatFits:width, 1.79769313e308];
    if (v10 < v14)
    {
      v10 = v14;
    }

    v8 = v8 + v13;
  }

  v15 = v8;
  v16 = v10;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStarRatingView initWithFrame:]";
}

@end