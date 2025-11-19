@interface UIColor(VideosUI)
+ (id)vui_dynamicColorWithLightColor:()VideosUI darkColor:;
+ (id)vui_imageBorderColor;
+ (id)vui_imageHighlightColor;
+ (id)vui_keyBlueHighlightedColor;
+ (id)vui_lockupBorderColorOpal;
+ (id)vui_opacityColorWithType:()VideosUI;
+ (id)vui_opacityColorWithType:()VideosUI userInterfaceStyle:;
+ (id)vui_progressBarFillColor;
- (id)vui_blendWithColor:()VideosUI percentage:;
@end

@implementation UIColor(VideosUI)

+ (id)vui_opacityColorWithType:()VideosUI
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__UIColor_VideosUI__vui_opacityColorWithType___block_invoke;
  v5[3] = &__block_descriptor_48_e36___UIColor_16__0__UITraitCollection_8l;
  v5[4] = a1;
  v5[5] = a3;
  v3 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v5];

  return v3;
}

+ (id)vui_opacityColorWithType:()VideosUI userInterfaceStyle:
{
  v4 = 0.0;
  if (a4 == 2)
  {
    if (a3 <= 2)
    {
      v4 = dbl_1E4296F50[a3];
    }

    v5 = MEMORY[0x1E69DC888];
    v6 = 1.0;
  }

  else
  {
    if (a3 <= 2)
    {
      v4 = dbl_1E4296F68[a3];
    }

    v5 = MEMORY[0x1E69DC888];
    v6 = 0.0;
  }

  v7 = [v5 colorWithWhite:v6 alpha:v4];

  return v7;
}

+ (id)vui_keyBlueHighlightedColor
{
  v0 = [MEMORY[0x1E69DC888] vui_keyColor];
  v1 = [v0 colorWithAlphaComponent:0.8];

  return v1;
}

+ (id)vui_imageBorderColor
{
  if (vui_imageBorderColor_onceToken != -1)
  {
    +[UIColor(VideosUI) vui_imageBorderColor];
  }

  v1 = vui_imageBorderColor___imageBorderColor;

  return v1;
}

+ (id)vui_imageHighlightColor
{
  if (vui_imageHighlightColor_onceToken != -1)
  {
    +[UIColor(VideosUI) vui_imageHighlightColor];
  }

  v1 = vui_imageHighlightColor___imageHighlightColor;

  return v1;
}

+ (id)vui_progressBarFillColor
{
  if (vui_progressBarFillColor_onceToken != -1)
  {
    +[UIColor(VideosUI) vui_progressBarFillColor];
  }

  v1 = vui_progressBarFillColor___fillColor;

  return v1;
}

- (id)vui_blendWithColor:()VideosUI percentage:
{
  v5 = fmax(a2, 0.0);
  if (v5 <= 1.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  v17 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v13 = 0.0;
  v14 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v10 = 0.0;
  v7 = a4;
  [a1 getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
  [v7 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];

  v8 = [MEMORY[0x1E69DC888] colorWithRed:v6 * v13 + v17 * (1.0 - v6) green:v6 * v12 + v16 * (1.0 - v6) blue:v6 * v11 + v15 * (1.0 - v6) alpha:v6 * v10 + v14 * (1.0 - v6)];

  return v8;
}

+ (id)vui_dynamicColorWithLightColor:()VideosUI darkColor:
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69DC888];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__UIColor_VideosUI__vui_dynamicColorWithLightColor_darkColor___block_invoke;
  v12[3] = &unk_1E87308D8;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 colorWithDynamicProvider:v12];

  return v10;
}

+ (id)vui_lockupBorderColorOpal
{
  if (vui_lockupBorderColorOpal_onceToken != -1)
  {
    +[UIColor(VideosUI) vui_lockupBorderColorOpal];
  }

  v1 = vui_lockupBorderColorOpal___imageBorderColor;

  return v1;
}

@end