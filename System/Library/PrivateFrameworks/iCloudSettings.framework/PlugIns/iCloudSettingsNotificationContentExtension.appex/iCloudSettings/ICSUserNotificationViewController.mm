@interface ICSUserNotificationViewController
- (ICSUserNotificationViewController)initWithCoder:(id)coder;
- (ICSUserNotificationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation ICSUserNotificationViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for UserNotificationViewController();
  [(ICSUserNotificationViewController *)&v2 viewDidLoad];
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  responseCopy = response;
  selfCopy = self;
  sub_1000018D0(responseCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (ICSUserNotificationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100001BB4();
    bundleCopy = bundle;
    v7 = sub_100001BA4();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for UserNotificationViewController();
  v9 = [(ICSUserNotificationViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (ICSUserNotificationViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UserNotificationViewController();
  coderCopy = coder;
  v5 = [(ICSUserNotificationViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end