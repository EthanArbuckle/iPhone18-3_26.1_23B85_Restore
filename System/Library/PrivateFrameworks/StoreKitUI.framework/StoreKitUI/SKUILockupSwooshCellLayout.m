@interface SKUILockupSwooshCellLayout
- (CGSize)cellSizeForImageOfSize:(CGSize)a3;
- (CGSize)maxImageSize;
- (CGSize)videoSize;
- (SKUILockupSwooshCellLayout)initWithCollectionViewCell:(id)a3;
- (id)_newDefaultLabel;
- (void)_layoutFieldsHorizontal;
- (void)_layoutFieldsVertical;
- (void)_reloadHighlight;
- (void)_reloadPriceLabel;
- (void)_removeHighlightViews;
- (void)layoutSubviews;
- (void)setArtistName:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCategory:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItemCountString:(id)a3;
- (void)setItemOffer:(id)a3;
- (void)setItemState:(id)a3 animated:(BOOL)a4;
- (void)setPrice:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setVideoThumbnailImage:(id)a3;
- (void)setVisibleFields:(unint64_t)a3;
@end

@implementation SKUILockupSwooshCellLayout

- (SKUILockupSwooshCellLayout)initWithCollectionViewCell:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILockupSwooshCellLayout initWithCollectionViewCell:];
  }

  v9.receiver = self;
  v9.super_class = SKUILockupSwooshCellLayout;
  v5 = [(SKUICellLayout *)&v9 initWithCollectionViewCell:v4];
  if (v5)
  {
    SKUILockupStyleDefault(v7);
    v5->_visibleFields = v8;
  }

  return v5;
}

