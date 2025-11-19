@interface UIRemoteViewControllerAppProtectionMetrics
@end

@implementation UIRemoteViewControllerAppProtectionMetrics

id __73___UIRemoteViewControllerAppProtectionMetrics_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"apExtension"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"localizedName"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"bundleIdentifierForAppIcon"];
}

@end