@interface PXInfoMenuElementSelectedTextColor
@end

@implementation PXInfoMenuElementSelectedTextColor

void ___PXInfoMenuElementSelectedTextColor_block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_61];
  v1 = _PXInfoMenuElementSelectedTextColor_color;
  _PXInfoMenuElementSelectedTextColor_color = v0;
}

id ___PXInfoMenuElementSelectedTextColor_block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v2 = 0.9;
    v3 = 0.0;
  }

  else
  {
    v2 = 0.86;
    v3 = 1.0;
  }

  v4 = [MEMORY[0x1E69DC888] colorWithWhite:v3 alpha:v2];

  return v4;
}

@end