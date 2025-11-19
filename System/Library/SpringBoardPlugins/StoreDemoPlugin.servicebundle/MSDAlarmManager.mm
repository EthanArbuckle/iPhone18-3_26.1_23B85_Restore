@interface MSDAlarmManager
+ (id)sharedInstance;
- (MSDAlarmManager)init;
- (id)getCurrentSleepAlarms;
- (void)disableAlarms;
- (void)disableSleepAlarm;
@end

@implementation MSDAlarmManager

+ (id)sharedInstance
{
  if (qword_1E038 != -1)
  {
    sub_BDE8();
  }

  v3 = qword_1E030;

  return v3;
}

- (MSDAlarmManager)init
{
  v10.receiver = self;
  v10.super_class = MSDAlarmManager;
  v2 = [(MSDAlarmManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mtAlarmManager = v2->_mtAlarmManager;
    v2->_mtAlarmManager = v3;

    v5 = objc_opt_new();
    sleepStore = v2->_sleepStore;
    v2->_sleepStore = v5;

    if (!v2->_sleepStore)
    {
      v7 = defaultLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_BDFC(v7);
      }
    }

    v8 = v2;
  }

  return v2;
}

- (id)getCurrentSleepAlarms
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = defaultLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_BE40(v5);
    }

    v6 = 0;
  }

  else
  {
    v6 = [(MTAlarmManager *)self->_mtAlarmManager sleepAlarmsSync];
    if (!v6)
    {
      v6 = +[NSArray array];
    }
  }

  return v6;
}

- (void)disableSleepAlarm
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = defaultLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_BEC4(v5);
    }
  }

  else
  {
    v6 = [(MSDAlarmManager *)self sleepStore];
    v26 = 0;
    v7 = [v6 currentSleepScheduleWithError:&v26];
    v5 = v26;

    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v7)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = [v8 occurrences];
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v20 = v7;
        v21 = v5;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v22 + 1) + 8 * i) mutableCopy];
            v16 = [v15 alarmConfiguration];
            v17 = [v16 mutableCopy];

            if ([v17 isEnabled])
            {
              [v17 setEnabled:0];
              v18 = defaultLogHandle();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *&buf[4] = v17;
                _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, " Set mutableAlarmConfiguration enabled to NO : %{public}@", buf, 0xCu);
              }

              [v15 setAlarmConfiguration:v17];
              [v9 saveOccurrence:v15];
              v19 = [(MSDAlarmManager *)self sleepStore];
              [v19 saveCurrentSleepSchedule:v9 options:4 completion:&stru_18650];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v12);
        v7 = v20;
        v5 = v21;
      }
    }

    else
    {
      sub_BF48(v5, buf);
      v10 = *buf;
    }
  }
}

- (void)disableAlarms
{
  v3 = [(MSDAlarmManager *)self mtAlarmManager];
  v4 = [v3 alarmsSync];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v19;
    *&v7 = 138543362;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 isEnabled])
        {
          v13 = defaultLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v23 = v12;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Disabling alarm %{public}@", buf, 0xCu);
          }

          v14 = [v12 mutableCopy];
          [v14 setEnabled:0];
          v15 = [(MSDAlarmManager *)self mtAlarmManager];
          v16 = [v15 updateAlarm:v14];

          v9 = v14;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }
}

@end