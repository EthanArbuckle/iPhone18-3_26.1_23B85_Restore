@interface _UIStatusBarDataBackgroundActivityEntry
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataBackgroundActivityEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataBackgroundActivityEntry

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataBackgroundActivityEntry;
  v3 = self->_type ^ [(_UIStatusBarDataEntry *)&v6 hash];
  displayStartDate = self->_displayStartDate;
  return v3 ^ [(NSString *)self->_detailString hash]^ displayStartDate;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBackgroundActivityEntry;
  v4 = [(_UIStatusBarDataEntry *)&v7 copyWithZone:zone];
  [v4 setType:self->_type];
  [v4 setDisplayStartDate:self->_displayStartDate];
  v5 = [(NSString *)self->_detailString copy];
  [v4 setDetailString:v5];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBackgroundActivityEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"displayStartDate" forKey:self->_displayStartDate];
  [coderCopy encodeObject:self->_detailString forKey:@"detailString"];
}

- (_UIStatusBarDataBackgroundActivityEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBackgroundActivityEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  -[_UIStatusBarDataBackgroundActivityEntry setType:](v4, "setType:", [coderCopy decodeIntegerForKey:{@"type", v7.receiver, v7.super_class}]);
  [coderCopy decodeDoubleForKey:@"displayStartDate"];
  [(_UIStatusBarDataBackgroundActivityEntry *)v4 setDisplayStartDate:?];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailString"];

  [(_UIStatusBarDataBackgroundActivityEntry *)v4 setDetailString:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v16.receiver = self;
  v16.super_class = _UIStatusBarDataBackgroundActivityEntry;
  if ([(_UIStatusBarDataEntry *)&v16 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      type = self->_type;
      if (type == [v5 type] && (displayStartDate = self->_displayStartDate, objc_msgSend(v5, "displayStartDate"), displayStartDate == v8))
      {
        detailString = self->_detailString;
        detailString = [v5 detailString];
        v11 = detailString;
        v12 = detailString;
        v13 = v12;
        if (v11 == v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = 0;
          if (v11 && v12)
          {
            v14 = [(NSString *)v11 isEqual:v12];
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_ui_descriptionBuilder
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = _UIStatusBarDataBackgroundActivityEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_type);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_detailString);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [_ui_descriptionBuilder appendKeys:v5];

  return v6;
}

@end