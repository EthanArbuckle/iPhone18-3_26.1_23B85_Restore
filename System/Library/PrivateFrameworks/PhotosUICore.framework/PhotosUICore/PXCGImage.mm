@interface PXCGImage
- (BOOL)isEqual:(id)equal;
- (PXCGImage)init;
- (PXCGImage)initWithCGImage:(CGImage *)image;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation PXCGImage

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      image = [(PXCGImage *)equalCopy image];
      v6 = image == [(PXCGImage *)self image];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  image = [(PXCGImage *)self image];

  return CFHash(image);
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = PXCGImage;
  [(PXCGImage *)&v3 dealloc];
}

- (PXCGImage)initWithCGImage:(CGImage *)image
{
  v6.receiver = self;
  v6.super_class = PXCGImage;
  v4 = [(PXCGImage *)&v6 init];
  if (v4)
  {
    v4->_image = CGImageRetain(image);
  }

  return v4;
}

- (PXCGImage)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCGImage.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXCGImage init]"}];

  abort();
}

@end