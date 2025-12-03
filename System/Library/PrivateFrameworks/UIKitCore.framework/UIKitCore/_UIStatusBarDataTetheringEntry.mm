@interface _UIStatusBarDataTetheringEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataTetheringEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataTetheringEntry

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataTetheringEntry;
  return self->_connectionCount ^ [(_UIStatusBarDataEntry *)&v3 hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataTetheringEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:zone];
  [v4 setConnectionCount:self->_connectionCount];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataTetheringEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_connectionCount forKey:{@"connectionCount", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataTetheringEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataTetheringEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeIntegerForKey:{@"connectionCount", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataTetheringEntry *)v4 setConnectionCount:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataTetheringEntry;
  if ([(_UIStatusBarDataEntry *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
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
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_connectionCount);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [_ui_descriptionBuilder appendKeys:v4];

  return v5;
}

@end