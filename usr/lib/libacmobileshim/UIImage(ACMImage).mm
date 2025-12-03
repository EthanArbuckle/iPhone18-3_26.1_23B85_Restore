@interface UIImage(ACMImage)
- (uint64_t)crop:()ACMImage;
@end

@implementation UIImage(ACMImage)

- (uint64_t)crop:()ACMImage
{
  [self scale];
  v11 = a2 * v10;
  [self scale];
  v13 = a3 * v12;
  [self scale];
  v15 = a4 * v14;
  [self scale];
  v17 = a5 * v16;
  cGImage = [self CGImage];
  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  v19 = CGImageCreateWithImageInRect(cGImage, v24);
  v20 = MEMORY[0x29EDC7AC8];
  [self scale];
  v22 = [v20 imageWithCGImage:v19 scale:objc_msgSend(self orientation:{"imageOrientation"), v21}];
  CGImageRelease(v19);
  return v22;
}

@end