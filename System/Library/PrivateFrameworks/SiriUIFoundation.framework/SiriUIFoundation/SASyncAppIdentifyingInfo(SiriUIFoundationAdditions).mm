@interface SASyncAppIdentifyingInfo(SiriUIFoundationAdditions)
- (__CFString)sruif_bundleId;
- (uint64_t)sruif_isSurfAppInfo;
@end

@implementation SASyncAppIdentifyingInfo(SiriUIFoundationAdditions)

- (uint64_t)sruif_isSurfAppInfo
{
  v1 = [a1 bundleId];
  v2 = [v1 isEqualToString:@"com.apple.ApplePayDisambiguationItem"];

  return v2;
}

- (__CFString)sruif_bundleId
{
  if ([a1 sruif_isSurfAppInfo])
  {
    v2 = @"com.apple.MobileSMS";
  }

  else
  {
    v2 = [a1 bundleId];
  }

  return v2;
}

@end