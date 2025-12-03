@interface NotificationViewController
- (NotificationViewController)initWithCoder:(id)coder;
- (NotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation NotificationViewController

- (void)viewDidLoad
{
  sub_100004C34();
  sub_100004C24();
  sub_100004C14();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_100001720();
}

- (void)didReceiveNotification:(id)notification
{
  sub_100004C34();
  sub_100004C24();
  sub_100004C14();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_1000018F8(notificationCopy);
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  responseCopy = response;
  selfCopy = self;
  sub_100002500(responseCopy, sub_100004958, v7);
}

- (NotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  sub_100004C34();
  sub_100004C24();
  sub_100004C14();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_100004BA4();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_1000038C8(v6, name, bundle);

  return v9;
}

- (NotificationViewController)initWithCoder:(id)coder
{
  sub_100004C34();
  sub_100004C24();
  sub_100004C14();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_100003A94(coder);

  return v4;
}

@end