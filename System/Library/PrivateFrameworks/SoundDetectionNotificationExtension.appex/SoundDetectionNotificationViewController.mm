@interface SoundDetectionNotificationViewController
- (void)didReceiveNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation SoundDetectionNotificationViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = SoundDetectionNotificationViewController;
  [(SoundDetectionNotificationViewController *)&v2 viewDidLoad];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100000B44(notificationCopy, v4);
  }
}

@end