@interface REAccessoryImage
- (BOOL)isEqual:(id)equal;
- (REAccessoryImage)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REAccessoryImage

- (REAccessoryImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = REAccessoryImage;
  v5 = [(REAccessoryImage *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"_image"];
    image = v5->_image;
    v5->_image = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[REAccessoryImage allocWithZone:](REAccessoryImage init];
  v6 = [(REImage *)self->_image copyWithZone:zone];
  image = v5->_image;
  v5->_image = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = self->_image;
    v6 = equalCopy[1];
    v7 = image;
    v8 = v7;
    if (v7 == v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(REImage *)v7 isEqual:v6];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = REAccessoryImage;
    v9 = [(REAccessoryImage *)&v11 isEqual:equalCopy];
  }

  return v9;
}

@end