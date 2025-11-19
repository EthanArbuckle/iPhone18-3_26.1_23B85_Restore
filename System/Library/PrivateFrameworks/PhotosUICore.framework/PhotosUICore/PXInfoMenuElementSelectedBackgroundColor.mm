@interface PXInfoMenuElementSelectedBackgroundColor
@end

@implementation PXInfoMenuElementSelectedBackgroundColor

void ___PXInfoMenuElementSelectedBackgroundColor_block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_57_249344];
  v1 = _PXInfoMenuElementSelectedBackgroundColor_color;
  _PXInfoMenuElementSelectedBackgroundColor_color = v0;
}

id ___PXInfoMenuElementSelectedBackgroundColor_block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.815686275 green:0.819607843 blue:0.82745098 alpha:0.5];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.37];
  }
  v2 = ;

  return v2;
}

@end