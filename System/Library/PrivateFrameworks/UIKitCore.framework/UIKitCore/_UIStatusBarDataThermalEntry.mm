@interface _UIStatusBarDataThermalEntry
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataThermalEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataThermalEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataThermalEntry;
  return *&self->_sunlightMode ^ [(_UIStatusBarDataEntry *)&v3 hash]^ *(&self->super._enabled + 1);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataThermalEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:a3];
  [v4 setColor:*&self->_sunlightMode];
  [v4 setSunlightMode:*(&self->super._enabled + 1)];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataThermalEntry;
  v4 = a3;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:*&self->_sunlightMode forKey:{@"color", v5.receiver, v5.super_class}];
  [v4 encodeInteger:*(&self->super._enabled + 1) forKey:@"sunlightMode"];
}

- (_UIStatusBarDataThermalEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataThermalEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:v3];
  -[_UIStatusBarDataThermalEntry setColor:](v4, "setColor:", [v3 decodeIntegerForKey:{@"color", v7.receiver, v7.super_class}]);
  v5 = [v3 decodeIntegerForKey:@"sunlightMode"];

  [(_UIStatusBarDataThermalEntry *)v4 setSunlightMode:v5 != 0];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIStatusBarDataThermalEntry;
  if ([(_UIStatusBarDataEntry *)&v10 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      v6 = *&self->_sunlightMode;
      if (v6 == [v5 color])
      {
        v7 = *(&self->super._enabled + 1);
        v8 = v7 == [v5 sunlightMode];
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
  v8.super_class = _UIStatusBarDataThermalEntry;
  v2 = [(_UIStatusBarDataEntry *)&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_color);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_sunlightMode);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 appendKeys:v5];

  return v6;
}

@end