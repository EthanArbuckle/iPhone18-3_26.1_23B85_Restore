@interface CPLCloudPhotoServicesOSLogDomain
@end

@implementation CPLCloudPhotoServicesOSLogDomain

void ____CPLCloudPhotoServicesOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  v1 = os_log_create(v0, "cloudphotoservices");
  v2 = __CPLCloudPhotoServicesOSLogDomain_result;
  __CPLCloudPhotoServicesOSLogDomain_result = v1;
}

@end