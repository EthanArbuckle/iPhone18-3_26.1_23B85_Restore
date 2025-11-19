@interface UIGraphicsImageRendererContext
- (UIImage)currentImage;
@end

@implementation UIGraphicsImageRendererContext

- (UIImage)currentImage
{
  Image = CGBitmapContextCreateImage([(UIGraphicsRendererContext *)self CGContext]);
  if (Image)
  {
    v4 = Image;
    v5 = [(UIGraphicsRendererContext *)self format];
    [v5 _contextScale];
    if (v6 == 0.0)
    {
      v6 = 1.0;
    }

    v7 = [UIImage imageWithCGImage:v4 scale:0 orientation:v6];

    CGImageRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end