@interface _UIStatusBarDataActivityEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataActivityEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataActivityEntry

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataActivityEntry;
  v3 = self->_type ^ [(_UIStatusBarDataEntry *)&v5 hash];
  return v3 ^ [(NSString *)self->_displayId hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataActivityEntry;
  v4 = [(_UIStatusBarDataEntry *)&v7 copyWithZone:zone];
  [v4 setType:self->_type];
  v5 = [(NSString *)self->_displayId copy];
  [v4 setDisplayId:v5];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataActivityEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_displayId forKey:@"displayId"];
}

- (_UIStatusBarDataActivityEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataActivityEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  -[_UIStatusBarDataActivityEntry setType:](v4, "setType:", [coderCopy decodeIntegerForKey:{@"type", v7.receiver, v7.super_class}]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayId"];

  [(_UIStatusBarDataActivityEntry *)v4 setDisplayId:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v15.receiver = self;
  v15.super_class = _UIStatusBarDataActivityEntry;
  if ([(_UIStatusBarDataEntry *)&v15 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      type = self->_type;
      if (type == [v5 type])
      {
        displayId = self->_displayId;
        displayId = [v5 displayId];
        v9 = displayId;
        v10 = displayId;
        v11 = v10;
        if (v9 == v10)
        {
          v13 = 1;
        }

        else
        {
          if (v9)
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            v13 = 0;
          }

          else
          {
            v13 = [(NSString *)v9 isEqual:v10];
          }
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_ui_descriptionBuilder
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIStatusBarDataActivityEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_type);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_displayId);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [_ui_descriptionBuilder appendKeys:v5];

  return v6;
}

@end