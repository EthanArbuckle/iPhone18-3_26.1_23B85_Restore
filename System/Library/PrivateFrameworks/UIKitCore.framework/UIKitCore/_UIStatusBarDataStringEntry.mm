@interface _UIStatusBarDataStringEntry
+ (id)entryWithStringValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataStringEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromData:(id *)a3 type:(int)a4 string:(const char *)a5 maxLength:(int)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataStringEntry

+ (id)entryWithStringValue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setStringValue:v4];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataStringEntry;
  v3 = [(_UIStatusBarDataEntry *)&v5 hash];
  return [(NSString *)self->_stringValue hash]^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataStringEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:a3];
  [v4 setStringValue:self->_stringValue];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataStringEntry;
  v4 = a3;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_stringValue forKey:{@"stringValue", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataStringEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataStringEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"stringValue", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataStringEntry *)v4 setStringValue:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _UIStatusBarDataStringEntry;
  if ([(_UIStatusBarDataEntry *)&v14 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      stringValue = self->_stringValue;
      v7 = [v5 stringValue];
      v8 = stringValue;
      v9 = v7;
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
  v2 = [(_UIStatusBarDataEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_stringValue);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 appendKeys:v4];

  return v5;
}

- (id)initFromData:(id *)a3 type:(int)a4 string:(const char *)a5 maxLength:(int)a6
{
  v11.receiver = self;
  v11.super_class = _UIStatusBarDataStringEntry;
  v8 = [(_UIStatusBarDataEntry *)&v11 initFromData:a3 type:*&a4];
  if (strnlen(a5, a6))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a5];
    [v8 setStringValue:v9];
  }

  else
  {
    [v8 setEnabled:0];
  }

  return v8;
}

@end