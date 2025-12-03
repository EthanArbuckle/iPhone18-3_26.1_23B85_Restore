@interface NotificationViewController
- (void)didReceiveNotification:(id)notification;
@end

@implementation NotificationViewController

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v22 = +[STScreenTimeNotificationContentExtensionBundle bundle];
  v5 = [v22 localizedStringForKey:@"WeeklyReportNotificationSeeAllActivity" value:&stru_100004120 table:0];
  v6 = [UNNotificationAction actionWithIdentifier:STUserNotificationWeeklyReportPrimaryActionIdentifier title:v5 options:1];
  v25 = v6;
  v7 = [NSArray arrayWithObjects:&v25 count:1];
  extensionContext = [(NotificationViewController *)self extensionContext];
  [extensionContext setNotificationActions:v7];

  v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  request = [notificationCopy request];

  content = [request content];
  userInfo = [content userInfo];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = userInfo;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Parsing info for notification %@", buf, 0xCu);
  }

  v13 = [userInfo objectForKeyedSubscript:@"weeklyReportData"];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    weeklyReportViewController = [(NotificationViewController *)self weeklyReportViewController];
    [weeklyReportViewController willMoveToParentViewController:0];
    [weeklyReportViewController removeFromParentViewController];
    v15 = [[STWeeklyReportViewController alloc] initWithData:v13];

    [(NotificationViewController *)self setWeeklyReportViewController:v15];
    [(NotificationViewController *)self addChildViewController:v15];
    [v15 didMoveToParentViewController:self];
    view = [v15 view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(NotificationViewController *)self view];
    [view2 addSubview:view];

    v9 = view;
  }

  v18 = _NSDictionaryOfVariableBindings(@"weeklyReportView", v9, 0);
  v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[weeklyReportView]|" options:0 metrics:0 views:v18];
  v20 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[weeklyReportView]|" options:0 metrics:0 views:v18];
  v21 = [v19 arrayByAddingObjectsFromArray:v20];
  [NSLayoutConstraint activateConstraints:v21];
}

@end