@interface STUIStatusBarWifiItem
+ (id)groupWithPriority:(int64_t)a3;
- (STUIStatusBarImageView)networkIconView;
- (STUIStatusBarStringView)rawStringView;
- (STUIStatusBarWifiSignalView)signalView;
- (double)_barThicknessForUpdate:(id)a3;
- (double)_interspaceForUpdate:(id)a3;
- (double)_totalWidthForUpdate:(id)a3;
- (id)_backgroundColorForUpdate:(id)a3 entry:(id)a4;
- (id)_fillColorForUpdate:(id)a3 entry:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)dependentEntryKeys;
- (id)entry;
- (id)viewForIdentifier:(id)a3;
- (void)_create_networkIconView;
- (void)_create_rawStringView;
- (void)_create_signalView;
@end

@implementation STUIStatusBarWifiItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(STUIStatusBarWifiItem *)self wifiDataEntryKey];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)entry
{
  v3 = [(STUIStatusBarItem *)self statusBar];
  v4 = [v3 currentAggregatedData];
  v5 = [(STUIStatusBarWifiItem *)self wifiDataEntryKey];
  v6 = [v4 valueForKey:v5];

  return v6;
}

- (STUIStatusBarWifiSignalView)signalView
{
  signalView = self->_signalView;
  if (!signalView)
  {
    [(STUIStatusBarWifiItem *)self _create_signalView];
    signalView = self->_signalView;
  }

  return signalView;
}

- (void)_create_signalView
{
  v3 = [STUIStatusBarWifiSignalView alloc];
  v4 = [(STUIStatusBarWifiSignalView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  signalView = self->_signalView;
  self->_signalView = v4;

  v6 = self->_signalView;

  [(STUIStatusBarSignalView *)v6 setNumberOfBars:3];
}

+ (id)groupWithPriority:(int64_t)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = [a1 signalStrengthDisplayIdentifier];
  v6 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:2];

  v7 = [a1 iconDisplayIdentifier];
  v8 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:3];
  v17[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = [v8 excludingPlacements:v9];

  v11 = [a1 rawDisplayIdentifier];
  v12 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:1];

  v16[0] = v6;
  v16[1] = v10;
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v14 = [(STUIStatusBarDisplayItemPlacementGroup *)STUIStatusBarDisplayItemPlacementWifiGroup groupWithPriority:a3 placements:v13];

  [v14 setSignalStrengthPlacement:v6];
  [v14 setIconPlacement:v10];
  [v14 setRawPlacement:v12];

  return v14;
}

- (double)_barThicknessForUpdate:(id)a3
{
  v3 = [a3 styleAttributes];
  v4 = [v3 traitCollection];
  [v4 displayScale];
  v6 = v5;

  result = 2.5;
  if (v6 > 2.5)
  {
    return 2.66666667;
  }

  return result;
}

- (double)_interspaceForUpdate:(id)a3
{
  v3 = [a3 styleAttributes];
  v4 = [v3 traitCollection];
  [v4 displayScale];
  v6 = v5;

  result = 1.66666667;
  if (v6 <= 2.5)
  {
    return 1.5;
  }

  return result;
}

- (double)_totalWidthForUpdate:(id)a3
{
  v3 = [a3 styleAttributes];
  v4 = [v3 traitCollection];
  [v4 displayScale];
  v6 = v5 > 2.5;

  return dbl_26C582340[v6];
}

- (id)_fillColorForUpdate:(id)a3 entry:(id)a4
{
  v5 = a3;
  if ([a4 lowDataModeActive])
  {
    v6 = [MEMORY[0x277D75348] systemYellowColor];
  }

  else
  {
    v7 = [v5 styleAttributes];
    v8 = [v7 imageTintColor];
    v6 = [v8 colorWithAlphaComponent:1.0];
  }

  return v6;
}

