@interface SSQuickActionsEnabled
@end

@implementation SSQuickActionsEnabled

uint64_t ___SSQuickActionsEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  _SSQuickActionsEnabled_sQuickActionsEnabled = result;
  return result;
}

@end