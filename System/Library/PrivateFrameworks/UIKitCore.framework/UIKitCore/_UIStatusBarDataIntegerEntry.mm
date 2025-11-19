@interface _UIStatusBarDataIntegerEntry
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataIntegerEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataIntegerEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataIntegerEntry;
  return *&self->_displayRawValue ^ [(_UIStatusBarDataEntry *)&v3 hash]^ self->_rawValue ^ *(&self->super._enabled + 1);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataIntegerEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:a3];
  [v4 setRawValue:*&self->_displayRawValue];
  [v4 setDisplayValue:self->_rawValue];
  [v4 setDisplayRawValue:*(&self->super._enabled + 1)];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataIntegerEntry;
  v4 = a3;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:*&self->_displayRawValue forKey:{@"rawValue", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_rawValue forKey:@"displayValue"];
  [v4 encodeInteger:*(&self->super._enabled + 1) forKey:@"displayRawValue"];
}

- (_UIStatusBarDataIntegerEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataIntegerEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:v3];
  -[_UIStatusBarDataIntegerEntry setRawValue:](v4, "setRawValue:", [v3 decodeIntegerForKey:{@"rawValue", v7.receiver, v7.super_class}]);
  -[_UIStatusBarDataIntegerEntry setDisplayValue:](v4, "setDisplayValue:", [v3 decodeIntegerForKey:@"displayValue"]);
  v5 = [v3 decodeIntegerForKey:@"displayRawValue"];

  [(_UIStatusBarDataIntegerEntry *)v4 setDisplayRawValue:v5 != 0];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIStatusBarDataIntegerEntry;
  if ([(_UIStatusBarDataEntry *)&v11 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      v6 = *&self->_displayRawValue;
      if (v6 == [v5 rawValue] && (rawValue = self->_rawValue, rawValue == objc_msgSend(v5, "displayValue")))
      {
        v8 = *(&self->super._enabled + 1);
        v9 = v8 == [v5 displayRawValue];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_ui_descriptionBuilder
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataIntegerEntry;
  v2 = [(_UIStatusBarDataEntry *)&v9 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_rawValue);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_displayValue);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_displayRawValue);
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v2 appendKeys:v6];

  return v7;
}

@end