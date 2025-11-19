@interface _UIStatusBarDataBackgroundActivityEntry
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataBackgroundActivityEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBackgroundActivityEntry;
  v4 = [(_UIStatusBarDataEntry *)&v7 copyWithZone:a3];
  [v4 setType:self->_type];
  [v4 setDisplayStartDate:self->_displayStartDate];
  v5 = [(NSString *)self->_detailString copy];
  [v4 setDetailString:v5];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBackgroundActivityEntry;
  v4 = a3;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"displayStartDate" forKey:self->_displayStartDate];
  [v4 encodeObject:self->_detailString forKey:@"detailString"];
}

- (_UIStatusBarDataBackgroundActivityEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBackgroundActivityEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:v3];
  -[_UIStatusBarDataBackgroundActivityEntry setType:](v4, "setType:", [v3 decodeIntegerForKey:{@"type", v7.receiver, v7.super_class}]);
  [v3 decodeDoubleForKey:@"displayStartDate"];
  [(_UIStatusBarDataBackgroundActivityEntry *)v4 setDisplayStartDate:?];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"detailString"];

  [(_UIStatusBarDataBackgroundActivityEntry *)v4 setDetailString:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UIStatusBarDataBackgroundActivityEntry;
  if ([(_UIStatusBarDataEntry *)&v16 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      type = self->_type;
      if (type == [v5 type] && (displayStartDate = self->_displayStartDate, objc_msgSend(v5, "displayStartDate"), displayStartDate == v8))
      {
        detailString = self->_detailString;
        v10 = [v5 detailString];
        v11 = detailString;
        v12 = v10;
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
  v2 = [(_UIStatusBarDataEntry *)&v8 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_type);
  v9[0] = v3;
  v4 = NSStringFromSelector(sel_detailString);
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v2 appendKeys:v5];

  return v6;
}

@end