- (id)_backgroundColorForUpdate:(id)a3 entry:(id)a4
{
  v5 = a3;
  if ([a4 lowDataModeActive])
  {
    v6 = [MEMORY[0x277D75348] systemYellowColor];
    [v6 colorWithAlphaComponent:0.3];
  }

  else
  {
    v6 = [v5 styleAttributes];
    [v6 imageDimmedTintColor];
  }
  v7 = ;

  return v7;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = STUIStatusBarWifiItem;
  v8 = [(STUIStatusBarItem *)&v37 applyUpdate:v6 toDisplayItem:v7];
  v9 = [(STUIStatusBarWifiItem *)self entry];
  v10 = [v7 identifier];
  v11 = [objc_opt_class() signalStrengthDisplayIdentifier];
  v12 = v11;
  if (v10 == v11)
  {

LABEL_9:
    v20 = [v7 isEnabled] && objc_msgSend(v9, "isEnabled") && objc_msgSend(v9, "type") != 1;
    [v7 setEnabled:v20];
    v21 = [(STUIStatusBarWifiItem *)self signalView];
    if (![v7 isEnabled])
    {
      goto LABEL_50;
    }

    if (([v6 styleAttributesChanged] & 1) != 0 || objc_msgSend(v6, "dataChanged"))
    {
      v22 = [(STUIStatusBarWifiItem *)self _backgroundColorForUpdate:v6 entry:v9];
      [v21 setInactiveColor:v22];

      v23 = [(STUIStatusBarWifiItem *)self _fillColorForUpdate:v6 entry:v9];
      [v21 setActiveColor:v23];
    }

    if ([v6 styleAttributesChanged])
    {
      v24 = [v6 styleAttributes];
      v25 = [v24 mode];
      v26 = -0.666666667;
      if (v25 != 1)
      {
        v26 = 0.0;
      }

      [v7 setBaselineOffset:v26];
    }

    if (![v6 dataChanged])
    {
      goto LABEL_50;
    }

    v27 = [v9 status];
    v28 = 0;
    v29 = 0;
    if (v27 > 3)
    {
      if (v27 == 5)
      {
        v29 = 1;
        v28 = 2;
LABEL_41:
        if ([v7 isEnabled])
        {
          v35 = [v9 displayValue];
          if (v29)
          {
            [v21 setNumberOfActiveBars:v35];
          }

          [v21 setSignalMode:v28];
        }

        goto LABEL_50;
      }

      if (v27 != 4)
      {
        goto LABEL_41;
      }
    }

    else if (v27 >= 2)
    {
      if (v27 == 3)
      {
        v29 = 0;
        v28 = 1;
      }

      goto LABEL_41;
    }

    [v7 setEnabled:0];
    v29 = 0;
    v28 = 0;
    goto LABEL_41;
  }

  v13 = [v7 identifier];
  v14 = [objc_opt_class() externalSignalStrengthDisplayIdentifier];

  if (v13 == v14)
  {
    goto LABEL_9;
  }

  v15 = [v7 identifier];
  v16 = [objc_opt_class() iconDisplayIdentifier];

  if (v15 == v16)
  {
    if ([v7 isEnabled])
    {
      v30 = [v9 isEnabled];
    }

    else
    {
      v30 = 0;
    }

    [v7 setEnabled:v30];
    if (![v7 isEnabled])
    {
      goto LABEL_51;
    }

    v31 = [v9 status];
    switch(v31)
    {
      case 5:
        if ([v9 type] == 1)
        {
          v32 = MEMORY[0x277D755B8];
          v33 = @"personalhotspot";
          goto LABEL_48;
        }

        break;
      case 4:
        v32 = MEMORY[0x277D755B8];
        v33 = @"wifi.exclamationmark";
        goto LABEL_48;
      case 1:
        v32 = MEMORY[0x277D755B8];
        v33 = @"wifi.slash";
LABEL_48:
        v21 = [v32 systemImageNamed:v33];
        v34 = [(STUIStatusBarWifiItem *)self networkIconView];
        [v34 setImage:v21];
        goto LABEL_49;
    }

    [v7 setEnabled:0];
    goto LABEL_51;
  }

  v17 = [v7 identifier];
  v18 = [objc_opt_class() rawDisplayIdentifier];

  if (v17 == v18)
  {
    v19 = [v7 isEnabled] && objc_msgSend(v9, "isEnabled") ? objc_msgSend(v9, "displayRawValue") : 0;
    [v7 setEnabled:v19];
    if ([v7 isEnabled])
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v9, "rawValue")];
      v34 = [(STUIStatusBarWifiItem *)self rawStringView];
      [v34 setText:v21];
LABEL_49:

LABEL_50:
    }
  }

LABEL_51:

  return v8;
}

- (STUIStatusBarImageView)networkIconView
{
  networkIconView = self->_networkIconView;
  if (!networkIconView)
  {
    [(STUIStatusBarWifiItem *)self _create_networkIconView];
    networkIconView = self->_networkIconView;
  }

  return networkIconView;
}

- (void)_create_networkIconView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  networkIconView = self->_networkIconView;
  self->_networkIconView = v4;

  MEMORY[0x2821F96F8](v4, networkIconView);
}

- (STUIStatusBarStringView)rawStringView
{
  rawStringView = self->_rawStringView;
  if (!rawStringView)
  {
    [(STUIStatusBarWifiItem *)self _create_rawStringView];
    rawStringView = self->_rawStringView;
  }

  return rawStringView;
}

- (void)_create_rawStringView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  rawStringView = self->_rawStringView;
  self->_rawStringView = v4;

  MEMORY[0x2821F96F8](v4, rawStringView);
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() signalStrengthDisplayIdentifier];
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_7;
  }

  v7 = [objc_opt_class() externalSignalStrengthDisplayIdentifier];

  if (v7 == v4)
  {
LABEL_7:
    v10 = [(STUIStatusBarWifiItem *)self signalView];
    goto LABEL_8;
  }

  v8 = [objc_opt_class() iconDisplayIdentifier];

  if (v8 == v4)
  {
    v10 = [(STUIStatusBarWifiItem *)self networkIconView];
  }

  else
  {
    v9 = [objc_opt_class() rawDisplayIdentifier];

    if (v9 == v4)
    {
      v10 = [(STUIStatusBarWifiItem *)self rawStringView];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = STUIStatusBarWifiItem;
      v10 = [(STUIStatusBarItem *)&v13 viewForIdentifier:v4];
    }
  }

LABEL_8:
  v11 = v10;

  return v11;
}

@end