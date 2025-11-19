@interface UISTouchAuthenticationRecord
@end

@implementation UISTouchAuthenticationRecord

void __127___UISTouchAuthenticationRecord_initWithSecurityAnalysis_timestamp_hostBundleId_hostSDKVersion_hostIsInternal_serviceBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSecurityAnalysis:v3];
  [v4 setHostBundleId:*(a1 + 40)];
  [v4 setHostSDKVersion:*(a1 + 48)];
  [v4 setHostIsInternal:*(a1 + 64)];
  [v4 setServiceBundleId:*(a1 + 56)];
}

@end