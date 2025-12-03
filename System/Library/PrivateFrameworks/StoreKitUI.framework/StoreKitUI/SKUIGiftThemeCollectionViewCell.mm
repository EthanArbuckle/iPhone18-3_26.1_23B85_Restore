@interface SKUIGiftThemeCollectionViewCell
- (UIImage)itemImage;
- (id)_itemView;
- (void)_reloadItemView;
- (void)_setHeaderImage:(id)image;
- (void)_setMessage:(id)message;
- (void)_setPrice:(id)price;
- (void)_setSenderName:(id)name;
- (void)layoutSubviews;
- (void)reloadThemeHeaderImage;
- (void)setBackgroundColor:(id)color;
- (void)setGift:(id)gift;
- (void)setItemImage:(id)image;
- (void)setTheme:(id)theme;
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

  _itemView = [(SKUIGiftThemeCollectionViewCell *)self _itemView];
  itemImage = [_itemView itemImage];

  return itemImage;
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
    headerImage = [(SKUIGiftTheme *)theme headerImage];
    [(SKUIGiftThemeCollectionViewCell *)self _setHeaderImage:headerImage];
  }
}

- (void)setGift:(id)gift
{
  giftCopy = gift;
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

  if (self->_gift != giftCopy)
  {
    objc_storeStrong(&self->_gift, gift);
    message = [(SKUIGift *)self->_gift message];
    [(SKUIGiftThemeCollectionViewCell *)self _setMessage:message];

    senderName = [(SKUIGift *)self->_gift senderName];
    [(SKUIGiftThemeCollectionViewCell *)self _setSenderName:senderName];

    item = [(SKUIGift *)self->_gift item];

    if (item)
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

      currencySymbol = [(SKUIGiftConfiguration *)self->_giftConfiguration currencySymbol];
      if ([(SKUIGiftConfiguration *)self->_giftConfiguration currencySymbolPosition]== 1)
      {
        v22 = v20;
        v23 = currencySymbol;
      }

      else
      {
        v22 = currencySymbol;
        v23 = v20;
      }

      v24 = [v22 stringByAppendingString:v23];
      [(SKUIGiftThemeCollectionViewCell *)self _setPrice:v24];
    }
  }
}

- (void)setItemImage:(id)image
{
  imageCopy = image;
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

  _itemView = [(SKUIGiftThemeCollectionViewCell *)self _itemView];
  [_itemView setItemImage:imageCopy];
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
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

  if (self->_theme != themeCopy)
  {
    objc_storeStrong(&self->_theme, theme);
    headerImage = [(SKUIGiftTheme *)self->_theme headerImage];
    [(SKUIGiftThemeCollectionViewCell *)self _setHeaderImage:headerImage];

    backgroundColor = [(SKUIGiftTheme *)self->_theme backgroundColor];
    contentView = [(SKUIGiftThemeCollectionViewCell *)self contentView];
    [contentView setBackgroundColor:backgroundColor];

    [(UIImageView *)self->_headerImageView setBackgroundColor:backgroundColor];
    [(SKUIGiftItemView *)self->_itemView setBackgroundColor:backgroundColor];
    [(SKUIGiftItemView *)self->_itemView setTheme:self->_theme];
    [(UILabel *)self->_priceLabel setBackgroundColor:backgroundColor];
    priceLabel = self->_priceLabel;
    primaryTextColor = [(SKUIGiftTheme *)self->_theme primaryTextColor];
    [(UILabel *)priceLabel setTextColor:primaryTextColor];

    [(UILabel *)self->_messageLabel setBackgroundColor:backgroundColor];
    messageLabel = self->_messageLabel;
    bodyTextColor = [(SKUIGiftTheme *)self->_theme bodyTextColor];
    [(UILabel *)messageLabel setTextColor:bodyTextColor];

    [(UILabel *)self->_senderNameLabel setBackgroundColor:backgroundColor];
    senderNameLabel = self->_senderNameLabel;
    bodyTextColor2 = [(SKUIGiftTheme *)self->_theme bodyTextColor];
    [(UILabel *)senderNameLabel setTextColor:bodyTextColor2];

    [(UILabel *)self->_senderNameLabelLabel setBackgroundColor:backgroundColor];
    senderNameLabelLabel = self->_senderNameLabelLabel;
    primaryTextColor2 = [(SKUIGiftTheme *)self->_theme primaryTextColor];
    [(UILabel *)senderNameLabelLabel setTextColor:primaryTextColor2];

    themeName = [(SKUIGiftTheme *)themeCopy themeName];
    [(SKUIGiftThemeCollectionViewCell *)self setAccessibilityLabel:themeName];

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
  contentView = [(SKUIGiftThemeCollectionViewCell *)self contentView];
  [contentView frame];
  v13 = v12;
  v15 = v14;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v18 = 25.0;
  }

  else
  {
    v18 = 5.0;
  }

  [(SKUIGiftThemeCollectionViewCell *)self bounds];
  v20 = v19;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  v23 = 50.0;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v23 = 10.0;
  }

  v24 = v20 - v23;
  [contentView setFrame:{v18, v13, v24, v15}];
  backgroundView = [(SKUIGiftThemeCollectionViewCell *)self backgroundView];
  v62.origin.x = v18;
  v62.origin.y = v13;
  v62.size.width = v24;
  v62.size.height = v15;
  v63 = CGRectInset(v62, -4.0, -4.0);
  [backgroundView setFrame:{v63.origin.x, v63.origin.y, v63.size.width, v63.size.height}];
  [contentView bounds];
  v27 = v26;
  v29 = v28;
  contentView2 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
  [contentView2 bounds];
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

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = SKUIGiftThemeCollectionViewCell;
  [(SKUIGiftThemeCollectionViewCell *)&v6 setBackgroundColor:color];
  contentView = [(SKUIGiftThemeCollectionViewCell *)self contentView];
  backgroundColor = [(SKUIGiftTheme *)self->_theme backgroundColor];
  [contentView setBackgroundColor:backgroundColor];
}

