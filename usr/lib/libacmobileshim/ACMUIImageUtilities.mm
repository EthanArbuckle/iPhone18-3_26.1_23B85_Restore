@interface ACMUIImageUtilities
+ (id)cropLocalImage:(id)a3 bySize:(CGSize)a4;
+ (id)cropServerImage:(id)a3 bySize:(CGSize)a4;
+ (id)transparentImageWithSize:(CGSize)a3;
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

+ (id)transparentImageWithSize:(CGSize)a3
{
  UIGraphicsBeginImageContextWithOptions(a3, 0, 0.0);
  ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return ImageFromCurrentImageContext;
}

+ (id)cropServerImage:(id)a3 bySize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [a1 imageResolutionFactor];
  v8 = width * v7;
  v9 = height * v7;
  [a3 size];
  v10 = v8 + 0.0;
  v11 = v9 + 0.0;
  v13 = v12 + v8 * -2.0;
  v15 = v14 + v9 * -2.0;
  v16 = [a3 CGImage];
  v20.origin.x = v10;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  v17 = CGImageCreateWithImageInRect(v16, v20);
  v18 = [MEMORY[0x29EDC7AC8] imageWithCGImage:v17];
  CGImageRelease(v17);
  return v18;
}

+ (id)cropLocalImage:(id)a3 bySize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [a3 size];
  v9 = v8;
  v11 = v10;
  v12 = [a1 imageResolutionFactor];
  v13 = v12 * width + 0.0;
  v14 = v12 * height + 0.0;
  v15 = (v9 + width * -2.0) * v12;
  v16 = (v11 + height * -2.0) * v12;
  v17 = [a3 CGImage];
  v21.origin.x = v13;
  v21.origin.y = v14;
  v21.size.width = v15;
  v21.size.height = v16;
  v18 = CGImageCreateWithImageInRect(v17, v21);
  v19 = [MEMORY[0x29EDC7AC8] imageWithCGImage:v18];
  CGImageRelease(v18);
  return v19;
}

@end