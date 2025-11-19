@interface NSURL(RemoteUIAdditions)
- (uint64_t)rui_isSupportedNativeURL;
- (uint64_t)rui_isSupportedSafariURL;
@end

@implementation NSURL(RemoteUIAdditions)

- (uint64_t)rui_isSupportedNativeURL
{
  if (rui_isSupportedNativeURL_onceToken != -1)
  {
    [NSURL(RemoteUIAdditions) rui_isSupportedNativeURL];
  }

  v2 = rui_isSupportedNativeURL_supportedSchemes;
  v3 = [a1 scheme];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (uint64_t)rui_isSupportedSafariURL
{
  if (rui_isSupportedSafariURL_onceToken != -1)
  {
    [NSURL(RemoteUIAdditions) rui_isSupportedSafariURL];
  }

  v2 = rui_isSupportedSafariURL_supportedSafariSchemes;
  v3 = [a1 scheme];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end