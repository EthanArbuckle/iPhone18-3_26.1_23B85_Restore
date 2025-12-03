@interface _UIStatusBarDataIntegerEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataIntegerEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataIntegerEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataIntegerEntry;
  return *&self->_displayRawValue ^ [(_UIStatusBarDataEntry *)&v3 hash]^ self->_rawValue ^ *(&self->super._enabled + 1);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataIntegerEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:zone];
  [v4 setRawValue:*&self->_displayRawValue];
  [v4 setDisplayValue:self->_rawValue];
  [v4 setDisplayRawValue:*(&self->super._enabled + 1)];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataIntegerEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_displayRawValue forKey:{@"rawValue", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_rawValue forKey:@"displayValue"];
  [coderCopy encodeInteger:*(&self->super._enabled + 1) forKey:@"displayRawValue"];
}

- (_UIStatusBarDataIntegerEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataIntegerEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  -[_UIStatusBarDataIntegerEntry setRawValue:](v4, "setRawValue:", [coderCopy decodeIntegerForKey:{@"rawValue", v7.receiver, v7.super_class}]);
  -[_UIStatusBarDataIntegerEntry setDisplayValue:](v4, "setDisplayValue:", [coderCopy decodeIntegerForKey:@"displayValue"]);
  v5 = [coderCopy decodeIntegerForKey:@"displayRawValue"];

  [(_UIStatusBarDataIntegerEntry *)v4 setDisplayRawValue:v5 != 0];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v11.receiver = self;
  v11.super_class = _UIStatusBarDataIntegerEntry;
  if ([(_UIStatusBarDataEntry *)&v11 isEqual:equalCopy])
  {
    v5 = equalCopy;
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
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v9 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_rawValue);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_displayValue);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_displayRawValue);
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [_ui_descriptionBuilder appendKeys:v6];

  return v7;
}

@end