@interface WebPreferences(WebPrivateTesting)
+ (uint64_t)_clearNetworkLoaderSession:()WebPrivateTesting;
@end

@implementation WebPreferences(WebPrivateTesting)

+ (uint64_t)_clearNetworkLoaderSession:()WebPrivateTesting
{
  *self = &unk_1F472E678;
  _Block_release(self[1]);

  return WTF::fastFree(self, v2);
}

@end