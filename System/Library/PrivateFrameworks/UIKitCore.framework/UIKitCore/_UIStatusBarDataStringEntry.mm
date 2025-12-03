@interface _UIStatusBarDataStringEntry
+ (id)entryWithStringValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataStringEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromData:(id *)data type:(int)type string:(const char *)string maxLength:(int)length;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataStringEntry

+ (id)entryWithStringValue:(id)value
{
  valueCopy = value;
  v5 = objc_alloc_init(self);
  [v5 setStringValue:valueCopy];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataStringEntry;
  v3 = [(_UIStatusBarDataEntry *)&v5 hash];
  return [(NSString *)self->_stringValue hash]^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataStringEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:zone];
  [v4 setStringValue:self->_stringValue];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataStringEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataStringEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataStringEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"stringValue", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataStringEntry *)v4 setStringValue:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = _UIStatusBarDataStringEntry;
  if ([(_UIStatusBarDataEntry *)&v14 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      stringValue = self->_stringValue;
      stringValue = [v5 stringValue];
      v8 = stringValue;
      v9 = stringValue;
      v10 = v9;
      if (v8 == v9)
      {
        v12 = 1;
      }

      else
      {
        if (v8)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = [(NSString *)v8 isEqual:v9];
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_ui_descriptionBuilder
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataStringEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_stringValue);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [_ui_descriptionBuilder appendKeys:v4];

  return v5;
}

- (id)initFromData:(id *)data type:(int)type string:(const char *)string maxLength:(int)length
{
  v11.receiver = self;
  v11.super_class = _UIStatusBarDataStringEntry;
  v8 = [(_UIStatusBarDataEntry *)&v11 initFromData:data type:*&type];
  if (strnlen(string, length))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    [v8 setStringValue:v9];
  }

  else
  {
    [v8 setEnabled:0];
  }

  return v8;
}

@end