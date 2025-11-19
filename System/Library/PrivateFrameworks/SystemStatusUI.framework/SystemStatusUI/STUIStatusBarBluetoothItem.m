@interface STUIStatusBarBluetoothItem
+ (BOOL)alwaysShowRegulatoryBluetoothIndicator;
- (STUIStatusBarImageView)batteryImageView;
- (id)_batteryFillColorForEntry:(id)a3 usingTintColor:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)entry;
- (id)systemImageNameForUpdate:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_batteryImageView;
- (void)applyStyleAttributes:(id)a3 toDisplayItem:(id)a4;
@end

@implementation STUIStatusBarBluetoothItem

- (id)systemImageNameForUpdate:(id)a3
{
  v3 = [a3 data];
  v4 = [v3 bluetoothEntry];
  v5 = [v4 state];

  if (v5 > 2)
  {
    return 0;
  }

  else
  {
    return off_279D39380[v5];
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
  v3 = [(STUIStatusBarItem *)self statusBar];
  v4 = [v3 currentAggregatedData];
  v5 = [(STUIStatusBarBluetoothItem *)self indicatorEntryKey];
  v6 = [v4 valueForKey:v5];

  return v6;
}

- (void)applyStyleAttributes:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v9 = +[(STUIStatusBarItem *)STUIStatusBarExternalBluetoothItem];

  if (v8 != v9)
  {
    v10.receiver = self;
    v10.super_class = STUIStatusBarBluetoothItem;
    [(STUIStatusBarItem *)&v10 applyStyleAttributes:v6 toDisplayItem:v7];
  }
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v50.receiver = self;
  v50.super_class = STUIStatusBarBluetoothItem;
  v8 = [(STUIStatusBarIndicatorItem *)&v50 applyUpdate:v6 toDisplayItem:v7];
  v9 = [(STUIStatusBarBluetoothItem *)self entry];
  v10 = [v7 identifier];
  v11 = +[(STUIStatusBarItem *)STUIStatusBarBluetoothItem];

  if (v10 == v11)
  {
    if (![v6 dataChanged])
    {
      goto LABEL_30;
    }

    v18 = [v9 batteryEntry];
    if (([objc_opt_class() alwaysShowRegulatoryBluetoothIndicator] & 1) == 0 && objc_msgSend(v9, "state") != 2 && (objc_msgSend(v18, "isEnabled") & 1) == 0)
    {
      [v7 setEnabled:0];
    }
  }

  else
  {
    v12 = [v7 identifier];
    v13 = +[(STUIStatusBarItem *)STUIStatusBarExternalBluetoothItem];

    if (v12 == v13)
    {
      v19 = [v6 styleAttributes];
      v49.receiver = self;
      v49.super_class = STUIStatusBarBluetoothItem;
      [(STUIStatusBarItem *)&v49 applyStyleAttributes:v19 toDisplayItem:v7];

      v20 = [v9 state];
      if (v20 == 1)
      {
        [v7 setEnabled:1];
        v18 = [v6 styleAttributes];
        v21 = [v18 imageTintColor];
      }

      else
      {
        if (v20)
        {
          goto LABEL_30;
        }

        [v7 setEnabled:1];
        v18 = [v6 styleAttributes];
        v21 = [v18 imageDimmedTintColor];
      }

      v22 = v21;
      v23 = [(STUIStatusBarIndicatorItem *)self imageView];
      [v23 setTintColor:v22];
    }

    else
    {
      v14 = [v7 identifier];
      v15 = +[STUIStatusBarBluetoothItem batteryDisplayIdentifier];

      if (v14 != v15)
      {
        goto LABEL_30;
      }

      if (([v6 dataChanged] & 1) != 0 || objc_msgSend(v6, "styleAttributesChanged"))
      {
        v16 = [v9 batteryEntry];
        if ([v7 isEnabled])
        {
          v17 = [v16 isEnabled];
        }

        else
        {
          v17 = 0;
        }

        [v7 setEnabled:v17];
        if ([v7 isEnabled])
        {
          v24 = +[STUIStatusBarImageProvider sharedProvider];
          v25 = [v6 styleAttributes];
          v26 = [v24 imageNamed:@"HeadsetBatteryBG" styleAttributes:v25];
          [v6 styleAttributes];
          v27 = v43 = v16;
          v28 = [v27 imageTintColor];
          v42 = [v26 _flatImageWithColor:v28];

          v29 = objc_alloc(MEMORY[0x277D75560]);
          [v42 size];
          v30 = [v29 initWithSize:?];
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __56__STUIStatusBarBluetoothItem_applyUpdate_toDisplayItem___block_invoke;
          v44[3] = &unk_279D39360;
          v45 = v42;
          v46 = v43;
          v31 = v6;
          v47 = v31;
          v48 = self;
          v32 = v42;
          v33 = [v30 imageWithActions:v44];
          v34 = [v31 styleAttributes];
          v35 = [v34 effectiveLayoutDirection];

          if (v35)
          {
            v36 = 0.0;
          }

          else
          {
            v36 = 2.0;
          }

          if (v35)
          {
            v37 = 2.0;
          }

          else
          {
            v37 = 0.0;
          }

          v38 = [v33 imageWithAlignmentRectInsets:{0.0, v36, 0.0, v37, v42}];

          v39 = [(STUIStatusBarBluetoothItem *)self batteryImageView];
          [v39 setImage:v38];

          v16 = v43;
        }
      }

      v40 = [v9 state] == 0;
      v18 = [(STUIStatusBarIndicatorItem *)self imageView];
      [v18 setUseDisabledAppearanceForAccessibilityHUD:v40];
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

- (id)_batteryFillColorForEntry:(id)a3 usingTintColor:(id)a4
{
  v5 = a3;
  v6 = [a4 colorWithAlphaComponent:1.0];
  v7 = [v5 capacity];

  if (v7 > 26)
  {
    if (!v6)
    {
      v6 = [MEMORY[0x277D75348] blackColor];
    }
  }

  else
  {
    v8 = [MEMORY[0x277D75348] systemRedColor];

    v6 = v8;
  }

  return v6;
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[STUIStatusBarBluetoothItem batteryDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(STUIStatusBarBluetoothItem *)self batteryImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarBluetoothItem;
    v6 = [(STUIStatusBarIndicatorItem *)&v9 viewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

@end