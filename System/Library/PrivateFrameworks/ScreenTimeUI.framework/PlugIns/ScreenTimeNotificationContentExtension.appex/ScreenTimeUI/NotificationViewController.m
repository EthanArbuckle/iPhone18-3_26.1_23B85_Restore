@interface NotificationViewController
- (void)didReceiveNotification:(id)a3;
@end

@implementation NotificationViewController

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v22 = +[STScreenTimeNotificationContentExtensionBundle bundle];
  v5 = [v22 localizedStringForKey:@"WeeklyReportNotificationSeeAllActivity" value:&stru_100004120 table:0];
  v6 = [UNNotificationAction actionWithIdentifier:STUserNotificationWeeklyReportPrimaryActionIdentifier title:v5 options:1];
  v25 = v6;
  v7 = [NSArray arrayWithObjects:&v25 count:1];
  v8 = [(NotificationViewController *)self extensionContext];
  [v8 setNotificationActions:v7];

  v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = [v4 request];

  v11 = [v10 content];
  v12 = [v11 userInfo];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Parsing info for notification %@", buf, 0xCu);
  }

  v13 = [v12 objectForKeyedSubscript:@"weeklyReportData"];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v14 = [(NotificationViewController *)self weeklyReportViewController];
    [v14 willMoveToParentViewController:0];
    [v14 removeFromParentViewController];
    v15 = [[STWeeklyReportViewController alloc] initWithData:v13];

    [(NotificationViewController *)self setWeeklyReportViewController:v15];
    [(NotificationViewController *)self addChildViewController:v15];
    [v15 didMoveToParentViewController:self];
    v16 = [v15 view];

    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(NotificationViewController *)self view];
    [v17 addSubview:v16];

    v9 = v16;
  }

  v18 = _NSDictionaryOfVariableBindings(@"weeklyReportView", v9, 0);
  v19 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[weeklyReportView]|" options:0 metrics:0 views:v18];
  v20 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[weeklyReportView]|" options:0 metrics:0 views:v18];
  v21 = [v19 arrayByAddingObjectsFromArray:v20];
  [NSLayoutConstraint activateConstraints:v21];
}

@end