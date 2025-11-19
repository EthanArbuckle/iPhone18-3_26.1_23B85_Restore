@interface UIDevice
@end

@implementation UIDevice

uint64_t __43__UIDevice_SXAdditions__sx_isSpectreDevice__block_invoke()
{
  result = MGGetBoolAnswer();
  sx_isSpectreDevice_hasExtendedColorDisplay = result;
  return result;
}

@end