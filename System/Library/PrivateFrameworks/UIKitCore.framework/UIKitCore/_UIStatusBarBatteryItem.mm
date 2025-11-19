@interface _UIStatusBarBatteryItem
- (_UIStatusBarBatteryView)batteryView;
- (_UIStatusBarImageView)chargingView;
- (_UIStatusBarStaticBatteryView)staticBatteryView;
- (_UIStatusBarStringView)percentView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)viewForIdentifier:(id)a3;
- (void)_create_batteryView;
- (void)_create_chargingView;
- (void)_create_percentView;
- (void)_create_staticBatteryView;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation _UIStatusBarBatteryItem

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v54.receiver = self;
  v54.super_class = _UIStatusBarBatteryItem;
  v8 = [(_UIStatusBarItem *)&v54 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v6 data];
  v10 = [v9 mainBatteryEntry];

  v11 = [v7 identifier];
  v12 = [objc_opt_class() iconDisplayIdentifier];
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_12;
  }

  v14 = [v7 identifier];
  v15 = [objc_opt_class() staticIconDisplayIdentifier];

  if (v14 == v15)
  {
LABEL_12:
    v24 = [v7 identifier];
    v25 = [objc_opt_class() iconDisplayIdentifier];
    if (v24 == v25)
    {
      [(_UIStatusBarBatteryItem *)self batteryView];
    }

    else
    {
      [(_UIStatusBarBatteryItem *)self staticBatteryView];
    }
    v20 = ;

    v26 = [v6 styleAttributes];
    if ([v6 dataChanged])
    {
      v27 = [v10 capacity];
      if (v27 / 100.0 <= 0.01)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v27 / 100.0;
      }

      v29 = [v10 state];
      if (v29 <= 3)
      {
        [v20 setChargingState:qword_18A6816D8[v29]];
      }

      if (-[_UIStatusBarBatteryItem usesCondensedPercentageDisplay](self, "usesCondensedPercentageDisplay") && [v26 mode] != 1)
      {
        if ([v10 prominentlyShowsDetailString])
        {
          v30 = 1;
        }

        else
        {
          if (_UIInternalPreferencesRevisionOnce != -1)
          {
            dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
          }

          if (_UIInternalPreferencesRevisionVar < 1 || (v52 = _UIInternalPreference_StatusBarBatteryCondensedPercentageForceEnabled, _UIInternalPreferencesRevisionVar == _UIInternalPreference_StatusBarBatteryCondensedPercentageForceEnabled))
          {
            v47 = 0;
          }

          else
          {
            v53 = _UIInternalPreferencesRevisionVar;
            do
            {
              v47 = v53 < v52;
              if (v53 < v52)
              {
                break;
              }

              _UIInternalPreferenceSync(v53, &_UIInternalPreference_StatusBarBatteryCondensedPercentageForceEnabled, @"StatusBarBatteryCondensedPercentageForceEnabled", _UIInternalPreferenceUpdateBool);
              v52 = _UIInternalPreference_StatusBarBatteryCondensedPercentageForceEnabled;
            }

            while (v53 != _UIInternalPreference_StatusBarBatteryCondensedPercentageForceEnabled);
          }

          if (byte_1EA95E67C)
          {
            v30 = v47;
          }

          else
          {
            v30 = 0;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      [v20 setShowsPercentage:v30];
      [v20 setChargePercent:v28];
      [v20 setSaverModeActive:{objc_msgSend(v10, "saverModeActive")}];
    }

    if ([v6 styleAttributesChanged])
    {
      v31 = [v26 imageTintColor];
      [v20 setFillColor:v31];

      v32 = [v7 identifier];
      v33 = [objc_opt_class() iconDisplayIdentifier];

      if (v32 == v33)
      {
        v34 = [v20 layer];
        [v34 setShouldRasterize:1];

        v35 = [v26 traitCollection];
        [v35 displayScale];
        v37 = v36;
        v38 = [v20 layer];
        [v38 setRasterizationScale:v37];
      }

      v39 = [v26 mode];
      v40 = -0.333333333;
      if (v39 == 1)
      {
        v40 = -1.0;
      }

      [v7 setBaselineOffset:v40];
    }

    goto LABEL_31;
  }

  v16 = [v7 identifier];
  v17 = [objc_opt_class() chargingDisplayIdentifier];

  if (v16 == v17)
  {
    if ([v7 isEnabled])
    {
      v42 = [v10 state] == 1;
    }

    else
    {
      v42 = 0;
    }

    [v7 setEnabled:v42];
    if (![v7 isEnabled])
    {
      goto LABEL_33;
    }

    v43 = [(_UIStatusBarBatteryItem *)self chargingView];
    v44 = [v43 image];

    if (v44)
    {
      goto LABEL_33;
    }

    v20 = +[_UIStatusBarImageProvider sharedProvider];
    v26 = [v6 styleAttributes];
    v45 = [v20 imageNamed:@"Large_Bolt" styleAttributes:v26];
    v46 = [(_UIStatusBarBatteryItem *)self chargingView];
    [v46 setImage:v45];

    goto LABEL_31;
  }

  v18 = [v7 identifier];
  v19 = [objc_opt_class() percentDisplayIdentifier];

  if (v18 != v19)
  {
    goto LABEL_33;
  }

  v20 = [v10 detailString];
  v21 = [v6 styleAttributes];
  if ([v21 mode] == 1)
  {
    goto LABEL_8;
  }

  v22 = [v10 prominentlyShowsDetailString];

  if ((v22 & 1) == 0)
  {
    v21 = v20;
    v20 = 0;
LABEL_8:
  }

  if ([v20 length])
  {
    v23 = [(_UIStatusBarBatteryItem *)self percentView];
    [v23 setText:v20];
  }

  else
  {
    [v7 setEnabled:0];
  }

  if (![v6 styleAttributesChanged])
  {
    goto LABEL_32;
  }

  v48 = [v6 styleAttributes];
  v49 = [v48 effectiveLayoutDirection];

  if (v49 == 1)
  {
    v50 = 2.0;
  }

  else
  {
    v50 = 0.0;
  }

  if (v49 == 1)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = 2.0;
  }

  v26 = [(_UIStatusBarBatteryItem *)self percentView];
  [v26 setAlignmentRectInsets:{0.0, v50, 0.0, v51}];
LABEL_31:

LABEL_32:
LABEL_33:

  return v8;
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v4 = a3;
    self->_highlighted = a3;
    v5 = [(_UIStatusBarBatteryItem *)self batteryView];
    v8 = v5;
    v6 = 0.4;
    if (v4)
    {
      v6 = 0.8;
      v7 = 0.9;
    }

    else
    {
      v7 = 0.5;
    }

    [v5 setBodyColorAlpha:v6];
    [v8 setPinColorAlpha:v7];
    [v8 setShowsInlineChargingIndicator:!v4];
  }
}

