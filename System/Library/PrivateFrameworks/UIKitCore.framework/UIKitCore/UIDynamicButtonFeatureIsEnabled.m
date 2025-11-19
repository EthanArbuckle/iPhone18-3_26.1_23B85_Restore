@interface UIDynamicButtonFeatureIsEnabled
@end

@implementation UIDynamicButtonFeatureIsEnabled

uint64_t ___UIDynamicButtonFeatureIsEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_1031 = result;
  return result;
}

@end