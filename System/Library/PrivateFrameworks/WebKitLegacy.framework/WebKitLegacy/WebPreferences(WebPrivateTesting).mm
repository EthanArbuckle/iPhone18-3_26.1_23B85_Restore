@interface WebPreferences(WebPrivateTesting)
+ (uint64_t)_clearNetworkLoaderSession:()WebPrivateTesting;
@end

@implementation WebPreferences(WebPrivateTesting)

+ (uint64_t)_clearNetworkLoaderSession:()WebPrivateTesting
{
  *a1 = &unk_1F472E678;
  _Block_release(a1[1]);

  return WTF::fastFree(a1, v2);
}

@end