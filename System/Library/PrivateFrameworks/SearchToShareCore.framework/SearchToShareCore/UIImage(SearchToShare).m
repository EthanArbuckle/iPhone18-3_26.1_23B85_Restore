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
    v4 = [a1 CGImage];
    v5 = CGImageGetWidth(v4) * v2;
    *&v2 = CGImageGetHeight(v4) * v2;
    BitsPerComponent = CGImageGetBitsPerComponent(v4);
    BytesPerRow = CGImageGetBytesPerRow(v4);
    ColorSpace = CGImageGetColorSpace(v4);
    v9 = CGBitmapContextCreate(0, v5, *&v2, BitsPerComponent, BytesPerRow, ColorSpace, 0x2006u);
    v15.size.width = v5;
    v15.size.height = *&v2;
    v15.origin.x = 0.0;
    v15.origin.y = 0.0;
    CGContextDrawImage(v9, v15, v4);
    Image = CGBitmapContextCreateImage(v9);
    CGContextRelease(v9);
    v11 = MEMORY[0x277D755B8];
    [a1 scale];
    v12 = [v11 imageWithCGImage:Image scale:0 orientation:?];
    CGImageRelease(Image);
  }

  return v12;
}

- (id)sts_nonAlphaImage
{
  NonAlphaImageFromImage = createNonAlphaImageFromImage([a1 CGImage]);
  v3 = MEMORY[0x277D755B8];
  [a1 scale];
  v4 = [v3 imageWithCGImage:NonAlphaImageFromImage scale:0 orientation:?];
  CGImageRelease(NonAlphaImageFromImage);

  return v4;
}

@end