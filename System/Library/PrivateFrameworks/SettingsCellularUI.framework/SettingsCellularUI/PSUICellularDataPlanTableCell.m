@interface PSUICellularDataPlanTableCell
- (BOOL)_isDisabledPhysicalSIM:(id)a3;
- (BOOL)canBeChecked;
- (PSUICellularDataPlanTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_cellularPlanItem;
- (id)detailText;
- (id)planDescription;
- (id)planStatus;
- (id)primaryText;
- (void)infoSymbolTapped:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PSUICellularDataPlanTableCell

- (PSUICellularDataPlanTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = PSUICellularDataPlanTableCell;
  v4 = [(PSTableCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
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
  v2 = [(PSTableCell *)self specifier];
  v3 = [v2 userInfo];

  return v3;
}

- (BOOL)canBeChecked
{
  v3 = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  v4 = [v3 item];

  v5 = [(PSTableCell *)self specifier];
  v6 = [v5 propertyForKey:*MEMORY[0x277D3FF38]];

  if ([v4 isSelectable] && objc_msgSend(v4, "transferredStatus") != 4)
  {
    if (v6)
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)primaryText
{
  v3 = [(PSUICellularDataPlanTableCell *)self planDescription];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(PSUICellularDataPlanTableCell *)self planStatus];
  }

  v5 = v4;

  return v5;
}

- (id)detailText
{
  v3 = [(PSUICellularDataPlanTableCell *)self planDescription];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(PSUICellularDataPlanTableCell *)self planStatus];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)planDescription
{
  v2 = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  v3 = [v2 item];
  v4 = [v3 isSimStateValid];

  if ((v4 & 1) == 0)
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v16;
    v17 = @"CELLULAR_PLAN_SIM_STATE_INVALID";
LABEL_9:
    v18 = [v16 localizedStringForKey:v17 value:&stru_287733598 table:@"Cellular"];
    goto LABEL_24;
  }

  v5 = [v2 item];
  v6 = [v5 isBackedByCellularPlan];

  v7 = [v2 item];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 plan];
    v10 = [v9 planDescription];

    v11 = [v2 item];
    v12 = [v11 plan];
    v13 = [v12 carrierName];

    v14 = [v2 alias];
    if ([v10 length] && objc_msgSend(v13, "length") && (objc_msgSend(v10, "isEqualToString:", v13) & 1) == 0)
    {
      v29 = MEMORY[0x277CCACA8];
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v31 = [v30 localizedStringForKey:@"CELLULAR_PLAN_CARRIER_AND_PLAN_NAME" value:&stru_287733598 table:@"Cellular"];
      v18 = [v29 stringWithFormat:v31, v13, v10];
    }

    else
    {
      if (v10)
      {
        v15 = v10;
      }

      else if (v14)
      {
        v15 = v14;
      }

      else
      {
        if (!v13)
        {
          v33 = [v2 item];
          v18 = [v33 name];

          goto LABEL_22;
        }

        v15 = v13;
      }

      v18 = v15;
    }

LABEL_22:

    goto LABEL_23;
  }

  v19 = [v7 identifier];
  v20 = [v19 isEqualToString:*MEMORY[0x277CF9690]];

  if (v20)
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = v16;
    v17 = @"HOME_PLAN";
    goto LABEL_9;
  }

  v21 = [v2 item];
  v22 = [v21 identifier];
  v23 = [v22 isEqualToString:*MEMORY[0x277CF9698]];

  v24 = [v2 item];
  v25 = v24;
  if (!v23)
  {
    v18 = [v24 name];
    v10 = v25;
    goto LABEL_24;
  }

  v26 = [v24 plan];
  v10 = [v26 carrierName];

  if ([v10 length])
  {
    v27 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v28 = [v13 localizedStringForKey:@"HOME_PLAN_FOR_CARRIER_WITH_ROAMING" value:&stru_287733598 table:@"Cellular"];
    v18 = [v27 stringWithFormat:v28, v10];
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v13 localizedStringForKey:@"HOME_PLAN_WITH_ROAMING" value:&stru_287733598 table:@"Cellular"];
  }