- (id)_itemView
{
  item = [(SKUIGift *)self->_gift item];
  if (item)
  {
    itemView = self->_itemView;
    if (!itemView)
    {
      v5 = [[SKUIGiftItemView alloc] initWithStyle:1 item:item clientContext:0];
      v6 = self->_itemView;
      self->_itemView = v5;

      contentView = [(SKUIGiftThemeCollectionViewCell *)self contentView];
      [contentView addSubview:self->_itemView];

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
  item = [(SKUIGift *)self->_gift item];
  _itemView = [(SKUIGiftThemeCollectionViewCell *)self _itemView];
  artistName = [item artistName];
  [_itemView setArtistName:artistName];

  backgroundColor = [(SKUIGiftTheme *)self->_theme backgroundColor];
  [_itemView setBackgroundColor:backgroundColor];

  categoryName = [item categoryName];
  [_itemView setCategoryName:categoryName];

  [_itemView setNumberOfUserRatings:{objc_msgSend(item, "numberOfUserRatings")}];
  primaryItemOffer = [item primaryItemOffer];
  buttonText = [primaryItemOffer buttonText];
  [_itemView setPrice:buttonText];

  [_itemView setTheme:self->_theme];
  title = [item title];
  [_itemView setTitle:title];

  [item userRating];
  *&v11 = v10 / 5.0;
  [_itemView setUserRating:v11];
  [(SKUIGiftThemeCollectionViewCell *)self setNeedsLayout];
}

- (void)_setHeaderImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_headerImageView image];

  if (image != imageCopy)
  {
    headerImageView = self->_headerImageView;
    if (imageCopy)
    {
      if (!headerImageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_headerImageView;
        self->_headerImageView = v7;

        [(UIImageView *)self->_headerImageView setContentMode:1];
        contentView = [(SKUIGiftThemeCollectionViewCell *)self contentView];
        [contentView addSubview:self->_headerImageView];

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

    setNeedsLayout = [(SKUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](setNeedsLayout);
}

- (void)_setMessage:(id)message
{
  messageCopy = message;
  text = [(UILabel *)self->_messageLabel text];
  if (text != messageCopy && ([messageCopy isEqualToString:text] & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    if (messageCopy)
    {
      if (!messageLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_messageLabel;
        self->_messageLabel = v6;

        v8 = self->_messageLabel;
        backgroundColor = [(SKUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_messageLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v10 setFont:v11];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        v12 = self->_messageLabel;
        bodyTextColor = [(SKUIGiftTheme *)self->_theme bodyTextColor];
        [(UILabel *)v12 setTextColor:bodyTextColor];

        contentView = [(SKUIGiftThemeCollectionViewCell *)self contentView];
        [contentView addSubview:self->_messageLabel];

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

- (void)_setPrice:(id)price
{
  priceCopy = price;
  text = [(UILabel *)self->_priceLabel text];
  if (text != priceCopy && ([priceCopy isEqualToString:text] & 1) == 0)
  {
    priceLabel = self->_priceLabel;
    if (priceCopy)
    {
      if (!priceLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_priceLabel;
        self->_priceLabel = v6;

        v8 = self->_priceLabel;
        backgroundColor = [(SKUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_priceLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:35.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_priceLabel;
        primaryTextColor = [(SKUIGiftTheme *)self->_theme primaryTextColor];
        [(UILabel *)v12 setTextColor:primaryTextColor];

        contentView = [(SKUIGiftThemeCollectionViewCell *)self contentView];
        [contentView addSubview:self->_priceLabel];

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

- (void)_setSenderName:(id)name
{
  nameCopy = name;
  text = [(UILabel *)self->_senderNameLabel text];
  if (text != nameCopy && ([nameCopy isEqualToString:text] & 1) == 0)
  {
    senderNameLabel = self->_senderNameLabel;
    if (nameCopy)
    {
      if (!senderNameLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_senderNameLabel;
        self->_senderNameLabel = v6;

        v8 = self->_senderNameLabel;
        backgroundColor = [(SKUIGiftTheme *)self->_theme backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_senderNameLabel;
        systemRedColor = [MEMORY[0x277D75348] systemRedColor];
        [(UILabel *)v10 setBackgroundColor:systemRedColor];

        v12 = self->_senderNameLabel;
        v13 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v12 setFont:v13];

        v14 = self->_senderNameLabel;
        bodyTextColor = [(SKUIGiftTheme *)self->_theme bodyTextColor];
        [(UILabel *)v14 setTextColor:bodyTextColor];

        contentView = [(SKUIGiftThemeCollectionViewCell *)self contentView];
        [contentView addSubview:self->_senderNameLabel];

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
      backgroundColor2 = [(SKUIGiftTheme *)self->_theme backgroundColor];
      [(UILabel *)v19 setBackgroundColor:backgroundColor2];

      v21 = self->_senderNameLabelLabel;
      systemRedColor2 = [MEMORY[0x277D75348] systemRedColor];
      [(UILabel *)v21 setBackgroundColor:systemRedColor2];

      v23 = self->_senderNameLabelLabel;
      v24 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
      [(UILabel *)v23 setFont:v24];

      v25 = self->_senderNameLabelLabel;
      primaryTextColor = [(SKUIGiftTheme *)self->_theme primaryTextColor];
      [(UILabel *)v25 setTextColor:primaryTextColor];

      v27 = self->_senderNameLabelLabel;
      clientContext = [(SKUIGiftConfiguration *)self->_giftConfiguration clientContext];
      v29 = clientContext;
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"GIFTING_THEME_SENDER_LABEL" inTable:@"Gifting"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"GIFTING_THEME_SENDER_LABEL" inBundles:0 inTable:@"Gifting"];
      }
      v32 = ;
      [(UILabel *)v27 setText:v32];

      [(UILabel *)self->_senderNameLabelLabel sizeToFit];
      contentView2 = [(SKUIGiftThemeCollectionViewCell *)self contentView];
      [contentView2 addSubview:self->_senderNameLabelLabel];
    }

    else
    {
      [(UILabel *)senderNameLabel removeFromSuperview];
      v30 = self->_senderNameLabel;
      self->_senderNameLabel = 0;

      [(UILabel *)self->_senderNameLabelLabel removeFromSuperview];
      contentView2 = self->_senderNameLabelLabel;
      self->_senderNameLabelLabel = 0;
    }

LABEL_13:
    [(SKUIGiftThemeCollectionViewCell *)self setNeedsLayout];
  }
}

@end