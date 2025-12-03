@interface CFHelper
- (CFHelper)init;
- (CFHelper)initWithLog:(id)log;
- (id)read24HrMode;
- (id)readLanguageDirection;
- (id)readNumberingSystem;
- (id)readTimezone;
- (id)readUTCOffset;
- (void)readDST:(id *)t :(id *)a4;
- (void)write24HrMode:(__CFBoolean *)mode;
- (void)writeTimezone:(id)timezone;
- (void)writeTzAuto;
@end

@implementation CFHelper

- (void)writeTimezone:(id)timezone
{
  timezoneCopy = timezone;
  [timezoneCopy UTF8String];
  if (tzlink())
  {
    logs = self->logs;
    if (os_log_type_enabled(logs, OS_LOG_TYPE_ERROR))
    {
      sub_1000026A8(logs);
    }
  }

  else
  {
    TMSetAutomaticTimeZoneEnabled();
    TMSetAutomaticTimeEnabled();
    CFPreferencesSetAppValue(@"timezone", timezoneCopy, @"com.apple.preferences.datetime");
    CFPreferencesSetAppValue(@"timezoneset", kCFBooleanTrue, @"com.apple.preferences.datetime");
    CFPreferencesAppSynchronize(@"com.apple.preferences.datetime");
    +[NSTimeZone resetSystemTimeZone];
  }
}

- (void)writeTzAuto
{
  TMSetAutomaticTimeEnabled();
  TMSetAutomaticTimeZoneEnabled();
  CFPreferencesSetAppValue(@"automatic-time", 0, @"com.apple.preferences.datetime");

  CFPreferencesAppSynchronize(@"com.apple.preferences.datetime");
}

- (id)readTimezone
{
  v2 = +[NSTimeZone systemTimeZone];
  name = [v2 name];

  return name;
}

- (id)readUTCOffset
{
  v2 = +[NSTimeZone systemTimeZone];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v2 secondsFromGMT]);
  stringValue = [v3 stringValue];

  return stringValue;
}

- (void)readDST:(id *)t :(id *)a4
{
  v6 = +[NSTimeZone systemTimeZone];
  nextDaylightSavingTimeTransition = [v6 nextDaylightSavingTimeTransition];

  if (nextDaylightSavingTimeTransition)
  {
    [nextDaylightSavingTimeTransition timeIntervalSince1970];
    v8 = v7;
    v9 = +[NSTimeZone systemTimeZone];
    isDaylightSavingTime = [v9 isDaylightSavingTime];

    v11 = +[NSTimeZone systemTimeZone];
    v12 = v11;
    if (isDaylightSavingTime)
    {
      [v11 daylightSavingTimeOffset];
      v14 = -v13;
    }

    else
    {
      [v11 daylightSavingTimeOffsetForDate:nextDaylightSavingTimeTransition];
      v14 = v15;
    }
  }

  else
  {
    v14 = 0.0;
    v8 = 0;
  }

  *t = [NSString stringWithFormat:@"%.0f", v8];
  *a4 = [NSString stringWithFormat:@"%.0f", *&v14];
}

- (void)write24HrMode:(__CFBoolean *)mode
{
  CFPreferencesSetValue(@"AppleICUForce24HourTime", mode, kCFPreferencesAnyApplication, @"mobile", kCFPreferencesCurrentHost);
  CFPreferencesSynchronize(kCFPreferencesAnyApplication, @"mobile", kCFPreferencesCurrentHost);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleTimePreferencesChangedNotification", 0, 0, 1u);
}

- (id)read24HrMode
{
  v3 = objc_alloc_init(NSDateFormatter);
  v4 = +[NSLocale currentLocale];
  [v3 setLocale:v4];

  [v3 setLocalizedDateFormatFromTemplate:@"j"];
  logs = self->logs;
  if (os_log_type_enabled(logs, OS_LOG_TYPE_DEBUG))
  {
    sub_1000026EC(logs, v3);
  }

  dateFormat = [v3 dateFormat];
  v7 = [dateFormat containsString:@"H"];

  v8 = [NSString stringWithFormat:@"%d", v7];

  return v8;
}

- (id)readLanguageDirection
{
  v3 = +[NSLocale currentLocale];
  v4 = [v3 objectForKey:NSLocaleLanguageCode];

  v5 = [NSLocale characterDirectionForLanguage:v4];
  logs = self->logs;
  if (os_log_type_enabled(logs, OS_LOG_TYPE_ERROR))
  {
    sub_100002794(logs);
  }

  v7 = 1;
  if (v5 == NSLocaleLanguageDirectionRightToLeft)
  {
    v7 = 2;
  }

  v8 = [NSString stringWithFormat:@"%d", v7];

  return v8;
}

- (id)readNumberingSystem
{
  v3 = +[NSLocale currentLocale];
  _numberingSystem = [v3 _numberingSystem];

  v5 = [_numberingSystem length];
  if (os_log_type_enabled(self->logs, OS_LOG_TYPE_DEBUG))
  {
    sub_1000027D8();
  }

  if ((v5 & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    v6 = _numberingSystem;
  }

  else
  {
    if (os_log_type_enabled(self->logs, OS_LOG_TYPE_ERROR))
    {
      sub_100002850();
    }

    v6 = @"latn";
  }

  return v6;
}

- (CFHelper)init
{
  v3.receiver = self;
  v3.super_class = CFHelper;
  return [(CFHelper *)&v3 init];
}

- (CFHelper)initWithLog:(id)log
{
  logCopy = log;
  v9.receiver = self;
  v9.super_class = CFHelper;
  v5 = [(CFHelper *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (logCopy)
    {
      v7 = logCopy;
    }

    else
    {
      v7 = &_os_log_default;
    }

    objc_storeStrong(&v5->logs, v7);
  }

  return v6;
}

@end