@interface SKUIGiftThemeCollectionViewCell
- (UIImage)itemImage;
- (id)_itemView;
- (void)_reloadItemView;
- (void)_setHeaderImage:(id)a3;
- (void)_setMessage:(id)a3;
- (void)_setPrice:(id)a3;
- (void)_setSenderName:(id)a3;
- (void)layoutSubviews;
- (void)reloadThemeHeaderImage;
- (void)setBackgroundColor:(id)a3;
- (void)setGift:(id)a3;
- (void)setItemImage:(id)a3;
- (void)setTheme:(id)a3;
@end

@implementation SKUIGiftThemeCollectionViewCell

- (UIImage)itemImage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftThemeCollectionViewCell *)v3 itemImage:v4];
      }
    }
  }

  v11 = [(SKUIGiftThemeCollectionViewCell *)self _itemView];
  v12 = [v11 itemImage];

  return v12;
}

- (void)reloadThemeHeaderImage
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftThemeCollectionViewCell *)v3 reloadThemeHeaderImage:v4];
      }
    }
  }

  theme = self->_theme;
  if (theme)
  {
    v12 = [(SKUIGiftTheme *)theme headerImage];
    [(SKUIGiftThemeCollectionViewCell *)self _setHeaderImage:v12];
  }
}

- (void)setGift:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIGiftThemeCollectionViewCell *)v6 setGift:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_gift != v5)
  {
    objc_storeStrong(&self->_gift, a3);
    v14 = [(SKUIGift *)self->_gift message];
    [(SKUIGiftThemeCollectionViewCell *)self _setMessage:v14];

    v15 = [(SKUIGift *)self->_gift senderName];
    [(SKUIGiftThemeCollectionViewCell *)self _setSenderName:v15];

    v16 = [(SKUIGift *)self->_gift item];

    if (v16)
    {
      [(SKUIGiftThemeCollectionViewCell *)self _setPrice:0];
      [(SKUIGiftThemeCollectionViewCell *)self _reloadItemView];
    }

    else
    {
      [(SKUIGiftItemView *)self->_itemView removeFromSuperview];
      itemView = self->_itemView;
      self->_itemView = 0;

      v18 = MEMORY[0x277CCABB8];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SKUIGift giftAmount](self->_gift, "giftAmount")}];
      v20 = [v18 localizedStringFromNumber:v19 numberStyle:1];

      v21 = [(SKUIGiftConfiguration *)self->_giftConfiguration currencySymbol];
      if ([(SKUIGiftConfiguration *)self->_giftConfiguration currencySymbolPosition]== 1)
      {
        v22 = v20;
        v23 = v21;
      }

      else
      {
        v22 = v21;
        v23 = v20;
      }

      v24 = [v22 stringByAppendingString:v23];
      [(SKUIGiftThemeCollectionViewCell *)self _setPrice:v24];
    }
  }
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
        [(SKUIGiftThemeCollectionViewCell *)v5 setItemImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKUIGiftThemeCollectionViewCell *)self _itemView];
  [v13 setItemImage:v4];
}

