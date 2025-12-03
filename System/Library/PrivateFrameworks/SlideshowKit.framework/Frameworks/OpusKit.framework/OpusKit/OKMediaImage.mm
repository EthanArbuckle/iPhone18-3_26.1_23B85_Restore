@interface OKMediaImage
+ (id)mediaImageWithCGImage:(CGImage *)image;
+ (id)mediaImageWithUIImage:(id)image;
- (CGImage)createComposedImage:(BOOL)image colorSpace:(id)space;
- (OKMediaImage)init;
- (OKMediaImage)initWithCGImage:(CGImage *)image;
- (OKMediaImage)initWithCGImage:(CGImage *)image imageOrientation:(int64_t)orientation scale:(double)scale;
- (OKMediaImage)initWithUIImage:(id)image;
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

- (OKMediaImage)initWithCGImage:(CGImage *)image imageOrientation:(int64_t)orientation scale:(double)scale
{
  v8 = [(OKMediaImage *)self init];
  if (v8)
  {
    v8->_cgImageRef = CGImageRetain(image);
    v8->_imageOrientation = orientation;
    v8->_scale = scale;
  }

  return v8;
}

- (OKMediaImage)initWithCGImage:(CGImage *)image
{
  v4 = [(OKMediaImage *)self init];
  if (v4)
  {
    v4->_cgImageRef = CGImageRetain(image);
  }

  return v4;
}

+ (id)mediaImageWithCGImage:(CGImage *)image
{
  v3 = [objc_alloc(objc_opt_class()) initWithCGImage:image];

  return v3;
}

- (OKMediaImage)initWithUIImage:(id)image
{
  cGImage = [image CGImage];
  imageOrientation = [image imageOrientation];
  [image scale];

  return [(OKMediaImage *)self initWithCGImage:cGImage imageOrientation:imageOrientation scale:?];
}

+ (id)mediaImageWithUIImage:(id)image
{
  v3 = [objc_alloc(objc_opt_class()) initWithUIImage:image];

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

- (CGImage)createComposedImage:(BOOL)image colorSpace:(id)space
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
  UIGraphicsBeginImageContextWithOptions(v17, image, self->_scale);
  [objc_msgSend(MEMORY[0x277D755B8] imageWithCGImage:self->_cgImageRef scale:self->_imageOrientation orientation:{self->_scale), "drawInRect:", 0.0, 0.0, Width, v12}];
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  cGImage = [(UIImage *)ImageFromCurrentImageContext CGImage];

  return CGImageRetain(cGImage);
}

@end