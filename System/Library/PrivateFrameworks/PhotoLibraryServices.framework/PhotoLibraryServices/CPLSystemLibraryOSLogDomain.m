@interface CPLSystemLibraryOSLogDomain
@end

@implementation CPLSystemLibraryOSLogDomain

void ____CPLSystemLibraryOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  v1 = os_log_create(v0, "client.assetsd.manager.systemlibrary");
  v2 = __CPLSystemLibraryOSLogDomain_result;
  __CPLSystemLibraryOSLogDomain_result = v1;
}

@end