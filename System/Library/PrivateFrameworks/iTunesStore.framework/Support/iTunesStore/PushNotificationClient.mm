@interface PushNotificationClient
+ (id)entityFromContext:(id)a3;
@end

@implementation PushNotificationClient

+ (id)entityFromContext:(id)a3
{
  v3 = [objc_msgSend(objc_msgSend(a3 "persistentStoreCoordinator")];

  return [v3 objectForKey:@"PushNotificationClient"];
}

@end