@interface REImageImage
- (BOOL)isEqual:(id)a3;
- (REImageImage)initWithCoder:(id)a3;
- (REImageImage)initWithImage:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REImageImage

- (REImageImage)initWithImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REImageImage;
  v6 = [(REImageImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiImage, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  uiImage = self->_uiImage;

  return [v4 initWithImage:uiImage];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uiImage];
    v6 = v5;
    if (v5 == self->_uiImage)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(UIImage *)v5 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (REImageImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encodedImage"];

  v6 = REDecodeImage(v5);
  v7 = [(REImageImage *)self initWithImage:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  uiImage = self->_uiImage;
  v4 = a3;
  v5 = REEncodeImage(uiImage);
  [v4 encodeObject:v5 forKey:@"encodedImage"];
}

@end