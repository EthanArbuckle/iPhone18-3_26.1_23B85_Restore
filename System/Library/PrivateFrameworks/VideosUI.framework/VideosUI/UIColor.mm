@interface UIColor
@end

@implementation UIColor

uint64_t __46__UIColor_VideosUI__vui_opacityColorWithType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = [v3 userInterfaceStyle];

  return [v4 vui_opacityColorWithType:v5 userInterfaceStyle:v6];
}

void __41__UIColor_VideosUI__vui_imageBorderColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.05];
  v1 = vui_imageBorderColor___imageBorderColor;
  vui_imageBorderColor___imageBorderColor = v0;
}

void __44__UIColor_VideosUI__vui_imageHighlightColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
  v1 = vui_imageHighlightColor___imageHighlightColor;
  vui_imageHighlightColor___imageHighlightColor = v0;
}

void __45__UIColor_VideosUI__vui_progressBarFillColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithRed:0.847058824 green:0.847058824 blue:0.847058824 alpha:0.4];
  v1 = vui_progressBarFillColor___fillColor;
  vui_progressBarFillColor___fillColor = v0;
}

id __62__UIColor_VideosUI__vui_dynamicColorWithLightColor_darkColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInterfaceStyle];
  v4 = 40;
  if (v3 == 1)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);

  return v5;
}

void __46__UIColor_VideosUI__vui_lockupBorderColorOpal__block_invoke()
{
  v0 = MEMORY[0x1E69DC888];
  v5 = [MEMORY[0x1E69DC888] blackColor];
  v1 = [v5 colorWithAlphaComponent:0.1];
  v2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v3 = [v0 vui_dynamicColorWithLightColor:v1 darkColor:v2];
  v4 = vui_lockupBorderColorOpal___imageBorderColor;
  vui_lockupBorderColorOpal___imageBorderColor = v3;
}

@end