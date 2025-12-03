@interface _UIStatusBarDataQuietModeEntry
+ (id)entryWithFocusName:(id)name imageNamed:(id)named BOOLValue:(BOOL)value;
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataQuietModeEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromData:(id *)data type:(int)type focusName:(const char *)name maxFocusLength:(int)length imageName:(const char *)imageName maxImageLength:(int)imageLength BOOLValue:(BOOL)value;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataQuietModeEntry

+ (id)entryWithFocusName:(id)name imageNamed:(id)named BOOLValue:(BOOL)value
{
  valueCopy = value;
  nameCopy = name;
  v9 = [self entryWithImageNamed:named BOOLValue:valueCopy];
  [v9 setFocusName:nameCopy];

  return v9;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataQuietModeEntry;
  v3 = [(_UIStatusBarDataBoolImageEntry *)&v5 hash];
  return [(NSString *)self->_focusName hash]^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataQuietModeEntry;
  v4 = [(_UIStatusBarDataBoolImageEntry *)&v6 copyWithZone:zone];
  [v4 setFocusName:self->_focusName];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataQuietModeEntry;
  coderCopy = coder;
  [(_UIStatusBarDataBoolImageEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_focusName forKey:{@"focusName", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataQuietModeEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataQuietModeEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataBoolImageEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"focusName", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataQuietModeEntry *)v4 setFocusName:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = _UIStatusBarDataQuietModeEntry;
  if ([(_UIStatusBarDataBoolImageEntry *)&v14 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      focusName = self->_focusName;
      focusName = [v5 focusName];
      v8 = focusName;
      v9 = focusName;
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
  v7.super_class = _UIStatusBarDataQuietModeEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataBoolImageEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_focusName);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [_ui_descriptionBuilder appendKeys:v4];

  return v5;
}

- (id)initFromData:(id *)data type:(int)type focusName:(const char *)name maxFocusLength:(int)length imageName:(const char *)imageName maxImageLength:(int)imageLength BOOLValue:(BOOL)value
{
  v14.receiver = self;
  v14.super_class = _UIStatusBarDataQuietModeEntry;
  v11 = [(_UIStatusBarDataBoolImageEntry *)&v14 initFromData:data type:*&type imageName:imageName maxLength:*&imageLength BOOLValue:value];
  if (strnlen(name, length))
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
    [v11 setFocusName:v12];
  }

  return v11;
}

@end