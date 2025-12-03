@interface _UIStatusBarWifiItem
+ (id)groupWithPriority:(int64_t)priority;
- (_UIStatusBarImageView)networkIconView;
- (_UIStatusBarStringView)rawStringView;
- (_UIStatusBarWifiSignalView)signalView;
- (double)_barThicknessForUpdate:(id)update;
- (double)_interspaceForUpdate:(id)update;
- (double)_totalWidthForUpdate:(id)update;
- (id)_backgroundColorForUpdate:(id)update entry:(id)entry;
- (id)_fillColorForUpdate:(id)update entry:(id)entry;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_networkIconView;
- (void)_create_rawStringView;
- (void)_create_signalView;
@end

@implementation _UIStatusBarWifiItem

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

  return dbl_18A681710[v6];
}

- (id)_fillColorForUpdate:(id)update entry:(id)entry
{
  updateCopy = update;
  if ([entry lowDataModeActive])
  {
    v6 = +[UIColor systemYellowColor];
  }

  else
  {
    styleAttributes = [updateCopy styleAttributes];
    imageTintColor = [styleAttributes imageTintColor];
    v6 = [imageTintColor colorWithAlphaComponent:1.0];
  }

  return v6;
}

- (id)_backgroundColorForUpdate:(id)update entry:(id)entry
{
  updateCopy = update;
  if ([entry lowDataModeActive])
  {
    styleAttributes = +[UIColor systemYellowColor];
    [styleAttributes colorWithAlphaComponent:0.3];
  }

  else
  {
    styleAttributes = [updateCopy styleAttributes];
    [styleAttributes imageDimmedTintColor];
  }
  v7 = ;

  return v7;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v34.receiver = self;
  v34.super_class = _UIStatusBarWifiItem;
  v8 = [(_UIStatusBarItem *)&v34 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  wifiEntry = [data wifiEntry];

  identifier = [itemCopy identifier];
  signalStrengthDisplayIdentifier = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (identifier == signalStrengthDisplayIdentifier)
  {
    v18 = [itemCopy isEnabled] && objc_msgSend(wifiEntry, "isEnabled") && objc_msgSend(wifiEntry, "type") != 1;
    [itemCopy setEnabled:v18];
    signalView = [(_UIStatusBarWifiItem *)self signalView];
    if (![itemCopy isEnabled])
    {
      goto LABEL_49;
    }

    if (([updateCopy styleAttributesChanged] & 1) != 0 || objc_msgSend(updateCopy, "dataChanged"))
    {
      v20 = [(_UIStatusBarWifiItem *)self _backgroundColorForUpdate:updateCopy entry:wifiEntry];
      [signalView setInactiveColor:v20];

      v21 = [(_UIStatusBarWifiItem *)self _fillColorForUpdate:updateCopy entry:wifiEntry];
      [signalView setActiveColor:v21];
    }

    if ([updateCopy styleAttributesChanged])
    {
      styleAttributes = [updateCopy styleAttributes];
      mode = [styleAttributes mode];
      v24 = -0.666666667;
      if (mode != 1)
      {
        v24 = 0.0;
      }

      [itemCopy setBaselineOffset:v24];
    }

    if (![updateCopy dataChanged])
    {
      goto LABEL_49;
    }

    status = [wifiEntry status];
    v26 = 0;
    v27 = 0;
    if (status > 3)
    {
      if (status == 5)
      {
        v27 = 1;
        v26 = 2;
LABEL_45:
        if ([itemCopy isEnabled])
        {
          displayValue = [wifiEntry displayValue];
          if (v27)
          {
            [signalView setNumberOfActiveBars:displayValue];
          }

          [signalView setSignalMode:v26];
        }

        goto LABEL_49;
      }

      if (status != 4)
      {
        goto LABEL_45;
      }
    }

    else if (status >= 2)
    {
      if (status == 3)
      {
        v27 = 0;
        v26 = 1;
      }

      goto LABEL_45;
    }

    [itemCopy setEnabled:0];
    v27 = 0;
    v26 = 0;
    goto LABEL_45;
  }

  identifier2 = [itemCopy identifier];
  iconDisplayIdentifier = [objc_opt_class() iconDisplayIdentifier];

  if (identifier2 == iconDisplayIdentifier)
  {
    if ([itemCopy isEnabled])
    {
      isEnabled = [wifiEntry isEnabled];
    }

    else
    {
      isEnabled = 0;
    }

    [itemCopy setEnabled:isEnabled];
    if (![itemCopy isEnabled])
    {
      goto LABEL_50;
    }

    status2 = [wifiEntry status];
    switch(status2)
    {
      case 5:
        if ([wifiEntry type] == 1)
        {
          v30 = @"personalhotspot";
          goto LABEL_41;
        }

        break;
      case 4:
        v30 = @"wifi.exclamationmark";
        goto LABEL_41;
      case 1:
        v30 = @"wifi.slash";
LABEL_41:
        signalView = [UIImage systemImageNamed:v30];
        networkIconView = [(_UIStatusBarWifiItem *)self networkIconView];
        [networkIconView setImage:signalView];
        goto LABEL_42;
    }

    [itemCopy setEnabled:0];
    goto LABEL_50;
  }

  identifier3 = [itemCopy identifier];
  rawDisplayIdentifier = [objc_opt_class() rawDisplayIdentifier];

  if (identifier3 == rawDisplayIdentifier)
  {
    v17 = [itemCopy isEnabled] && objc_msgSend(wifiEntry, "isEnabled") ? objc_msgSend(wifiEntry, "displayRawValue") : 0;
    [itemCopy setEnabled:v17];
    if ([itemCopy isEnabled])
    {
      signalView = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(wifiEntry, "rawValue")];
      networkIconView = [(_UIStatusBarWifiItem *)self rawStringView];
      [networkIconView setText:signalView];
LABEL_42:

LABEL_49:
    }
  }

LABEL_50:

  return v8;
}

