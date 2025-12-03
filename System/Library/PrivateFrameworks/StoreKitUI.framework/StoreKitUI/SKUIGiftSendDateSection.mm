@interface SKUIGiftSendDateSection
- (SKUIGiftSendDateSectionDelegate)delegate;
- (UIEdgeInsets)headerInsets;
- (id)_headerView;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (int64_t)numberOfRowsInSection;
- (void)giftDateTableViewCell:(id)cell didChangeDate:(id)date;
- (void)setHeaderInsets:(UIEdgeInsets)insets;
- (void)setSendDate:(id)date;
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

  _headerView = [(SKUIGiftSendDateSection *)self _headerView];
  [_headerView contentInsets];
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

- (void)setHeaderInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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

  _headerView = [(SKUIGiftSendDateSection *)self _headerView];
  [_headerView setContentInsets:{top, left, bottom, right}];
  [_headerView sizeToFit];
}

- (void)setSendDate:(id)date
{
  dateCopy = date;
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

  if (self->_sendDate != dateCopy)
  {
    if (dateCopy)
    {
      date = [(NSDate *)dateCopy copy];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    sendDate = self->_sendDate;
    self->_sendDate = date;
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

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"GDT", path}];
  if (!v5)
  {
    v5 = [[SKUIGiftDateTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"GDT"];
    giftConfiguration = [(SKUIGiftTableViewSection *)self giftConfiguration];
    [(SKUIGiftDateTableViewCell *)v5 setGiftConfiguration:giftConfiguration];
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
    giftConfiguration = [(SKUIGiftTableViewSection *)self giftConfiguration];
    clientContext = [giftConfiguration clientContext];

    v6 = objc_alloc_init(SKUIGiftTableSectionHeaderView);
    v7 = self->_headerView;
    self->_headerView = v6;

    v8 = self->_headerView;
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_DATE_SECTION_HEADER" inTable:@"Gifting"];
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

- (void)giftDateTableViewCell:(id)cell didChangeDate:(id)date
{
  objc_storeStrong(&self->_sendDate, date);
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained giftSendDateSection:self didChangeDate:dateCopy];
}

- (SKUIGiftSendDateSectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end