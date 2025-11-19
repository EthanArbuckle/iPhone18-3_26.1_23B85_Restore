@interface PushNotificationEnvironment
+ (id)entityFromContext:(id)a3;
@end

@implementation PushNotificationEnvironment

+ (id)entityFromContext:(id)a3
{
  v3 = [objc_msgSend(objc_msgSend(a3 "persistentStoreCoordinator")];

  return [v3 objectForKey:@"PushNotificationEnvironment"];
}

@end