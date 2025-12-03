@interface _UIImageViewSimpleStorage
- (id)imageProperties;
- (void)setImage:(id)image;
- (void)setResolvedImage:(id)image;
@end

@implementation _UIImageViewSimpleStorage

- (id)imageProperties
{
  imageProperties = self->_imageProperties;
  if (!imageProperties)
  {
    v4 = objc_opt_new();
    v5 = self->_imageProperties;
    self->_imageProperties = v4;

    imageProperties = self->_imageProperties;
  }

  return imageProperties;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(_UIImageViewSimpleStorage *)self image];

  if (image != imageCopy)
  {
    imageProperties = [(_UIImageViewSimpleStorage *)self imageProperties];
    [imageProperties setImage:imageCopy];
  }
}

- (void)setResolvedImage:(id)image
{
  imageCopy = image;
  resolvedImage = [(_UIImageViewSimpleStorage *)self resolvedImage];

  if (resolvedImage != imageCopy)
  {
    imageProperties = [(_UIImageViewSimpleStorage *)self imageProperties];
    [imageProperties setResolvedImage:imageCopy];
  }
}

@end