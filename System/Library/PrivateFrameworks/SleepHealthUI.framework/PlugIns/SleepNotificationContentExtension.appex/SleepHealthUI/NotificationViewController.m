@interface NotificationViewController
- (NotificationViewController)initWithCoder:(id)a3;
- (NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveNotification:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
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

  v3 = self;
  sub_100001720();
}

- (void)didReceiveNotification:(id)a3
{
  sub_100004C34();
  sub_100004C24();
  sub_100004C14();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1000018F8(v5);
}

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100002500(v8, sub_100004958, v7);
}

- (NotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_100004C34();
  sub_100004C24();
  sub_100004C14();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_100004BA4();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = sub_1000038C8(v6, a3, a4);

  return v9;
}

- (NotificationViewController)initWithCoder:(id)a3
{
  sub_100004C34();
  sub_100004C24();
  sub_100004C14();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_100003A94(a3);

  return v4;
}

@end