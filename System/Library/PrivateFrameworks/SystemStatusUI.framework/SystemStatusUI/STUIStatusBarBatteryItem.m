@interface STUIStatusBarBatteryItem
- (STUIStatusBarBatteryView)batteryView;
- (STUIStatusBarImageView)chargingView;
- (STUIStatusBarStaticBatteryView)staticBatteryView;
- (STUIStatusBarStringView)percentView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)viewForIdentifier:(id)a3;
- (void)_create_batteryView;
- (void)_create_chargingView;
- (void)_create_percentView;
- (void)_create_staticBatteryView;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation STUIStatusBarBatteryItem

- (STUIStatusBarStaticBatteryView)staticBatteryView
{
  staticBatteryView = self->_staticBatteryView;
  if (!staticBatteryView)
  {
    [(STUIStatusBarBatteryItem *)self _create_staticBatteryView];
    staticBatteryView = self->_staticBatteryView;
  }

  return staticBatteryView;
}

- (void)_create_staticBatteryView
{
  v3 = [STUIStatusBarStaticBatteryView alloc];
  v4 = [(_UIBatteryView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  staticBatteryView = self->_staticBatteryView;
  self->_staticBatteryView = v4;

  [(_UIBatteryView *)self->_staticBatteryView setInternalSizeCategory:0];
  v6 = self->_staticBatteryView;

  [(_UIBatteryView *)v6 setShowsInlineChargingIndicator:1];
}

- (STUIStatusBarStringView)percentView
{
  percentView = self->_percentView;
  if (!percentView)
  {
    [(STUIStatusBarBatteryItem *)self _create_percentView];
    percentView = self->_percentView;
  }

  return percentView;
}

- (void)_create_percentView
{
  v3 = [STUIStatusBarStringView alloc];
  self->_percentView = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v55.receiver = self;
  v55.super_class = STUIStatusBarBatteryItem;
  v8 = [(STUIStatusBarItem *)&v55 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v6 data];
  v10 = [v9 mainBatteryEntry];

  v11 = [v7 identifier];
  v12 = [objc_opt_class() iconDisplayIdentifier];
  v13 = v12;
  if (v11 == v12)
  {

LABEL_12:
    v24 = [v7 identifier];
    v25 = [objc_opt_class() iconDisplayIdentifier];
    if (v24 == v25)
    {
      [(STUIStatusBarBatteryItem *)self batteryView];
    }

    else
    {
      [(STUIStatusBarBatteryItem *)self staticBatteryView];
    }
    v20 = ;

    v26 = [v6 styleAttributes];
    if (![v6 dataChanged])
    {
LABEL_26:
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

      goto LABEL_32;
    }

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
      [v20 setChargingState:qword_26C581FE0[v29]];
    }

    if (-[STUIStatusBarBatteryItem usesCondensedPercentageDisplay](self, "usesCondensedPercentageDisplay") && [v26 mode] != 1)
    {
      if (![v10 prominentlyShowsDetailString])
      {
        v47 = +[STUIStatusBarSettingsDomain rootSettings];
        v48 = [v47 itemSettings];
        [v20 setShowsPercentage:{objc_msgSend(v48, "batteryCondensedPercentageForceEnabled")}];

        goto LABEL_25;
      }

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    [v20 setShowsPercentage:v30];
LABEL_25:
    [v20 setChargePercent:v28];
    [v20 setSaverModeActive:{objc_msgSend(v10, "saverModeActive")}];
    goto LABEL_26;
  }

  v14 = [v7 identifier];
  v15 = [objc_opt_class() staticIconDisplayIdentifier];

  if (v14 == v15)
  {
    goto LABEL_12;
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
      goto LABEL_34;
    }

    v43 = [(STUIStatusBarBatteryItem *)self chargingView];
    v44 = [v43 image];

    if (v44)
    {
      goto LABEL_34;
    }

    v20 = +[STUIStatusBarImageProvider sharedProvider];
    v26 = [v6 styleAttributes];
    v45 = [v20 imageNamed:@"Large_Bolt" styleAttributes:v26];
    v46 = [(STUIStatusBarBatteryItem *)self chargingView];
    [v46 setImage:v45];

    goto LABEL_32;
  }

  v18 = [v7 identifier];
  v19 = [objc_opt_class() percentDisplayIdentifier];

  if (v18 != v19)
  {
    goto LABEL_34;
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
    v23 = [(STUIStatusBarBatteryItem *)self percentView];
    [v23 setText:v20];
  }

  else
  {
    [v7 setEnabled:0];
  }

  if (![v6 styleAttributesChanged])
  {
    goto LABEL_33;
  }

  v49 = *MEMORY[0x277D768C8];
  v50 = *(MEMORY[0x277D768C8] + 8);
  v51 = *(MEMORY[0x277D768C8] + 16);
  v52 = *(MEMORY[0x277D768C8] + 24);
  v53 = [v6 styleAttributes];
  v54 = [v53 effectiveLayoutDirection];

  if (v54 == 1)
  {
    v50 = 2.0;
  }

  else
  {
    v52 = 2.0;
  }

  v26 = [(STUIStatusBarBatteryItem *)self percentView];
  [v26 setAlignmentRectInsets:{v49, v50, v51, v52}];
LABEL_32:

LABEL_33:
LABEL_34:

  return v8;
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v4 = a3;
    self->_highlighted = a3;
    v6 = [(STUIStatusBarBatteryItem *)self batteryView];
    if (v4)
    {
      [v6 setBodyColorAlpha:0.8];
      v5 = 0.9;
    }

    else
    {
      [v6 setBodyColorAlpha:*MEMORY[0x277D77378]];
      v5 = *MEMORY[0x277D77380];
    }

    [v6 setPinColorAlpha:v5];
    [v6 setShowsInlineChargingIndicator:!v4];
  }
}

