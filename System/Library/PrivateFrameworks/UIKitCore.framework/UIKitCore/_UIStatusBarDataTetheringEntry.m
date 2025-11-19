@interface _UIStatusBarDataTetheringEntry
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataTetheringEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataTetheringEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataTetheringEntry;
  return self->_connectionCount ^ [(_UIStatusBarDataEntry *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataTetheringEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:a3];
  [v4 setConnectionCount:self->_connectionCount];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataTetheringEntry;
  v4 = a3;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_connectionCount forKey:{@"connectionCount", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataTetheringEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataTetheringEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeIntegerForKey:{@"connectionCount", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataTetheringEntry *)v4 setConnectionCount:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataTetheringEntry;
  if ([(_UIStatusBarDataEntry *)&v9 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      connectionCount = self->_connectionCount;
      v7 = connectionCount == [v5 connectionCount];
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
  v7.super_class = _UIStatusBarDataTetheringEntry;
  v2 = [(_UIStatusBarDataEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_connectionCount);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 appendKeys:v4];

  return v5;
}

@end