@interface UIEnhancedMainMenuEnabled
@end

@implementation UIEnhancedMainMenuEnabled

uint64_t ___UIEnhancedMainMenuEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  byte_1ED49E112 = result;
  return result;
}

@end