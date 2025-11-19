@interface CPLAssetsdOSLogDomain
@end

@implementation CPLAssetsdOSLogDomain

void ____CPLAssetsdOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  v1 = os_log_create(v0, "client.assetsd");
  v2 = __CPLAssetsdOSLogDomain_result;
  __CPLAssetsdOSLogDomain_result = v1;
}

@end