- (STUIStatusBarBatteryView)batteryView
{
  batteryView = self->_batteryView;
  if (!batteryView)
  {
    [(STUIStatusBarBatteryItem *)self _create_batteryView];
    batteryView = self->_batteryView;
  }

  return batteryView;
}

- (void)_create_batteryView
{
  v3 = [STUIStatusBarBatteryView alloc];
  v4 = [(_UIBatteryView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  batteryView = self->_batteryView;
  self->_batteryView = v4;

  [(_UIBatteryView *)self->_batteryView setInternalSizeCategory:0];
  v6 = self->_batteryView;

  [(_UIBatteryView *)v6 setShowsInlineChargingIndicator:1];
}

- (STUIStatusBarImageView)chargingView
{
  chargingView = self->_chargingView;
  if (!chargingView)
  {
    [(STUIStatusBarBatteryItem *)self _create_chargingView];
    chargingView = self->_chargingView;
  }

  return chargingView;
}

- (void)_create_chargingView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  chargingView = self->_chargingView;
  self->_chargingView = v4;

  v6 = [MEMORY[0x277D755B8] kitImageNamed:@"Black_lightning"];
  [(STUIStatusBarImageView *)self->_chargingView setAccessibilityHUDImage:v6];
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() iconDisplayIdentifier];

  if (v5 == v4)
  {
    v9 = [(STUIStatusBarBatteryItem *)self batteryView];
  }

  else
  {
    v6 = [objc_opt_class() staticIconDisplayIdentifier];

    if (v6 == v4)
    {
      v9 = [(STUIStatusBarBatteryItem *)self staticBatteryView];
    }

    else
    {
      v7 = [objc_opt_class() chargingDisplayIdentifier];

      if (v7 == v4)
      {
        v9 = [(STUIStatusBarBatteryItem *)self chargingView];
      }

      else
      {
        v8 = [objc_opt_class() percentDisplayIdentifier];

        if (v8 == v4)
        {
          v9 = [(STUIStatusBarBatteryItem *)self percentView];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = STUIStatusBarBatteryItem;
          v9 = [(STUIStatusBarItem *)&v12 viewForIdentifier:v4];
        }
      }
    }
  }

  v10 = v9;

  return v10;
}

@end