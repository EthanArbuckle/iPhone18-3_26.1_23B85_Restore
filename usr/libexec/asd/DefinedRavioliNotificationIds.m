@interface DefinedRavioliNotificationIds
+ (NSString)missingBag;
+ (NSString)xpc;
@end

@implementation DefinedRavioliNotificationIds

+ (NSString)missingBag
{
  static DefinedRavioliNotificationIds.missingBag.getter();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)xpc
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end