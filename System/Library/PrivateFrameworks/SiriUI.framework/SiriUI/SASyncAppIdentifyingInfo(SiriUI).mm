@interface SASyncAppIdentifyingInfo(SiriUI)
- (__CFString)siriui_bundleId;
- (uint64_t)siriui_isSurfAppInfo;
@end

@implementation SASyncAppIdentifyingInfo(SiriUI)

- (uint64_t)siriui_isSurfAppInfo
{
  bundleId = [self bundleId];
  v2 = [bundleId isEqualToString:@"com.apple.ApplePayDisambiguationItem"];

  return v2;
}

- (__CFString)siriui_bundleId
{
  if ([self siriui_isSurfAppInfo])
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