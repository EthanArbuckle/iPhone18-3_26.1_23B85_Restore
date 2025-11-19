@interface UIFlexibleWindowingEnabled
@end

@implementation UIFlexibleWindowingEnabled

uint64_t ___UIFlexibleWindowingEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  byte_1ED49E113 = result;
  return result;
}

@end