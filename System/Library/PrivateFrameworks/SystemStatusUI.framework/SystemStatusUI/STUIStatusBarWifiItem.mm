@interface STUIStatusBarWifiItem
+ (id)groupWithPriority:(int64_t)priority;
- (STUIStatusBarImageView)networkIconView;
- (STUIStatusBarStringView)rawStringView;
- (STUIStatusBarWifiSignalView)signalView;
- (double)_barThicknessForUpdate:(id)update;
- (double)_interspaceForUpdate:(id)update;
- (double)_totalWidthForUpdate:(id)update;
- (id)_backgroundColorForUpdate:(id)update entry:(id)entry;
- (id)_fillColorForUpdate:(id)update entry:(id)entry;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)dependentEntryKeys;
- (id)entry;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_networkIconView;
- (void)_create_rawStringView;
- (void)_create_signalView;
@end

@implementation STUIStatusBarWifiItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x277CBEB98];
  wifiDataEntryKey = [(STUIStatusBarWifiItem *)self wifiDataEntryKey];
  v4 = [v2 setWithObject:wifiDataEntryKey];

  return v4;
}

- (id)entry
{
  statusBar = [(STUIStatusBarItem *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  wifiDataEntryKey = [(STUIStatusBarWifiItem *)self wifiDataEntryKey];
  v6 = [currentAggregatedData valueForKey:wifiDataEntryKey];

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

+ (id)groupWithPriority:(int64_t)priority
{
  v17[1] = *MEMORY[0x277D85DE8];
  signalStrengthDisplayIdentifier = [self signalStrengthDisplayIdentifier];
  v6 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:signalStrengthDisplayIdentifier priority:2];

  iconDisplayIdentifier = [self iconDisplayIdentifier];
  v8 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:iconDisplayIdentifier priority:3];
  v17[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = [v8 excludingPlacements:v9];

  rawDisplayIdentifier = [self rawDisplayIdentifier];
  v12 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:rawDisplayIdentifier priority:1];

  v16[0] = v6;
  v16[1] = v10;
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v14 = [(STUIStatusBarDisplayItemPlacementGroup *)STUIStatusBarDisplayItemPlacementWifiGroup groupWithPriority:priority placements:v13];

  [v14 setSignalStrengthPlacement:v6];
  [v14 setIconPlacement:v10];
  [v14 setRawPlacement:v12];

  return v14;
}

- (double)_barThicknessForUpdate:(id)update
{
  styleAttributes = [update styleAttributes];
  traitCollection = [styleAttributes traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  result = 2.5;
  if (v6 > 2.5)
  {
    return 2.66666667;
  }

  return result;
}

- (double)_interspaceForUpdate:(id)update
{
  styleAttributes = [update styleAttributes];
  traitCollection = [styleAttributes traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  result = 1.66666667;
  if (v6 <= 2.5)
  {
    return 1.5;
  }

  return result;
}

- (double)_totalWidthForUpdate:(id)update
{
  styleAttributes = [update styleAttributes];
  traitCollection = [styleAttributes traitCollection];
  [traitCollection displayScale];
  v6 = v5 > 2.5;

  return dbl_26C582340[v6];
}

- (id)_fillColorForUpdate:(id)update entry:(id)entry
{
  updateCopy = update;
  if ([entry lowDataModeActive])
  {
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  }

  else
  {
    styleAttributes = [updateCopy styleAttributes];
    imageTintColor = [styleAttributes imageTintColor];
    systemYellowColor = [imageTintColor colorWithAlphaComponent:1.0];
  }

  return systemYellowColor;
}

- (id)_backgroundColorForUpdate:(id)update entry:(id)entry
{
  updateCopy = update;
  if ([entry lowDataModeActive])
  {
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    [systemYellowColor colorWithAlphaComponent:0.3];
  }

  else
  {
    systemYellowColor = [updateCopy styleAttributes];
    [systemYellowColor imageDimmedTintColor];
  }
  v7 = ;

  return v7;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v37.receiver = self;
  v37.super_class = STUIStatusBarWifiItem;
  v8 = [(STUIStatusBarItem *)&v37 applyUpdate:updateCopy toDisplayItem:itemCopy];
  entry = [(STUIStatusBarWifiItem *)self entry];
  identifier = [itemCopy identifier];
  signalStrengthDisplayIdentifier = [objc_opt_class() signalStrengthDisplayIdentifier];
  v12 = signalStrengthDisplayIdentifier;
  if (identifier == signalStrengthDisplayIdentifier)
  {

LABEL_9:
    v20 = [itemCopy isEnabled] && objc_msgSend(entry, "isEnabled") && objc_msgSend(entry, "type") != 1;
    [itemCopy setEnabled:v20];
    signalView = [(STUIStatusBarWifiItem *)self signalView];
    if (![itemCopy isEnabled])
    {
      goto LABEL_50;
    }

    if (([updateCopy styleAttributesChanged] & 1) != 0 || objc_msgSend(updateCopy, "dataChanged"))
    {
      v22 = [(STUIStatusBarWifiItem *)self _backgroundColorForUpdate:updateCopy entry:entry];
      [signalView setInactiveColor:v22];

      v23 = [(STUIStatusBarWifiItem *)self _fillColorForUpdate:updateCopy entry:entry];
      [signalView setActiveColor:v23];
    }

    if ([updateCopy styleAttributesChanged])
    {
      styleAttributes = [updateCopy styleAttributes];
      mode = [styleAttributes mode];
      v26 = -0.666666667;
      if (mode != 1)
      {
        v26 = 0.0;
      }

      [itemCopy setBaselineOffset:v26];
    }

    if (![updateCopy dataChanged])
    {
      goto LABEL_50;
    }

    status = [entry status];
    v28 = 0;
    v29 = 0;
    if (status > 3)
    {
      if (status == 5)
      {
        v29 = 1;
        v28 = 2;
LABEL_41:
        if ([itemCopy isEnabled])
        {
          displayValue = [entry displayValue];
          if (v29)
          {
            [signalView setNumberOfActiveBars:displayValue];
          }

          [signalView setSignalMode:v28];
        }

        goto LABEL_50;
      }

      if (status != 4)
      {
        goto LABEL_41;
      }
    }

    else if (status >= 2)
    {
      if (status == 3)
      {
        v29 = 0;
        v28 = 1;
      }

      goto LABEL_41;
    }

    [itemCopy setEnabled:0];
    v29 = 0;
    v28 = 0;
    goto LABEL_41;
  }

  identifier2 = [itemCopy identifier];
  externalSignalStrengthDisplayIdentifier = [objc_opt_class() externalSignalStrengthDisplayIdentifier];

  if (identifier2 == externalSignalStrengthDisplayIdentifier)
  {
    goto LABEL_9;
  }

  identifier3 = [itemCopy identifier];
  iconDisplayIdentifier = [objc_opt_class() iconDisplayIdentifier];

  if (identifier3 == iconDisplayIdentifier)
  {
    if ([itemCopy isEnabled])
    {
      isEnabled = [entry isEnabled];
    }

    else
    {
      isEnabled = 0;
    }

    [itemCopy setEnabled:isEnabled];
    if (![itemCopy isEnabled])
    {
      goto LABEL_51;
    }

    status2 = [entry status];
    switch(status2)
    {
      case 5:
        if ([entry type] == 1)
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
        signalView = [v32 systemImageNamed:v33];
        networkIconView = [(STUIStatusBarWifiItem *)self networkIconView];
        [networkIconView setImage:signalView];
        goto LABEL_49;
    }

    [itemCopy setEnabled:0];
    goto LABEL_51;
  }

  identifier4 = [itemCopy identifier];
  rawDisplayIdentifier = [objc_opt_class() rawDisplayIdentifier];

  if (identifier4 == rawDisplayIdentifier)
  {
    v19 = [itemCopy isEnabled] && objc_msgSend(entry, "isEnabled") ? objc_msgSend(entry, "displayRawValue") : 0;
    [itemCopy setEnabled:v19];
    if ([itemCopy isEnabled])
    {
      signalView = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(entry, "rawValue")];
      networkIconView = [(STUIStatusBarWifiItem *)self rawStringView];
      [networkIconView setText:signalView];
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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  signalStrengthDisplayIdentifier = [objc_opt_class() signalStrengthDisplayIdentifier];
  v6 = signalStrengthDisplayIdentifier;
  if (signalStrengthDisplayIdentifier == identifierCopy)
  {

    goto LABEL_7;
  }

  externalSignalStrengthDisplayIdentifier = [objc_opt_class() externalSignalStrengthDisplayIdentifier];

  if (externalSignalStrengthDisplayIdentifier == identifierCopy)
  {
LABEL_7:
    signalView = [(STUIStatusBarWifiItem *)self signalView];
    goto LABEL_8;
  }

  iconDisplayIdentifier = [objc_opt_class() iconDisplayIdentifier];

  if (iconDisplayIdentifier == identifierCopy)
  {
    signalView = [(STUIStatusBarWifiItem *)self networkIconView];
  }

  else
  {
    rawDisplayIdentifier = [objc_opt_class() rawDisplayIdentifier];

    if (rawDisplayIdentifier == identifierCopy)
    {
      signalView = [(STUIStatusBarWifiItem *)self rawStringView];
    }

    else
    {
      v13.receiver = self;
      v13.super_class = STUIStatusBarWifiItem;
      signalView = [(STUIStatusBarItem *)&v13 viewForIdentifier:identifierCopy];
    }
  }

LABEL_8:
  v11 = signalView;

  return v11;
}

@end