@interface UIImage(ImageWithColor)
+ (id)wf_imageWithColor:()ImageWithColor;
@end

@implementation UIImage(ImageWithColor)

+ (id)wf_imageWithColor:()ImageWithColor
{
  v3 = a3;
  v9.width = 1.0;
  v9.height = 1.0;
  UIGraphicsBeginImageContext(v9);
  CurrentContext = UIGraphicsGetCurrentContext();
  cGColor = [v3 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 1.0;
  v10.size.height = 1.0;
  CGContextFillRect(CurrentContext, v10);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

@end