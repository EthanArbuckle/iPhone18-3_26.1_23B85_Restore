@interface UIImage(circleImageWithRadius)
+ (id)circleImageWithDiameter:()circleImageWithRadius color:;
@end

@implementation UIImage(circleImageWithRadius)

+ (id)circleImageWithDiameter:()circleImageWithRadius color:
{
  v5 = MEMORY[0x1E69DCEB0];
  v6 = a4;
  v7 = [v5 mainScreen];
  [v7 scale];
  v9 = v8;
  v15.width = a1;
  v15.height = a1;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v9);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v11 = [v6 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v11);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a1;
  v16.size.height = a1;
  CGContextFillEllipseInRect(CurrentContext, v16);
  CGContextRestoreGState(CurrentContext);
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

@end