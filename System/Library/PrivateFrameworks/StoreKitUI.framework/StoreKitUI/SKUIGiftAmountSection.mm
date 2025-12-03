@interface SKUIGiftAmountSection
- (NSString)selectedAmountString;
- (UIControl)amountControl;
- (double)heightForCellInTableView:(id)view indexPath:(id)path;
- (id)tableViewCellForTableView:(id)view indexPath:(id)path;
- (int64_t)numberOfRowsInSection;
- (int64_t)selectedAmount;
- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path;
@end

@implementation SKUIGiftAmountSection

- (UIControl)amountControl
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftAmountSection *)v3 amountControl:v4];
      }
    }
  }

  amountControl = self->_amountControl;
  if (!amountControl)
  {
    v12 = [SKUIGiftAmountControl alloc];
    giftConfiguration = [(SKUIGiftTableViewSection *)self giftConfiguration];
    v14 = [(SKUIGiftAmountControl *)v12 initWithGiftConfiguration:giftConfiguration];
    v15 = self->_amountControl;
    self->_amountControl = v14;

    [(SKUIGiftAmountControl *)self->_amountControl setAutoresizingMask:18];
    amountControl = self->_amountControl;
  }

  return amountControl;
}

- (int64_t)selectedAmount
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftAmountSection *)v3 selectedAmount:v4];
      }
    }
  }

  return [(SKUIGiftAmountControl *)self->_amountControl selectedAmount];
}

- (NSString)selectedAmountString
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGiftAmountSection *)v3 selectedAmountString:v4];
      }
    }
  }

  selectedAmountString = [(SKUIGiftAmountControl *)self->_amountControl selectedAmountString];

  return selectedAmountString;
}

- (double)heightForCellInTableView:(id)view indexPath:(id)path
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 152.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 116.0;
  }

  return result;
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
        [(SKUIGiftAmountSection *)v2 numberOfRowsInSection:v3];
      }
    }
  }

  return 1;
}

- (id)tableViewCellForTableView:(id)view indexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"GAM", path}];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"GAM"];
    [v5 setSelectionStyle:0];
  }

  amountControl = [(SKUIGiftAmountSection *)self amountControl];
  contentView = [v5 contentView];
  [contentView bounds];
  [amountControl setFrame:?];
  [contentView addSubview:amountControl];

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  backgroundColor = [view backgroundColor];
  [(SKUIGiftAmountControl *)self->_amountControl setBackgroundColor:backgroundColor];
  [cellCopy setBackgroundColor:backgroundColor];
}

@end