LABEL_23:

LABEL_24:

  return v18;
}

- (id)planStatus
{
  v2 = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  v3 = [v2 item];

  if ([v3 transferredStatus] == 4)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"CONVERTED";
  }

  else
  {
    if ([v3 transferredStatus])
    {
      v5 = [v3 transferredToDeviceDisplayName];
      if ([v5 length])
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"TRANSFERRED_TO_@" value:&stru_287733598 table:@"Gemini-Gemini"];
        v10 = [v7 stringWithFormat:v9, v5];
      }

      else
      {
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v10 = [v8 localizedStringForKey:@"TRANSFERRED" value:&stru_287733598 table:@"Gemini-Gemini"];
      }

      goto LABEL_13;
    }

    if ([v3 isBackedByCellularPlan] && objc_msgSend(v3, "isSimStateValid"))
    {
      v10 = PSUIFormatPlanStatusForPlan(v3);
      goto LABEL_14;
    }

    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"CELLULAR_PLAN_STATUS_SIM_CARD";
  }

  v10 = [v4 localizedStringForKey:v6 value:&stru_287733598 table:@"Cellular"];
LABEL_13:

LABEL_14:

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v22.receiver = self;
  v22.super_class = PSUICellularDataPlanTableCell;
  [(PSUICarrierSpacePlanTableCell *)&v22 refreshCellContentsWithSpecifier:a3];
  v4 = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  v5 = [v4 item];

  if (v5 && [v5 isSelected])
  {
    v6 = [objc_opt_class() checkIcon];
  }

  else
  {
    v6 = [objc_opt_class() spacerIcon];
  }

  v7 = v6;
  [(PSTableCell *)self setIcon:v6];

  if ([(PSUICellularDataPlanTableCell *)self _isDisabledPhysicalSIM:v5])
  {
    iconView = self->_iconView;
    v9 = [MEMORY[0x277D75348] systemGrayColor];
    [(UIImageView *)iconView setTintColor:v9];
  }

  v10 = [(PSUICellularDataPlanTableCell *)self primaryText];
  v11 = [(PSUICellularDataPlanTableCell *)self textLabel];
  [v11 setText:v10];

  v12 = [(PSUICellularDataPlanTableCell *)self detailText];
  v13 = [(PSUICellularDataPlanTableCell *)self detailTextLabel];
  [v13 setText:v12];

  if (v5)
  {
    v14 = [v5 plan];
    v15 = [v14 planStatus];

    if (v15 == 4)
    {
      v16 = [MEMORY[0x277D75348] redColor];
      v17 = [(PSUICellularDataPlanTableCell *)self detailTextLabel];
      [v17 setColor:v16];
    }
  }

  if ([v5 transferredStatus] == 4)
  {
    v18 = [(PSTableCell *)self specifier];
    [v18 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
  }

  v19 = [(PSUICellularDataPlanTableCell *)self canBeChecked];
  v20 = [(PSTableCell *)self titleLabel];
  [v20 setEnabled:v19];

  v21 = [(PSUICellularDataPlanTableCell *)self detailTextLabel];
  [v21 setEnabled:v19];

  [(PSUICellularDataPlanTableCell *)self setAccessoryView:self->_iconView];
}

- (void)infoSymbolTapped:(id)a3
{
  v4 = [(PSUICellularDataPlanTableCell *)self _cellularPlanItem];
  v5 = [v4 item];

  if ([(PSUICellularDataPlanTableCell *)self _isDisabledPhysicalSIM:v5])
  {
    v6 = [(PSUICellularDataPlanTableCell *)self getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "Skip sending notification for disabled physical SIM!", buf, 2u);
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

- (BOOL)_isDisabledPhysicalSIM:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ![v3 type])
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