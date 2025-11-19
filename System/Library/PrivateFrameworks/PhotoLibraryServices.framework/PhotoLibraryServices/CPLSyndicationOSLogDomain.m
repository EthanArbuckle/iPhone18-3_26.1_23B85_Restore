@interface CPLSyndicationOSLogDomain
@end

@implementation CPLSyndicationOSLogDomain

void ____CPLSyndicationOSLogDomain_block_invoke()
{
  v0 = _CPLOSLogSubsystem();
  v1 = os_log_create(v0, "client.assetsd.manager.syndication");
  v2 = __CPLSyndicationOSLogDomain_result;
  __CPLSyndicationOSLogDomain_result = v1;
}

@end