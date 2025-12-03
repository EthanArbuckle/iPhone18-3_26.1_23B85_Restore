@interface SKUIGiftTermsAndConditionsSection
- (id)_headerView;
- (id)headerViewForTableView:(id)view;
- (void)_termsAction:(id)action;
@end

@implementation SKUIGiftTermsAndConditionsSection

- (id)headerViewForTableView:(id)view
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIGiftTermsAndConditionsSection *)v4 headerViewForTableView:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  _headerView = [(SKUIGiftTermsAndConditionsSection *)self _headerView];

  return _headerView;
}

- (void)_termsAction:(id)action
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftTermsAndConditionsSection *)v3 _termsAction:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  termsAndConditionsURL = [MEMORY[0x277CBEBC0] termsAndConditionsURL];
  SKUIMetricsOpenURL(termsAndConditionsURL);
}

- (id)_headerView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftTermsAndConditionsSection *)v3 _headerView:v4];
      }
    }
  }

  headerView = self->_headerView;
  if (!headerView)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    v13 = self->_headerView;
    self->_headerView = v12;

    [(UIView *)self->_headerView setFrame:0.0, 0.0, 60.0, 45.0];
    [(UIView *)self->_headerView bounds];
    v15 = v14;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    v18 = [SKUILinkButton alloc];
    if (userInterfaceLayoutDirection)
    {
      v19 = 5;
    }

    else
    {
      v19 = 1;
    }

    v20 = [(SKUILinkButton *)v18 initWithArrowStyle:v19];
    [(SKUILinkButton *)v20 addTarget:self action:sel__termsAction_ forControlEvents:64];
    [(SKUILinkButton *)v20 setAutoresizingMask:5];
    giftConfiguration = [(SKUIGiftTableViewSection *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];

    if (SKUIUserInterfaceIdiom(clientContext) == 1)
    {
      if (clientContext)
      {
        v23 = @"GIFTING_TERMS_LINK_IPAD";
LABEL_14:
        v24 = [clientContext localizedStringForKey:v23 inTable:@"Gifting"];
LABEL_18:
        v26 = v24;
        [(SKUILinkButton *)v20 setTitle:v24 forState:0];
        titleLabel = [(SKUILinkButton *)v20 titleLabel];
        v28 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [titleLabel setFont:v28];

        _secondaryLabelColor = [MEMORY[0x277D75348] _secondaryLabelColor];
        [(SKUILinkButton *)v20 setTitleColor:_secondaryLabelColor forState:0];

        _labelColor = [MEMORY[0x277D75348] _labelColor];
        [(SKUILinkButton *)v20 setTitleColor:_labelColor forState:1];

        [(SKUILinkButton *)v20 sizeToFit];
        [(SKUILinkButton *)v20 frame];
        [(SKUILinkButton *)v20 setFrame:floor((v15 - v31) * 0.5), 25.0];
        [(UIView *)self->_headerView addSubview:v20];

        headerView = self->_headerView;
        goto LABEL_19;
      }

      v25 = @"GIFTING_TERMS_LINK_IPAD";
    }

    else
    {
      if (clientContext)
      {
        v23 = @"GIFTING_TERMS_LINK_IPHONE";
        goto LABEL_14;
      }

      v25 = @"GIFTING_TERMS_LINK_IPHONE";
    }

    v24 = [SKUIClientContext localizedStringForKey:v25 inBundles:0 inTable:@"Gifting"];
    goto LABEL_18;
  }

LABEL_19:

  return headerView;
}

@end