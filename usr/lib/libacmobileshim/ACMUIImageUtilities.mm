@interface ACMUIImageUtilities
+ (id)cropLocalImage:(id)image bySize:(CGSize)size;
+ (id)cropServerImage:(id)image bySize:(CGSize)size;
+ (id)transparentImageWithSize:(CGSize)size;
+ (int)imageResolutionFactor;
@end

@implementation ACMUIImageUtilities

+ (int)imageResolutionFactor
{
  [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
  if (v2 <= 1.00999999)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  [objc_msgSend(objc_msgSend(MEMORY[0x29EDC7A58] "currentDevice")];
  if (v4 >= 8.0)
  {
    [objc_msgSend(MEMORY[0x29EDC7C40] "mainScreen")];
    if (v5 > 2.00999999)
    {
      return 3;
    }
  }

  return v3;
}

+ (id)transparentImageWithSize:(CGSize)size
{
  UIGraphicsBeginImageContextWithOptions(size, 0, 0.0);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

+ (id)cropServerImage:(id)image bySize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageResolutionFactor = [self imageResolutionFactor];
  v8 = width * imageResolutionFactor;
  v9 = height * imageResolutionFactor;
  [image size];
  v10 = v8 + 0.0;
  v11 = v9 + 0.0;
  v13 = v12 + v8 * -2.0;
  v15 = v14 + v9 * -2.0;
  cGImage = [image CGImage];
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v17 = CGImageCreateWithImageInRect(cGImage, v20);
  v18 = [MEMORY[0x29EDC7AC8] imageWithCGImage:v17];
  CGImageRelease(v17);
  return v18;
}

+ (id)cropLocalImage:(id)image bySize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [image size];
  v9 = v8;
  v11 = v10;
  imageResolutionFactor = [self imageResolutionFactor];
  v13 = imageResolutionFactor * width + 0.0;
  v14 = imageResolutionFactor * height + 0.0;
  v15 = (v9 + width * -2.0) * imageResolutionFactor;
  v16 = (v11 + height * -2.0) * imageResolutionFactor;
  cGImage = [image CGImage];
  v21.origin.x = v13;
  v21.origin.y = v14;
  v21.size.width = v15;
  v21.size.height = v16;
  v18 = CGImageCreateWithImageInRect(cGImage, v21);
  v19 = [MEMORY[0x29EDC7AC8] imageWithCGImage:v18];
  CGImageRelease(v18);
  return v19;
}

@end