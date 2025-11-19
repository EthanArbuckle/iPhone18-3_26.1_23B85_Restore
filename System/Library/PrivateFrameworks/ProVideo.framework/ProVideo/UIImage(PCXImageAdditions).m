@interface UIImage(PCXImageAdditions)
+ (UIImage)pcxImageWithSize:()PCXImageAdditions flipped:drawingHandler:;
- (uint64_t)initPCXImageWithContentsOfURL:()PCXImageAdditions;
- (uint64_t)initPCXImageWithSize:()PCXImageAdditions;
- (uint64_t)pcxImageWithAlpha:()PCXImageAdditions;
- (uint64_t)pcxImageWithAlpha:()PCXImageAdditions colorSpace:;
@end

@implementation UIImage(PCXImageAdditions)

- (uint64_t)initPCXImageWithContentsOfURL:()PCXImageAdditions
{
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];

  return [a1 initWithData:v2];
}

- (uint64_t)initPCXImageWithSize:()PCXImageAdditions
{
  UIGraphicsBeginImageContextWithOptions(*&a2, 0, 0.0);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v5 = [(UIImage *)ImageFromCurrentImageContext CGImage];

  return [a1 initWithCGImage:v5];
}

+ (UIImage)pcxImageWithSize:()PCXImageAdditions flipped:drawingHandler:
{
  UIGraphicsBeginImageContextWithOptions(*&a1, 0, 0.0);
  if (!a6)
  {
    goto LABEL_9;
  }

  if (a5)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    v11 = CurrentContext;
    if (CurrentContext)
    {
      CGContextSaveGState(CurrentContext);
      CGContextTranslateCTM(v11, 0.0, a2);
      CGContextScaleCTM(v11, 1.0, -1.0);
      v12 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
LABEL_7:
  (*(a6 + 16))(a6, 0.0, 0.0, a1, a2);
  if ((v12 & 1) == 0)
  {
    CGContextRestoreGState(v11);
  }

LABEL_9:
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

- (uint64_t)pcxImageWithAlpha:()PCXImageAdditions
{
  if (DeviceRGB_once != -1)
  {
    +[UIColor(PCXColorAdditions) pcxColorWithDeviceWhite:alpha:];
  }

  v4 = DeviceRGB_result;

  return [a1 pcxImageWithAlpha:v4 colorSpace:a2];
}

- (uint64_t)pcxImageWithAlpha:()PCXImageAdditions colorSpace:
{
  if (a2 > 1.0 || a2 < 0.0)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = a2;
  }

  v8 = [a1 CGImage];
  Width = CGImageGetWidth(v8);
  Height = CGImageGetHeight(v8);
  v11 = malloc_type_malloc(4 * Width * Height, 0x5651D9EuLL);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  bzero(v11, 4 * Width * Height);
  v13 = CGBitmapContextCreate(v12, Width, Height, 8uLL, 4 * Width, a4, 1u);
  if (v13)
  {
    v14 = v13;
    CGContextScaleCTM(v13, 1.0, -1.0);
    CGContextTranslateCTM(v14, 0.0, -Height);
    CGContextSetBlendMode(v14, kCGBlendModeMultiply);
    CGContextSetAlpha(v14, v7);
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = Width;
    v21.size.height = Height;
    CGContextDrawImage(v14, v21, v8);
    Image = CGBitmapContextCreateImage(v14);
    if (Image)
    {
      v16 = Image;
      v17 = MEMORY[0x277D755B8];
      [a1 scale];
      v19 = [v17 imageWithCGImage:v16 scale:objc_msgSend(a1 orientation:{"imageOrientation"), v18}];
      CGImageRelease(v16);
    }

    else
    {
      v19 = 0;
    }

    CGContextRelease(v14);
  }

  else
  {
    v19 = 0;
  }

  free(v12);
  return v19;
}

@end