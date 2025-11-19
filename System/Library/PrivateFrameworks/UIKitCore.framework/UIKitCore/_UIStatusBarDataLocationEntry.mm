@interface _UIStatusBarDataLocationEntry
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataLocationEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataLocationEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataLocationEntry;
  return self->_type ^ [(_UIStatusBarDataEntry *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataLocationEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:a3];
  [v4 setType:self->_type];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataLocationEntry;
  v4 = a3;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataLocationEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataLocationEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeIntegerForKey:{@"type", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataLocationEntry *)v4 setType:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataLocationEntry;
  if ([(_UIStatusBarDataEntry *)&v9 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      type = self->_type;
      v7 = type == [v5 type];
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
  v7.super_class = _UIStatusBarDataLocationEntry;
  v2 = [(_UIStatusBarDataEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_type);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 appendKeys:v4];

  return v5;
}

@end