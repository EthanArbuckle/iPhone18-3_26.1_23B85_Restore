@interface HDSPWakeUpResultsNotificationBuilder
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (BOOL)_didMeetSleepDurationGoalLastNight;
- (BOOL)hasSufficientSleepData;
- (HDSPWakeUpResultsNotificationBuilder)initWithDaySummaries:(id)a3 morningIndexRange:(id)a4 userFirstName:(id)a5;
- (id)_notificationForCategory:(unint64_t)a3 morningIndexRange:(id)a4 goalAchieved:(id)a5;
- (id)_sleepDurationGoalAchievedLastNightNotification;
- (id)_sleepDurationGoalAchievedShortWeekNotification;
- (id)_sleepDurationGoalAchievedTwoWeekNotification;
- (id)buildNotification;
- (int64_t)_randomNotificationVariantForCategory:(unint64_t)a3;
@end

@implementation HDSPWakeUpResultsNotificationBuilder

- (HDSPWakeUpResultsNotificationBuilder)initWithDaySummaries:(id)a3 morningIndexRange:(id)a4 userFirstName:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HDSPWakeUpResultsNotificationBuilder;
  v11 = [(HDSPWakeUpResultsNotificationBuilder *)&v16 init];
  if (v11)
  {
    v12 = [v9 copy];
    daySummaries = v11->_daySummaries;
    v11->_daySummaries = v12;

    v11->_morningIndexRange.start = var0;
    v11->_morningIndexRange.duration = var1;
    objc_storeStrong(&v11->_userFirstName, a5);
    v14 = v11;
  }

  return v11;
}

- (BOOL)hasSufficientSleepData
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_morningIndexRange.start == *MEMORY[0x277CCBBF8] && self->_morningIndexRange.duration == *(MEMORY[0x277CCBBF8] + 8))
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      start = self->_morningIndexRange.start;
      duration = self->_morningIndexRange.duration;
      v18 = v15;
      v19 = NSStringFromHKDayIndexRange();
      v22 = 138543618;
      v23 = v15;
      v24 = 2114;
      v25 = v19;
      _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Init failed: Invalid morning index range %{public}@", &v22, 0x16u);
    }

    goto LABEL_23;
  }

  daySummaries = self->_daySummaries;
  if (daySummaries)
  {
    if ([(NSArray *)daySummaries count])
    {
      v5 = [(NSArray *)self->_daySummaries lastObject];
      v6 = [v5 morningIndex];
      v7 = self->_morningIndexRange.duration;
      if (v7 <= 0)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = self->_morningIndexRange.start + v7 - 1;
      }

      if (v6 == v8)
      {
        v9 = [(NSArray *)self->_daySummaries lastObject];
        [v9 sleepDuration];
        v11 = v10;

        if (v11 > 0.0)
        {
          result = 1;
          goto LABEL_24;
        }

        v12 = HKSPLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138543362;
          v23 = objc_opt_class();
          v13 = v23;
          v14 = "[%{public}@] Init failed: No asleep duration for last night";
LABEL_22:
          _os_log_impl(&dword_269B11000, v12, OS_LOG_TYPE_DEFAULT, v14, &v22, 0xCu);
        }
      }

      else
      {
        v12 = HKSPLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138543362;
          v23 = objc_opt_class();
          v13 = v23;
          v14 = "[%{public}@] Init failed: No sleep day summary for last night";
          goto LABEL_22;
        }
      }
    }

    else
    {
      v12 = HKSPLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138543362;
        v23 = objc_opt_class();
        v13 = v23;
        v14 = "[%{public}@] Init failed: Zero sleep day summaries";
        goto LABEL_22;
      }
    }
  }

  else
  {
    v12 = HKSPLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = objc_opt_class();
      v13 = v23;
      v14 = "[%{public}@] Init failed: Nil sleep day summaries";
      goto LABEL_22;
    }
  }

LABEL_23:

  result = 0;
LABEL_24:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)buildNotification
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    daySummaries = self->_daySummaries;
    v6 = v4;
    v7 = [(NSArray *)daySummaries count];
    start = self->_morningIndexRange.start;
    duration = self->_morningIndexRange.duration;
    v10 = NSStringFromHKDayIndexRange();
    *buf = 138543874;
    v36 = v4;
    v37 = 2048;
    v38 = v7;
    v39 = 2114;
    v40 = v10;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Building notification from %lu summaries in range %{public}@", buf, 0x20u);
  }

  if (HKShowSensitiveLogItems())
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = self->_daySummaries;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v31;
      *&v13 = 138543618;
      v29 = v13;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v30 + 1) + 8 * i);
          v18 = HKSPLogForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = self;
            v20 = objc_opt_class();
            v21 = v20;
            v22 = HKSensitiveLogItem();
            *buf = v29;
            v36 = v20;
            self = v19;
            v37 = 2114;
            v38 = v22;
            _os_log_impl(&dword_269B11000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Summary: %{public}@", buf, 0x16u);
          }
        }

        v14 = [(NSArray *)v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v14);
    }
  }

  if ([(HDSPWakeUpResultsNotificationBuilder *)self _didMeetSleepDurationGoalLastNight:v29])
  {
    v23 = [(HDSPWakeUpResultsNotificationBuilder *)self _sleepDurationGoalAchievedTwoWeekNotification];
    if (!v23)
    {
      v23 = [(HDSPWakeUpResultsNotificationBuilder *)self _sleepDurationGoalAchievedShortWeekNotification];
      if (!v23)
      {
        v23 = [(HDSPWakeUpResultsNotificationBuilder *)self _sleepDurationGoalAchievedLastNightNotification];
      }
    }
  }

  else
  {
    v24 = HKSPLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      *buf = 138543362;
      v36 = v25;
      v26 = v25;
      _os_log_impl(&dword_269B11000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did not meet sleep duration goal last night; this is required for all notifications", buf, 0xCu);
    }

    v23 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)_didMeetSleepDurationGoalLastNight
{
  duration = self->_morningIndexRange.duration;
  if (duration <= 0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = self->_morningIndexRange.start + duration - 1;
  }

  v4 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:self->_daySummaries inMorningIndexRange:{v3, 1}];
  v5 = [v4 sleepDurationGoalAchievedCount] == 1;

  return v5;
}

