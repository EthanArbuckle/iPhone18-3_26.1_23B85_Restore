@interface _UIStatusBarDataBatteryEntry
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataBatteryEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataBatteryEntry

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBatteryEntry;
  v3 = *&self->_saverModeActive ^ [(_UIStatusBarDataEntry *)&v5 hash]^ self->_capacity;
  return v3 ^ [self->_state hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataBatteryEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:a3];
  [v4 setCapacity:*&self->_saverModeActive];
  [v4 setState:self->_capacity];
  [v4 setSaverModeActive:*(&self->super._enabled + 1)];
  [v4 setProminentlyShowsDetailString:*(&self->super._enabled + 2)];
  [v4 setDetailString:self->_state];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBatteryEntry;
  v4 = a3;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:*&self->_saverModeActive forKey:{@"capacity", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_capacity forKey:@"state"];
  [v4 encodeInteger:*(&self->super._enabled + 1) forKey:@"saverModeActive"];
  [v4 encodeInteger:*(&self->super._enabled + 2) forKey:@"prominentlyShowsDetailString"];
  [v4 encodeObject:self->_state forKey:@"detailString"];
}

- (_UIStatusBarDataBatteryEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBatteryEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:v3];
  -[_UIStatusBarDataBatteryEntry setCapacity:](v4, "setCapacity:", [v3 decodeIntegerForKey:{@"capacity", v7.receiver, v7.super_class}]);
  -[_UIStatusBarDataBatteryEntry setState:](v4, "setState:", [v3 decodeIntegerForKey:@"state"]);
  -[_UIStatusBarDataBatteryEntry setSaverModeActive:](v4, "setSaverModeActive:", [v3 decodeIntegerForKey:@"saverModeActive"] != 0);
  -[_UIStatusBarDataBatteryEntry setProminentlyShowsDetailString:](v4, "setProminentlyShowsDetailString:", [v3 decodeIntegerForKey:@"prominentlyShowsDetailString"] != 0);
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"detailString"];

  [(_UIStatusBarDataBatteryEntry *)v4 setDetailString:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UIStatusBarDataBatteryEntry;
  if ([(_UIStatusBarDataEntry *)&v17 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      v6 = *&self->_saverModeActive;
      if (v6 == [v5 capacity] && (capacity = self->_capacity, capacity == objc_msgSend(v5, "state")) && (v8 = *(&self->super._enabled + 1), v8 == objc_msgSend(v5, "saverModeActive")) && (v9 = *(&self->super._enabled + 2), v9 == objc_msgSend(v5, "prominentlyShowsDetailString")))
      {
        state = self->_state;
        v11 = [v5 detailString];
        v12 = state;
        v13 = v11;
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
  v2 = [(_UIStatusBarDataEntry *)&v11 _ui_descriptionBuilder];
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
  v9 = [v2 appendKeys:v8];

  return v9;
}

@end