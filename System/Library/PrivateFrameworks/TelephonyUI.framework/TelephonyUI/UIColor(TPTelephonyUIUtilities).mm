@interface UIColor(TPTelephonyUIUtilities)
- (id)tpImageFromColor;
@end

@implementation UIColor(TPTelephonyUIUtilities)

- (id)tpImageFromColor
{
  v6.width = 1.0;
  v6.height = 1.0;
  UIGraphicsBeginImageContext(v6);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(CurrentContext, [a1 CGColor]);
  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 1.0;
  v7.size.height = 1.0;
  CGContextFillRect(CurrentContext, v7);
  v3 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v3;
}

@end