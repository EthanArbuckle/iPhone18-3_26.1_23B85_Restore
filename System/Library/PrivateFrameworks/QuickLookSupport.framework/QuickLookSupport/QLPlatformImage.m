@interface QLPlatformImage
+ (id)imageWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(unsigned int)a5;
+ (id)imageWithUIImage:(id)a3;
- (CGSize)size;
- (UIImage)UIImage;
- (void)dealloc;
- (void)setCGImage:(CGImage *)a3;
@end

@implementation QLPlatformImage

- (void)dealloc
{
  v3 = [(QLPlatformImage *)self cleanupDataBlock];

  if (v3)
  {
    v4 = [(QLPlatformImage *)self cleanupDataBlock];
    v4[2]();

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

- (void)setCGImage:(CGImage *)a3
{
  cgImage = self->_cgImage;
  if (cgImage != a3)
  {
    CGImageRelease(cgImage);
    self->_cgImage = CGImageRetain(a3);
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);

    [(QLPlatformImage *)self setSize:Width, Height];
  }
}

+ (id)imageWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(unsigned int)a5
{
  v5 = *&a5;
  v8 = objc_alloc_init(QLPlatformImage);
  [(QLPlatformImage *)v8 setCGImage:a3];
  [(QLPlatformImage *)v8 setScale:a4];
  [(QLPlatformImage *)v8 setOrientation:v5];

  return v8;
}

+ (id)imageWithUIImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 CGImage])
  {
    v6 = [v5 imageOrientation];
    if (v6 > 7)
    {
      v7 = 0;
    }

    else
    {
      v7 = dword_2615C7A30[v6];
    }

    v9 = [v5 CGImage];
    [v5 scale];
    v8 = [a1 imageWithCGImage:v9 scale:v7 orientation:?];
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
  v4 = [(QLPlatformImage *)self CGImage];
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

  return [v3 imageWithCGImage:v4 scale:v8 orientation:v6];
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