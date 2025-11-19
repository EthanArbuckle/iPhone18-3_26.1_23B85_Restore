@interface UIImage(SFUIImageUtilities)
+ (double)sfui_scaleSize:()SFUIImageUtilities toSize:contentMode:;
+ (id)sfui_bulletImageWithSystemName:()SFUIImageUtilities color:;
+ (id)sfui_systemImageNamed:()SFUIImageUtilities withBackgroundColor:symbolColor:size:cornerRadius:configuration:;
- (id)sfui_imageScaledToSize:()SFUIImageUtilities contentMode:;
@end

@implementation UIImage(SFUIImageUtilities)

+ (double)sfui_scaleSize:()SFUIImageUtilities toSize:contentMode:
{
  v7 = a1 / a2;
  v8 = a3 / a4;
  if (a7 == 2)
  {
    if (v7 <= v8)
    {
      return a3;
    }

    return a4 * v7;
  }

  if (a7 == 1 && v7 < v8)
  {
    return a4 * v7;
  }

  return a3;
}

- (id)sfui_imageScaledToSize:()SFUIImageUtilities contentMode:
{
  v5 = objc_opt_class();
  [a1 size];
  [v5 sfui_scaleSize:a3 toSize:? contentMode:?];
  v7 = v6;
  v9 = v8;
  [a1 size];
  if (v11 == v7 && v10 == v9)
  {
    v23 = a1;
  }

  else
  {
    [a1 scale];
    UIRectIntegralWithScale();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [a1 scale];
    v22 = v21;
    v26.width = v18;
    v26.height = v20;
    UIGraphicsBeginImageContextWithOptions(v26, 0, v22);
    [a1 drawInRect:{v14, v16, v18, v20}];
    v23 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v23;
}

+ (id)sfui_bulletImageWithSystemName:()SFUIImageUtilities color:
{
  v6 = MEMORY[0x1E69DC888];
  v7 = a4;
  v8 = a3;
  v9 = [v6 systemWhiteColor];
  v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:22.0];
  v11 = [a1 sfui_systemImageNamed:v8 withBackgroundColor:v7 symbolColor:v9 size:v10 cornerRadius:40.0 configuration:{40.0, 10.0}];

  return v11;
}

+ (id)sfui_systemImageNamed:()SFUIImageUtilities withBackgroundColor:symbolColor:size:cornerRadius:configuration:
{
  v15 = a7;
  v16 = MEMORY[0x1E69DCAB8];
  v17 = a8;
  v18 = [v16 systemImageNamed:a6 withConfiguration:a9];
  v19 = [v18 imageWithTintColor:v17];

  if (v19)
  {
    [v19 scale];
    v21 = v20;
    v29.width = a1;
    v29.height = a2;
    UIGraphicsBeginImageContextWithOptions(v29, 0, v21);
    [v15 setFill];
    v22 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:*MEMORY[0x1E695EFF8] cornerRadius:{*(MEMORY[0x1E695EFF8] + 8), a1, a2, a3}];
    [v22 fill];
    [v19 size];
    v24 = (a1 - v23) * 0.5;
    [v19 size];
    [v19 drawAtPoint:{v24, (a2 - v25) * 0.5}];
    v26 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end