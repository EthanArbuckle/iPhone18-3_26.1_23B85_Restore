@interface PushNotification
+ (id)entityFromContext:(id)context;
@end

@implementation PushNotification

+ (id)entityFromContext:(id)context
{
  v3 = [objc_msgSend(objc_msgSend(context "persistentStoreCoordinator")];

  return [v3 objectForKey:@"PushNotification"];
}

@end