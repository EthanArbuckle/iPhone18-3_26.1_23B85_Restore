@interface _UIStatusBarDataBoolImageEntry
+ (id)entryWithImageNamed:(id)named BOOLValue:(BOOL)value;
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataBoolImageEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromData:(id *)data type:(int)type imageName:(const char *)name maxLength:(int)length BOOLValue:(BOOL)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataBoolImageEntry

+ (id)entryWithImageNamed:(id)named BOOLValue:(BOOL)value
{
  valueCopy = value;
  v5 = [self entryWithImageNamed:named];
  [v5 setBoolValue:valueCopy];

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = _UIStatusBarDataBoolImageEntry;
  return [(_UIStatusBarDataImageEntry *)&v3 hash]^ self->_BOOLValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataBoolImageEntry;
  v4 = [(_UIStatusBarDataImageEntry *)&v6 copyWithZone:zone];
  [v4 setBoolValue:self->_BOOLValue];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataBoolImageEntry;
  coderCopy = coder;
  [(_UIStatusBarDataImageEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_BOOLValue forKey:{@"BOOLValue", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataBoolImageEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataBoolImageEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataImageEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeBoolForKey:{@"BOOLValue", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataBoolImageEntry *)v4 setBoolValue:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = _UIStatusBarDataBoolImageEntry;
  if ([(_UIStatusBarDataImageEntry *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
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
  _ui_descriptionBuilder = [(_UIStatusBarDataImageEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_BOOLValue);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [_ui_descriptionBuilder appendKeys:v4];

  return v5;
}

- (id)initFromData:(id *)data type:(int)type imageName:(const char *)name maxLength:(int)length BOOLValue:(BOOL)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = _UIStatusBarDataBoolImageEntry;
  v8 = [(_UIStatusBarDataImageEntry *)&v10 initFromData:data type:*&type imageName:name maxLength:*&length];
  [v8 setBoolValue:valueCopy];
  return v8;
}

@end