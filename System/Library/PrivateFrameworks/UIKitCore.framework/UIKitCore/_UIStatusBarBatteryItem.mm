@interface _UIStatusBarBatteryItem
- (_UIStatusBarBatteryView)batteryView;
- (_UIStatusBarImageView)chargingView;
- (_UIStatusBarStaticBatteryView)staticBatteryView;
- (_UIStatusBarStringView)percentView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_batteryView;
- (void)_create_chargingView;
- (void)_create_percentView;
- (void)_create_staticBatteryView;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _UIStatusBarBatteryItem

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v54.receiver = self;
  v54.super_class = _UIStatusBarBatteryItem;
  v8 = [(_UIStatusBarItem *)&v54 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  mainBatteryEntry = [data mainBatteryEntry];

  identifier = [itemCopy identifier];
  iconDisplayIdentifier = [objc_opt_class() iconDisplayIdentifier];
  v13 = iconDisplayIdentifier;
  if (identifier == iconDisplayIdentifier)
  {

    goto LABEL_12;
  }

  identifier2 = [itemCopy identifier];
  staticIconDisplayIdentifier = [objc_opt_class() staticIconDisplayIdentifier];

  if (identifier2 == staticIconDisplayIdentifier)
  {
LABEL_12:
    identifier3 = [itemCopy identifier];
    iconDisplayIdentifier2 = [objc_opt_class() iconDisplayIdentifier];
    if (identifier3 == iconDisplayIdentifier2)
    {
      [(_UIStatusBarBatteryItem *)self batteryView];
    }

    else
    {
      [(_UIStatusBarBatteryItem *)self staticBatteryView];
    }
    detailString = ;

    styleAttributes = [updateCopy styleAttributes];
    if ([updateCopy dataChanged])
    {
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
        [detailString setChargingState:qword_18A6816D8[state]];
      }

      if (-[_UIStatusBarBatteryItem usesCondensedPercentageDisplay](self, "usesCondensedPercentageDisplay") && [styleAttributes mode] != 1)
      {
        if ([mainBatteryEntry prominentlyShowsDetailString])
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

      [detailString setShowsPercentage:v30];
      [detailString setChargePercent:v28];
      [detailString setSaverModeActive:{objc_msgSend(mainBatteryEntry, "saverModeActive")}];
    }

    if ([updateCopy styleAttributesChanged])
    {
      imageTintColor = [styleAttributes imageTintColor];
      [detailString setFillColor:imageTintColor];

      identifier4 = [itemCopy identifier];
      iconDisplayIdentifier3 = [objc_opt_class() iconDisplayIdentifier];

      if (identifier4 == iconDisplayIdentifier3)
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

    goto LABEL_31;
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
      goto LABEL_33;
    }

    chargingView = [(_UIStatusBarBatteryItem *)self chargingView];
    image = [chargingView image];

    if (image)
    {
      goto LABEL_33;
    }

    detailString = +[_UIStatusBarImageProvider sharedProvider];
    styleAttributes = [updateCopy styleAttributes];
    v45 = [detailString imageNamed:@"Large_Bolt" styleAttributes:styleAttributes];
    chargingView2 = [(_UIStatusBarBatteryItem *)self chargingView];
    [chargingView2 setImage:v45];

    goto LABEL_31;
  }

  identifier6 = [itemCopy identifier];
  percentDisplayIdentifier = [objc_opt_class() percentDisplayIdentifier];

  if (identifier6 != percentDisplayIdentifier)
  {
    goto LABEL_33;
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
    percentView = [(_UIStatusBarBatteryItem *)self percentView];
    [percentView setText:detailString];
  }

  else
  {
    [itemCopy setEnabled:0];
  }

  if (![updateCopy styleAttributesChanged])
  {
    goto LABEL_32;
  }

  styleAttributes3 = [updateCopy styleAttributes];
  effectiveLayoutDirection = [styleAttributes3 effectiveLayoutDirection];

  if (effectiveLayoutDirection == 1)
  {
    v50 = 2.0;
  }

  else
  {
    v50 = 0.0;
  }

  if (effectiveLayoutDirection == 1)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = 2.0;
  }

  styleAttributes = [(_UIStatusBarBatteryItem *)self percentView];
  [styleAttributes setAlignmentRectInsets:{0.0, v50, 0.0, v51}];
LABEL_31:

LABEL_32:
LABEL_33:

  return v8;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    batteryView = [(_UIStatusBarBatteryItem *)self batteryView];
    v8 = batteryView;
    v6 = 0.4;
    if (highlightedCopy)
    {
      v6 = 0.8;
      v7 = 0.9;
    }

    else
    {
      v7 = 0.5;
    }

    [batteryView setBodyColorAlpha:v6];
    [v8 setPinColorAlpha:v7];
    [v8 setShowsInlineChargingIndicator:!highlightedCopy];
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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconDisplayIdentifier = [objc_opt_class() iconDisplayIdentifier];

  if (iconDisplayIdentifier == identifierCopy)
  {
    batteryView = [(_UIStatusBarBatteryItem *)self batteryView];
  }

  else
  {
    staticIconDisplayIdentifier = [objc_opt_class() staticIconDisplayIdentifier];

    if (staticIconDisplayIdentifier == identifierCopy)
    {
      batteryView = [(_UIStatusBarBatteryItem *)self staticBatteryView];
    }

    else
    {
      chargingDisplayIdentifier = [objc_opt_class() chargingDisplayIdentifier];

      if (chargingDisplayIdentifier == identifierCopy)
      {
        batteryView = [(_UIStatusBarBatteryItem *)self chargingView];
      }

      else
      {
        percentDisplayIdentifier = [objc_opt_class() percentDisplayIdentifier];

        if (percentDisplayIdentifier == identifierCopy)
        {
          batteryView = [(_UIStatusBarBatteryItem *)self percentView];
        }

        else
        {
          v12.receiver = self;
          v12.super_class = _UIStatusBarBatteryItem;
          batteryView = [(_UIStatusBarItem *)&v12 viewForIdentifier:identifierCopy];
        }
      }
    }
  }

  v10 = batteryView;

  return v10;
}

@end