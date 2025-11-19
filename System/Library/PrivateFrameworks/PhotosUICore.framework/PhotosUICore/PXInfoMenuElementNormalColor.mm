@interface PXInfoMenuElementNormalColor
@end

@implementation PXInfoMenuElementNormalColor

void ___PXInfoMenuElementNormalColor_block_invoke()
{
  if (MEMORY[0x1A590D320]())
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_49_249340];
  }
  v0 = ;
  v1 = _PXInfoMenuElementNormalColor_color;
  _PXInfoMenuElementNormalColor_color = v0;
}

@end