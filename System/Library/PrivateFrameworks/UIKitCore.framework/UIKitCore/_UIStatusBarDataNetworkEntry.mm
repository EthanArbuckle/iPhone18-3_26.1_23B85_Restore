@interface _UIStatusBarDataNetworkEntry
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataNetworkEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataNetworkEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataNetworkEntry;
  return *&self->_lowDataModeActive ^ [(_UIStatusBarDataIntegerEntry *)&v3 hash]^ LOBYTE(self->super._displayValue);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataNetworkEntry;
  v4 = [(_UIStatusBarDataIntegerEntry *)&v6 copyWithZone:a3];
  [v4 setStatus:*&self->_lowDataModeActive];
  [v4 setLowDataModeActive:LOBYTE(self->super._displayValue)];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataNetworkEntry;
  v4 = a3;
  [(_UIStatusBarDataIntegerEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:*&self->_lowDataModeActive forKey:{@"status", v5.receiver, v5.super_class}];
  [v4 encodeBool:LOBYTE(self->super._displayValue) forKey:@"lowDataModeActive"];
}

- (_UIStatusBarDataNetworkEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataNetworkEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataIntegerEntry *)&v7 initWithCoder:v3];
  -[_UIStatusBarDataNetworkEntry setStatus:](v4, "setStatus:", [v3 decodeIntegerForKey:{@"status", v7.receiver, v7.super_class}]);
  v5 = [v3 decodeBoolForKey:@"lowDataModeActive"];

  [(_UIStatusBarDataNetworkEntry *)v4 setLowDataModeActive:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIStatusBarDataNetworkEntry;
  if ([(_UIStatusBarDataIntegerEntry *)&v10 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      v6 = *&self->_lowDataModeActive;
      if (v6 == [v5 status])
      {
        displayValue_low = LOBYTE(self->super._displayValue);
        v8 = displayValue_low == [v5 lowDataModeActive];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_ui_descriptionBuilder
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIStatusBarDataNetworkEntry;
  v2 = [(_UIStatusBarDataIntegerEntry *)&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_status);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_lowDataModeActive);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 appendKeys:v5];

  return v6;
}

@end