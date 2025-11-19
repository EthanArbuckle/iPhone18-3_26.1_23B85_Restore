@interface REAccessoryImage
- (BOOL)isEqual:(id)a3;
- (REAccessoryImage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation REAccessoryImage

- (REAccessoryImage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REAccessoryImage;
  v5 = [(REAccessoryImage *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"_image"];
    image = v5->_image;
    v5->_image = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[REAccessoryImage allocWithZone:](REAccessoryImage init];
  v6 = [(REImage *)self->_image copyWithZone:a3];
  image = v5->_image;
  v5->_image = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    image = self->_image;
    v6 = v4[1];
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
    v9 = [(REAccessoryImage *)&v11 isEqual:v4];
  }

  return v9;
}

@end