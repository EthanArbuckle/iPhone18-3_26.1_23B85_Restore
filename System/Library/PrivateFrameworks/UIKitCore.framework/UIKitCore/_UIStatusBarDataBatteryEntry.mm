@interface _UIStatusBarDataBatteryEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataBatteryEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataBatteryEntry

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBatteryEntry;
  v3 = *&self->_saverModeActive ^ [(_UIStatusBarDataEntry *)&v5 hash]^ self->_capacity;
  return v3 ^ [self->_state hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataBatteryEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:zone];
  [v4 setCapacity:*&self->_saverModeActive];
  [v4 setState:self->_capacity];
  [v4 setSaverModeActive:*(&self->super._enabled + 1)];
  [v4 setProminentlyShowsDetailString:*(&self->super._enabled + 2)];
  [v4 setDetailString:self->_state];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBatteryEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_saverModeActive forKey:{@"capacity", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_capacity forKey:@"state"];
  [coderCopy encodeInteger:*(&self->super._enabled + 1) forKey:@"saverModeActive"];
  [coderCopy encodeInteger:*(&self->super._enabled + 2) forKey:@"prominentlyShowsDetailString"];
  [coderCopy encodeObject:self->_state forKey:@"detailString"];
}

- (_UIStatusBarDataBatteryEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBatteryEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  -[_UIStatusBarDataBatteryEntry setCapacity:](v4, "setCapacity:", [coderCopy decodeIntegerForKey:{@"capacity", v7.receiver, v7.super_class}]);
  -[_UIStatusBarDataBatteryEntry setState:](v4, "setState:", [coderCopy decodeIntegerForKey:@"state"]);
  -[_UIStatusBarDataBatteryEntry setSaverModeActive:](v4, "setSaverModeActive:", [coderCopy decodeIntegerForKey:@"saverModeActive"] != 0);
  -[_UIStatusBarDataBatteryEntry setProminentlyShowsDetailString:](v4, "setProminentlyShowsDetailString:", [coderCopy decodeIntegerForKey:@"prominentlyShowsDetailString"] != 0);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailString"];

  [(_UIStatusBarDataBatteryEntry *)v4 setDetailString:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v17.receiver = self;
  v17.super_class = _UIStatusBarDataBatteryEntry;
  if ([(_UIStatusBarDataEntry *)&v17 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      v6 = *&self->_saverModeActive;
      if (v6 == [v5 capacity] && (capacity = self->_capacity, capacity == objc_msgSend(v5, "state")) && (v8 = *(&self->super._enabled + 1), v8 == objc_msgSend(v5, "saverModeActive")) && (v9 = *(&self->super._enabled + 2), v9 == objc_msgSend(v5, "prominentlyShowsDetailString")))
      {
        state = self->_state;
        detailString = [v5 detailString];
        v12 = state;
        v13 = detailString;
        v14 = v13;
        if (v12 == v13)
        {
          v15 = 1;
        }

        else
        {
          v15 = 0;
          if (v12 && v13)
          {
            v15 = [v12 isEqual:v13];
          }
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_ui_descriptionBuilder
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _UIStatusBarDataBatteryEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v11 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_capacity);
  v12[0] = v3;
  v4 = NSStringFromSelector(sel_state);
  v12[1] = v4;
  v5 = NSStringFromSelector(sel_saverModeActive);
  v12[2] = v5;
  v6 = NSStringFromSelector(sel_prominentlyShowsDetailString);
  v12[3] = v6;
  v7 = NSStringFromSelector(sel_detailString);
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v9 = [_ui_descriptionBuilder appendKeys:v8];

  return v9;
}

@end