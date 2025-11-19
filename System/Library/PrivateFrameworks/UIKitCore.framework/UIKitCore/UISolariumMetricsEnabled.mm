@interface UISolariumMetricsEnabled
@end

@implementation UISolariumMetricsEnabled

uint64_t ___UISolariumMetricsEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = dyld_program_sdk_at_least();
  }

  byte_1ED49E11A = result;
  return result;
}

@end