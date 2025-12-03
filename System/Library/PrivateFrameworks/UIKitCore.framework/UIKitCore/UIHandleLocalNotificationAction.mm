@interface UIHandleLocalNotificationAction
- (UILocalNotification)notification;
@end

@implementation UIHandleLocalNotificationAction

- (UILocalNotification)notification
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIHandleLocalNotificationAction.m" lineNumber:71 description:@"you should only call this on the main thread"];
  }

  return 0;
}

@end