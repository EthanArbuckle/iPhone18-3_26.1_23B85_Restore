@interface _UIStatusBarWifiItem
+ (id)groupWithPriority:(int64_t)a3;
- (_UIStatusBarImageView)networkIconView;
- (_UIStatusBarStringView)rawStringView;
- (_UIStatusBarWifiSignalView)signalView;
- (double)_barThicknessForUpdate:(id)a3;
- (double)_interspaceForUpdate:(id)a3;
- (double)_totalWidthForUpdate:(id)a3;
- (id)_backgroundColorForUpdate:(id)a3 entry:(id)a4;
- (id)_fillColorForUpdate:(id)a3 entry:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)viewForIdentifier:(id)a3;
- (void)_create_networkIconView;
- (void)_create_rawStringView;
- (void)_create_signalView;
@end

@implementation _UIStatusBarWifiItem

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

  return dbl_18A681710[v6];
}

- (id)_fillColorForUpdate:(id)a3 entry:(id)a4
{
  v5 = a3;
  if ([a4 lowDataModeActive])
  {
    v6 = +[UIColor systemYellowColor];
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
    v6 = +[UIColor systemYellowColor];
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
  v34.receiver = self;
  v34.super_class = _UIStatusBarWifiItem;
  v8 = [(_UIStatusBarItem *)&v34 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v6 data];
  v10 = [v9 wifiEntry];

  v11 = [v7 identifier];
  v12 = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (v11 == v12)
  {
    v18 = [v7 isEnabled] && objc_msgSend(v10, "isEnabled") && objc_msgSend(v10, "type") != 1;
    [v7 setEnabled:v18];
    v19 = [(_UIStatusBarWifiItem *)self signalView];
    if (![v7 isEnabled])
    {
      goto LABEL_49;
    }

    if (([v6 styleAttributesChanged] & 1) != 0 || objc_msgSend(v6, "dataChanged"))
    {
      v20 = [(_UIStatusBarWifiItem *)self _backgroundColorForUpdate:v6 entry:v10];
      [v19 setInactiveColor:v20];

      v21 = [(_UIStatusBarWifiItem *)self _fillColorForUpdate:v6 entry:v10];
      [v19 setActiveColor:v21];
    }

    if ([v6 styleAttributesChanged])
    {
      v22 = [v6 styleAttributes];
      v23 = [v22 mode];
      v24 = -0.666666667;
      if (v23 != 1)
      {
        v24 = 0.0;
      }

      [v7 setBaselineOffset:v24];
    }

    if (![v6 dataChanged])
    {
      goto LABEL_49;
    }

    v25 = [v10 status];
    v26 = 0;
    v27 = 0;
    if (v25 > 3)
    {
      if (v25 == 5)
      {
        v27 = 1;
        v26 = 2;
LABEL_45:
        if ([v7 isEnabled])
        {
          v32 = [v10 displayValue];
          if (v27)
          {
            [v19 setNumberOfActiveBars:v32];
          }

          [v19 setSignalMode:v26];
        }

        goto LABEL_49;
      }

      if (v25 != 4)
      {
        goto LABEL_45;
      }
    }

    else if (v25 >= 2)
    {
      if (v25 == 3)
      {
        v27 = 0;
        v26 = 1;
      }

      goto LABEL_45;
    }

    [v7 setEnabled:0];
    v27 = 0;
    v26 = 0;
    goto LABEL_45;
  }

  v13 = [v7 identifier];
  v14 = [objc_opt_class() iconDisplayIdentifier];

  if (v13 == v14)
  {
    if ([v7 isEnabled])
    {
      v28 = [v10 isEnabled];
    }

    else
    {
      v28 = 0;
    }

    [v7 setEnabled:v28];
    if (![v7 isEnabled])
    {
      goto LABEL_50;
    }

    v29 = [v10 status];
    switch(v29)
    {
      case 5:
        if ([v10 type] == 1)
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
        v19 = [UIImage systemImageNamed:v30];
        v31 = [(_UIStatusBarWifiItem *)self networkIconView];
        [v31 setImage:v19];
        goto LABEL_42;
    }

    [v7 setEnabled:0];
    goto LABEL_50;
  }

  v15 = [v7 identifier];
  v16 = [objc_opt_class() rawDisplayIdentifier];

  if (v15 == v16)
  {
    v17 = [v7 isEnabled] && objc_msgSend(v10, "isEnabled") ? objc_msgSend(v10, "displayRawValue") : 0;
    [v7 setEnabled:v17];
    if ([v7 isEnabled])
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v10, "rawValue")];
      v31 = [(_UIStatusBarWifiItem *)self rawStringView];
      [v31 setText:v19];
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (v5 == v4)
  {
    v8 = [(_UIStatusBarWifiItem *)self signalView];
  }

  else
  {
    v6 = [objc_opt_class() iconDisplayIdentifier];

    if (v6 == v4)
    {
      v8 = [(_UIStatusBarWifiItem *)self networkIconView];
    }

    else
    {
      v7 = [objc_opt_class() rawDisplayIdentifier];

      if (v7 == v4)
      {
        v8 = [(_UIStatusBarWifiItem *)self rawStringView];
      }

      else
      {
        v11.receiver = self;
        v11.super_class = _UIStatusBarWifiItem;
        v8 = [(_UIStatusBarItem *)&v11 viewForIdentifier:v4];
      }
    }
  }

  v9 = v8;

  return v9;
}

+ (id)groupWithPriority:(int64_t)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 signalStrengthDisplayIdentifier];
  v6 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v5 priority:2];

  v7 = [a1 iconDisplayIdentifier];
  v8 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:3];
  v17[0] = v6;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v10 = [v8 excludingPlacements:v9];

  v11 = [a1 rawDisplayIdentifier];
  v12 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:1];

  v16[0] = v6;
  v16[1] = v10;
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  v14 = [(_UIStatusBarDisplayItemPlacementGroup *)_UIStatusBarDisplayItemPlacementWifiGroup groupWithPriority:a3 placements:v13];

  [v14 setSignalStrengthPlacement:v6];
  [v14 setIconPlacement:v10];
  [v14 setRawPlacement:v12];

  return v14;
}

@end