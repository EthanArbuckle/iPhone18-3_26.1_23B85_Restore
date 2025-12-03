@interface STUIStatusBarBatteryItem
- (STUIStatusBarBatteryView)batteryView;
- (STUIStatusBarImageView)chargingView;
- (STUIStatusBarStaticBatteryView)staticBatteryView;
- (STUIStatusBarStringView)percentView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_batteryView;
- (void)_create_chargingView;
- (void)_create_percentView;
- (void)_create_staticBatteryView;
- (void)setHighlighted:(BOOL)highlighted;
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

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v55.receiver = self;
  v55.super_class = STUIStatusBarBatteryItem;
  v8 = [(STUIStatusBarItem *)&v55 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  mainBatteryEntry = [data mainBatteryEntry];

  identifier = [itemCopy identifier];
  iconDisplayIdentifier = [objc_opt_class() iconDisplayIdentifier];
  v13 = iconDisplayIdentifier;
  if (identifier == iconDisplayIdentifier)
  {

LABEL_12:
    identifier2 = [itemCopy identifier];
    iconDisplayIdentifier2 = [objc_opt_class() iconDisplayIdentifier];
    if (identifier2 == iconDisplayIdentifier2)
    {
      [(STUIStatusBarBatteryItem *)self batteryView];
    }

    else
    {
      [(STUIStatusBarBatteryItem *)self staticBatteryView];
    }
    detailString = ;

    styleAttributes = [updateCopy styleAttributes];
    if (![updateCopy dataChanged])
    {
LABEL_26:
      if ([updateCopy styleAttributesChanged])
      {
        imageTintColor = [styleAttributes imageTintColor];
        [detailString setFillColor:imageTintColor];

        identifier3 = [itemCopy identifier];
        iconDisplayIdentifier3 = [objc_opt_class() iconDisplayIdentifier];

        if (identifier3 == iconDisplayIdentifier3)
        {
          layer = [detailString layer];
          [layer setShouldRasterize:1];

          traitCollection = [styleAttributes traitCollection];
          [traitCollection displayScale];
          v37 = v36;
          layer2 = [detailString layer];
          [layer2 setRasterizationScale:v37];
        }

        mode = [styleAttributes mode];
        v40 = -0.333333333;
        if (mode == 1)
        {
          v40 = -1.0;
        }

        [itemCopy setBaselineOffset:v40];
      }

      goto LABEL_32;
    }

    capacity = [mainBatteryEntry capacity];
    if (capacity / 100.0 <= 0.01)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = capacity / 100.0;
    }

    state = [mainBatteryEntry state];
    if (state <= 3)
    {
      [detailString setChargingState:qword_26C581FE0[state]];
    }

    if (-[STUIStatusBarBatteryItem usesCondensedPercentageDisplay](self, "usesCondensedPercentageDisplay") && [styleAttributes mode] != 1)
    {
      if (![mainBatteryEntry prominentlyShowsDetailString])
      {
        v47 = +[STUIStatusBarSettingsDomain rootSettings];
        itemSettings = [v47 itemSettings];
        [detailString setShowsPercentage:{objc_msgSend(itemSettings, "batteryCondensedPercentageForceEnabled")}];

        goto LABEL_25;
      }

      v30 = 1;
    }

    else
    {
      v30 = 0;
    }

    [detailString setShowsPercentage:v30];
LABEL_25:
    [detailString setChargePercent:v28];
    [detailString setSaverModeActive:{objc_msgSend(mainBatteryEntry, "saverModeActive")}];
    goto LABEL_26;
  }

  identifier4 = [itemCopy identifier];
  staticIconDisplayIdentifier = [objc_opt_class() staticIconDisplayIdentifier];

  if (identifier4 == staticIconDisplayIdentifier)
  {
    goto LABEL_12;
  }

  identifier5 = [itemCopy identifier];
  chargingDisplayIdentifier = [objc_opt_class() chargingDisplayIdentifier];

  if (identifier5 == chargingDisplayIdentifier)
  {
    if ([itemCopy isEnabled])
    {
      v42 = [mainBatteryEntry state] == 1;
    }

    else
    {
      v42 = 0;
    }

    [itemCopy setEnabled:v42];
    if (![itemCopy isEnabled])
    {
      goto LABEL_34;
    }

    chargingView = [(STUIStatusBarBatteryItem *)self chargingView];
    image = [chargingView image];

    if (image)
    {
      goto LABEL_34;
    }

    detailString = +[STUIStatusBarImageProvider sharedProvider];
    styleAttributes = [updateCopy styleAttributes];
    v45 = [detailString imageNamed:@"Large_Bolt" styleAttributes:styleAttributes];
    chargingView2 = [(STUIStatusBarBatteryItem *)self chargingView];
    [chargingView2 setImage:v45];

    goto LABEL_32;
  }

  identifier6 = [itemCopy identifier];
  percentDisplayIdentifier = [objc_opt_class() percentDisplayIdentifier];

  if (identifier6 != percentDisplayIdentifier)
  {
    goto LABEL_34;
  }

  detailString = [mainBatteryEntry detailString];
  styleAttributes2 = [updateCopy styleAttributes];
  if ([styleAttributes2 mode] == 1)
  {
    goto LABEL_8;
  }

  prominentlyShowsDetailString = [mainBatteryEntry prominentlyShowsDetailString];

  if ((prominentlyShowsDetailString & 1) == 0)
  {
    styleAttributes2 = detailString;
    detailString = 0;
LABEL_8:
  }

  if ([detailString length])
  {
    percentView = [(STUIStatusBarBatteryItem *)self percentView];
    [percentView setText:detailString];
  }

  else
  {
    [itemCopy setEnabled:0];
  }

  if (![updateCopy styleAttributesChanged])
  {
    goto LABEL_33;
  }

  v49 = *MEMORY[0x277D768C8];
  v50 = *(MEMORY[0x277D768C8] + 8);
  v51 = *(MEMORY[0x277D768C8] + 16);
  v52 = *(MEMORY[0x277D768C8] + 24);
  styleAttributes3 = [updateCopy styleAttributes];
  effectiveLayoutDirection = [styleAttributes3 effectiveLayoutDirection];

  if (effectiveLayoutDirection == 1)
  {
    v50 = 2.0;
  }

  else
  {
    v52 = 2.0;
  }

  styleAttributes = [(STUIStatusBarBatteryItem *)self percentView];
  [styleAttributes setAlignmentRectInsets:{v49, v50, v51, v52}];
