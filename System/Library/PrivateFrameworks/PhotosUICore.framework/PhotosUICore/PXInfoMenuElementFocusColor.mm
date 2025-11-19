@interface PXInfoMenuElementFocusColor
@end

@implementation PXInfoMenuElementFocusColor

void ___PXInfoMenuElementFocusColor_block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_53_249349];
  v1 = _PXInfoMenuElementFocusColor_color;
  _PXInfoMenuElementFocusColor_color = v0;
}

id ___PXInfoMenuElementFocusColor_block_invoke_2(uint64_t a1, void *a2)
{
  [a2 userInterfaceStyle];
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];

  return v2;
}

@end