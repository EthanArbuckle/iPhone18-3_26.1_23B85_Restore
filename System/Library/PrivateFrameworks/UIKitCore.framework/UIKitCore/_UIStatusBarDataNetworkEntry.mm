@interface _UIStatusBarDataNetworkEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataNetworkEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataNetworkEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataNetworkEntry;
  return *&self->_lowDataModeActive ^ [(_UIStatusBarDataIntegerEntry *)&v3 hash]^ LOBYTE(self->super._displayValue);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataNetworkEntry;
  v4 = [(_UIStatusBarDataIntegerEntry *)&v6 copyWithZone:zone];
  [v4 setStatus:*&self->_lowDataModeActive];
  [v4 setLowDataModeActive:LOBYTE(self->super._displayValue)];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataNetworkEntry;
  coderCopy = coder;
  [(_UIStatusBarDataIntegerEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:*&self->_lowDataModeActive forKey:{@"status", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:LOBYTE(self->super._displayValue) forKey:@"lowDataModeActive"];
}

- (_UIStatusBarDataNetworkEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataNetworkEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataIntegerEntry *)&v7 initWithCoder:coderCopy];
  -[_UIStatusBarDataNetworkEntry setStatus:](v4, "setStatus:", [coderCopy decodeIntegerForKey:{@"status", v7.receiver, v7.super_class}]);
  v5 = [coderCopy decodeBoolForKey:@"lowDataModeActive"];

  [(_UIStatusBarDataNetworkEntry *)v4 setLowDataModeActive:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _UIStatusBarDataNetworkEntry;
  if ([(_UIStatusBarDataIntegerEntry *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
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
  _ui_descriptionBuilder = [(_UIStatusBarDataIntegerEntry *)&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_status);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_lowDataModeActive);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [_ui_descriptionBuilder appendKeys:v5];

  return v6;
}

@end