@interface CPLAppLibraryOSLogDomain
@end

@implementation CPLAppLibraryOSLogDomain

void ____CPLAppLibraryOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  v1 = os_log_create(v0, "client.assetsd.manager.applibrary");
  v2 = __CPLAppLibraryOSLogDomain_result;
  __CPLAppLibraryOSLogDomain_result = v1;
}

@end