- (_UIStatusBarWifiSignalView)signalView
{
  signalView = self->_signalView;
  if (!signalView)
  {
    [(_UIStatusBarWifiItem *)self _create_signalView];
    signalView = self->_signalView;
  }

  return signalView;
}

- (void)_create_signalView
{
  v3 = [_UIStatusBarWifiSignalView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  signalView = self->_signalView;
  self->_signalView = v4;

  v6 = self->_signalView;

  [(_UIStatusBarSignalView *)v6 setNumberOfBars:3];
}

- (_UIStatusBarImageView)networkIconView
{
  networkIconView = self->_networkIconView;
  if (!networkIconView)
  {
    [(_UIStatusBarWifiItem *)self _create_networkIconView];
    networkIconView = self->_networkIconView;
  }

  return networkIconView;
}

- (void)_create_networkIconView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  networkIconView = self->_networkIconView;
  self->_networkIconView = v4;
}

- (_UIStatusBarStringView)rawStringView
{
  rawStringView = self->_rawStringView;
  if (!rawStringView)
  {
    [(_UIStatusBarWifiItem *)self _create_rawStringView];
    rawStringView = self->_rawStringView;
  }

  return rawStringView;
}

- (void)_create_rawStringView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  rawStringView = self->_rawStringView;
  self->_rawStringView = v4;
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  signalStrengthDisplayIdentifier = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (signalStrengthDisplayIdentifier == identifierCopy)
  {
    signalView = [(_UIStatusBarWifiItem *)self signalView];
  }

  else
  {
    iconDisplayIdentifier = [objc_opt_class() iconDisplayIdentifier];

    if (iconDisplayIdentifier == identifierCopy)
    {
      signalView = [(_UIStatusBarWifiItem *)self networkIconView];
    }

    else
    {
      rawDisplayIdentifier = [objc_opt_class() rawDisplayIdentifier];

      if (rawDisplayIdentifier == identifierCopy)
      {
        signalView = [(_UIStatusBarWifiItem *)self rawStringView];
      }

      else
      {
        v11.receiver = self;
        v11.super_class = _UIStatusBarWifiItem;
        signalView = [(_UIStatusBarItem *)&v11 viewForIdentifier:identifierCopy];
      }
    }
  }

  v9 = signalView;

  return v9;
}

+ (id)groupWithPriority:(int64_t)priority
{
  v17[1] = *MEMORY[0x1E69E9840];
  signalStrengthDisplayIdentifier = [self signalStrengthDisplayIdentifier];
  v6 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:signalStrengthDisplayIdentifier priority:2];

  iconDisplayIdentifier = [self iconDisplayIdentifier];
  v8 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:iconDisplayIdentifier priority:3];
  v17[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v10 = [v8 excludingPlacements:v9];

  rawDisplayIdentifier = [self rawDisplayIdentifier];
  v12 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:rawDisplayIdentifier priority:1];

  v16[0] = v6;
  v16[1] = v10;
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v14 = [(_UIStatusBarDisplayItemPlacementGroup *)_UIStatusBarDisplayItemPlacementWifiGroup groupWithPriority:priority placements:v13];

  [v14 setSignalStrengthPlacement:v6];
  [v14 setIconPlacement:v10];
  [v14 setRawPlacement:v12];

  return v14;
}

@end