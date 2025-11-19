@interface _UIStatusBarBluetoothItem
+ (BOOL)alwaysShowRegulatoryBluetoothIndicator;
- (_UIStatusBarImageView)batteryImageView;
- (id)_batteryFillColorForEntry:(id)a3 usingTintColor:(id)a4;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)systemImageNameForUpdate:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_batteryImageView;
@end

@implementation _UIStatusBarBluetoothItem

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
    return off_1E711FB90[v5];
  }
}

+ (BOOL)alwaysShowRegulatoryBluetoothIndicator
{
  if (qword_1ED4A08D0 != -1)
  {
    dispatch_once(&qword_1ED4A08D0, &__block_literal_global_510);
  }

  return _MergedGlobals_1276;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = _UIStatusBarBluetoothItem;
  v8 = [(_UIStatusBarIndicatorItem *)&v43 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v6 data];
  v10 = [v9 bluetoothEntry];

  v11 = [v7 identifier];
  v12 = +[(_UIStatusBarItem *)_UIStatusBarBluetoothItem];

  if (v11 == v12)
  {
    if (![v6 dataChanged])
    {
      goto LABEL_24;
    }

    v17 = [v10 batteryEntry];
    if (([objc_opt_class() alwaysShowRegulatoryBluetoothIndicator] & 1) == 0 && objc_msgSend(v10, "state") != 2 && (objc_msgSend(v17, "isEnabled") & 1) == 0)
    {
      [v7 setEnabled:0];
    }
  }

  else
  {
    v13 = [v7 identifier];
    v14 = +[_UIStatusBarBluetoothItem batteryDisplayIdentifier];

    if (v13 != v14)
    {
      goto LABEL_24;
    }

    if (([v6 dataChanged] & 1) != 0 || objc_msgSend(v6, "styleAttributesChanged"))
    {
      v15 = [v10 batteryEntry];
      if ([v7 isEnabled])
      {
        v16 = [v15 isEnabled];
      }

      else
      {
        v16 = 0;
      }

      [v7 setEnabled:v16];
      if ([v7 isEnabled])
      {
        v18 = +[_UIStatusBarImageProvider sharedProvider];
        v19 = [v6 styleAttributes];
        v20 = [v18 imageNamed:@"HeadsetBatteryBG" styleAttributes:v19];
        [v6 styleAttributes];
        v21 = v37 = v15;
        v22 = [v21 imageTintColor];
        v36 = [v20 _flatImageWithColor:v22];

        v23 = [UIGraphicsImageRenderer alloc];
        [v36 size];
        v24 = [(UIGraphicsImageRenderer *)v23 initWithSize:?];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __55___UIStatusBarBluetoothItem_applyUpdate_toDisplayItem___block_invoke;
        v38[3] = &unk_1E711FB70;
        v39 = v36;
        v40 = v37;
        v25 = v6;
        v41 = v25;
        v42 = self;
        v26 = v36;
        v27 = [(UIGraphicsImageRenderer *)v24 imageWithActions:v38];
        v28 = [v25 styleAttributes];
        v29 = [v28 effectiveLayoutDirection];

        if (v29)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = 2.0;
        }

        if (v29)
        {
          v31 = 2.0;
        }

        else
        {
          v31 = 0.0;
        }

        v32 = [v27 imageWithAlignmentRectInsets:{0.0, v30, 0.0, v31, v36}];

        v33 = [(_UIStatusBarBluetoothItem *)self batteryImageView];
        [v33 setImage:v32];

        v15 = v37;
      }
    }

    v34 = [v10 state] == 0;
    v17 = [(_UIStatusBarIndicatorItem *)self imageView];
    [v17 setUseDisabledAppearanceForAccessibilityHUD:v34];
  }

LABEL_24:

  return v8;
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
      v6 = +[UIColor blackColor];
    }
  }

  else
  {
    v8 = +[UIColor systemRedColor];

    v6 = v8;
  }

  return v6;
}

- (_UIStatusBarImageView)batteryImageView
{
  batteryImageView = self->_batteryImageView;
  if (!batteryImageView)
  {
    [(_UIStatusBarBluetoothItem *)self _create_batteryImageView];
    batteryImageView = self->_batteryImageView;
  }

  return batteryImageView;
}

- (void)_create_batteryImageView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  batteryImageView = self->_batteryImageView;
  self->_batteryImageView = v4;
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[_UIStatusBarBluetoothItem batteryDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(_UIStatusBarBluetoothItem *)self batteryImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarBluetoothItem;
    v6 = [(_UIStatusBarIndicatorItem *)&v9 viewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

@end