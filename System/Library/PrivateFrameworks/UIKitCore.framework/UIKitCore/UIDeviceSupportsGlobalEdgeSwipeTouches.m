@interface UIDeviceSupportsGlobalEdgeSwipeTouches
@end

@implementation UIDeviceSupportsGlobalEdgeSwipeTouches

uint64_t ___UIDeviceSupportsGlobalEdgeSwipeTouches_block_invoke()
{
  v0 = MGGetBoolAnswer();
  result = MGGetBoolAnswer();
  byte_1ED49E758 = (v0 | result) & 1;
  return result;
}

@end