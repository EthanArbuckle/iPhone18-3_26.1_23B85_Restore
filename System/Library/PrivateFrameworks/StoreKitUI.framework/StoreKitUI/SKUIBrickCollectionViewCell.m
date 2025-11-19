@interface SKUIBrickCollectionViewCell
- (NSString)title;
- (SKUICountdown)countdown;
- (UIEdgeInsets)itemImageInsets;
- (UIImage)itemImage;
- (void)_reloadHighlight;
- (void)_removeOverlay;
- (void)itemImage;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setColoringWithColorScheme:(id)a3;
- (void)setCountdown:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItemImage:(id)a3;
- (void)setItemImageHidden:(BOOL)a3;
- (void)setItemImageInsets:(UIEdgeInsets)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitle:(id)a3;
@end

@implementation SKUIBrickCollectionViewCell

- (SKUICountdown)countdown
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIBrickCollectionViewCell *)v3 countdown:v4];
      }
    }
  }

  v11 = [(SKUICountdownView *)self->_countdownView countdown];

  return v11;
}

- (UIImage)itemImage
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIBrickCollectionViewCell itemImage];
  }

  v3 = [(UIImageView *)self->_itemImageView image];

  return v3;
}

- (void)setAccessibilityLabel:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickCollectionViewCell *)v5 setAccessibilityLabel:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_accessibilityLabel != v4)
  {
    v13 = [(NSString *)v4 copy];
    accessibilityLabel = self->_accessibilityLabel;
    self->_accessibilityLabel = v13;

    [(UIImageView *)self->_itemImageView setAccessibilityLabel:self->_accessibilityLabel];
  }
}

- (void)setColoringWithColorScheme:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickCollectionViewCell *)v5 setColoringWithColorScheme:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [v4 primaryTextColor];
  titleColor = self->_titleColor;
  if (v13 != titleColor && ([(UIColor *)titleColor isEqual:v13]& 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, v13);
    titleLabel = self->_titleLabel;
    if (self->_titleColor)
    {
      [(UILabel *)self->_titleLabel setTextColor:?];
    }

    else
    {
      v16 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:v16];
    }
  }
}

- (void)setCountdown:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickCollectionViewCell *)v5 setCountdown:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUICountdownView *)self->_countdownView countdown];

  if (v13 != v4)
  {
    [(SKUICountdownView *)self->_countdownView removeFromSuperview];
    countdownView = self->_countdownView;
    self->_countdownView = 0;

    if (v4)
    {
      v15 = [[SKUICountdownView alloc] initWithCountdown:v4 clientContext:self->_clientContext];
      v16 = self->_countdownView;
      self->_countdownView = v15;

      [(SKUICountdownView *)self->_countdownView sizeToFit];
      [(SKUIBrickCollectionViewCell *)self addSubview:self->_countdownView];
      [(SKUIBrickCollectionViewCell *)self setNeedsLayout];
    }
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickCollectionViewCell *)v5 setHighlighted:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = SKUIBrickCollectionViewCell;
  [(SKUIBrickCollectionViewCell *)&v13 setHighlighted:v3];
  [(SKUIBrickCollectionViewCell *)self _reloadHighlight];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickCollectionViewCell *)v5 setSelected:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = SKUIBrickCollectionViewCell;
  [(SKUIBrickCollectionViewCell *)&v13 setSelected:v3];
  [(SKUIBrickCollectionViewCell *)self _reloadHighlight];
}

- (void)setItemImage:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickCollectionViewCell *)v5 setItemImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(UIImageView *)self->_itemImageView image];

  if (v13 != v4)
  {
    itemImageView = self->_itemImageView;
    if (v4)
    {
      if (!itemImageView)
      {
        v15 = objc_alloc_init(MEMORY[0x277D755E8]);
        v16 = self->_itemImageView;
        self->_itemImageView = v15;

        [(UIImageView *)self->_itemImageView setAccessibilityLabel:self->_accessibilityLabel];
        v17 = self->_itemImageView;
        v18 = [(SKUIBrickCollectionViewCell *)self backgroundColor];
        [(UIImageView *)v17 setBackgroundColor:v18];

        [(UIImageView *)self->_itemImageView setHidden:[(SKUIBrickCollectionViewCell *)self isItemImageHidden]];
        v19 = [(SKUIBrickCollectionViewCell *)self contentView];
        [v19 addSubview:self->_itemImageView];

        itemImageView = self->_itemImageView;
      }

      [(UIImageView *)itemImageView setImage:v4];
      [(UIImageView *)self->_itemImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)itemImageView removeFromSuperview];
      v20 = self->_itemImageView;
      self->_itemImageView = 0;
    }

    [(SKUIBrickCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setItemImageHidden:(BOOL)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickCollectionViewCell *)v5 setItemImageHidden:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_itemImageHidden != v3)
  {
    self->_itemImageHidden = v3;
    [(UIImageView *)self->_itemImageView setHidden:v3];
  }
}

