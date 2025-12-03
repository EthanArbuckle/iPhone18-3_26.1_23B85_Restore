@interface STExpressIntroductionUserContextStoreObjC
+ (id)sharedInstance;
- (_TtC15ScreenTimeAgent41STExpressIntroductionUserContextStoreObjC)init;
- (void)markUserAsRecentlyCreatedWithDSID:(id)d;
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

- (void)markUserAsRecentlyCreatedWithDSID:(id)d
{
  dCopy = d;
  selfCopy = self;
  STExpressIntroduction.Internal.UserDefaultsBackedUserContextStore.markUserAsRecentlyCreated(withDSID:)([dCopy integerValue]);
}

@end