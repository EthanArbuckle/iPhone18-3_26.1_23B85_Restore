@interface UIImage(RMSAdditions)
- (id)rms_jpegDataScaledToSize:()RMSAdditions compressionQuality:;
@end

@implementation UIImage(RMSAdditions)

- (id)rms_jpegDataScaledToSize:()RMSAdditions compressionQuality:
{
  [a1 size];
  v10 = a2 / v8;
  if (a2 / v8 >= a3 / v9)
  {
    v10 = a3 / v9;
  }

  v20.width = v8 * v10;
  width = v20.width;
  v20.height = v9 * v10;
  height = v20.height;
  UIGraphicsBeginImageContextWithOptions(v20, 1, 1.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, height);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v14 = [MEMORY[0x277D75348] blackColor];
  CGContextSetFillColorWithColor(CurrentContext, [v14 CGColor]);

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = width;
  v21.size.height = height;
  CGContextFillRect(CurrentContext, v21);
  v15 = [a1 CGImage];
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = width;
  v22.size.height = height;
  CGContextDrawImage(CurrentContext, v22, v15);
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v17 = UIImageJPEGRepresentation(v16, a4);

  return v17;
}

@end