@interface SKUIGiftSendDateSection
- (SKUIGiftSendDateSectionDelegate)delegate;
- (UIEdgeInsets)headerInsets;
- (id)_headerView;
- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4;
- (int64_t)numberOfRowsInSection;
- (void)giftDateTableViewCell:(id)a3 didChangeDate:(id)a4;
- (void)setHeaderInsets:(UIEdgeInsets)a3;
- (void)setSendDate:(id)a3;
@end

@implementation SKUIGiftSendDateSection

- (UIEdgeInsets)headerInsets
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftSendDateSection *)v3 headerInsets:v4];
      }
    }
  }

  v11 = [(SKUIGiftSendDateSection *)self _headerView];
  [v11 contentInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.right = v23;
  result.bottom = v22;
  result.left = v21;
  result.top = v20;
  return result;
}

- (void)setHeaderInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIGiftSendDateSection *)v8 setHeaderInsets:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [(SKUIGiftSendDateSection *)self _headerView];
  [v16 setContentInsets:{top, left, bottom, right}];
  [v16 sizeToFit];
}

- (void)setSendDate:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGiftSendDateSection *)v5 setSendDate:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self->_sendDate != v4)
  {
    if (v4)
    {
      v13 = [(NSDate *)v4 copy];
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] date];
    }

    sendDate = self->_sendDate;
    self->_sendDate = v13;
  }
}

- (int64_t)numberOfRowsInSection
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIGiftSendDateSection *)v2 numberOfRowsInSection:v3];
      }
    }
  }

  return 1;
}

- (id)tableViewCellForTableView:(id)a3 indexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"GDT", a4}];
  if (!v5)
  {
    v5 = [[SKUIGiftDateTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GDT"];
    v6 = [(SKUIGiftTableViewSection *)self giftConfiguration];
    [(SKUIGiftDateTableViewCell *)v5 setGiftConfiguration:v6];
  }

  [(SKUIGiftDateTableViewCell *)v5 setChecked:1];
  [(SKUIGiftDateTableViewCell *)v5 setDate:self->_sendDate];
  [(SKUIGiftDateTableViewCell *)v5 setDelegate:self];
  [(SKUIGiftDateTableViewCell *)v5 setPlaceholder:0];
  [(SKUIGiftDateTableViewCell *)v5 setSelectionStyle:0];

  return v5;
}

- (id)_headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [(SKUIGiftTableViewSection *)self giftConfiguration];
    v5 = [v4 clientContext];

    v6 = objc_alloc_init(SKUIGiftTableSectionHeaderView);
    v7 = self->_headerView;
    self->_headerView = v6;

    v8 = self->_headerView;
    if (v5)
    {
      [v5 localizedStringForKey:@"GIFTING_DATE_SECTION_HEADER" inTable:@"Gifting"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"GIFTING_DATE_SECTION_HEADER" inBundles:0 inTable:@"Gifting"];
    }
    v9 = ;
    [(SKUIGiftTableSectionHeaderView *)v8 setLabel:v9];

    [(SKUIGiftTableSectionHeaderView *)self->_headerView sizeToFit];
    headerView = self->_headerView;
  }

  return headerView;
}

- (void)giftDateTableViewCell:(id)a3 didChangeDate:(id)a4
{
  objc_storeStrong(&self->_sendDate, a4);
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained giftSendDateSection:self didChangeDate:v6];
}

- (SKUIGiftSendDateSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end