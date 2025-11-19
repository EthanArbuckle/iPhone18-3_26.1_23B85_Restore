@interface GQDFilteredImage
- (id)imageBinary;
- (void)dealloc;
@end

@implementation GQDFilteredImage

- (id)imageBinary
{
  result = self->mFilteredImageBinary;
  if (!result)
  {
    return self->mOriginalImageBinary;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDFilteredImage;
  [(GQDFilteredImage *)&v3 dealloc];
}

@end