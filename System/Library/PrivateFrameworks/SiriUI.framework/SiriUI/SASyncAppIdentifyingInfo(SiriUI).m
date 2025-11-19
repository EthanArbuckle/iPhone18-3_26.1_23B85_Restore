@interface SASyncAppIdentifyingInfo(SiriUI)
- (__CFString)siriui_bundleId;
- (uint64_t)siriui_isSurfAppInfo;
@end

@implementation SASyncAppIdentifyingInfo(SiriUI)

- (uint64_t)siriui_isSurfAppInfo
{
  v1 = [a1 bundleId];
  v2 = [v1 isEqualToString:@"com.apple.ApplePayDisambiguationItem"];

  return v2;
}

- (__CFString)siriui_bundleId
{
  if ([a1 siriui_isSurfAppInfo])
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