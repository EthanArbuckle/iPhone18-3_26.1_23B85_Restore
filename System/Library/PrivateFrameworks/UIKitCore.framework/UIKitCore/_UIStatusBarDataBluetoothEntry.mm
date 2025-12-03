@interface _UIStatusBarDataBluetoothEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataBluetoothEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataBluetoothEntry

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBluetoothEntry;
  v3 = self->_state ^ [(_UIStatusBarDataEntry *)&v5 hash];
  return v3 ^ [(_UIStatusBarDataBatteryEntry *)self->_batteryEntry hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBluetoothEntry;
  v4 = [(_UIStatusBarDataEntry *)&v7 copyWithZone:zone];
  [v4 setState:self->_state];
  v5 = [(_UIStatusBarDataBatteryEntry *)self->_batteryEntry copy];
  [v4 setBatteryEntry:v5];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBluetoothEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_state forKey:{@"state", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_batteryEntry forKey:@"batteryEntry"];
}

- (_UIStatusBarDataBluetoothEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBluetoothEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  -[_UIStatusBarDataBluetoothEntry setState:](v4, "setState:", [coderCopy decodeIntegerForKey:{@"state", v7.receiver, v7.super_class}]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batteryEntry"];

  [(_UIStatusBarDataBluetoothEntry *)v4 setBatteryEntry:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _UIStatusBarDataBluetoothEntry;
  if ([(_UIStatusBarDataEntry *)&v15 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      state = self->_state;
      if (state == [v5 state])
      {
        isEnabled = [(_UIStatusBarDataEntry *)self->_batteryEntry isEnabled];
        if (isEnabled || ([v5 batteryEntry], state = objc_claimAutoreleasedReturnValue(), objc_msgSend(state, "isEnabled")))
        {
          batteryEntry = self->_batteryEntry;
          batteryEntry = [v5 batteryEntry];
          v10 = batteryEntry;
          v11 = batteryEntry;
          v12 = v11;
          if (v10 == v11)
          {
            v13 = 1;
          }

          else
          {
            v13 = 0;
            if (v10 && v11)
            {
              v13 = [(_UIStatusBarDataBatteryEntry *)v10 isEqual:v11];
            }
          }

          if (isEnabled)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

LABEL_19:

    goto LABEL_20;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)_ui_descriptionBuilder
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIStatusBarDataBluetoothEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_state);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_batteryEntry);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [_ui_descriptionBuilder appendKeys:v5];

  return v6;
}

@end