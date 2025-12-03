@interface UIImage(PhotosUIFoundation)
+ (id)px_imageFromSolidColor:()PhotosUIFoundation;
+ (id)px_roundedCornerMaskImage:()PhotosUIFoundation size:;
+ (id)px_systemImageNamed:()PhotosUIFoundation;
+ (id)px_systemImageNamed:()PhotosUIFoundation withConfiguration:;
- (double)px_pixelSize;
- (id)px_imageByApplyingAlpha:()PhotosUIFoundation;
- (id)px_tintedCircularImageWithColor:()PhotosUIFoundation backgroundColor:;
- (id)px_tintedCircularImageWithColor:()PhotosUIFoundation backgroundColor:backgroundInsets:;
- (id)px_tintedImageWithColor:()PhotosUIFoundation;
- (id)px_tintedImageWithColor:()PhotosUIFoundation size:scale:insets:;
@end

@implementation UIImage(PhotosUIFoundation)

- (id)px_imageByApplyingAlpha:()PhotosUIFoundation
{
  if (a2 >= 1.0)
  {
    selfCopy = self;
  }

  else
  {
    [self size];
    v5 = v4;
    v7 = v6;
    [self scale];
    v9 = v8;
    v13.width = v5;
    v13.height = v7;
    UIGraphicsBeginImageContextWithOptions(v13, 0, v9);
    [self drawAtPoint:0 blendMode:*MEMORY[0x1E695EFF8] alpha:{*(MEMORY[0x1E695EFF8] + 8), a2}];
    selfCopy = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return selfCopy;
}

- (id)px_tintedCircularImageWithColor:()PhotosUIFoundation backgroundColor:backgroundInsets:
{
  v14 = a8;
  v15 = *MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 8);
  v17 = a7;
  [self size];
  v19 = v18;
  v21 = v20;
  [self scale];
  v23 = v22;
  v28.width = v19;
  v28.height = v21;
  UIGraphicsBeginImageContextWithOptions(v28, 0, v23);
  [self drawAtPoint:17 blendMode:*MEMORY[0x1E695EFF8] alpha:{*(MEMORY[0x1E695EFF8] + 8), 1.0}];
  [v17 setFill];

  v29.origin.x = v15;
  v29.origin.y = v16;
  v29.size.width = v19;
  v29.size.height = v21;
  UIRectFillUsingBlendMode(v29, kCGBlendModeSourceIn);
  if (v14)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    [v14 setFill];
    CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationAtop);
    v30.origin.x = a3 + v15;
    v30.origin.y = a2 + v16;
    v30.size.width = v19 - (a3 + a5);
    v30.size.height = v21 - (a2 + a4);
    CGContextFillEllipseInRect(CurrentContext, v30);
  }

  v25 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v25;
}

- (id)px_tintedCircularImageWithColor:()PhotosUIFoundation backgroundColor:
{
  v6 = a4;
  v7 = a3;
  [self contentInsets];
  v8 = [self px_tintedCircularImageWithColor:v7 backgroundColor:v6 backgroundInsets:?];

  return v8;
}

- (id)px_tintedImageWithColor:()PhotosUIFoundation size:scale:insets:
{
  v14 = a6 + *MEMORY[0x1E695F058];
  v15 = a5 + *(MEMORY[0x1E695F058] + 8);
  v16 = a2 - (a6 + a8);
  v17 = a3 - (a5 + a7);
  v18 = a10;
  v22.width = a2;
  v22.height = a3;
  UIGraphicsBeginImageContextWithOptions(v22, 0, a4);
  [self drawInRect:17 blendMode:v14 alpha:{v15, v16, v17, 1.0}];
  [v18 setFill];

  v23.origin.x = v14;
  v23.origin.y = v15;
  v23.size.width = v16;
  v23.size.height = v17;
  UIRectFillUsingBlendMode(v23, kCGBlendModeSourceIn);
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (id)px_tintedImageWithColor:()PhotosUIFoundation
{
  v4 = a3;
  [self size];
  v6 = v5;
  v8 = v7;
  [self scale];
  v10 = [self px_tintedImageWithColor:v4 size:v6 scale:v8 insets:{v9, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v10;
}

- (double)px_pixelSize
{
  [self size];
  v3 = v2;
  [self scale];
  return v3 * v4;
}

+ (id)px_roundedCornerMaskImage:()PhotosUIFoundation size:
{
  v8.f64[0] = self;
  v8.f64[1] = a2;
  v9.f64[0] = a3;
  v9.f64[1] = a4;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v8), vceqzq_f64(v9))))) & 1) == 0 || (a5 == *MEMORY[0x1E695F060] ? (v10 = a6 == *(MEMORY[0x1E695F060] + 8)) : (v10 = 0), v10))
  {
    v15 = 0;
  }

  else
  {
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen scale];
    v13 = v12;
    v22.width = a5;
    v22.height = a6;
    UIGraphicsBeginImageContextWithOptions(v22, 0, v13);

    v14 = [MEMORY[0x1E69DC728] px_bezierPathWithRoundedRect:0.0 topLeftCornerRadius:0.0 topRightCornerRadius:a5 bottomLeftCornerRadius:a6 bottomRightCornerRadius:{self, a2, a3, a4}];
    [v14 fill];
    v15 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v15;
}

+ (id)px_imageFromSolidColor:()PhotosUIFoundation
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

+ (id)px_systemImageNamed:()PhotosUIFoundation withConfiguration:
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5 withConfiguration:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v5 withConfiguration:v6];
  }

  return v7;
}

+ (id)px_systemImageNamed:()PhotosUIFoundation
{
  if (a3)
  {
    v4 = [self px_systemImageNamed:a3 withConfiguration:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end