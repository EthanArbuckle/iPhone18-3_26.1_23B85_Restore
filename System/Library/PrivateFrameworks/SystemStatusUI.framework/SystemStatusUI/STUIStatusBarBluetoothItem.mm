@interface STUIStatusBarBluetoothItem
+ (BOOL)alwaysShowRegulatoryBluetoothIndicator;
- (STUIStatusBarImageView)batteryImageView;
- (id)_batteryFillColorForEntry:(id)entry usingTintColor:(id)color;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)entry;
- (id)systemImageNameForUpdate:(id)update;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_batteryImageView;
- (void)applyStyleAttributes:(id)attributes toDisplayItem:(id)item;
@end

@implementation STUIStatusBarBluetoothItem

- (id)systemImageNameForUpdate:(id)update
{
  data = [update data];
  bluetoothEntry = [data bluetoothEntry];
  state = [bluetoothEntry state];

  if (state > 2)
  {
    return 0;
  }

  else
  {
    return off_279D39380[state];
  }
}

+ (BOOL)alwaysShowRegulatoryBluetoothIndicator
{
  if (qword_280C1E8B8 != -1)
  {
    dispatch_once(&qword_280C1E8B8, &__block_literal_global_12);
  }

  return _MergedGlobals_57;
}

uint64_t __68__STUIStatusBarBluetoothItem_alwaysShowRegulatoryBluetoothIndicator__block_invoke()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_57 = result;
  return result;
}

