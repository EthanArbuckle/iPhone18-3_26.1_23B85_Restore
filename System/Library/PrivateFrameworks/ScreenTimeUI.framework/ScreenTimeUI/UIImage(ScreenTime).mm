@interface UIImage(ScreenTime)
+ (id)st_pointImageOfColor:()ScreenTime;
@end

@implementation UIImage(ScreenTime)

+ (id)st_pointImageOfColor:()ScreenTime
{
  v3 = a3;
  v7.width = 1.0;
  v7.height = 1.0;
  UIGraphicsBeginImageContext(v7);
  [v3 set];

  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 1.0;
  v8.size.height = 1.0;
  UIRectFill(v8);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v4;
}

@end