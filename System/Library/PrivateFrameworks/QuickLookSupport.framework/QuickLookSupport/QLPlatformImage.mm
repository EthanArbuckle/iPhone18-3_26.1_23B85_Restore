@interface QLPlatformImage
+ (id)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(unsigned int)orientation;
+ (id)imageWithUIImage:(id)image;
- (CGSize)size;
- (UIImage)UIImage;
- (void)dealloc;
- (void)setCGImage:(CGImage *)image;
@end

@implementation QLPlatformImage

- (void)dealloc
{
  cleanupDataBlock = [(QLPlatformImage *)self cleanupDataBlock];

  if (cleanupDataBlock)
  {
    cleanupDataBlock2 = [(QLPlatformImage *)self cleanupDataBlock];
    cleanupDataBlock2[2]();

    [(QLPlatformImage *)self setCleanupDataBlock:0];
  }

  cgImage = self->_cgImage;
  if (cgImage)
  {
    CGImageRelease(cgImage);
  }

  v6.receiver = self;
  v6.super_class = QLPlatformImage;
  [(QLPlatformImage *)&v6 dealloc];
}

- (void)setCGImage:(CGImage *)image
{
  cgImage = self->_cgImage;
  if (cgImage != image)
  {
    CGImageRelease(cgImage);
    self->_cgImage = CGImageRetain(image);
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);

    [(QLPlatformImage *)self setSize:Width, Height];
  }
}

+ (id)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(unsigned int)orientation
{
  v5 = *&orientation;
  v8 = objc_alloc_init(QLPlatformImage);
  [(QLPlatformImage *)v8 setCGImage:image];
  [(QLPlatformImage *)v8 setScale:scale];
  [(QLPlatformImage *)v8 setOrientation:v5];

  return v8;
}

+ (id)imageWithUIImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (imageCopy && [imageCopy CGImage])
  {
    imageOrientation = [v5 imageOrientation];
    if (imageOrientation > 7)
    {
      v7 = 0;
    }

    else
    {
      v7 = dword_2615C7A30[imageOrientation];
    }

    cGImage = [v5 CGImage];
    [v5 scale];
    v8 = [self imageWithCGImage:cGImage scale:v7 orientation:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UIImage)UIImage
{
  v3 = QLTImageClassWithError();
  cGImage = [(QLPlatformImage *)self CGImage];
  [(QLPlatformImage *)self scale];
  v6 = v5;
  v7 = [(QLPlatformImage *)self orientation]- 2;
  if (v7 > 6)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_2615C7A50[v7];
  }

  return [v3 imageWithCGImage:cGImage scale:v8 orientation:v6];
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end