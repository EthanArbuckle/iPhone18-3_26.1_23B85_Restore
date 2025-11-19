@interface SKUIGiftResultView
- (SKUIGiftResultView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setItemView:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SKUIGiftResultView

- (SKUIGiftResultView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftResultView initWithFrame:];
  }

  v14.receiver = self;
  v14.super_class = SKUIGiftResultView;
  v8 = [(SKUIGiftResultView *)&v14 initWithFrame:x, y, width, height];
  if (v8)
  {
    v9 = [MEMORY[0x277D75220] buttonWithType:1];
    giftAgainButton = v8->_giftAgainButton;
    v8->_giftAgainButton = v9;

    [(UIButton *)v8->_giftAgainButton setAutoresizingMask:5];
    v11 = [(UIButton *)v8->_giftAgainButton titleLabel];
    v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [v11 setFont:v12];

    [(SKUIGiftResultView *)v8 addSubview:v8->_giftAgainButton];
  }

  return v8;
}

- (void)setImage:(id)a3
{
  v12 = a3;
  v4 = [(UIImageView *)self->_imageView image];

  if (v4 != v12)
  {
    imageView = self->_imageView;
    if (v12)
    {
      if (!imageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_imageView;
        self->_imageView = v7;

        v9 = self->_imageView;
        v10 = [(SKUIGiftResultView *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:v10];

        [(SKUIGiftResultView *)self addSubview:self->_imageView];
        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:?];
      [(UIImageView *)self->_imageView sizeToFit];
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v11 = self->_imageView;
      self->_imageView = 0;
    }

    v5 = [(SKUIGiftResultView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)setItemView:(id)a3
{
  v5 = a3;
  itemView = self->_itemView;
  if (itemView != v5)
  {
    v9 = v5;
    if (itemView)
    {
      [(SKUIGiftItemView *)itemView removeFromSuperview];
    }

    objc_storeStrong(&self->_itemView, a3);
    v7 = self->_itemView;
    v8 = [(SKUIGiftResultView *)self backgroundColor];
    [(SKUIGiftItemView *)v7 setBackgroundColor:v8];

    if (self->_itemView)
    {
      [(SKUIGiftResultView *)self addSubview:?];
    }

    itemView = [(SKUIGiftResultView *)self setNeedsLayout];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](itemView, v5);
}

- (void)setTitle:(id)a3
{
  v15 = a3;
  v4 = [(SKUIGiftResultView *)self title];
  if (v4 != v15 && ([v15 isEqualToString:v4] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v15)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        v9 = [(SKUIGiftResultView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_titleLabel setNumberOfLines:0];
        [(UILabel *)self->_titleLabel setTextAlignment:1];
        v12 = self->_titleLabel;
        v13 = [MEMORY[0x277D75348] _labelColor];
        [(UILabel *)v12 setTextColor:v13];

        [(SKUIGiftResultView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIGiftResultView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 userInterfaceLayoutDirection];

  [(SKUIGiftResultView *)self bounds];
  v6 = v5;
  v57 = v7;
  v9 = v8;
  v11 = v10;
  v12 = v8 + -30.0;
  [(UIButton *)self->_giftAgainButton frame];
  v14 = v13;
  v16 = v15;
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel sizeThatFits:v12, 1.79769313e308];
  v18 = v17;
  imageView = self->_imageView;
  if (imageView || (imageView = self->_itemView) != 0)
  {
    [imageView bounds];
    v21 = v20 + 15.0;
  }

  else
  {
    v21 = 0.0;
  }

  v56 = v11;
  v22 = (v11 - (v16 + v18 + v21)) * 0.5;
  v23 = floorf(v22);
  v24 = self->_imageView;
  if (v24)
  {
    v54 = v14;
    v55 = v6;
    v53 = v16;
    [(UIImageView *)v24 frame];
    v27 = v25;
    v28 = v26;
    v29 = (v9 - v25) * 0.5;
    v30 = floorf(v29);
    v31 = v30;
    v32 = self->_imageView;
    if (v4)
    {
      [SKUICGRectHelpers rect:v30 withFlippedOriginXRelativeTo:v23, v25, v26, v55, v57, v9, v11];
    }

    else
    {
      v33 = v30;
      v34 = v23;
    }

    [(UIImageView *)v32 setFrame:v33, v34];
    v41 = 15.0;
  }

  else
  {
    itemView = self->_itemView;
    if (!itemView)
    {
      goto LABEL_16;
    }

    v53 = v16;
    v54 = v14;
    [(SKUIGiftItemView *)itemView frame];
    v28 = v36;
    v37 = self->_itemView;
    v55 = v6;
    if (v4)
    {
      v31 = 15.0;
      [SKUICGRectHelpers rect:15.0 withFlippedOriginXRelativeTo:v23, v12, v36, v6, v57, v9, v11];
    }

    else
    {
      v38 = 15.0;
      v39 = v23;
      v40 = v12;
      v31 = 15.0;
    }

    [(SKUIGiftItemView *)v37 setFrame:v38, v39, v40];
    v41 = 0.0;
    v27 = v12;
  }

  v59.origin.x = v31;
  v59.origin.y = v23;
  v59.size.width = v27;
  v59.size.height = v28;
  v23 = CGRectGetMaxY(v59) + v41;
  v16 = v53;
  v14 = v54;
  v6 = v55;
LABEL_16:
  [(UILabel *)self->_titleLabel setFrame:15.0, v23, v12, v18];
  titleLabel = self->_titleLabel;
  v43 = 15.0;
  v44 = v23;
  v45 = v12;
  v46 = v18;
  if (v4)
  {
    [SKUICGRectHelpers rect:15.0 withFlippedOriginXRelativeTo:v23, v12, v18, v6, v57, v9, v56];
  }

  [(UILabel *)titleLabel setFrame:v43, v44, v45, v46];
  v60.origin.x = 15.0;
  v60.origin.y = v23;
  v60.size.width = v12;
  v60.size.height = v18;
  v47 = CGRectGetMaxY(v60) + 16.0;
  v48 = (v9 - v14) * 0.5;
  v49 = floorf(v48);
  giftAgainButton = self->_giftAgainButton;
  if (v4)
  {
    [SKUICGRectHelpers rect:v49 withFlippedOriginXRelativeTo:v47, v14, v16, v6, v57, v9, v56];
    v14 = v51;
    v16 = v52;
  }

  [(UIButton *)giftAgainButton setFrame:v49, v47, v14, v16];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftResultView initWithFrame:]";
}

@end