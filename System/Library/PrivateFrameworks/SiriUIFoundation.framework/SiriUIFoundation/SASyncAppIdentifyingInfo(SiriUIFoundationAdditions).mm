@interface SASyncAppIdentifyingInfo(SiriUIFoundationAdditions)
- (__CFString)sruif_bundleId;
- (uint64_t)sruif_isSurfAppInfo;
@end

@implementation SASyncAppIdentifyingInfo(SiriUIFoundationAdditions)

- (uint64_t)sruif_isSurfAppInfo
{
  bundleId = [self bundleId];
  v2 = [bundleId isEqualToString:@"com.apple.ApplePayDisambiguationItem"];

  return v2;
}

- (__CFString)sruif_bundleId
{
  if ([self sruif_isSurfAppInfo])
  {
    bundleId = @"com.apple.MobileSMS";
  }

  else
  {
    bundleId = [self bundleId];
  }

  return bundleId;
}

@end