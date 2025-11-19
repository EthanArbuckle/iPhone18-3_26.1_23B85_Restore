@interface _UIImageViewSimpleStorage
- (id)imageProperties;
- (void)setImage:(id)a3;
- (void)setResolvedImage:(id)a3;
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

- (void)setImage:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewSimpleStorage *)self image];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewSimpleStorage *)self imageProperties];
    [v5 setImage:v6];
  }
}

- (void)setResolvedImage:(id)a3
{
  v6 = a3;
  v4 = [(_UIImageViewSimpleStorage *)self resolvedImage];

  if (v4 != v6)
  {
    v5 = [(_UIImageViewSimpleStorage *)self imageProperties];
    [v5 setResolvedImage:v6];
  }
}

@end