@interface _LTActivityLogger
- (_LTActivityLogger)init;
- (_LTActivityLoggerDelegate)delegate;
- (_LTDAnalyticsAssetSnapshotProviding)assetSnapshotProvider;
- (id)_activityDatePreferenceKeyForTask:(int64_t)task;
- (id)_featureNameForTask:(int64_t)task;
- (id)_weekNameForDate:(id)date;
- (id)activityLogger:(id)logger lastLoggedDateForTask:(int64_t)task;
- (void)_logActivityForTask:(int64_t)task interval:(unint64_t)interval date:(id)date;
- (void)_logAllIntervalsForTask:(int64_t)task date:(id)date;
- (void)_logAssetSnapshotForDate:(id)date;
- (void)_registerActivity:(int64_t)activity onDate:(id)date;
- (void)_sendDailyUsageForTask:(int64_t)task date:(id)date;
- (void)_sendMonthlyUsageForTask:(int64_t)task date:(id)date;
- (void)_sendWeeklyMobileAssetSnapshot:(id)snapshot date:(id)date;
- (void)_sendWeeklyUsageForTask:(int64_t)task date:(id)date;
- (void)_updateLastLoggedDate:(id)date forTask:(int64_t)task;
- (void)activityLogger:(id)logger logAggregateUsageForInterval:(unint64_t)interval date:(id)date;
- (void)activityLogger:(id)logger logUsageForTask:(int64_t)task interval:(unint64_t)interval date:(id)date;
- (void)activityLogger:(id)logger updateLastLoggedDate:(id)date forTask:(int64_t)task;
- (void)registerActivity:(int64_t)activity;
@end

@implementation _LTActivityLogger

- (_LTActivityLogger)init
{
  v7.receiver = self;
  v7.super_class = _LTActivityLogger;
  v2 = [(_LTActivityLogger *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    calendar = v2->_calendar;
    v2->_calendar = v3;

    objc_storeWeak(&v2->_delegate, v2);
    v5 = v2;
  }

  return v2;
}

- (void)registerActivity:(int64_t)activity
{
  date = [MEMORY[0x277CBEAA8] date];
  if (!activity)
  {
    v6 = _LTOSLogXPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [_LTActivityLogger registerActivity:v6];
    }
  }

  [(_LTActivityLogger *)self _registerActivity:activity onDate:date];
}

- (void)_registerActivity:(int64_t)activity onDate:(id)date
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (!activity)
  {
    v8 = [WeakRetained lastAggregateLogDateForActivityLogger:self];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    [(_LTActivityLogger *)self _logAllIntervalsForTask:activity date:dateCopy];
    goto LABEL_11;
  }

  v8 = [WeakRetained activityLogger:self lastLoggedDateForTask:activity];
  [(_LTActivityLogger *)self _registerActivity:0 onDate:dateCopy];
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (![(NSCalendar *)self->_calendar isDate:dateCopy inSameDayAsDate:v8])
  {
    [(_LTActivityLogger *)self _logActivityForTask:activity interval:0 date:dateCopy];
  }

  if (![(NSCalendar *)self->_calendar isDate:dateCopy equalToDate:v8 toUnitGranularity:0x2000])
  {
    [(_LTActivityLogger *)self _logActivityForTask:activity interval:1 date:dateCopy];
  }

  if (![(NSCalendar *)self->_calendar isDate:dateCopy equalToDate:v8 toUnitGranularity:8])
  {
    [(_LTActivityLogger *)self _logActivityForTask:activity interval:2 date:dateCopy];
  }

LABEL_11:
  [(_LTActivityLogger *)self _updateLastLoggedDate:dateCopy forTask:activity];
}

- (void)_logAllIntervalsForTask:(int64_t)task date:(id)date
{
  dateCopy = date;
  [(_LTActivityLogger *)self _logActivityForTask:task interval:0 date:dateCopy];
  [(_LTActivityLogger *)self _logActivityForTask:task interval:1 date:dateCopy];
  [(_LTActivityLogger *)self _logActivityForTask:task interval:2 date:dateCopy];
}

