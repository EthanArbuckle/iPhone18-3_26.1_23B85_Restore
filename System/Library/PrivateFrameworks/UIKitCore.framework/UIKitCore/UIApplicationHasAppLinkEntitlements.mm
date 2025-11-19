@interface UIApplicationHasAppLinkEntitlements
@end

@implementation UIApplicationHasAppLinkEntitlements

uint64_t ___UIApplicationHasAppLinkEntitlements_block_invoke()
{
  result = UISelfHasEntitlement(@"com.apple.private.canGetAppLinkInfo");
  if (result)
  {
    result = UISelfHasEntitlement(@"com.apple.private.canModifyAppLinkPermissions");
  }

  _MergedGlobals_1346 = result;
  return result;
}

@end