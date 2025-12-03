@interface VUIUTSChannelsRequestManager
+ (id)sharedInstance;
- (BOOL)isStoreBundleID:(id)d;
- (void)resetCache;
@end

@implementation VUIUTSChannelsRequestManager

+ (id)sharedInstance
{
  v2 = static VUIUTSChannelsRequestManager.shared()();

  return v2;
}

- (BOOL)isStoreBundleID:(id)d
{
  v4 = sub_1E4205F14();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = VUIUTSChannelsRequestManager.isStoreBundleID(bundleID:)(v8);

  return v4 & 1;
}

- (void)resetCache
{
  selfCopy = self;
  VUIUTSChannelsRequestManager.resetCache()();
}

@end