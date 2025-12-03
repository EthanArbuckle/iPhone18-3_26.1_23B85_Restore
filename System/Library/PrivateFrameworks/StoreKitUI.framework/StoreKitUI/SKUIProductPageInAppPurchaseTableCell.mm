@interface SKUIProductPageInAppPurchaseTableCell
- (NSString)indexString;
- (NSString)priceString;
- (NSString)productName;
- (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setIndexString:(id)string;
- (void)setPriceString:(id)string;
- (void)setProductName:(id)name;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation SKUIProductPageInAppPurchaseTableCell

- (NSString)indexString
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageInAppPurchaseTableCell *)v3 indexString:v4];
      }
    }
  }

  text = [(UILabel *)self->_indexLabel text];

  return text;
}

- (NSString)priceString
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageInAppPurchaseTableCell *)v3 priceString:v4];
      }
    }
  }

  text = [(UILabel *)self->_priceLabel text];

  return text;
}

- (NSString)productName
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageInAppPurchaseTableCell *)v3 productName:v4];
      }
    }
  }

  text = [(UILabel *)self->_nameLabel text];

  return text;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIProductPageInAppPurchaseTableCell *)v6 setColorScheme:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_colorScheme != schemeCopy)
  {
    objc_storeStrong(&self->_colorScheme, scheme);
    indexLabel = self->_indexLabel;
    secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)indexLabel setTextColor:secondaryTextColor];
    }

    else
    {
      v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      [(UILabel *)indexLabel setTextColor:v16];
    }

    priceLabel = self->_priceLabel;
    secondaryTextColor2 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UILabel *)priceLabel setTextColor:secondaryTextColor2];
    }

    else
    {
      v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
      [(UILabel *)priceLabel setTextColor:v19];
    }

    nameLabel = self->_nameLabel;
    primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(UILabel *)nameLabel setTextColor:primaryTextColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)nameLabel setTextColor:blackColor];
    }
  }
}

- (void)setIndexString:(id)string
{
  stringCopy = string;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageInAppPurchaseTableCell *)v5 setIndexString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  indexString = [(SKUIProductPageInAppPurchaseTableCell *)self indexString];
  v14 = indexString;
  if (indexString != stringCopy && ([indexString isEqualToString:stringCopy] & 1) == 0)
  {
    v15 = [stringCopy length];
    indexLabel = self->_indexLabel;
    if (v15)
    {
      if (!indexLabel)
      {
        v17 = objc_alloc_init(MEMORY[0x277D756B8]);
        v18 = self->_indexLabel;
        self->_indexLabel = v17;

        v19 = self->_indexLabel;
        backgroundColor = [(SKUIProductPageInAppPurchaseTableCell *)self backgroundColor];
        [(UILabel *)v19 setBackgroundColor:backgroundColor];

        v21 = self->_indexLabel;
        v22 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v21 setFont:v22];

        [(UILabel *)self->_indexLabel setTextAlignment:1];
        v23 = self->_indexLabel;
        secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v23 setTextColor:secondaryTextColor];
        }

        else
        {
          v26 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
          [(UILabel *)v23 setTextColor:v26];
        }

        contentView = [(SKUIProductPageInAppPurchaseTableCell *)self contentView];
        [contentView addSubview:self->_indexLabel];

        indexLabel = self->_indexLabel;
      }

      [(UILabel *)indexLabel setText:stringCopy];
    }

    else
    {
      [(UILabel *)indexLabel removeFromSuperview];
      v25 = self->_indexLabel;
      self->_indexLabel = 0;
    }

    [(SKUIProductPageInAppPurchaseTableCell *)self setNeedsLayout];
  }
}

- (void)setPriceString:(id)string
{
  stringCopy = string;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageInAppPurchaseTableCell *)v5 setPriceString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  priceString = [(SKUIProductPageInAppPurchaseTableCell *)self priceString];
  v14 = priceString;
  if (priceString != stringCopy && ([priceString isEqualToString:stringCopy] & 1) == 0)
  {
    v15 = [stringCopy length];
    priceLabel = self->_priceLabel;
    if (v15)
    {
      if (!priceLabel)
      {
        v17 = objc_alloc_init(MEMORY[0x277D756B8]);
        v18 = self->_priceLabel;
        self->_priceLabel = v17;

        v19 = self->_priceLabel;
        backgroundColor = [(SKUIProductPageInAppPurchaseTableCell *)self backgroundColor];
        [(UILabel *)v19 setBackgroundColor:backgroundColor];

        v21 = self->_priceLabel;
        v22 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v21 setFont:v22];

        v23 = self->_priceLabel;
        secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v23 setTextColor:secondaryTextColor];
        }

        else
        {
          v26 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
          [(UILabel *)v23 setTextColor:v26];
        }

        contentView = [(SKUIProductPageInAppPurchaseTableCell *)self contentView];
        [contentView addSubview:self->_priceLabel];

        priceLabel = self->_priceLabel;
      }

      [(UILabel *)priceLabel setText:stringCopy];
      [(UILabel *)self->_priceLabel sizeToFit];
    }

    else
    {
      [(UILabel *)priceLabel removeFromSuperview];
      v25 = self->_priceLabel;
      self->_priceLabel = 0;
    }

    [(SKUIProductPageInAppPurchaseTableCell *)self setNeedsLayout];
  }
}

