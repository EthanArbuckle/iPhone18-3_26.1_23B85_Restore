@interface PSUICellularDataPlanTableCell
- (BOOL)_isDisabledPhysicalSIM:(id)m;
- (BOOL)canBeChecked;
- (PSUICellularDataPlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_cellularPlanItem;
- (id)detailText;
- (id)planDescription;
- (id)planStatus;
- (id)primaryText;
- (void)infoSymbolTapped:(id)tapped;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation PSUICellularDataPlanTableCell

- (PSUICellularDataPlanTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = PSUICellularDataPlanTableCell;
  v4 = [(PSTableCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v4 action:sel_infoSymbolTapped_];
    [v5 setNumberOfTapsRequired:1];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"info.circle"];
    v7 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v6];
    iconView = v4->_iconView;
    v4->_iconView = v7;

    [(PSUICellularDataPlanTableCell *)v4 setAccessoryView:v4->_iconView];
    [(UIImageView *)v4->_iconView addGestureRecognizer:v5];
    [(UIImageView *)v4->_iconView setUserInteractionEnabled:1];
  }

  return v4;
}

- (id)_cellularPlanItem
{
  specifier = [(PSTableCell *)self specifier];
  userInfo = [specifier userInfo];

  return userInfo;
}

- (BOOL)canBeChecked
{
  _cellularPlanItem = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  item = [_cellularPlanItem item];

  specifier = [(PSTableCell *)self specifier];
  v6 = [specifier propertyForKey:*MEMORY[0x277D3FF38]];

  if ([item isSelectable] && objc_msgSend(item, "transferredStatus") != 4)
  {
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)primaryText
{
  planDescription = [(PSUICellularDataPlanTableCell *)self planDescription];
  if ([planDescription length])
  {
    planStatus = planDescription;
  }

  else
  {
    planStatus = [(PSUICellularDataPlanTableCell *)self planStatus];
  }

  v5 = planStatus;

  return v5;
}

- (id)detailText
{
  planDescription = [(PSUICellularDataPlanTableCell *)self planDescription];
  v4 = [planDescription length];

  if (v4)
  {
    planStatus = [(PSUICellularDataPlanTableCell *)self planStatus];
  }

  else
  {
    planStatus = 0;
  }

  return planStatus;
}

- (id)planDescription
{
  _cellularPlanItem = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  item = [_cellularPlanItem item];
  isSimStateValid = [item isSimStateValid];

  if ((isSimStateValid & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    planDescription = v16;
    v17 = @"CELLULAR_PLAN_SIM_STATE_INVALID";
LABEL_9:
    name = [v16 localizedStringForKey:v17 value:&stru_287733598 table:@"Cellular"];
    goto LABEL_24;
  }

  item2 = [_cellularPlanItem item];
  isBackedByCellularPlan = [item2 isBackedByCellularPlan];

  item3 = [_cellularPlanItem item];
  v8 = item3;
  if (isBackedByCellularPlan)
  {
    plan = [item3 plan];
    planDescription = [plan planDescription];

    item4 = [_cellularPlanItem item];
    plan2 = [item4 plan];
    carrierName = [plan2 carrierName];

    alias = [_cellularPlanItem alias];
    if ([planDescription length] && objc_msgSend(carrierName, "length") && (objc_msgSend(planDescription, "isEqualToString:", carrierName) & 1) == 0)
    {
      v29 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"CELLULAR_PLAN_CARRIER_AND_PLAN_NAME" value:&stru_287733598 table:@"Cellular"];
      name = [v29 stringWithFormat:v31, carrierName, planDescription];
    }

    else
    {
      if (planDescription)
      {
        v15 = planDescription;
      }

      else if (alias)
      {
        v15 = alias;
      }

      else
      {
        if (!carrierName)
        {
          item5 = [_cellularPlanItem item];
          name = [item5 name];

          goto LABEL_22;
        }

        v15 = carrierName;
      }

      name = v15;
    }

LABEL_22:

    goto LABEL_23;
  }

  identifier = [item3 identifier];
  v20 = [identifier isEqualToString:*MEMORY[0x277CF9690]];

  if (v20)
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    planDescription = v16;
    v17 = @"HOME_PLAN";
    goto LABEL_9;
  }

  item6 = [_cellularPlanItem item];
  identifier2 = [item6 identifier];
  v23 = [identifier2 isEqualToString:*MEMORY[0x277CF9698]];

  item7 = [_cellularPlanItem item];
  v25 = item7;
  if (!v23)
  {
    name = [item7 name];
    planDescription = v25;
    goto LABEL_24;
  }

  plan3 = [item7 plan];
  planDescription = [plan3 carrierName];

  if ([planDescription length])
  {
    v27 = MEMORY[0x277CCACA8];
    carrierName = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [carrierName localizedStringForKey:@"HOME_PLAN_FOR_CARRIER_WITH_ROAMING" value:&stru_287733598 table:@"Cellular"];
    name = [v27 stringWithFormat:v28, planDescription];
  }

  else
  {
    carrierName = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    name = [carrierName localizedStringForKey:@"HOME_PLAN_WITH_ROAMING" value:&stru_287733598 table:@"Cellular"];
  }

LABEL_23:

LABEL_24:

  return name;
}

