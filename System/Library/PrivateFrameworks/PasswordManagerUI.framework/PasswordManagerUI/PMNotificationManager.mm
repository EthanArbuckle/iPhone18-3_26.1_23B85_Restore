@interface PMNotificationManager
- (void)notificationManager:(id)manager didReceiveResponseOfType:(int64_t)type toNotificationOfType:(int64_t)ofType withUserInfo:(id)info;
@end

@implementation PMNotificationManager

- (void)notificationManager:(id)manager didReceiveResponseOfType:(int64_t)type toNotificationOfType:(int64_t)ofType withUserInfo:(id)info
{
  v10 = sub_21CB85474();
  managerCopy = manager;
  selfCopy = self;
  sub_21CA48E24(type, ofType, v10);
}

@end