- (_UIStatusBarBatteryView)batteryView
{
  batteryView = self->_batteryView;
  if (!batteryView)
  {
    [(_UIStatusBarBatteryItem *)self _create_batteryView];
    batteryView = self->_batteryView;
  }

  return batteryView;
}

- (void)_create_batteryView
{
  v3 = [_UIStatusBarBatteryView alloc];
  v4 = [(_UIStatusBarBatteryView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  batteryView = self->_batteryView;
  self->_batteryView = v4;

  [(_UIStatusBarBatteryView *)self->_batteryView setInternalSizeCategory:0];
  v6 = self->_batteryView;

  [(_UIStatusBarBatteryView *)v6 setShowsInlineChargingIndicator:1];
}

- (_UIStatusBarStaticBatteryView)staticBatteryView
{
  staticBatteryView = self->_staticBatteryView;
  if (!staticBatteryView)
  {
    [(_UIStatusBarBatteryItem *)self _create_staticBatteryView];
    staticBatteryView = self->_staticBatteryView;
  }

  return staticBatteryView;
}

- (void)_create_staticBatteryView
{
  v3 = [_UIStatusBarStaticBatteryView alloc];
  v4 = [(_UIStatusBarBatteryView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  staticBatteryView = self->_staticBatteryView;
  self->_staticBatteryView = v4;

  [(_UIStatusBarBatteryView *)self->_staticBatteryView setInternalSizeCategory:0];
  v6 = self->_staticBatteryView;

  [(_UIStatusBarBatteryView *)v6 setShowsInlineChargingIndicator:1];
}

- (_UIStatusBarImageView)chargingView
{
  chargingView = self->_chargingView;
  if (!chargingView)
  {
    [(_UIStatusBarBatteryItem *)self _create_chargingView];
    chargingView = self->_chargingView;
  }

  return chargingView;
}

- (void)_create_chargingView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  chargingView = self->_chargingView;
  self->_chargingView = v4;

  v6 = [UIImage kitImageNamed:@"Black_lightning"];
  [(_UIStatusBarImageView *)self->_chargingView setAccessibilityHUDImage:v6];
}

- (_UIStatusBarStringView)percentView
{
  percentView = self->_percentView;
  if (!percentView)
  {
    [(_UIStatusBarBatteryItem *)self _create_percentView];
    percentView = self->_percentView;
  }

  return percentView;
}

- (void)_create_percentView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  percentView = self->_percentView;
  self->_percentView = v4;
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() iconDisplayIdentifier];

  if (v5 == v4)
  {
    v9 = [(_UIStatusBarBatteryItem *)self batteryView];
  }

  else
  {
    v6 = [objc_opt_class() staticIconDisplayIdentifier];

    if (v6 == v4)
    {
      v9 = [(_UIStatusBarBatteryItem *)self staticBatteryView];
    }

    else
    {
      v7 = [objc_opt_class() chargingDisplayIdentifier];

      if (v7 == v4)
      {
        v9 = [(_UIStatusBarBatteryItem *)self chargingView];
      }

      else
      {
        v8 = [objc_opt_class() percentDisplayIdentifier];

        if (v8 == v4)
        {
          v9 = [(_UIStatusBarBatteryItem *)self percentView];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = _UIStatusBarBatteryItem;
          v9 = [(_UIStatusBarItem *)&v12 viewForIdentifier:v4];
        }
      }
    }
  }

  v10 = v9;

  return v10;
}

@end