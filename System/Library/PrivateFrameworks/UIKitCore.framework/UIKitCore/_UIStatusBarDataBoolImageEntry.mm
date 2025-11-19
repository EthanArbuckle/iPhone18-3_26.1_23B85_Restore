@interface _UIStatusBarDataBoolImageEntry
+ (id)entryWithImageNamed:(id)a3 BOOLValue:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (_UIStatusBarDataBoolImageEntry)initWithCoder:(id)a3;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromData:(id *)a3 type:(int)a4 imageName:(const char *)a5 maxLength:(int)a6 BOOLValue:(BOOL)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarDataBoolImageEntry

+ (id)entryWithImageNamed:(id)a3 BOOLValue:(BOOL)a4
{
  v4 = a4;
  v5 = [a1 entryWithImageNamed:a3];
  [v5 setBoolValue:v4];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataBoolImageEntry;
  return [(_UIStatusBarDataImageEntry *)&v3 hash]^ self->_BOOLValue;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataBoolImageEntry;
  v4 = [(_UIStatusBarDataImageEntry *)&v6 copyWithZone:a3];
  [v4 setBoolValue:self->_BOOLValue];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBoolImageEntry;
  v4 = a3;
  [(_UIStatusBarDataImageEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_BOOLValue forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataBoolImageEntry)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBoolImageEntry;
  v3 = a3;
  v4 = [(_UIStatusBarDataImageEntry *)&v7 initWithCoder:v3];
  v5 = [v3 decodeBoolForKey:{@"BOOLValue", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataBoolImageEntry *)v4 setBoolValue:v5];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataBoolImageEntry;
  if ([(_UIStatusBarDataImageEntry *)&v9 isEqual:v4])
  {
    v5 = v4;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      BOOLValue = self->_BOOLValue;
      v7 = BOOLValue == [v5 BOOLValue];
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
  v7.super_class = _UIStatusBarDataBoolImageEntry;
  v2 = [(_UIStatusBarDataImageEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_BOOLValue);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 appendKeys:v4];

  return v5;
}

- (id)initFromData:(id *)a3 type:(int)a4 imageName:(const char *)a5 maxLength:(int)a6 BOOLValue:(BOOL)a7
{
  v7 = a7;
  v10.receiver = self;
  v10.super_class = _UIStatusBarDataBoolImageEntry;
  v8 = [(_UIStatusBarDataImageEntry *)&v10 initFromData:a3 type:*&a4 imageName:a5 maxLength:*&a6];
  [v8 setBoolValue:v7];
  return v8;
}

@end