- (void)setProductName:(id)name
{
  nameCopy = name;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageInAppPurchaseTableCell *)v5 setProductName:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  productName = [(SKUIProductPageInAppPurchaseTableCell *)self productName];
  v14 = productName;
  if (productName != nameCopy && ([productName isEqualToString:nameCopy] & 1) == 0)
  {
    v15 = [nameCopy length];
    nameLabel = self->_nameLabel;
    if (v15)
    {
      if (!nameLabel)
      {
        v17 = objc_alloc_init(MEMORY[0x277D756B8]);
        v18 = self->_nameLabel;
        self->_nameLabel = v17;

        v19 = self->_nameLabel;
        backgroundColor = [(SKUIProductPageInAppPurchaseTableCell *)self backgroundColor];
        [(UILabel *)v19 setBackgroundColor:backgroundColor];

        v21 = self->_nameLabel;
        v22 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];
        [(UILabel *)v21 setFont:v22];

        v23 = self->_nameLabel;
        primaryTextColor = [(SKUIColorScheme *)self->_colorScheme primaryTextColor];
        if (primaryTextColor)
        {
          [(UILabel *)v23 setTextColor:primaryTextColor];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v23 setTextColor:blackColor];
        }

        contentView = [(SKUIProductPageInAppPurchaseTableCell *)self contentView];
        [contentView addSubview:self->_nameLabel];

        nameLabel = self->_nameLabel;
      }

      [(UILabel *)nameLabel setText:nameCopy];
    }

    else
    {
      [(UILabel *)nameLabel removeFromSuperview];
      v25 = self->_nameLabel;
      self->_nameLabel = 0;
    }

    [(SKUIProductPageInAppPurchaseTableCell *)self setNeedsLayout];
  }
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
        [(SKUIProductPageInAppPurchaseTableCell *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUIProductPageInAppPurchaseTableCell *)self bounds];
  v12 = v11;
  v14 = v13;
  v15 = self->_contentInsets.left + 15.0;
  indexLabel = self->_indexLabel;
  if (indexLabel)
  {
    [(UILabel *)indexLabel sizeToFit];
    [(UILabel *)self->_indexLabel frame];
    if (v17 < 15.0)
    {
      v17 = 15.0;
    }

    v19 = (v14 - v18) * 0.5;
    [(UILabel *)self->_indexLabel setFrame:v15 + floor((15.0 - v17) * 0.5), ceilf(v19)];
    v15 = v15 + 15.0 + 15.0;
  }

  v20 = v12 + -15.0;
  priceLabel = self->_priceLabel;
  if (priceLabel)
  {
    [(UILabel *)priceLabel sizeToFit];
    [(UILabel *)self->_priceLabel frame];
    v23 = v22;
    v25 = v24;
    v26 = v20 - v22;
    v27 = (v14 - v24) * 0.5;
    v28 = ceilf(v27);
    [(UILabel *)self->_priceLabel setFrame:v26, v28];
    v33.origin.x = v26;
    v33.origin.y = v28;
    v33.size.width = v23;
    v33.size.height = v25;
    v20 = floor(CGRectGetMinX(v33) + -22.5);
  }

  nameLabel = self->_nameLabel;
  if (nameLabel)
  {
    [(UILabel *)nameLabel sizeToFit];
    [(UILabel *)self->_nameLabel frame];
    v31 = (v14 - v30) * 0.5;
    [(UILabel *)self->_nameLabel setFrame:v15, ceilf(v31), v20 - v15];
  }

  v32.receiver = self;
  v32.super_class = SKUIProductPageInAppPurchaseTableCell;
  [(SKUITableViewCell *)&v32 layoutSubviews];
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageInAppPurchaseTableCell *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UILabel *)self->_indexLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_nameLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_priceLabel setBackgroundColor:colorCopy];
  v13.receiver = self;
  v13.super_class = SKUIProductPageInAppPurchaseTableCell;
  [(SKUIProductPageInAppPurchaseTableCell *)&v13 setBackgroundColor:colorCopy];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(SKUIProductPageInAppPurchaseTableCell *)v4 setHighlighted:v5 animated:v6, v7, v8, v9, v10, v11];
    }
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(SKUIProductPageInAppPurchaseTableCell *)v4 setSelected:v5 animated:v6, v7, v8, v9, v10, v11];
    }
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end