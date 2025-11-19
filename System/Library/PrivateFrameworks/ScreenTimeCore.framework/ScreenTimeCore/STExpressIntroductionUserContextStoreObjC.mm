@interface STExpressIntroductionUserContextStoreObjC
+ (id)sharedInstance;
- (_TtC15ScreenTimeAgent41STExpressIntroductionUserContextStoreObjC)init;
- (void)markUserAsRecentlyCreatedWithDSID:(id)a3;
@end

@implementation STExpressIntroductionUserContextStoreObjC

+ (id)sharedInstance
{
  v2 = [objc_allocWithZone(type metadata accessor for STExpressIntroductionUserContextStoreObjC()) init];

  return v2;
}

- (_TtC15ScreenTimeAgent41STExpressIntroductionUserContextStoreObjC)init
{
  static STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.shared.getter();
  v4.receiver = self;
  v4.super_class = type metadata accessor for STExpressIntroductionUserContextStoreObjC();
  return [(STExpressIntroductionUserContextStoreObjC *)&v4 init];
}

- (void)markUserAsRecentlyCreatedWithDSID:(id)a3
{
  v4 = a3;
  v5 = self;
  STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.markUserAsRecentlyCreated(withDSID:)([v4 integerValue]);
}

@end