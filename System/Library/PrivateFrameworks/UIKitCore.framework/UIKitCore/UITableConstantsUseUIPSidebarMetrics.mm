@interface UITableConstantsUseUIPSidebarMetrics
@end

@implementation UITableConstantsUseUIPSidebarMetrics

uint64_t ___UITableConstantsUseUIPSidebarMetrics_block_invoke()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  _MergedGlobals_1302 = result;
  return result;
}

@end