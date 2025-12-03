@interface TSDImageRepCachedSizedImage
- (CGSize)imageSize;
- (void)dealloc;
- (void)setImageMaskPath:(CGPath *)path;
- (void)setImageRef:(CGImage *)ref;
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

- (void)setImageRef:(CGImage *)ref
{
  mImageRef = self->mImageRef;
  if (mImageRef != ref)
  {
    if (mImageRef)
    {
      CFRelease(mImageRef);
      self->mImageRef = 0;
    }

    self->mImageRef = CGImageRetain(ref);
  }
}

- (void)setImageMaskPath:(CGPath *)path
{
  mImageMaskPath = self->mImageMaskPath;
  if (mImageMaskPath != path)
  {
    if (mImageMaskPath)
    {
      CFRelease(mImageMaskPath);
      self->mImageMaskPath = 0;
    }

    self->mImageMaskPath = CGPathRetain(path);
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