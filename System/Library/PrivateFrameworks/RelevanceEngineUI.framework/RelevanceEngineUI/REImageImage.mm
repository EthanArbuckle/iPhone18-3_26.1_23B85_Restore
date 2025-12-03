@interface REImageImage
- (BOOL)isEqual:(id)equal;
- (REImageImage)initWithCoder:(id)coder;
- (REImageImage)initWithImage:(id)image;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REImageImage

- (REImageImage)initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = REImageImage;
  v6 = [(REImageImage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uiImage, image);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uiImage = self->_uiImage;

  return [v4 initWithImage:uiImage];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uiImage = [equalCopy uiImage];
    v6 = uiImage;
    if (uiImage == self->_uiImage)
    {
      v7 = 1;
    }

    else
    {
      v7 = [(UIImage *)uiImage isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (REImageImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encodedImage"];

  v6 = REDecodeImage(v5);
  v7 = [(REImageImage *)self initWithImage:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  uiImage = self->_uiImage;
  coderCopy = coder;
  v5 = REEncodeImage(uiImage);
  [coderCopy encodeObject:v5 forKey:@"encodedImage"];
}

@end