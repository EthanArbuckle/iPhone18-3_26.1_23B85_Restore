@interface UIButton(PhotosUICore)
+ (id)px_buttonBackgroundImageForType:()PhotosUICore color:cornerRadius:controlState:;
+ (id)px_buttonWithPXType:()PhotosUICore color:;
- (void)px_setTitle:()PhotosUICore orAttributedTitle:forState:;
- (void)px_updateTitleUsingBlock:()PhotosUICore;
@end

@implementation UIButton(PhotosUICore)

- (void)px_setTitle:()PhotosUICore orAttributedTitle:forState:
{
  v11 = a3;
  v9 = a4;
  if (v9)
  {
    if (v11)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:a1 file:@"UIButton+PhotosUICore.m" lineNumber:43 description:@"can't set both title and attributed title on a button"];
    }

    [a1 setTitle:0 forState:a5];
    [a1 setAttributedTitle:v9 forState:a5];
  }

  else
  {
    [a1 setAttributedTitle:0 forState:a5];
    [a1 setTitle:v11 forState:a5];
  }
}

- (void)px_updateTitleUsingBlock:()PhotosUICore
{
  (*(a3 + 16))(a3);
  v5 = [a1 titleLabel];
  v4 = [v5 layer];
  [v4 removeAllAnimations];
}

+ (id)px_buttonBackgroundImageForType:()PhotosUICore color:cornerRadius:controlState:
{
  v9 = a5;
  if (px_buttonBackgroundImageForType_color_cornerRadius_controlState__onceToken != -1)
  {
    dispatch_once(&px_buttonBackgroundImageForType_color_cornerRadius_controlState__onceToken, &__block_literal_global_217859);
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u-%p-%u", a4, v9, a6];
  v11 = [px_buttonBackgroundImageForType_color_cornerRadius_controlState__cachedBackgroundImages objectForKeyedSubscript:v10];
  if (!v11)
  {
    v12 = ceil(a1 * 1.528665);
    height = v12 * 2.0 + 1.0;
    y = 0.0;
    v21.width = height;
    v21.height = height;
    UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
    [v9 set];
    if (a4 == 1)
    {
      v22.origin.x = 0.0;
      v22.origin.y = 0.0;
      v22.size.width = v12 * 2.0 + 1.0;
      v22.size.height = v22.size.width;
      v23 = CGRectInset(v22, 0.5, 0.5);
      y = v23.origin.y;
      height = v23.size.height;
      a1 = a1 + -0.5;
    }

    else
    {
      v23.size.width = v12 * 2.0 + 1.0;
      v23.origin.x = 0.0;
    }

    v15 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v23.origin.x cornerRadius:{y, v23.size.width, height, a1}];
    v16 = v15;
    if (a4)
    {
      if (a4 == 1)
      {
        [v15 stroke];
      }
    }

    else
    {
      [v15 fill];
    }

    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v11 = [v17 resizableImageWithCapInsets:{v12, v12, v12, v12}];

    if (!a4)
    {
      v18 = [v11 imageWithRenderingMode:2];

      v11 = v18;
    }

    [px_buttonBackgroundImageForType_color_cornerRadius_controlState__cachedBackgroundImages setObject:v11 forKeyedSubscript:v10];
  }

  return v11;
}

+ (id)px_buttonWithPXType:()PhotosUICore color:
{
  v5 = a4;
  v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v6 setContentEdgeInsets:{6.0, 16.0, 6.0, 16.0}];
  v7 = [MEMORY[0x1E69DC738] px_buttonBackgroundImageForType:a3 color:v5 cornerRadius:0 controlState:6.0];
  [v6 setBackgroundImage:v7 forState:0];

  if (a3)
  {
    v8 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] whiteColor];
  }

  v9 = v8;
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v11 = [v6 titleLabel];
  [v11 setFont:v10];

  v12 = [v6 titleLabel];
  [v12 setAdjustsFontForContentSizeCategory:1];

  [v6 setTitleColor:v9 forState:0];

  return v6;
}

@end