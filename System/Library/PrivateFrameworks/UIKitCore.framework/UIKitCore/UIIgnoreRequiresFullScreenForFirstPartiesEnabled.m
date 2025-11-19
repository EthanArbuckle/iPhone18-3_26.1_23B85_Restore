@interface UIIgnoreRequiresFullScreenForFirstPartiesEnabled
@end

@implementation UIIgnoreRequiresFullScreenForFirstPartiesEnabled

uint64_t ___UIIgnoreRequiresFullScreenForFirstPartiesEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  byte_1ED49E116 = result;
  return result;
}

@end