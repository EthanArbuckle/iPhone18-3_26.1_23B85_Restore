@interface _UIBannerContent
+ (_UIBannerContent)bannerContentWithTitle:(id)a3;
- (UIImage)image;
- (_UIBannerContent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIBannerContent

+ (_UIBannerContent)bannerContentWithTitle:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setTitle:v4];

  return v5;
}

- (_UIBannerContent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIBannerContent *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentColor"];
    contentColor = v5->_contentColor;
    v5->_contentColor = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_body forKey:@"body"];
  [v5 encodeObject:self->_imageName forKey:@"imageName"];
  [v5 encodeObject:self->_image forKey:@"image"];
  [v5 encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [v5 encodeObject:self->_contentColor forKey:@"contentColor"];
}

- (UIImage)image
{
  image = self->_image;
  if (!image)
  {
    if (self->_imageName)
    {
      v4 = [UIImage kitImageNamed:?];
      v5 = [v4 imageWithRenderingMode:2];
      v6 = self->_image;
      self->_image = v5;

      image = self->_image;
    }

    else
    {
      image = 0;
    }
  }

  return image;
}

@end