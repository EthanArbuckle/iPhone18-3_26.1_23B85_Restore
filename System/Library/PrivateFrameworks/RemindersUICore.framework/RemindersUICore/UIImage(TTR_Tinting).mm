@interface UIImage(TTR_Tinting)
- (id)ttr_tintedImageWithColor:()TTR_Tinting;
@end

@implementation UIImage(TTR_Tinting)

- (id)ttr_tintedImageWithColor:()TTR_Tinting
{
  v4 = a3;
  [self size];
  v6 = v5;
  v8 = v7;
  [self scale];
  v10 = v9;
  v18.width = v6;
  v18.height = v8;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v10);
  [self size];
  v12 = v11;
  [self size];
  v14 = v13;
  [self drawInRect:{0.0, 0.0, v12, v13}];
  [v4 set];

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v12;
  v19.size.height = v14;
  UIRectFillUsingBlendMode(v19, kCGBlendModeSourceAtop);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

@end