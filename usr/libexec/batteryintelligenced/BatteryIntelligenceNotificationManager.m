@interface BatteryIntelligenceNotificationManager
+ (BatteryIntelligenceNotificationManager)sharedInstance;
- (BatteryIntelligenceNotificationManager)init;
- (id)notificationRequestWith:(id)a3 content:(id)a4;
- (id)timeStringFromDuration:(double)a3;
- (id)tt80NotificationContentWithDuration:(double)a3;
- (id)tt80NotificationRequestWithDuration:(double)a3;
- (void)postNotificationWith:(id)a3 content:(id)a4;
- (void)postTT80NotificationWithDuration:(double)a3;
@end

@implementation BatteryIntelligenceNotificationManager

- (BatteryIntelligenceNotificationManager)init
{
  if (os_variant_has_internal_ui())
  {
    v10.receiver = self;
    v10.super_class = BatteryIntelligenceNotificationManager;
    v3 = [(BatteryIntelligenceNotificationManager *)&v10 init];
    if (v3)
    {
      v4 = os_log_create("com.apple.batteryintelligence", "notifications");
      log = v3->_log;
      v3->_log = v4;

      v6 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.batteryintelligence-notifications"];
      unCenter = v3->_unCenter;
      v3->_unCenter = v6;

      [(UNUserNotificationCenter *)v3->_unCenter setDelegate:v3];
      [(UNUserNotificationCenter *)v3->_unCenter setWantsNotificationResponsesDelivered];
    }

    self = v3;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BatteryIntelligenceNotificationManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000104B0;
  block[3] = &unk_100048718;
  block[4] = a1;
  if (qword_100057910 != -1)
  {
    dispatch_once(&qword_100057910, block);
  }

  v2 = qword_100057918;

  return v2;
}

- (id)timeStringFromDuration:(double)a3
{
  if (a3 >= 60.0)
  {
    if (a3 >= 3600.0)
    {
      if (a3 >= 7200.0)
      {
        v3 = vcvtmd_s64_f64(a3);
        v4 = v3 % 3600 + ((-30583 * (v3 % 3600)) >> 16);
        [NSString stringWithFormat:@"%.0f hours, %.0d minutes", a3 / 3600.0, (v4 >> 5) + ((v4 & 0x8000) >> 15)];
      }

      else
      {
        [NSString stringWithFormat:@"1 hour, %.0f minutes", (a3 + -3600.0) / 60.0, v7];
      }
    }

    else
    {
      [NSString stringWithFormat:@"%.0f minutes", a3 / 60.0, v7];
    }
  }

  else
  {
    [NSString stringWithFormat:@"%.0f seconds", *&a3, v7];
  }
  v5 = ;

  return v5;
}

- (id)notificationRequestWith:(id)a3 content:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v6 = a3;
    v7 = +[NSDate date];
    v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];

    v9 = [UNNotificationRequest requestWithIdentifier:v8 content:v5 trigger:0];

    [v9 setDestinations:15];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)postNotificationWith:(id)a3 content:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BatteryIntelligenceNotificationManager *)self notificationRequestWith:v6 content:v7];
  objc_initWeak(&location, self);
  unCenter = self->_unCenter;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000107F8;
  v10[3] = &unk_100048950;
  objc_copyWeak(&v11, &location);
  [(UNUserNotificationCenter *)unCenter addNotificationRequest:v8 withCompletionHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)tt80NotificationContentWithDuration:(double)a3
{
  v5 = objc_alloc_init(UNMutableNotificationContent);
  [v5 setTitle:@"Charge Time"];
  v6 = [(BatteryIntelligenceNotificationManager *)self timeStringFromDuration:a3];
  v7 = [NSString stringWithFormat:@"It will take %@ to charge to 80%%.", v6];
  [v5 setBody:v7];

  [v5 setCategoryIdentifier:@"tt80Category"];
  [v5 setShouldIgnoreDowntime:1];
  [v5 setShouldIgnoreDoNotDisturb:1];
  [v5 setShouldHideDate:0];
  [v5 setShouldSuppressScreenLightUp:0];
  v8 = [UNNotificationIcon iconForSystemImageNamed:@"bolt.fill"];
  [v5 setIcon:v8];

  v9 = [NSDate dateWithTimeIntervalSinceNow:57600.0];
  [v5 setExpirationDate:v9];

  return v5;
}

- (id)tt80NotificationRequestWithDuration:(double)a3
{
  v3 = [(BatteryIntelligenceNotificationManager *)self tt80NotificationContentWithDuration:a3];
  if (v3)
  {
    v4 = +[NSDate date];
    v5 = [NSString stringWithFormat:@"tt80-%@", v4];

    v6 = [UNNotificationRequest requestWithIdentifier:v5 content:v3 trigger:0];
    [v6 setDestinations:15];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)postTT80NotificationWithDuration:(double)a3
{
  if (sub_10001E444())
  {
    v5 = [(BatteryIntelligenceNotificationManager *)self tt80NotificationRequestWithDuration:a3];
    objc_initWeak(location, self);
    unCenter = self->_unCenter;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100010C08;
    v7[3] = &unk_100048950;
    objc_copyWeak(&v8, location);
    [(UNUserNotificationCenter *)unCenter addNotificationRequest:v5 withCompletionHandler:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = [(BatteryIntelligenceNotificationManager *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "TT80 notification is not enabled!", location, 2u);
    }
  }
}

@end