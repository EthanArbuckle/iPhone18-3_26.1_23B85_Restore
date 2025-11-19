@interface OKMediaImage
+ (id)mediaImageWithCGImage:(CGImage *)a3;
+ (id)mediaImageWithUIImage:(id)a3;
- (CGImage)createComposedImage:(BOOL)a3 colorSpace:(id)a4;
- (OKMediaImage)init;
- (OKMediaImage)initWithCGImage:(CGImage *)a3;
- (OKMediaImage)initWithCGImage:(CGImage *)a3 imageOrientation:(int64_t)a4 scale:(double)a5;
- (OKMediaImage)initWithUIImage:(id)a3;
- (void)dealloc;
@end

@implementation OKMediaImage

- (OKMediaImage)init
{
  v3.receiver = self;
  v3.super_class = OKMediaImage;
  result = [(OKMediaImage *)&v3 init];
  if (result)
  {
    result->_cgImageRef = 0;
    result->_imageOrientation = 0;
    result->_scale = 1.0;
  }

  return result;
}

- (OKMediaImage)initWithCGImage:(CGImage *)a3 imageOrientation:(int64_t)a4 scale:(double)a5
{
  v8 = [(OKMediaImage *)self init];
  if (v8)
  {
    v8->_cgImageRef = CGImageRetain(a3);
    v8->_imageOrientation = a4;
    v8->_scale = a5;
  }

  return v8;
}

- (OKMediaImage)initWithCGImage:(CGImage *)a3
{
  v4 = [(OKMediaImage *)self init];
  if (v4)
  {
    v4->_cgImageRef = CGImageRetain(a3);
  }

  return v4;
}

+ (id)mediaImageWithCGImage:(CGImage *)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithCGImage:a3];

  return v3;
}

- (OKMediaImage)initWithUIImage:(id)a3
{
  v5 = [a3 CGImage];
  v6 = [a3 imageOrientation];
  [a3 scale];

  return [(OKMediaImage *)self initWithCGImage:v5 imageOrientation:v6 scale:?];
}

+ (id)mediaImageWithUIImage:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithUIImage:a3];

  return v3;
}

- (void)dealloc
{
  cgImageRef = self->_cgImageRef;
  if (cgImageRef)
  {
    CGImageRelease(cgImageRef);
    self->_cgImageRef = 0;
  }

  v4.receiver = self;
  v4.super_class = OKMediaImage;
  [(OKMediaImage *)&v4 dealloc];
}

- (CGImage)createComposedImage:(BOOL)a3 colorSpace:(id)a4
{
  imageOrientation = self->_imageOrientation;
  v7 = imageOrientation > 7;
  v8 = (1 << imageOrientation) & 0xCC;
  if (v7 || v8 == 0)
  {
    Width = CGImageGetWidth(self->_cgImageRef);
    Height = CGImageGetHeight(self->_cgImageRef);
  }

  else
  {
    Width = CGImageGetHeight(self->_cgImageRef);
    Height = CGImageGetWidth(self->_cgImageRef);
  }

  v12 = Height;
  v17.width = Width;
  v17.height = Height;
  UIGraphicsBeginImageContextWithOptions(v17, a3, self->_scale);
  [objc_msgSend(MEMORY[0x277D755B8] imageWithCGImage:self->_cgImageRef scale:self->_imageOrientation orientation:{self->_scale), "drawInRect:", 0.0, 0.0, Width, v12}];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v14 = [(UIImage *)ImageFromCurrentImageContext CGImage];

  return CGImageRetain(v14);
}

@end