- (void)_logActivityForTask:(int64_t)task interval:(unint64_t)interval date:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v9 = _LTOSLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (interval > 2)
    {
      v10 = @"undefined";
    }

    else
    {
      v10 = off_2789B5188[interval];
    }

    v11 = v9;
    v12 = [(_LTActivityLogger *)self _featureNameForTask:task];
    v16 = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEFAULT, "Log %{public}@ activity for %{public}@", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = WeakRetained;
  if (task)
  {
    [WeakRetained activityLogger:self logUsageForTask:task interval:interval date:dateCopy];
  }

  else
  {
    [WeakRetained activityLogger:self logAggregateUsageForInterval:interval date:dateCopy];
    if (interval == 1)
    {
      [(_LTActivityLogger *)self _logAssetSnapshotForDate:dateCopy];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_logAssetSnapshotForDate:(id)date
{
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_assetSnapshotProvider);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    v7 = objc_alloc_init(_LTDAnalyticsAssetSnapshotProvider);
  }

  v8 = v7;

  v9 = _LTOSLogAssets();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [_LTActivityLogger _logAssetSnapshotForDate:v9];
  }

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46___LTActivityLogger__logAssetSnapshotForDate___block_invoke;
  v11[3] = &unk_2789B5168;
  objc_copyWeak(&v13, &location);
  v10 = dateCopy;
  v12 = v10;
  [(_LTDAnalyticsAssetSnapshotProvider *)v8 collectAssetSnapshotWithCompletion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_updateLastLoggedDate:(id)date forTask:(int64_t)task
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = _LTOSLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v7;
    v12 = [(_LTActivityLogger *)self _featureNameForTask:task];
    v13 = 138543618;
    v14 = v12;
    v15 = 2114;
    v16 = dateCopy;
    _os_log_debug_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEBUG, "Updating last logged date for %{public}@ to: %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (task)
  {
    [WeakRetained activityLogger:self updateLastLoggedDate:dateCopy forTask:task];
  }

  else
  {
    [WeakRetained activityLogger:self updateLastAggregateLogDate:dateCopy];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)activityLogger:(id)logger logUsageForTask:(int64_t)task interval:(unint64_t)interval date:(id)date
{
  loggerCopy = logger;
  dateCopy = date;
  switch(interval)
  {
    case 2uLL:
      [(_LTActivityLogger *)self _sendMonthlyUsageForTask:task date:dateCopy];
      break;
    case 1uLL:
      [(_LTActivityLogger *)self _sendWeeklyUsageForTask:task date:dateCopy];
      break;
    case 0uLL:
      [(_LTActivityLogger *)self _sendDailyUsageForTask:task date:dateCopy];
      break;
  }
}

- (id)activityLogger:(id)logger lastLoggedDateForTask:(int64_t)task
{
  v4 = [(_LTActivityLogger *)self _activityDatePreferenceKeyForTask:task];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults objectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)activityLogger:(id)logger updateLastLoggedDate:(id)date forTask:(int64_t)task
{
  dateCopy = date;
  v9 = [(_LTActivityLogger *)self _activityDatePreferenceKeyForTask:task];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:dateCopy forKey:v9];
}

- (void)activityLogger:(id)logger logAggregateUsageForInterval:(unint64_t)interval date:(id)date
{
  loggerCopy = logger;
  dateCopy = date;
  switch(interval)
  {
    case 2uLL:
      [(_LTActivityLogger *)self _sendMonthlyUsageForTask:0 date:dateCopy];
      break;
    case 1uLL:
      [(_LTActivityLogger *)self _sendWeeklyUsageForTask:0 date:dateCopy];
      break;
    case 0uLL:
      [(_LTActivityLogger *)self _sendDailyUsageForTask:0 date:dateCopy];
      break;
  }
}

- (void)_sendDailyUsageForTask:(int64_t)task date:(id)date
{
  v8[1] = *MEMORY[0x277D85DE8];
  date = [(_LTActivityLogger *)self _featureNameForTask:task, date];
  v7 = @"feature";
  v8[0] = date;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  AnalyticsSendEvent();

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_weekNameForDate:(id)date
{
  v3 = [(NSCalendar *)self->_calendar components:8196 fromDate:date];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0*ld_%ld", 2, objc_msgSend(v3, "weekOfYear"), objc_msgSend(v3, "year")];

  return v4;
}

- (void)_sendWeeklyUsageForTask:(int64_t)task date:(id)date
{
  v12[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = [(_LTActivityLogger *)self _featureNameForTask:task];
  v8 = [(_LTActivityLogger *)self _weekNameForDate:dateCopy];

  v11[0] = @"feature";
  v11[1] = @"week_name";
  v12[0] = v7;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  AnalyticsSendEvent();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendMonthlyUsageForTask:(int64_t)task date:(id)date
{
  v13[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = [(_LTActivityLogger *)self _featureNameForTask:task];
  v8 = [(NSCalendar *)self->_calendar components:12 fromDate:dateCopy];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0*ld_%ld", 2, objc_msgSend(v8, "month"), objc_msgSend(v8, "year")];
  v12[0] = @"feature";
  v12[1] = @"month_name";
  v13[0] = v7;
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  AnalyticsSendEvent();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendWeeklyMobileAssetSnapshot:(id)snapshot date:(id)date
{
  v19[4] = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  v7 = [(_LTActivityLogger *)self _weekNameForDate:date];
  v19[0] = v7;
  v18[0] = @"week_name";
  v18[1] = @"asset_build_number";
  assetBuild = [snapshotCopy assetBuild];
  v9 = assetBuild;
  if (assetBuild)
  {
    v10 = assetBuild;
  }

  else
  {
    v10 = @"<UNAVAILABLE>";
  }

  v19[1] = v10;
  v18[2] = @"expected_configuration_version";
  expectedAssetVersion = [snapshotCopy expectedAssetVersion];
  v12 = expectedAssetVersion;
  if (expectedAssetVersion)
  {
    v13 = expectedAssetVersion;
  }

  else
  {
    v13 = @"<UNAVAILABLE>";
  }

  v19[2] = v13;
  v18[3] = @"installed_configuration_version";
  installedAssetVersion = [snapshotCopy installedAssetVersion];

  if (installedAssetVersion)
  {
    v15 = installedAssetVersion;
  }

  else
  {
    v15 = @"<UNAVAILABLE>";
  }

  v19[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  AnalyticsSendEvent();

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_featureNameForTask:(int64_t)task
{
  if (task > 0xB)
  {
    return @"aggregate";
  }

  else
  {
    return off_2789B51A0[task];
  }
}

- (id)_activityDatePreferenceKeyForTask:(int64_t)task
{
  v3 = [(_LTActivityLogger *)self _featureNameForTask:task];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"LastActivityDate", v3];

  return v4;
}

- (_LTActivityLoggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_LTDAnalyticsAssetSnapshotProviding)assetSnapshotProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_assetSnapshotProvider);

  return WeakRetained;
}

@end