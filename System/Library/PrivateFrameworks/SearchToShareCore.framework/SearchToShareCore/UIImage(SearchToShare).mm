@interface UIImage(SearchToShare)
- (id)sts_imageWithScalingFactor:()SearchToShare;
- (id)sts_nonAlphaImage;
@end

@implementation UIImage(SearchToShare)

- (id)sts_imageWithScalingFactor:()SearchToShare
{
  if (a2 <= 0.0)
  {
    v12 = 0;
  }

  else
  {
    v2 = a2;
    cGImage = [self CGImage];
    v5 = CGImageGetWidth(cGImage) * v2;
    *&v2 = CGImageGetHeight(cGImage) * v2;
    BitsPerComponent = CGImageGetBitsPerComponent(cGImage);
    BytesPerRow = CGImageGetBytesPerRow(cGImage);
    ColorSpace = CGImageGetColorSpace(cGImage);
    v9 = CGBitmapContextCreate(0, v5, *&v2, BitsPerComponent, BytesPerRow, ColorSpace, 0x2006u);
    v15.size.width = v5;
    v15.size.height = *&v2;
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    CGContextDrawImage(v9, v15, cGImage);
    Image = CGBitmapContextCreateImage(v9);
    CGContextRelease(v9);
    v11 = MEMORY[0x277D755B8];
    [self scale];
    v12 = [v11 imageWithCGImage:Image scale:0 orientation:?];
    CGImageRelease(Image);
  }

  return v12;
}

- (id)sts_nonAlphaImage
{
  NonAlphaImageFromImage = createNonAlphaImageFromImage([self CGImage]);
  v3 = MEMORY[0x277D755B8];
  [self scale];
  v4 = [v3 imageWithCGImage:NonAlphaImageFromImage scale:0 orientation:?];
  CGImageRelease(NonAlphaImageFromImage);

  return v4;
}

@end