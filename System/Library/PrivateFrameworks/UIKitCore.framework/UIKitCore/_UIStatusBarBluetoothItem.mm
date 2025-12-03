@interface _UIStatusBarBluetoothItem
+ (BOOL)alwaysShowRegulatoryBluetoothIndicator;
- (_UIStatusBarImageView)batteryImageView;
- (id)_batteryFillColorForEntry:(id)entry usingTintColor:(id)color;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)systemImageNameForUpdate:(id)update;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_batteryImageView;
@end

@implementation _UIStatusBarBluetoothItem

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
    return off_1E711FB90[state];
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

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v43.receiver = self;
  v43.super_class = _UIStatusBarBluetoothItem;
  v8 = [(_UIStatusBarIndicatorItem *)&v43 applyUpdate:updateCopy toDisplayItem:itemCopy];
  data = [updateCopy data];
  bluetoothEntry = [data bluetoothEntry];

  identifier = [itemCopy identifier];
  v12 = +[(_UIStatusBarItem *)_UIStatusBarBluetoothItem];

  if (identifier == v12)
  {
    if (![updateCopy dataChanged])
    {
      goto LABEL_24;
    }

    batteryEntry = [bluetoothEntry batteryEntry];
    if (([objc_opt_class() alwaysShowRegulatoryBluetoothIndicator] & 1) == 0 && objc_msgSend(bluetoothEntry, "state") != 2 && (objc_msgSend(batteryEntry, "isEnabled") & 1) == 0)
    {
      [itemCopy setEnabled:0];
    }
  }

  else
  {
    identifier2 = [itemCopy identifier];
    v14 = +[_UIStatusBarBluetoothItem batteryDisplayIdentifier];

    if (identifier2 != v14)
    {
      goto LABEL_24;
    }

    if (([updateCopy dataChanged] & 1) != 0 || objc_msgSend(updateCopy, "styleAttributesChanged"))
    {
      batteryEntry2 = [bluetoothEntry batteryEntry];
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
        v18 = +[_UIStatusBarImageProvider sharedProvider];
        styleAttributes = [updateCopy styleAttributes];
        v20 = [v18 imageNamed:@"HeadsetBatteryBG" styleAttributes:styleAttributes];
        [updateCopy styleAttributes];
        v21 = v37 = batteryEntry2;
        imageTintColor = [v21 imageTintColor];
        v36 = [v20 _flatImageWithColor:imageTintColor];

        v23 = [UIGraphicsImageRenderer alloc];
        [v36 size];
        v24 = [(UIGraphicsImageRenderer *)v23 initWithSize:?];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __55___UIStatusBarBluetoothItem_applyUpdate_toDisplayItem___block_invoke;
        v38[3] = &unk_1E711FB70;
        v39 = v36;
        v40 = v37;
        v25 = updateCopy;
        v41 = v25;
        selfCopy = self;
        v26 = v36;
        v27 = [(UIGraphicsImageRenderer *)v24 imageWithActions:v38];
        styleAttributes2 = [v25 styleAttributes];
        effectiveLayoutDirection = [styleAttributes2 effectiveLayoutDirection];

        if (effectiveLayoutDirection)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = 2.0;
        }

        if (effectiveLayoutDirection)
        {
          v31 = 2.0;
        }

        else
        {
          v31 = 0.0;
        }

        v32 = [v27 imageWithAlignmentRectInsets:{0.0, v30, 0.0, v31, v36}];

        batteryImageView = [(_UIStatusBarBluetoothItem *)self batteryImageView];
        [batteryImageView setImage:v32];

        batteryEntry2 = v37;
      }
    }

    v34 = [bluetoothEntry state] == 0;
    batteryEntry = [(_UIStatusBarIndicatorItem *)self imageView];
    [batteryEntry setUseDisabledAppearanceForAccessibilityHUD:v34];
  }

LABEL_24:

  return v8;
}

- (id)_batteryFillColorForEntry:(id)entry usingTintColor:(id)color
{
  entryCopy = entry;
  v6 = [color colorWithAlphaComponent:1.0];
  capacity = [entryCopy capacity];

  if (capacity > 26)
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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[_UIStatusBarBluetoothItem batteryDisplayIdentifier];

  if (v5 == identifierCopy)
  {
    batteryImageView = [(_UIStatusBarBluetoothItem *)self batteryImageView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIStatusBarBluetoothItem;
    batteryImageView = [(_UIStatusBarIndicatorItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = batteryImageView;

  return v7;
}

@end