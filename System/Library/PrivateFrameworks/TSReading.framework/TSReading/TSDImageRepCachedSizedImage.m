@interface TSDImageRepCachedSizedImage
- (CGSize)imageSize;
- (void)dealloc;
- (void)setImageMaskPath:(CGPath *)a3;
- (void)setImageRef:(CGImage *)a3;
@end

@implementation TSDImageRepCachedSizedImage

- (void)dealloc
{
  CGImageRelease(self->mImageRef);
  CGPathRelease(self->mImageMaskPath);
  v3.receiver = self;
  v3.super_class = TSDImageRepCachedSizedImage;
  [(TSDImageRepCachedSizedImage *)&v3 dealloc];
}

- (void)setImageRef:(CGImage *)a3
{
  mImageRef = self->mImageRef;
  if (mImageRef != a3)
  {
    if (mImageRef)
    {
      CFRelease(mImageRef);
      self->mImageRef = 0;
    }

    self->mImageRef = CGImageRetain(a3);
  }
}

- (void)setImageMaskPath:(CGPath *)a3
{
  mImageMaskPath = self->mImageMaskPath;
  if (mImageMaskPath != a3)
  {
    if (mImageMaskPath)
    {
      CFRelease(mImageMaskPath);
      self->mImageMaskPath = 0;
    }

    self->mImageMaskPath = CGPathRetain(a3);
  }
}

- (CGSize)imageSize
{
  width = self->mImageSize.width;
  height = self->mImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end