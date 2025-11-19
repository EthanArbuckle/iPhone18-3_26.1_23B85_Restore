@interface SiriAnalyticsPersistentStorage
+ (SiriAnalyticsDataVault)dataVault;
@end

@implementation SiriAnalyticsPersistentStorage

+ (SiriAnalyticsDataVault)dataVault
{
  swift_getObjCClassMetadata();
  v2 = static PersistentStorage.dataVault.getter();

  return v2;
}

@end