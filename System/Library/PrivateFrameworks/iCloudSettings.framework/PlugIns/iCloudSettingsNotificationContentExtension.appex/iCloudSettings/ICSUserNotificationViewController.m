@interface ICSUserNotificationViewController
- (ICSUserNotificationViewController)initWithCoder:(id)a3;
- (ICSUserNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
- (void)viewDidLoad;
@end

@implementation ICSUserNotificationViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for UserNotificationViewController();
  [(ICSUserNotificationViewController *)&v2 viewDidLoad];
}

- (void)didReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1000018D0(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (ICSUserNotificationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100001BB4();
    v6 = a4;
    v7 = sub_100001BA4();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for UserNotificationViewController();
  v9 = [(ICSUserNotificationViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (ICSUserNotificationViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UserNotificationViewController();
  v4 = a3;
  v5 = [(ICSUserNotificationViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end