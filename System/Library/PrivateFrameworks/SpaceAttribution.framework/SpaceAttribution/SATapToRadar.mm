@interface SATapToRadar
+ (BOOL)isTTREnabled;
+ (BOOL)shouldOpenRadar:(BOOL)radar;
+ (void)updateLastTTRNotificationDate;
@end

@implementation SATapToRadar

+ (BOOL)isTTREnabled
{
  v2 = [SARunTimeDataManager runTimeDataObjectForKey:@"enableTTRNotification"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (void)updateLastTTRNotificationDate
{
  v2 = +[NSDate date];
  [SARunTimeDataManager setRunTimeDataObject:v2 forKey:@"lastTTRNotificationDate"];
}

+ (BOOL)shouldOpenRadar:(BOOL)radar
{
  arc4random_uniform(0x3E8u);
  v4 = +[SATapToRadar getLastTTRNotificationDate];
  if (!+[SATapToRadar forceTTR])
  {
    if (v4)
    {
      v5 = +[NSDate date];
      [v5 timeIntervalSinceDate:v4];
      v7 = v6;

      if (v7 < 604800.0)
      {
LABEL_10:
        v8 = 0;
        goto LABEL_11;
      }
    }
  }

  if (!radar && !+[SATapToRadar isTTREnabled])
  {
    v9 = SALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "not sending Tap-To-Radar notification", v11, 2u);
    }

    goto LABEL_10;
  }

  +[SATapToRadar updateLastTTRNotificationDate];
  v8 = 1;
LABEL_11:

  return v8;
}

@end