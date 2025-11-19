@interface UIKBSupportsCarPlayMaps
@end

@implementation UIKBSupportsCarPlayMaps

uint64_t ___UIKBSupportsCarPlayMaps_block_invoke()
{
  result = UISelfHasEntitlement(@"com.apple.developer.carplay-maps");
  _MergedGlobals_1217 = result;
  return result;
}

@end