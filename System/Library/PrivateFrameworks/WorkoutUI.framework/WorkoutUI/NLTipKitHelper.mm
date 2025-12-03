@interface NLTipKitHelper
+ (void)sendEventWithIdentifier:(id)identifier activityType:(id)type;
- (NLTipKitHelper)init;
@end

@implementation NLTipKitHelper

+ (void)sendEventWithIdentifier:(id)identifier activityType:(id)type
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  swift_getObjCClassMetadata();
  typeCopy = type;
  specialized static TipKitHelper.sendEvent(identifier:activityType:)(v5, v7);
}

- (NLTipKitHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TipKitHelper();
  return [(NLTipKitHelper *)&v3 init];
}

@end