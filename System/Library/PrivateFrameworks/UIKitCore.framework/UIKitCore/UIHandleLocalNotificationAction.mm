@interface UIHandleLocalNotificationAction
- (UILocalNotification)notification;
@end

@implementation UIHandleLocalNotificationAction

- (UILocalNotification)notification
{
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"UIHandleLocalNotificationAction.m" lineNumber:71 description:@"you should only call this on the main thread"];
  }

  return 0;
}

@end