- (id)planStatus
{
  _cellularPlanItem = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  item = [_cellularPlanItem item];

  if ([item transferredStatus] == 4)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    transferredToDeviceDisplayName = v4;
    v6 = @"CONVERTED";
  }

  else
  {
    if ([item transferredStatus])
    {
      transferredToDeviceDisplayName = [item transferredToDeviceDisplayName];
      if ([transferredToDeviceDisplayName length])
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"TRANSFERRED_TO_@" value:&stru_287733598 table:@"Gemini-Gemini"];
        v10 = [v7 stringWithFormat:v9, transferredToDeviceDisplayName];
      }

      else
      {
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = [v8 localizedStringForKey:@"TRANSFERRED" value:&stru_287733598 table:@"Gemini-Gemini"];
      }

      goto LABEL_13;
    }

    if ([item isBackedByCellularPlan] && objc_msgSend(item, "isSimStateValid"))
    {
      v10 = PSUIFormatPlanStatusForPlan(item);
      goto LABEL_14;
    }

    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    transferredToDeviceDisplayName = v4;
    v6 = @"CELLULAR_PLAN_STATUS_SIM_CARD";
  }

  v10 = [v4 localizedStringForKey:v6 value:&stru_287733598 table:@"Cellular"];
LABEL_13:

LABEL_14:

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v22.receiver = self;
  v22.super_class = PSUICellularDataPlanTableCell;
  [(PSUICarrierSpacePlanTableCell *)&v22 refreshCellContentsWithSpecifier:specifier];
  _cellularPlanItem = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  item = [_cellularPlanItem item];

  if (item && [item isSelected])
  {
    checkIcon = [objc_opt_class() checkIcon];
  }

  else
  {
    checkIcon = [objc_opt_class() spacerIcon];
  }

  v7 = checkIcon;
  [(PSTableCell *)self setIcon:checkIcon];

  if ([(PSUICellularDataPlanTableCell *)self _isDisabledPhysicalSIM:item])
  {
    iconView = self->_iconView;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UIImageView *)iconView setTintColor:systemGrayColor];
  }

  primaryText = [(PSUICellularDataPlanTableCell *)self primaryText];
  textLabel = [(PSUICellularDataPlanTableCell *)self textLabel];
  [textLabel setText:primaryText];

  detailText = [(PSUICellularDataPlanTableCell *)self detailText];
  detailTextLabel = [(PSUICellularDataPlanTableCell *)self detailTextLabel];
  [detailTextLabel setText:detailText];

  if (item)
  {
    plan = [item plan];
    planStatus = [plan planStatus];

    if (planStatus == 4)
    {
      redColor = [MEMORY[0x277D75348] redColor];
      detailTextLabel2 = [(PSUICellularDataPlanTableCell *)self detailTextLabel];
      [detailTextLabel2 setColor:redColor];
    }
  }

  if ([item transferredStatus] == 4)
  {
    specifier = [(PSTableCell *)self specifier];
    [specifier setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  canBeChecked = [(PSUICellularDataPlanTableCell *)self canBeChecked];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel setEnabled:canBeChecked];

  detailTextLabel3 = [(PSUICellularDataPlanTableCell *)self detailTextLabel];
  [detailTextLabel3 setEnabled:canBeChecked];

  [(PSUICellularDataPlanTableCell *)self setAccessoryView:self->_iconView];
}

- (void)infoSymbolTapped:(id)tapped
{
  _cellularPlanItem = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  item = [_cellularPlanItem item];

  if ([(PSUICellularDataPlanTableCell *)self _isDisabledPhysicalSIM:item])
  {
    getLogger = [(PSUICellularDataPlanTableCell *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "Skip sending notification for disabled physical SIM!", buf, 2u);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__PSUICellularDataPlanTableCell_infoSymbolTapped___block_invoke;
    block[3] = &unk_279BA9D58;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __50__PSUICellularDataPlanTableCell_infoSymbolTapped___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [*(a1 + 32) specifier];
  [v3 postNotificationName:@"PSDataPlanInfoSymbolTappedNotification" object:v2];
}

- (BOOL)_isDisabledPhysicalSIM:(id)m
{
  mCopy = m;
  v4 = mCopy;
  if (mCopy && ![mCopy type])
  {
    v5 = [v4 isSelected] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

@end