LABEL_32:

LABEL_33:
LABEL_34:

  return v8;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    batteryView = [(STUIStatusBarBatteryItem *)self batteryView];
    if (highlightedCopy)
    {
      [batteryView setBodyColorAlpha:0.8];
      v5 = 0.9;
    }

    else
    {
      [batteryView setBodyColorAlpha:*MEMORY[0x277D77378]];
      v5 = *MEMORY[0x277D77380];
    }

    [batteryView setPinColorAlpha:v5];
    [batteryView setShowsInlineChargingIndicator:!highlightedCopy];
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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconDisplayIdentifier = [objc_opt_class() iconDisplayIdentifier];

  if (iconDisplayIdentifier == identifierCopy)
  {
    batteryView = [(STUIStatusBarBatteryItem *)self batteryView];
  }

  else
  {
    staticIconDisplayIdentifier = [objc_opt_class() staticIconDisplayIdentifier];

    if (staticIconDisplayIdentifier == identifierCopy)
    {
      batteryView = [(STUIStatusBarBatteryItem *)self staticBatteryView];
    }

    else
    {
      chargingDisplayIdentifier = [objc_opt_class() chargingDisplayIdentifier];

      if (chargingDisplayIdentifier == identifierCopy)
      {
        batteryView = [(STUIStatusBarBatteryItem *)self chargingView];
      }

      else
      {
        percentDisplayIdentifier = [objc_opt_class() percentDisplayIdentifier];

        if (percentDisplayIdentifier == identifierCopy)
        {
          batteryView = [(STUIStatusBarBatteryItem *)self percentView];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = STUIStatusBarBatteryItem;
          batteryView = [(STUIStatusBarItem *)&v12 viewForIdentifier:identifierCopy];
        }
      }
    }
  }

  v10 = batteryView;

  return v10;
}

@end