- (id)entry
{
  statusBar = [(STUIStatusBarItem *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  indicatorEntryKey = [(STUIStatusBarBluetoothItem *)self indicatorEntryKey];
  v6 = [currentAggregatedData valueForKey:indicatorEntryKey];

  return v6;
}

- (void)applyStyleAttributes:(id)attributes toDisplayItem:(id)item
{
  attributesCopy = attributes;
  itemCopy = item;
  identifier = [itemCopy identifier];
  v9 = +[(STUIStatusBarItem *)STUIStatusBarExternalBluetoothItem];

  if (identifier != v9)
  {
    v10.receiver = self;
    v10.super_class = STUIStatusBarBluetoothItem;
    [(STUIStatusBarItem *)&v10 applyStyleAttributes:attributesCopy toDisplayItem:itemCopy];
  }
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v50.receiver = self;
  v50.super_class = STUIStatusBarBluetoothItem;
  v8 = [(STUIStatusBarIndicatorItem *)&v50 applyUpdate:updateCopy toDisplayItem:itemCopy];
  entry = [(STUIStatusBarBluetoothItem *)self entry];
  identifier = [itemCopy identifier];
  v11 = +[(STUIStatusBarItem *)STUIStatusBarBluetoothItem];

  if (identifier == v11)
  {
    if (![updateCopy dataChanged])
    {
      goto LABEL_30;
    }

    batteryEntry = [entry batteryEntry];
    if (([objc_opt_class() alwaysShowRegulatoryBluetoothIndicator] & 1) == 0 && objc_msgSend(entry, "state") != 2 && (objc_msgSend(batteryEntry, "isEnabled") & 1) == 0)
    {
      [itemCopy setEnabled:0];
    }
  }

  else
  {
    identifier2 = [itemCopy identifier];
    v13 = +[(STUIStatusBarItem *)STUIStatusBarExternalBluetoothItem];

    if (identifier2 == v13)
    {
      styleAttributes = [updateCopy styleAttributes];
      v49.receiver = self;
      v49.super_class = STUIStatusBarBluetoothItem;
      [(STUIStatusBarItem *)&v49 applyStyleAttributes:styleAttributes toDisplayItem:itemCopy];

      state = [entry state];
      if (state == 1)
      {
        [itemCopy setEnabled:1];
        batteryEntry = [updateCopy styleAttributes];
        imageTintColor = [batteryEntry imageTintColor];
      }

      else
      {
        if (state)
        {
          goto LABEL_30;
        }

        [itemCopy setEnabled:1];
        batteryEntry = [updateCopy styleAttributes];
        imageTintColor = [batteryEntry imageDimmedTintColor];
      }

      v22 = imageTintColor;
      imageView = [(STUIStatusBarIndicatorItem *)self imageView];
      [imageView setTintColor:v22];
    }

    else
    {
      identifier3 = [itemCopy identifier];
      v15 = +[STUIStatusBarBluetoothItem batteryDisplayIdentifier];

      if (identifier3 != v15)
      {
        goto LABEL_30;
      }

      if (([updateCopy dataChanged] & 1) != 0 || objc_msgSend(updateCopy, "styleAttributesChanged"))
      {
        batteryEntry2 = [entry batteryEntry];
        if ([itemCopy isEnabled])
        {
          isEnabled = [batteryEntry2 isEnabled];
        }

        else
        {
          isEnabled = 0;
        }

        [itemCopy setEnabled:isEnabled];
        if ([itemCopy isEnabled])
        {
          v24 = +[STUIStatusBarImageProvider sharedProvider];
          styleAttributes2 = [updateCopy styleAttributes];
          v26 = [v24 imageNamed:@"HeadsetBatteryBG" styleAttributes:styleAttributes2];
          [updateCopy styleAttributes];
          v27 = v43 = batteryEntry2;
          imageTintColor2 = [v27 imageTintColor];
          v42 = [v26 _flatImageWithColor:imageTintColor2];

          v29 = objc_alloc(MEMORY[0x277D75560]);
          [v42 size];
          v30 = [v29 initWithSize:?];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __56__STUIStatusBarBluetoothItem_applyUpdate_toDisplayItem___block_invoke;
          v44[3] = &unk_279D39360;
          v45 = v42;
          v46 = v43;
          v31 = updateCopy;
          v47 = v31;
          selfCopy = self;
          v32 = v42;
          v33 = [v30 imageWithActions:v44];
          styleAttributes3 = [v31 styleAttributes];
          effectiveLayoutDirection = [styleAttributes3 effectiveLayoutDirection];

          if (effectiveLayoutDirection)
          {
            v36 = 0.0;
          }

          else
          {
            v36 = 2.0;
          }

          if (effectiveLayoutDirection)
          {
            v37 = 2.0;
          }

          else
          {
            v37 = 0.0;
          }

          v38 = [v33 imageWithAlignmentRectInsets:{0.0, v36, 0.0, v37, v42}];

          batteryImageView = [(STUIStatusBarBluetoothItem *)self batteryImageView];
          [batteryImageView setImage:v38];

          batteryEntry2 = v43;
        }
      }

      v40 = [entry state] == 0;
      batteryEntry = [(STUIStatusBarIndicatorItem *)self imageView];
      [batteryEntry setUseDisabledAppearanceForAccessibilityHUD:v40];
    }
  }

LABEL_30:

  return v8;
}

void __56__STUIStatusBarBluetoothItem_applyUpdate_toDisplayItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  v6 = a2;
  [v3 drawAtPoint:{v4, v5}];
  v7 = [v6 format];

  [v7 bounds];
  UIRectInset();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v32.origin.x = v9;
  v32.origin.y = v11;
  v32.size.width = v13;
  v32.size.height = v15;
  CGRectGetHeight(v32);
  [*(a1 + 40) capacity];
  v33.origin.x = v9;
  v33.origin.y = v11;
  v33.size.width = v13;
  v33.size.height = v15;
  CGRectGetHeight(v33);
  v16 = [*(a1 + 48) styleAttributes];
  v17 = [v16 traitCollection];
  [v17 displayScale];
  UIRectIntegralWithScale();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = *(a1 + 56);
  v27 = *(a1 + 40);
  v28 = [*(a1 + 48) styleAttributes];
  v29 = [v28 imageTintColor];
  v30 = [v26 _batteryFillColorForEntry:v27 usingTintColor:v29];

  [v30 setFill];
  v34.origin.x = v19;
  v34.origin.y = v21;
  v34.size.width = v23;
  v34.size.height = v25;
  UIRectFill(v34);
}

- (id)_batteryFillColorForEntry:(id)entry usingTintColor:(id)color
{
  entryCopy = entry;
  blackColor = [color colorWithAlphaComponent:1.0];
  capacity = [entryCopy capacity];

  if (capacity > 26)
  {
    if (!blackColor)
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
    }
  }

  else
  {
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];

    blackColor = systemRedColor;
  }

  return blackColor;
}

- (STUIStatusBarImageView)batteryImageView
{
  batteryImageView = self->_batteryImageView;
  if (!batteryImageView)
  {
    [(STUIStatusBarBluetoothItem *)self _create_batteryImageView];
    batteryImageView = self->_batteryImageView;
  }

  return batteryImageView;
}

- (void)_create_batteryImageView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  batteryImageView = self->_batteryImageView;
  self->_batteryImageView = v4;

  MEMORY[0x2821F96F8](v4, batteryImageView);
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[STUIStatusBarBluetoothItem batteryDisplayIdentifier];

  if (v5 == identifierCopy)
  {
    batteryImageView = [(STUIStatusBarBluetoothItem *)self batteryImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarBluetoothItem;
    batteryImageView = [(STUIStatusBarIndicatorItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = batteryImageView;

  return v7;
}

@end