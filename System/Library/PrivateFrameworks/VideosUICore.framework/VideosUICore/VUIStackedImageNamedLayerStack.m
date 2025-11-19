@interface VUIStackedImageNamedLayerStack
- (CGSize)radiosityImageScale;
- (CGSize)size;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setFlattenedImage:(CGImage *)a3;
@end

@implementation VUIStackedImageNamedLayerStack

- (void)dealloc
{
  flattenedImage = self->_flattenedImage;
  if (flattenedImage)
  {
    CFRelease(flattenedImage);
  }

  v4.receiver = self;
  v4.super_class = VUIStackedImageNamedLayerStack;
  [(VUIStackedImageNamedLayerStack *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v5 = [(NSString *)self->_name copy];
    v6 = *(v4 + 24);
    *(v4 + 24) = v5;

    v7 = [(NSArray *)self->_layers copy];
    v8 = *(v4 + 32);
    *(v4 + 32) = v7;

    *(v4 + 56) = self->_size;
    *(v4 + 40) = self->_scale;
    *(v4 + 8) = self->_flattenedImage;
    v9 = [self->_radiosityImage copy];
    v10 = *(v4 + 48);
    *(v4 + 48) = v9;

    *(v4 + 72) = self->_radiosityImageScale;
    *(v4 + 16) = self->_flatImageContainsCornerRadius;
  }

  return v4;
}

- (void)setFlattenedImage:(CGImage *)a3
{
  flattenedImage = self->_flattenedImage;
  if (flattenedImage != a3)
  {
    if (flattenedImage)
    {
      CFRelease(flattenedImage);
      self->_flattenedImage = 0;
    }

    if (a3)
    {
      self->_flattenedImage = CGImageRetain(a3);
    }
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)radiosityImageScale
{
  width = self->_radiosityImageScale.width;
  height = self->_radiosityImageScale.height;
  result.height = height;
  result.width = width;
  return result;
}

@end