- (void)setItemImageInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  bottom = a3.bottom;
  top = a3.top;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIBrickCollectionViewCell *)v4 setItemImageInsets:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12.f64[0] = top;
  v12.f64[1] = left;
  v13.f64[0] = bottom;
  v13.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_itemImageInsets.top, v12), vceqq_f64(*&self->_itemImageInsets.bottom, v13)))) & 1) == 0)
  {
    self->_itemImageInsets.top = top;
    self->_itemImageInsets.left = left;
    self->_itemImageInsets.bottom = bottom;
    self->_itemImageInsets.right = right;
    [(SKUIBrickCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickCollectionViewCell *)v5 setTitle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIBrickCollectionViewCell *)self title];
  if (v13 != v4 && ([v4 isEqualToString:v13] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (v4)
    {
      if (!titleLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_titleLabel;
        self->_titleLabel = v15;

        v17 = self->_titleLabel;
        v18 = [(SKUIBrickCollectionViewCell *)self backgroundColor];
        [(UILabel *)v17 setBackgroundColor:v18];

        v19 = self->_titleLabel;
        v20 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v19 setFont:v20];

        v21 = self->_titleLabel;
        if (self->_titleColor)
        {
          [(UILabel *)self->_titleLabel setTextColor:?];
        }

        else
        {
          v23 = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v21 setTextColor:v23];
        }

        [(SKUIBrickCollectionViewCell *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:v4];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v22 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIBrickCollectionViewCell *)self setNeedsLayout];
  }
}

- (NSString)title
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIBrickCollectionViewCell *)v3 title:v4];
      }
    }
  }

  v11 = [(UILabel *)self->_titleLabel text];

  return v11;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIBrickCollectionViewCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIImageView *)self->_itemImageView setBackgroundColor:v4];
  [(UILabel *)self->_titleLabel setBackgroundColor:v4];
  v13.receiver = self;
  v13.super_class = SKUIBrickCollectionViewCell;
  [(SKUIBrickCollectionViewCell *)&v13 setBackgroundColor:v4];
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIBrickCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  [(UIImageView *)self->_itemImageView frame];
  v12 = v11;
  v14 = v13;
  top = self->_itemImageInsets.top;
  left = self->_itemImageInsets.left;
  [(UIImageView *)self->_itemImageView setFrame:left, top];
  [(UIImageView *)self->_overlayImageView setFrame:left, top, v12, v14];
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v19 = v18;
    v21.origin.x = left;
    v21.origin.y = top;
    v21.size.width = v12;
    v21.size.height = v14;
    [(UILabel *)self->_titleLabel setFrame:left, CGRectGetMaxY(v21) + 6.0, v12, v19];
  }

  countdownView = self->_countdownView;
  if (countdownView)
  {
    [(SKUICountdownView *)countdownView setFrame:left, top, v12, v14];
  }
}

- (void)_reloadHighlight
{
  if (([(SKUIBrickCollectionViewCell *)self isHighlighted]& 1) != 0 || [(SKUIBrickCollectionViewCell *)self isSelected])
  {
    if (!self->_overlayImageView)
    {
      v3 = objc_alloc_init(MEMORY[0x277D755E8]);
      overlayImageView = self->_overlayImageView;
      self->_overlayImageView = v3;

      v5 = self->_overlayImageView;
      v6 = [(SKUIBrickCollectionViewCell *)self backgroundColor];
      [(UIImageView *)v5 setBackgroundColor:v6];

      v7 = [(SKUIBrickCollectionViewCell *)self contentView];
      [v7 addSubview:self->_overlayImageView];

      [(SKUIBrickCollectionViewCell *)self setNeedsLayout];
    }

    v8 = [(SKUICountdownView *)self->_countdownView backgroundImage];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [(UIImageView *)self->_itemImageView image];
    }

    v14 = v10;

    v11 = self->_overlayImageView;
    v12 = [MEMORY[0x277D75348] blackColor];
    v13 = [v14 _flatImageWithColor:v12];
    [(UIImageView *)v11 setImage:v13];

    [(UIImageView *)self->_overlayImageView setAlpha:0.3];
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__SKUIBrickCollectionViewCell__reloadHighlight__block_invoke;
    v15[3] = &unk_2781F80F0;
    v15[4] = self;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v15];
    [(UIImageView *)self->_overlayImageView setAlpha:0.0];
    [MEMORY[0x277CD9FF0] commit];
  }
}

- (void)_removeOverlay
{
  [(UIImageView *)self->_overlayImageView alpha];
  if (v3 == 0.0)
  {
    [(UIImageView *)self->_overlayImageView removeFromSuperview];
    overlayImageView = self->_overlayImageView;
    self->_overlayImageView = 0;
  }
}

- (UIEdgeInsets)itemImageInsets
{
  top = self->_itemImageInsets.top;
  left = self->_itemImageInsets.left;
  bottom = self->_itemImageInsets.bottom;
  right = self->_itemImageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)itemImage
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrickCollectionViewCell itemImage]";
}

@end