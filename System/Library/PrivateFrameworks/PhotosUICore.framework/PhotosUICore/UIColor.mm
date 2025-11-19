@interface UIColor
@end

@implementation UIColor

void __49__UIColor_PhotosUICore__px_dynamicHighlightColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_5_94892];
  v1 = px_dynamicHighlightColor_color;
  px_dynamicHighlightColor_color = v0;
}

id __49__UIColor_PhotosUICore__px_dynamicHighlightColor__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.980392157 green:0.666666667 blue:0.0 alpha:1.0];
  }
  v2 = ;

  return v2;
}

id __46__UIColor_PhotosUICore__px_messagesBubbleGray__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.149019608;
    v3 = 0.160784314;
  }

  else
  {
    v2 = 0.91372549;
    v3 = 0.917647059;
  }

  v4 = [MEMORY[0x1E69DC888] colorWithRed:v2 green:v2 blue:v3 alpha:1.0];

  return v4;
}

@end