- (id)_sleepDurationGoalAchievedTwoWeekNotification
{
  v19 = *MEMORY[0x277D85DE8];
  start = self->_morningIndexRange.start;
  duration = self->_morningIndexRange.duration;
  v5 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:self->_daySummaries inMorningIndexRange:{start, duration}];
  v6 = [v5 sleepDurationGoalAchievedCount];
  if (v6 <= 9)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v8 = v18;
      v9 = "[%{public}@] Not enough days achieved for two-week goal notification";
LABEL_7:
      _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, v9, &v17, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = v6;
  if (v6 >= 0xF)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = objc_opt_class();
      v8 = v18;
      v9 = "[%{public}@] Too many days achieved for two-week goal notification";
      goto LABEL_7;
    }

LABEL_8:

    v11 = 0;
    goto LABEL_10;
  }

  v12 = MEMORY[0x277CCD7E8];
  v13 = [MEMORY[0x277CCDAB0] dayUnit];
  v14 = [v12 quantityWithUnit:v13 doubleValue:v10];

  v11 = [(HDSPWakeUpResultsNotificationBuilder *)self _notificationForCategory:2 morningIndexRange:start goalAchieved:duration, v14];

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_sleepDurationGoalAchievedShortWeekNotification
{
  v18 = *MEMORY[0x277D85DE8];
  start = self->_morningIndexRange.start;
  v4 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:self->_daySummaries inMorningIndexRange:{start + 10, 4}];
  v5 = [v4 sleepDurationGoalAchievedCount];
  if (v5 <= 2)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      v7 = v17;
      v8 = "[%{public}@] Not enough days achieved for short-week goal notification";
LABEL_7:
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, v8, &v16, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = v5;
  if (v5 >= 5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = objc_opt_class();
      v7 = v17;
      v8 = "[%{public}@] Too many days achieved for short-week goal notification";
      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_10;
  }

  v11 = MEMORY[0x277CCD7E8];
  v12 = [MEMORY[0x277CCDAB0] dayUnit];
  v13 = [v11 quantityWithUnit:v12 doubleValue:v9];

  v10 = [(HDSPWakeUpResultsNotificationBuilder *)self _notificationForCategory:1 morningIndexRange:start + 10 goalAchieved:4, v13];

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_sleepDurationGoalAchievedLastNightNotification
{
  v17 = *MEMORY[0x277D85DE8];
  duration = self->_morningIndexRange.duration;
  if (duration <= 0)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = self->_morningIndexRange.start + duration - 1;
  }

  v5 = [MEMORY[0x277CCD9D0] sleepMetricsForDaySummaries:self->_daySummaries inMorningIndexRange:{v4, 1}];
  v6 = [v5 sleepDurationGoalAchievedCount];
  if (v6 <= 0)
  {
    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v11 = v16;
      v12 = "[%{public}@] Not enough days achieved for last night goal notification";
LABEL_11:
      _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, v12, &v15, 0xCu);
    }
  }

  else
  {
    if (v6 == 1)
    {
      v7 = [(NSArray *)self->_daySummaries lastObject];
      v8 = [v7 sleepDurationGoal];

      v9 = [(HDSPWakeUpResultsNotificationBuilder *)self _notificationForCategory:0 morningIndexRange:v4 goalAchieved:1, v8];

      goto LABEL_13;
    }

    v10 = HKSPLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = objc_opt_class();
      v11 = v16;
      v12 = "[%{public}@] Too many days achieved for last night goal notification";
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (int64_t)_randomNotificationVariantForCategory:(unint64_t)a3
{
  if (a3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_269B98330[a3];
  }

  return arc4random_uniform(v3) + 1;
}

- (id)_notificationForCategory:(unint64_t)a3 morningIndexRange:(id)a4 goalAchieved:(id)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v9 = a5;
  v10 = [HDSPWakeUpResultsNotification alloc];
  if (var1 <= 0)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = var1 + var0 - 1;
  }

  v12 = [(HDSPWakeUpResultsNotificationBuilder *)self _randomNotificationVariantForCategory:a3];
  v13 = [(HDSPWakeUpResultsNotificationBuilder *)self userFirstName];
  v14 = [(HDSPWakeUpResultsNotification *)v10 initWithCategory:a3 endMorningIndex:v11 goalAchieved:v9 notificationVariant:v12 userFirstName:v13];

  return v14;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange
{
  duration = self->_morningIndexRange.duration;
  start = self->_morningIndexRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end