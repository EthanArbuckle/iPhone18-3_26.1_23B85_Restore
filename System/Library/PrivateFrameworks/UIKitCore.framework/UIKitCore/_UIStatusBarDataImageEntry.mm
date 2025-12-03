@interface _UIStatusBarDataImageEntry
+ (id)entryWithImageNamed:(id)named;
- (BOOL)isEqual:(id)equal;
- (_UIStatusBarDataImageEntry)initWithCoder:(id)coder;
- (id)_ui_descriptionBuilder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromData:(id *)data type:(int)type imageName:(const char *)name maxLength:(int)length;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarDataImageEntry

+ (id)entryWithImageNamed:(id)named
{
  namedCopy = named;
  v5 = objc_alloc_init(self);
  [v5 setImageName:namedCopy];

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataImageEntry;
  v3 = [(_UIStatusBarDataEntry *)&v5 hash];
  return [(NSString *)self->_imageName hash]^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarDataImageEntry;
  v4 = [(_UIStatusBarDataEntry *)&v6 copyWithZone:zone];
  [v4 setImageName:self->_imageName];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIStatusBarDataImageEntry;
  coderCopy = coder;
  [(_UIStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imageName forKey:{@"imageName", v5.receiver, v5.super_class}];
}

- (_UIStatusBarDataImageEntry)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _UIStatusBarDataImageEntry;
  coderCopy = coder;
  v4 = [(_UIStatusBarDataEntry *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"imageName", v7.receiver, v7.super_class}];

  [(_UIStatusBarDataImageEntry *)v4 setImageName:v5];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = _UIStatusBarDataImageEntry;
  if ([(_UIStatusBarDataEntry *)&v14 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (([v5 isEnabled] & 1) != 0 || -[_UIStatusBarDataEntry isEnabled](self, "isEnabled"))
    {
      imageName = self->_imageName;
      imageName = [v5 imageName];
      v8 = imageName;
      v9 = imageName;
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
  v7.super_class = _UIStatusBarDataImageEntry;
  _ui_descriptionBuilder = [(_UIStatusBarDataEntry *)&v7 _ui_descriptionBuilder];
  v3 = NSStringFromSelector(sel_imageName);
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [_ui_descriptionBuilder appendKeys:v4];

  return v5;
}

- (id)initFromData:(id *)data type:(int)type imageName:(const char *)name maxLength:(int)length
{
  v11.receiver = self;
  v11.super_class = _UIStatusBarDataImageEntry;
  v8 = [(_UIStatusBarDataEntry *)&v11 initFromData:data type:*&type];
  if (strnlen(name, length))
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
    [v8 setImageName:v9];
  }

  return v8;
}

@end