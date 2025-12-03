@interface _UIStatusBarDataWifiEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataWifiEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataWifiEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataWifiEntry;
  return self->super._status ^ [(_UIStatusBarDataNetworkEntry *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataWifiEntry;
  v4 = [(_UIStatusBarDataNetworkEntry *)&v6 copyWithZone:zone];
  [v4 setType:self->super._status];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataWifiEntry;
  coderCopy = coder;
  [(_UIStatusBarDataNetworkEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->super._status forKey:{@"type", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataWifiEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataWifiEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataNetworkEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeIntegerForKey:{@"type", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataWifiEntry *)v4 setType:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataWifiEntry;
  if ([(_UIStatusBarDataNetworkEntry *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      status = self->super._status;
      v7 = status == [v5 type];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_ui_descriptionBuilder
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataWifiEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataNetworkEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_type);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [_ui_descriptionBuilder appendKeys:v4];

  return v5;
}

@end