@interface UIImage(circleImageWithRadius)
+ (id)circleImageWithDiameter:()circleImageWithRadius color:;
@end

@implementation UIImage(circleImageWithRadius)

+ (id)circleImageWithDiameter:()circleImageWithRadius color:
{
  v5 = MEMORY[0x1E69DCEB0];
  v6 = a4;
  mainScreen = [v5 mainScreen];
  [mainScreen scale];
  v9 = v8;
  v15.width = self;
  v15.height = self;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v9);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  cGColor = [v6 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = self;
  v16.size.height = self;
  CGContextFillEllipseInRect(CurrentContext, v16);
  CGContextRestoreGState(CurrentContext);
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

@end