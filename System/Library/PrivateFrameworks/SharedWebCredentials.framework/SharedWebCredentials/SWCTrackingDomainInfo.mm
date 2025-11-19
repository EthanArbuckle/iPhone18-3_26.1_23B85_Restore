@interface SWCTrackingDomainInfo
@end

@implementation SWCTrackingDomainInfo

void __65___SWCTrackingDomainInfo__trackingDomainInfoWithDomains_sources___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v6 = v3;
  v5 = [*(a1 + 40) _trackingDomainInfoWithDomain:? JSONObject:? expectedSources:?];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
}

void __86___SWCTrackingDomainInfo__getTrackingDomainInfoWithDomains_sources_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 48) _trackingDomainInfoWithDomains:*(a1 + 32) sources:*(a1 + 56)];
  v3 = v2;
  if (!v2)
  {
    v2 = MEMORY[0x277CBEC10];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v2);
}

void __41___SWCTrackingDomainInfo_Private___queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("_SWCTrackingDomainInfo I/O queue", v2);
  v1 = _MergedGlobals_6;
  _MergedGlobals_6 = v0;
}

@end