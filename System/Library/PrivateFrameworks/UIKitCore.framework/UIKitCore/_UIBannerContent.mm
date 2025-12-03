@interface _UIBannerContent
+ (_UIBannerContent)bannerContentWithTitle:(id)title;
- (UIImage)image;
- (_UIBannerContent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIBannerContent

+ (_UIBannerContent)bannerContentWithTitle:(id)title
{
  titleCopy = title;
  v5 = objc_alloc_init(self);
  [v5 setTitle:titleCopy];

  return v5;
}

- (_UIBannerContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIBannerContent *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"body"];
    body = v5->_body;
    v5->_body = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentColor"];
    contentColor = v5->_contentColor;
    v5->_contentColor = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_body forKey:@"body"];
  [coderCopy encodeObject:self->_imageName forKey:@"imageName"];
  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeObject:self->_backgroundColor forKey:@"backgroundColor"];
  [coderCopy encodeObject:self->_contentColor forKey:@"contentColor"];
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