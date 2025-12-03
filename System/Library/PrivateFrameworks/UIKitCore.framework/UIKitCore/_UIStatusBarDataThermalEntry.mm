@interface _UIStatusBarDataThermalEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataThermalEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataThermalEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataThermalEntry;
  return *&self->_sunlightMode ^ [(_UIStatusBarDataEntry *)&v3 hash]^ *(&self->super._enabled + 1);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataThermalEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:zone];
  [v4 setColor:*&self->_sunlightMode];
  [v4 setSunlightMode:*(&self->super._enabled + 1)];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataThermalEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_sunlightMode forKey:{@"color", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:*(&self->super._enabled + 1) forKey:@"sunlightMode"];
}

- (_UIStatusBarDataThermalEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataThermalEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  -[_UIStatusBarDataThermalEntry setColor:](v4, "setColor:", [coderCopy decodeIntegerForKey:{@"color", v7.receiver, v7.super_class}]);
  v5 = [coderCopy decodeIntegerForKey:@"sunlightMode"];

  [(_UIStatusBarDataThermalEntry *)v4 setSunlightMode:v5 != 0];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _UIStatusBarDataThermalEntry;
  if ([(_UIStatusBarDataEntry *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
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
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_color);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_sunlightMode);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [_ui_descriptionBuilder appendKeys:v5];

  return v6;
}

@end