@interface UIApplicationMayVendViews
@end

@implementation UIApplicationMayVendViews

uint64_t ___UIApplicationMayVendViews_block_invoke()
{
  result = UISelfHasEntitlement(*MEMORY[0x1E69C7678]);
  byte_1EA992DAC = result;
  return result;
}

@end