- (CGSize)cellSizeForImageOfSize:(CGSize)a3
{
  height = a3.height;
  visibleFields = self->_visibleFields;
  v6 = a3.height + 5.0;
  v7 = ceilf(v6);
  if ((visibleFields & 2) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  if ((visibleFields & 0x400) != 0)
  {
    width = self->_videoSize.width;
    v8 = v8 + self->_videoSize.height + 10.0;
  }

  else
  {
    v9 = a3.width;
    width = ceilf(v9);
  }

  v11 = [MEMORY[0x277D759A0] mainScreen];
  [v11 scale];
  v13 = 1.0 / v12 + 14.0;

  v14 = self->_visibleFields;
  v15 = 28.0;
  if ((v14 & 0x10) == 0)
  {
    v15 = 0.0;
  }

  v16 = -0.0;
  if ((v14 & 8) != 0)
  {
    v16 = v13;
  }

  v17 = v15 + v16;
  if (v14)
  {
    v17 = v13 + v17;
  }

  if ((v14 & 0x80) != 0)
  {
    v17 = v13 + v17;
  }

  v18 = (v14 & 1) + ((v14 & 8) >> 3) + ((v14 & 0x10) >> 4) + ((v14 & 0x80) >> 7) + ((v14 & 4) >> 2);
  if ((v14 & 4) != 0)
  {
    v17 = v13 + v17;
  }

  if (v18)
  {
    v17 = v17 + 6.0;
  }

  v19 = v18 > 1;
  v20 = v18 - 1;
  if (v19)
  {
    v17 = v17 + v20;
  }

  if ((v14 & 0x400) != 0 && (v14 & 2) != 0)
  {
    v19 = v17 <= height;
    v22 = v8 + v17 - height;
    if (v19)
    {
      v21 = v8;
    }

    else
    {
      v21 = v22;
    }
  }

  else
  {
    v21 = v8 + v17;
  }

  v23 = width;
  result.height = v21;
  result.width = v23;
  return result;
}

- (void)setArtistName:(id)a3
{
  v10 = a3;
  v4 = [(UILabel *)self->_artistNameLabel text];
  if (v4 != v10 && ([v4 isEqualToString:v10] & 1) == 0)
  {
    artistNameLabel = self->_artistNameLabel;
    if (v10)
    {
      if (!artistNameLabel)
      {
        v6 = [(SKUILockupSwooshCellLayout *)self _newDefaultLabel];
        v7 = self->_artistNameLabel;
        self->_artistNameLabel = v6;

        v8 = [(SKUICellLayout *)self contentView];
        [v8 addSubview:self->_artistNameLabel];

        artistNameLabel = self->_artistNameLabel;
      }

      [(UILabel *)artistNameLabel setText:?];
    }

    else
    {
      [(UILabel *)artistNameLabel removeFromSuperview];
      v9 = self->_artistNameLabel;
      self->_artistNameLabel = 0;
    }

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setCategory:(id)a3
{
  v10 = a3;
  v4 = [(UILabel *)self->_categoryLabel text];
  if (v4 != v10 && ([v4 isEqualToString:v10] & 1) == 0)
  {
    categoryLabel = self->_categoryLabel;
    if (v10)
    {
      if (!categoryLabel)
      {
        v6 = [(SKUILockupSwooshCellLayout *)self _newDefaultLabel];
        v7 = self->_categoryLabel;
        self->_categoryLabel = v6;

        v8 = [(SKUICellLayout *)self contentView];
        [v8 addSubview:self->_categoryLabel];

        categoryLabel = self->_categoryLabel;
      }

      [(UILabel *)categoryLabel setText:?];
    }

    else
    {
      [(UILabel *)categoryLabel removeFromSuperview];
      v9 = self->_categoryLabel;
      self->_categoryLabel = 0;
    }

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  v15 = [v4 primaryTextColor];
  objc_storeStrong(&self->_primaryTextColor, v15);
  categoryLabel = self->_categoryLabel;
  if (self->_primaryTextColor)
  {
    [(UILabel *)self->_categoryLabel setTextColor:?];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
    [(UILabel *)categoryLabel setTextColor:v6];
  }

  itemCountLabel = self->_itemCountLabel;
  if (self->_primaryTextColor)
  {
    [(UILabel *)self->_itemCountLabel setTextColor:?];
  }

  else
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
    [(UILabel *)itemCountLabel setTextColor:v8];
  }

  priceLabel = self->_priceLabel;
  if (self->_primaryTextColor)
  {
    [(UILabel *)self->_priceLabel setTextColor:?];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
    [(UILabel *)priceLabel setTextColor:v10];
  }

  v11 = [v4 secondaryTextColor];

  primaryTextColor = v11;
  if (!v11)
  {
    primaryTextColor = self->_primaryTextColor;
  }

  objc_storeStrong(&self->_titleColor, primaryTextColor);
  titleLabel = self->_titleLabel;
  if (self->_titleColor)
  {
    [(UILabel *)self->_titleLabel setTextColor:?];
  }

  else
  {
    v14 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)titleLabel setTextColor:v14];
  }
}

- (void)setItemCountString:(id)a3
{
  v10 = a3;
  v4 = [(UILabel *)self->_itemCountLabel text];
  if (v4 != v10 && ([v4 isEqualToString:v10] & 1) == 0)
  {
    itemCountLabel = self->_itemCountLabel;
    if (v10)
    {
      if (!itemCountLabel)
      {
        v6 = [(SKUILockupSwooshCellLayout *)self _newDefaultLabel];
        v7 = self->_itemCountLabel;
        self->_itemCountLabel = v6;

        v8 = [(SKUICellLayout *)self contentView];
        [v8 addSubview:self->_itemCountLabel];

        itemCountLabel = self->_itemCountLabel;
      }

      [(UILabel *)itemCountLabel setText:?];
    }

    else
    {
      [(UILabel *)itemCountLabel removeFromSuperview];
      v9 = self->_itemCountLabel;
      self->_itemCountLabel = 0;
    }

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setPrice:(id)a3
{
  v10 = a3;
  v4 = [(UILabel *)self->_priceLabel text];
  if (v4 != v10 && ([v4 isEqualToString:v10] & 1) == 0)
  {
    priceLabel = self->_priceLabel;
    if (v10)
    {
      if (!priceLabel)
      {
        v6 = [(SKUILockupSwooshCellLayout *)self _newDefaultLabel];
        v7 = self->_priceLabel;
        self->_priceLabel = v6;

        v8 = [(SKUICellLayout *)self contentView];
        [v8 addSubview:self->_priceLabel];

        priceLabel = self->_priceLabel;
      }

      [(UILabel *)priceLabel setText:?];
    }

    else
    {
      [(UILabel *)priceLabel removeFromSuperview];
      v9 = self->_priceLabel;
      self->_priceLabel = 0;
    }

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v17 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  if (v4 != v17 && ([v4 isEqualToString:v17] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v17)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        v9 = [(SKUICellLayout *)self parentCellView];
        v10 = [v9 backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v10];

        v11 = self->_titleLabel;
        v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v11 setFont:v12];

        [(UILabel *)self->_titleLabel setNumberOfLines:2];
        v13 = self->_titleLabel;
        if (self->_titleColor)
        {
          [(UILabel *)self->_titleLabel setTextColor:?];
        }

        else
        {
          v15 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v13 setTextColor:v15];
        }

        v16 = [(SKUICellLayout *)self contentView];
        [v16 addSubview:self->_titleLabel];

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

    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)setVideoThumbnailImage:(id)a3
{
  v17 = a3;
  v4 = [(SKUILockupSwooshCellLayout *)self videoThumbnailImage];

  v5 = v17;
  if (v4 != v17)
  {
    if (v17)
    {
      v6 = [(SKUICellLayout *)self contentView];
      if (!self->_videoImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        videoImageView = self->_videoImageView;
        self->_videoImageView = v7;

        v9 = self->_videoImageView;
        v10 = [(SKUICellLayout *)self parentCellView];
        v11 = [v10 backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:v11];

        [(UIImageView *)self->_videoImageView setContentMode:6];
        [v6 addSubview:self->_videoImageView];
      }

      if (!self->_videoPlayButtonImageView)
      {
        v12 = MEMORY[0x277D755B8];
        v13 = SKUIBundle();
        v14 = [v12 imageNamed:@"PlayControl" inBundle:v13];

        v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v14];
        videoPlayButtonImageView = self->_videoPlayButtonImageView;
        self->_videoPlayButtonImageView = v15;

        [(UIImageView *)self->_videoPlayButtonImageView setContentMode:4];
      }

      [(UIImageView *)self->_videoImageView setImage:v17];
      [v6 insertSubview:self->_videoPlayButtonImageView aboveSubview:self->_videoImageView];
    }

    else
    {
      [(UIImageView *)self->_videoPlayButtonImageView setHidden:1];
      [(UIImageView *)self->_videoImageView removeFromSuperview];
      v6 = self->_videoImageView;
      self->_videoImageView = 0;
    }

    [(SKUICellLayout *)self setNeedsLayout];
    v5 = v17;
  }
}

- (void)setVisibleFields:(unint64_t)a3
{
  if (self->_visibleFields != a3)
  {
    self->_visibleFields = a3;
    [(SKUICellLayout *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  visibleFields = self->_visibleFields;
  if ((visibleFields & 0x400) != 0)
  {
    width = self->_videoSize.width;
    height = self->_videoSize.height;
    [(UIImageView *)self->_videoImageView setFrame:0.0, 5.0, width, height];
    [(UIImageView *)self->_videoImageView setHidden:0];
    v7 = [(UIImageView *)self->_videoImageView image];
    v8 = v7;
    if (v7)
    {
      [v7 size];
      v10 = v9;
      v20.origin.x = 0.0;
      v20.origin.y = 5.0;
      v20.size.width = width;
      v20.size.height = height;
      v11 = CGRectGetMaxY(v20) - v10;
      height = v10;
    }

    else
    {
      v11 = 5.0;
    }

    [(UIImageView *)self->_videoPlayButtonImageView setFrame:0.0, v11, width, height];
    [(UIImageView *)self->_videoPlayButtonImageView setHidden:0];
    v4 = self->_videoSize.height + 10.0 + 5.0;
  }

  else
  {
    [(UIImageView *)self->_videoImageView setHidden:1];
    [(UIImageView *)self->_videoPlayButtonImageView setHidden:1];
    v4 = 5.0;
  }

  v12 = [(SKUIItemCellLayout *)self iconImageView];
  v18 = v12;
  if ((self->_visibleFields & 2) != 0)
  {
    [v12 frame];
    [v18 setFrame:{0.0, v4 + self->_maxImageSize.height - v14}];
    v13 = [(SKUIItemCellLayout *)self isIconImageHidden];
    v12 = v18;
  }

  else
  {
    v13 = 1;
  }

  [v12 setHidden:v13];
  if ((visibleFields & 0x400) != 0)
  {
    [(SKUILockupSwooshCellLayout *)self _layoutFieldsHorizontal];
  }

  else
  {
    [(SKUILockupSwooshCellLayout *)self _layoutFieldsVertical];
  }

  iconHighlightImageView = self->_iconHighlightImageView;
  if (iconHighlightImageView)
  {
    v16 = [(SKUIItemCellLayout *)self iconImageView];
    [v16 frame];
    [(UIImageView *)iconHighlightImageView setFrame:?];
  }

  videoHighlightImageView = self->_videoHighlightImageView;
  if (videoHighlightImageView)
  {
    [(UIImageView *)self->_videoImageView frame];
    [(UIImageView *)videoHighlightImageView setFrame:?];
  }
}

- (void)setBackgroundColor:(id)a3
{
  artistNameLabel = self->_artistNameLabel;
  v5 = a3;
  [(UILabel *)artistNameLabel setBackgroundColor:v5];
  [(UILabel *)self->_categoryLabel setBackgroundColor:v5];
  [(UILabel *)self->_itemCountLabel setBackgroundColor:v5];
  [(UILabel *)self->_priceLabel setBackgroundColor:v5];
  [(UILabel *)self->_titleLabel setBackgroundColor:v5];
  [(UIImageView *)self->_videoImageView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SKUILockupSwooshCellLayout;
  [(SKUIItemCellLayout *)&v6 setBackgroundColor:v5];
}

- (void)setItemOffer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKUILockupSwooshCellLayout;
  [(SKUIItemCellLayout *)&v4 setItemOffer:a3];
  [(SKUILockupSwooshCellLayout *)self _reloadPriceLabel];
}

- (void)setItemState:(id)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = SKUILockupSwooshCellLayout;
  [(SKUIItemCellLayout *)&v5 setItemState:a3 animated:a4];
  [(SKUILockupSwooshCellLayout *)self _reloadPriceLabel];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUILockupSwooshCellLayout;
  [(SKUIItemCellLayout *)&v4 setHighlighted:a3];
  [(SKUILockupSwooshCellLayout *)self _reloadHighlight];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUILockupSwooshCellLayout;
  [(SKUIItemCellLayout *)&v4 setSelected:a3];
  [(SKUILockupSwooshCellLayout *)self _reloadHighlight];
}

- (void)_layoutFieldsHorizontal
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [(SKUICellLayout *)self contentView];
  [v3 bounds];
  v5 = v4;

  v32 = [(SKUIItemCellLayout *)self iconImageView];
  visibleFields = self->_visibleFields;
  v7 = 0.0;
  v8 = 0.0;
  if ((visibleFields & 2) != 0)
  {
    [v32 frame];
    v8 = CGRectGetMaxX(v49) + 9.0;
  }

  v9 = 0;
  v10 = 0;
  titleLabel = self->_titleLabel;
  v33[0] = 16;
  v33[1] = titleLabel;
  v34 = *MEMORY[0x277CBF3A8];
  categoryLabel = self->_categoryLabel;
  v35 = 8;
  v36 = categoryLabel;
  v37 = v34;
  artistNameLabel = self->_artistNameLabel;
  v38 = 1;
  v39 = artistNameLabel;
  v40 = v34;
  itemCountLabel = self->_itemCountLabel;
  v41 = 128;
  v42 = itemCountLabel;
  priceLabel = self->_priceLabel;
  v44 = 4;
  v45 = priceLabel;
  v16 = v5 - v8;
  v43 = v34;
  v46 = v34;
  do
  {
    v17 = v33[v9 + 1];
    v18 = v17;
    if ((v33[v9] & self->_visibleFields) != 0)
    {
      if (v17)
      {
        if (v17 == self->_titleLabel)
        {
          [(UILabel *)v17 sizeThatFits:v16, 1.79769313e308];
          v21 = v23;
        }

        else
        {
          v19 = [MEMORY[0x277D759A0] mainScreen];
          [v19 scale];
          v21 = 1.0 / v20 + 14.0;

          v22 = v16;
        }

        v24 = &v33[v9];
        v24[2] = v22;
        v24[3] = v21;
        [(UILabel *)v18 setHidden:0];
        v7 = v7 + v21;
        ++v10;
      }
    }

    else
    {
      [(UILabel *)v17 setHidden:1];
    }

    v9 += 4;
  }

  while (v9 != 20);
  if (v10 > 0)
  {
    v25 = self->_videoSize.height + 5.0 + 10.0;
    if ((visibleFields & 2) != 0)
    {
      v26 = (self->_maxImageSize.height - (v7 + (v10 - 1))) * 0.5;
      v25 = v25 + floorf(v26);
    }

    v27 = &v34 + 1;
    v28 = 5;
    do
    {
      v29 = *(v27 - 2);
      if (([v29 isHidden] & 1) == 0)
      {
        [v29 frame];
        v30 = *(v27 - 1);
        v31 = *v27;
        [v29 setFrame:{v8, v25, v30, *v27}];
        v50.origin.x = v8;
        v50.origin.y = v25;
        v50.size.width = v30;
        v50.size.height = v31;
        v25 = CGRectGetMaxY(v50) + 1.0;
      }

      v27 += 4;
      --v28;
    }

    while (v28);
  }
}

- (void)_layoutFieldsVertical
{
  v3 = [(SKUICellLayout *)self contentView];
  [v3 bounds];
  v5 = v4;

  v6 = [(SKUIItemCellLayout *)self iconImageView];
  visibleFields = self->_visibleFields;
  v31 = v6;
  if ((visibleFields & 2) != 0)
  {
    [v6 frame];
    v8 = CGRectGetMaxY(v33) + 6.0;
    visibleFields = self->_visibleFields;
  }

  else
  {
    v8 = 6.0;
  }

  titleLabel = self->_titleLabel;
  if ((visibleFields & 0x10) != 0)
  {
    if (titleLabel)
    {
      [(UILabel *)titleLabel frame];
      [(UILabel *)self->_titleLabel sizeThatFits:v5, 1.79769313e308];
      v11 = v10;
      v13 = v12;
      [(UILabel *)self->_titleLabel setFrame:0.0, v8, v10, v12];
      [(UILabel *)self->_titleLabel setHidden:0];
      v34.origin.x = 0.0;
      v34.origin.y = v8;
      v34.size.width = v11;
      v34.size.height = v13;
      v8 = CGRectGetMaxY(v34) + 1.0;
    }
  }

  else
  {
    [(UILabel *)titleLabel setHidden:1];
  }

  categoryLabel = self->_categoryLabel;
  if ((self->_visibleFields & 8) != 0)
  {
    if (categoryLabel)
    {
      [(UILabel *)categoryLabel frame];
      v15 = [MEMORY[0x277D759A0] mainScreen];
      [v15 scale];
      v17 = 1.0 / v16 + 14.0;

      [(UILabel *)self->_categoryLabel setFrame:0.0, v8, v5, v17];
      [(UILabel *)self->_categoryLabel setHidden:0];
      v35.origin.x = 0.0;
      v35.origin.y = v8;
      v35.size.width = v5;
      v35.size.height = v17;
      v8 = CGRectGetMaxY(v35) + 1.0;
    }
  }

  else
  {
    [(UILabel *)categoryLabel setHidden:1];
  }

  artistNameLabel = self->_artistNameLabel;
  if (self->_visibleFields)
  {
    if (artistNameLabel)
    {
      [(UILabel *)artistNameLabel frame];
      v19 = [MEMORY[0x277D759A0] mainScreen];
      [v19 scale];
      v21 = 1.0 / v20 + 14.0;

      [(UILabel *)self->_artistNameLabel setFrame:0.0, v8, v5, v21];
      [(UILabel *)self->_artistNameLabel setHidden:0];
      v36.origin.x = 0.0;
      v36.origin.y = v8;
      v36.size.width = v5;
      v36.size.height = v21;
      v8 = CGRectGetMaxY(v36) + 1.0;
    }
  }

  else
  {
    [(UILabel *)artistNameLabel setHidden:1];
  }

  itemCountLabel = self->_itemCountLabel;
  if ((self->_visibleFields & 0x80) != 0)
  {
    if (itemCountLabel)
    {
      [(UILabel *)itemCountLabel frame];
      v23 = [MEMORY[0x277D759A0] mainScreen];
      [v23 scale];
      v25 = 1.0 / v24 + 14.0;

      [(UILabel *)self->_itemCountLabel setFrame:0.0, v8, v5, v25];
      [(UILabel *)self->_itemCountLabel setHidden:0];
      v37.origin.x = 0.0;
      v37.origin.y = v8;
      v37.size.width = v5;
      v37.size.height = v25;
      v8 = CGRectGetMaxY(v37) + 1.0;
    }
  }

  else
  {
    [(UILabel *)itemCountLabel setHidden:1];
  }

  priceLabel = self->_priceLabel;
  if ((self->_visibleFields & 4) != 0)
  {
    if (!priceLabel)
    {
      goto LABEL_25;
    }

    [(UILabel *)priceLabel frame];
    v28 = [MEMORY[0x277D759A0] mainScreen];
    [v28 scale];
    v30 = 1.0 / v29 + 14.0;

    [(UILabel *)self->_priceLabel setFrame:0.0, v8, v5, v30];
    priceLabel = self->_priceLabel;
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  [(UILabel *)priceLabel setHidden:v27];
LABEL_25:
}

- (id)_newDefaultLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = [(SKUICellLayout *)self parentCellView];
  v5 = [v4 backgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  [v3 setFont:v6];

  if (self->_primaryTextColor)
  {
    [v3 setTextColor:?];
  }

  else
  {
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.600000024];
    [v3 setTextColor:v7];
  }

  return v3;
}

- (void)_reloadPriceLabel
{
  v3 = [(SKUIItemCellLayout *)self itemState];
  v4 = [v3 state];

  if ((v4 & 3) != 0)
  {
    v5 = [(SKUICellLayout *)self clientContext];
    if (v5)
    {
      v6 = @"ITEM_OFFER_BUTTON_INSTALLING";
LABEL_14:
      v8 = [v5 localizedStringForKey:v6];
      goto LABEL_19;
    }

    v7 = @"ITEM_OFFER_BUTTON_INSTALLING";
  }

  else if ((v4 & 4) != 0)
  {
    v5 = [(SKUICellLayout *)self clientContext];
    if (v5)
    {
      v6 = @"ITEM_OFFER_BUTTON_INSTALLED";
      goto LABEL_14;
    }

    v7 = @"ITEM_OFFER_BUTTON_INSTALLED";
  }

  else if ((v4 & 8) != 0)
  {
    v5 = [(SKUICellLayout *)self clientContext];
    if (v5)
    {
      v6 = @"ITEM_OFFER_BUTTON_INSTALL";
      goto LABEL_14;
    }

    v7 = @"ITEM_OFFER_BUTTON_INSTALL";
  }

  else
  {
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    v5 = [(SKUICellLayout *)self clientContext];
    if (v5)
    {
      v6 = @"ITEM_OFFER_BUTTON_GRATIS";
      goto LABEL_14;
    }

    v7 = @"ITEM_OFFER_BUTTON_GRATIS";
  }

  v8 = [SKUIClientContext localizedStringForKey:v7 inBundles:0];
LABEL_19:
  v10 = v8;

  if (v10)
  {
    [(SKUILockupSwooshCellLayout *)self setPrice:v10];
    goto LABEL_22;
  }

LABEL_21:
  v10 = [(SKUIItemCellLayout *)self itemOffer];
  v9 = [v10 buttonText];
  [(SKUILockupSwooshCellLayout *)self setPrice:v9];

LABEL_22:
}

- (void)_reloadHighlight
{
  if ([(SKUIItemCellLayout *)self isHighlighted]|| [(SKUIItemCellLayout *)self isSelected])
  {
    iconHighlightImageView = self->_iconHighlightImageView;
    if (!iconHighlightImageView)
    {
      v4 = objc_alloc_init(MEMORY[0x277D755E8]);
      v5 = self->_iconHighlightImageView;
      self->_iconHighlightImageView = v4;

      v6 = self->_iconHighlightImageView;
      v7 = [(SKUICellLayout *)self parentCellView];
      v8 = [v7 backgroundColor];
      [(UIImageView *)v6 setBackgroundColor:v8];

      v9 = [(SKUICellLayout *)self contentView];
      [v9 addSubview:self->_iconHighlightImageView];

      [(SKUICellLayout *)self setNeedsLayout];
      iconHighlightImageView = self->_iconHighlightImageView;
    }

    v10 = [(SKUIItemCellLayout *)self iconImage];
    v11 = [MEMORY[0x277D75348] blackColor];
    v12 = [v10 _flatImageWithColor:v11];
    [(UIImageView *)iconHighlightImageView setImage:v12];

    [(UIImageView *)self->_iconHighlightImageView setAlpha:0.3];
    videoImageView = self->_videoImageView;
    if (videoImageView && ([(UIImageView *)videoImageView isHidden]& 1) == 0)
    {
      videoHighlightImageView = self->_videoHighlightImageView;
      if (!videoHighlightImageView)
      {
        v15 = objc_alloc_init(MEMORY[0x277D755E8]);
        v16 = self->_videoHighlightImageView;
        self->_videoHighlightImageView = v15;

        v17 = self->_videoHighlightImageView;
        v18 = [(SKUICellLayout *)self parentCellView];
        v19 = [v18 backgroundColor];
        [(UIImageView *)v17 setBackgroundColor:v19];

        [(UIImageView *)self->_videoHighlightImageView setContentMode:6];
        v20 = [(SKUICellLayout *)self contentView];
        [v20 insertSubview:self->_videoHighlightImageView aboveSubview:self->_videoImageView];

        [(SKUICellLayout *)self setNeedsLayout];
        videoHighlightImageView = self->_videoHighlightImageView;
      }

      v21 = [(UIImageView *)self->_videoImageView image];
      v22 = [MEMORY[0x277D75348] blackColor];
      v23 = [v21 _flatImageWithColor:v22];
      [(UIImageView *)videoHighlightImageView setImage:v23];

      v24 = self->_videoHighlightImageView;

      [(UIImageView *)v24 setAlpha:0.3];
    }
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __46__SKUILockupSwooshCellLayout__reloadHighlight__block_invoke;
    v25[3] = &unk_2781F80F0;
    v25[4] = self;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v25];
    [(UIImageView *)self->_iconHighlightImageView setAlpha:0.0];
    [(UIImageView *)self->_videoHighlightImageView setAlpha:0.0];
    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_removeHighlightViews
{
  [(UIImageView *)self->_iconHighlightImageView alpha];
  if (v3 == 0.0)
  {
    [(UIImageView *)self->_iconHighlightImageView removeFromSuperview];
    iconHighlightImageView = self->_iconHighlightImageView;
    self->_iconHighlightImageView = 0;
  }

  [(UIImageView *)self->_videoHighlightImageView alpha];
  if (v5 == 0.0)
  {
    [(UIImageView *)self->_videoHighlightImageView removeFromSuperview];
    videoHighlightImageView = self->_videoHighlightImageView;
    self->_videoHighlightImageView = 0;
  }
}

- (CGSize)maxImageSize
{
  width = self->_maxImageSize.width;
  height = self->_maxImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)videoSize
{
  width = self->_videoSize.width;
  height = self->_videoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithCollectionViewCell:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILockupSwooshCellLayout initWithCollectionViewCell:]";
}

@end