- (void)setTheme:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIGiftThemeCollectionViewCell *)v6 setTheme:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_theme != v5)
  {
    objc_storeStrong(&self->_theme, a3);
    v14 = [(SKUIGiftTheme *)self->_theme headerImage];
    [(SKUIGiftThemeCollectionViewCell *)self _setHeaderImage:v14];

    v15 = [(SKUIGiftTheme *)self->_theme backgroundColor];
    v16 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
    [v16 setBackgroundColor:v15];

    [(UIImageView *)self->_headerImageView setBackgroundColor:v15];
    [(SKUIGiftItemView *)self->_itemView setBackgroundColor:v15];
    [(SKUIGiftItemView *)self->_itemView setTheme:self->_theme];
    [(UILabel *)self->_priceLabel setBackgroundColor:v15];
    priceLabel = self->_priceLabel;
    v18 = [(SKUIGiftTheme *)self->_theme primaryTextColor];
    [(UILabel *)priceLabel setTextColor:v18];

    [(UILabel *)self->_messageLabel setBackgroundColor:v15];
    messageLabel = self->_messageLabel;
    v20 = [(SKUIGiftTheme *)self->_theme bodyTextColor];
    [(UILabel *)messageLabel setTextColor:v20];

    [(UILabel *)self->_senderNameLabel setBackgroundColor:v15];
    senderNameLabel = self->_senderNameLabel;
    v22 = [(SKUIGiftTheme *)self->_theme bodyTextColor];
    [(UILabel *)senderNameLabel setTextColor:v22];

    [(UILabel *)self->_senderNameLabelLabel setBackgroundColor:v15];
    senderNameLabelLabel = self->_senderNameLabelLabel;
    v24 = [(SKUIGiftTheme *)self->_theme primaryTextColor];
    [(UILabel *)senderNameLabelLabel setTextColor:v24];

    v25 = [(SKUIGiftTheme *)v5 themeName];
    [(SKUIGiftThemeCollectionViewCell *)self setAccessibilityLabel:v25];

    [(SKUIGiftThemeCollectionViewCell *)self setIsAccessibilityElement:1];
    [(SKUIGiftThemeCollectionViewCell *)self setNeedsLayout];
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
        [(SKUIGiftThemeCollectionViewCell *)v3 layoutSubviews:v4];
      }
    }
  }

  v61.receiver = self;
  v61.super_class = SKUIGiftThemeCollectionViewCell;
  [(SKUIGiftThemeCollectionViewCell *)&v61 layoutSubviews];
  v11 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x277D75418] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v18 = 25.0;
  }

  else
  {
    v18 = 5.0;
  }

  [(SKUIGiftThemeCollectionViewCell *)self bounds];
  v20 = v19;
  v21 = [MEMORY[0x277D75418] currentDevice];
  v22 = [v21 userInterfaceIdiom];

  v23 = 50.0;
  if ((v22 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v23 = 10.0;
  }

  v24 = v20 - v23;
  [v11 setFrame:{v18, v13, v24, v15}];
  v25 = [(SKUIGiftThemeCollectionViewCell *)self backgroundView];
  v62.origin.x = v18;
  v62.origin.y = v13;
  v62.size.width = v24;
  v62.size.height = v15;
  v63 = CGRectInset(v62, -4.0, -4.0);
  [v25 setFrame:{v63.origin.x, v63.origin.y, v63.size.width, v63.size.height}];
  [v11 bounds];
  v27 = v26;
  v29 = v28;
  v30 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
  [v30 bounds];
  v32 = v31 * 0.5;
  v33 = (floorf(v32) + -4.0);

  headerImageView = self->_headerImageView;
  if (headerImageView)
  {
    [(UIImageView *)headerImageView frame];
    [(UIImageView *)self->_headerImageView setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v27, v33];
  }

  p_itemView = &self->_itemView;
  itemView = self->_itemView;
  if (itemView)
  {
    [(SKUIGiftItemView *)itemView frame];
    [*p_itemView sizeThatFits:{v27 + -25.0 + -25.0, 1.79769313e308}];
    v38 = v37;
    v40 = v39;
    v41 = 25.0;
    v42 = 20.0;
  }

  else
  {
    p_itemView = &self->_priceLabel;
    priceLabel = self->_priceLabel;
    if (!priceLabel)
    {
      goto LABEL_17;
    }

    [(UILabel *)priceLabel frame];
    v38 = v44;
    v40 = v45;
    v46 = (v27 - v44) * 0.5;
    v41 = floorf(v46);
    v42 = 21.0;
  }

  [*p_itemView setFrame:{v41, v33, v38, v40}];
  v64.origin.x = v41;
  v64.origin.y = v33;
  v64.size.width = v38;
  v64.size.height = v40;
  v33 = CGRectGetMaxY(v64) + v42;
LABEL_17:
  v47 = v29 + -16.0;
  if (self->_senderNameLabel)
  {
    [(UILabel *)self->_senderNameLabelLabel frame];
    v49 = v48;
    v51 = v50;
    [(UILabel *)self->_senderNameLabel frame];
    [(UILabel *)self->_senderNameLabel sizeThatFits:1.79769313e308, 1.79769313e308];
    v53 = v52;
    *&v54 = (v27 - (v49 + 3.0 + v54)) * 0.5;
    v55 = fmaxf(floorf(*&v54), 25.0);
    [(UILabel *)self->_senderNameLabelLabel setFrame:v55, v47 - v51, v49, v51];
    v65.origin.x = v55;
    v65.origin.y = v47 - v51;
    v65.size.width = v49;
    v65.size.height = v51;
    MaxX = CGRectGetMaxX(v65);
    [(UILabel *)self->_senderNameLabel setFrame:MaxX + 3.0, v47 - v53, v27 + -25.0 - (MaxX + 3.0), v53];
    v47 = v47 - v51 + -15.0;
  }

  messageLabel = self->_messageLabel;
  if (messageLabel)
  {
    [(UILabel *)messageLabel frame];
    [(UILabel *)self->_messageLabel sizeThatFits:v27 + -50.0, v47 - v33];
    if (v59 >= v47 - v33)
    {
      v60 = v47 - v33;
    }

    else
    {
      v60 = v59;
    }

    [(UILabel *)self->_messageLabel setFrame:25.0, v33, v58, v60];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = SKUIGiftThemeCollectionViewCell;
  [(SKUIGiftThemeCollectionViewCell *)&v6 setBackgroundColor:a3];
  v4 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
  v5 = [(SKUIGiftTheme *)self->_theme backgroundColor];
  [v4 setBackgroundColor:v5];
}

- (id)_itemView
{
  v3 = [(SKUIGift *)self->_gift item];
  if (v3)
  {
    itemView = self->_itemView;
    if (!itemView)
    {
      v5 = [[SKUIGiftItemView alloc] initWithStyle:1 item:v3 clientContext:0];
      v6 = self->_itemView;
      self->_itemView = v5;

      v7 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
      [v7 addSubview:self->_itemView];

      itemView = self->_itemView;
    }

    v8 = itemView;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_reloadItemView
{
  v12 = [(SKUIGift *)self->_gift item];
  v3 = [(SKUIGiftThemeCollectionViewCell *)self _itemView];
  v4 = [v12 artistName];
  [v3 setArtistName:v4];

  v5 = [(SKUIGiftTheme *)self->_theme backgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = [v12 categoryName];
  [v3 setCategoryName:v6];

  [v3 setNumberOfUserRatings:{objc_msgSend(v12, "numberOfUserRatings")}];
  v7 = [v12 primaryItemOffer];
  v8 = [v7 buttonText];
  [v3 setPrice:v8];

  [v3 setTheme:self->_theme];
  v9 = [v12 title];
  [v3 setTitle:v9];

  [v12 userRating];
  *&v11 = v10 / 5.0;
  [v3 setUserRating:v11];
  [(SKUIGiftThemeCollectionViewCell *)self setNeedsLayout];
}

- (void)_setHeaderImage:(id)a3
{
  v11 = a3;
  v4 = [(UIImageView *)self->_headerImageView image];

  if (v4 != v11)
  {
    headerImageView = self->_headerImageView;
    if (v11)
    {
      if (!headerImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_headerImageView;
        self->_headerImageView = v7;

        [(UIImageView *)self->_headerImageView setContentMode:1];
        v9 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
        [v9 addSubview:self->_headerImageView];

        headerImageView = self->_headerImageView;
      }

      [(UIImageView *)headerImageView setImage:?];
      [(UIImageView *)self->_headerImageView sizeToFit];
    }

    else
    {
      [(UIImageView *)headerImageView removeFromSuperview];
      v10 = self->_headerImageView;
      self->_headerImageView = 0;
    }

    v5 = [(SKUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](v5);
}

- (void)_setMessage:(id)a3
{
  v16 = a3;
  v4 = [(UILabel *)self->_messageLabel text];
  if (v4 != v16 && ([v16 isEqualToString:v4] & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    if (v16)
    {
      if (!messageLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_messageLabel;
        self->_messageLabel = v6;

        v8 = self->_messageLabel;
        v9 = [(SKUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_messageLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        v12 = self->_messageLabel;
        v13 = [(SKUIGiftTheme *)self->_theme bodyTextColor];
        [(UILabel *)v12 setTextColor:v13];

        v14 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
        [v14 addSubview:self->_messageLabel];

        messageLabel = self->_messageLabel;
      }

      [(UILabel *)messageLabel setText:?];
    }

    else
    {
      [(UILabel *)messageLabel removeFromSuperview];
      v15 = self->_messageLabel;
      self->_messageLabel = 0;
    }

    [(SKUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)_setPrice:(id)a3
{
  v16 = a3;
  v4 = [(UILabel *)self->_priceLabel text];
  if (v4 != v16 && ([v16 isEqualToString:v4] & 1) == 0)
  {
    priceLabel = self->_priceLabel;
    if (v16)
    {
      if (!priceLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_priceLabel;
        self->_priceLabel = v6;

        v8 = self->_priceLabel;
        v9 = [(SKUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_priceLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:35.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_priceLabel;
        v13 = [(SKUIGiftTheme *)self->_theme primaryTextColor];
        [(UILabel *)v12 setTextColor:v13];

        v14 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
        [v14 addSubview:self->_priceLabel];

        priceLabel = self->_priceLabel;
      }

      [(UILabel *)priceLabel setText:?];
      [(UILabel *)self->_priceLabel sizeToFit];
    }

    else
    {
      [(UILabel *)priceLabel removeFromSuperview];
      v15 = self->_priceLabel;
      self->_priceLabel = 0;
    }

    [(SKUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)_setSenderName:(id)a3
{
  v33 = a3;
  v4 = [(UILabel *)self->_senderNameLabel text];
  if (v4 != v33 && ([v33 isEqualToString:v4] & 1) == 0)
  {
    senderNameLabel = self->_senderNameLabel;
    if (v33)
    {
      if (!senderNameLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_senderNameLabel;
        self->_senderNameLabel = v6;

        v8 = self->_senderNameLabel;
        v9 = [(SKUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:v9];

        v10 = self->_senderNameLabel;
        v11 = [MEMORY[0x277D75348] systemRedColor];
        [(UILabel *)v10 setBackgroundColor:v11];

        v12 = self->_senderNameLabel;
        v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v12 setFont:v13];

        v14 = self->_senderNameLabel;
        v15 = [(SKUIGiftTheme *)self->_theme bodyTextColor];
        [(UILabel *)v14 setTextColor:v15];

        v16 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
        [v16 addSubview:self->_senderNameLabel];

        senderNameLabel = self->_senderNameLabel;
      }

      [(UILabel *)senderNameLabel setText:?];
      if (self->_senderNameLabelLabel)
      {
        goto LABEL_13;
      }

      v17 = objc_alloc_init(MEMORY[0x277D756B8]);
      senderNameLabelLabel = self->_senderNameLabelLabel;
      self->_senderNameLabelLabel = v17;

      v19 = self->_senderNameLabelLabel;
      v20 = [(SKUIGiftTheme *)self->_theme backgroundColor];
      [(UILabel *)v19 setBackgroundColor:v20];

      v21 = self->_senderNameLabelLabel;
      v22 = [MEMORY[0x277D75348] systemRedColor];
      [(UILabel *)v21 setBackgroundColor:v22];

      v23 = self->_senderNameLabelLabel;
      v24 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
      [(UILabel *)v23 setFont:v24];

      v25 = self->_senderNameLabelLabel;
      v26 = [(SKUIGiftTheme *)self->_theme primaryTextColor];
      [(UILabel *)v25 setTextColor:v26];

      v27 = self->_senderNameLabelLabel;
      v28 = [(SKUIGiftConfiguration *)self->_giftConfiguration clientContext];
      v29 = v28;
      if (v28)
      {
        [v28 localizedStringForKey:@"GIFTING_THEME_SENDER_LABEL" inTable:@"Gifting"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"GIFTING_THEME_SENDER_LABEL" inBundles:0 inTable:@"Gifting"];
      }
      v32 = ;
      [(UILabel *)v27 setText:v32];

      [(UILabel *)self->_senderNameLabelLabel sizeToFit];
      v31 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
      [v31 addSubview:self->_senderNameLabelLabel];
    }

    else
    {
      [(UILabel *)senderNameLabel removeFromSuperview];
      v30 = self->_senderNameLabel;
      self->_senderNameLabel = 0;

      [(UILabel *)self->_senderNameLabelLabel removeFromSuperview];
      v31 = self->_senderNameLabelLabel;
      self->_senderNameLabelLabel = 0;
    }

LABEL_13:
    [(SKUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }
}

@end