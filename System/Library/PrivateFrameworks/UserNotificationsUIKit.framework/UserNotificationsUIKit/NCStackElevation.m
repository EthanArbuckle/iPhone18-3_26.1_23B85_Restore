@interface NCStackElevation
@end

@implementation NCStackElevation

uint64_t ___NCStackElevation_block_invoke()
{
  result = _os_feature_enabled_impl();
  _NCStackElevation___stackElevation = result;
  return result;
}

@end