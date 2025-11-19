@interface _LTActivityLogger
- (_LTActivityLogger)init;
- (_LTActivityLoggerDelegate)delegate;
- (_LTDAnalyticsAssetSnapshotProviding)assetSnapshotProvider;
- (id)_activityDatePreferenceKeyForTask:(int64_t)a3;
- (id)_featureNameForTask:(int64_t)a3;
- (id)_weekNameForDate:(id)a3;
- (id)activityLogger:(id)a3 lastLoggedDateForTask:(int64_t)a4;
- (void)_logActivityForTask:(int64_t)a3 interval:(unint64_t)a4 date:(id)a5;
- (void)_logAllIntervalsForTask:(int64_t)a3 date:(id)a4;
- (void)_logAssetSnapshotForDate:(id)a3;
- (void)_registerActivity:(int64_t)a3 onDate:(id)a4;
- (void)_sendDailyUsageForTask:(int64_t)a3 date:(id)a4;
- (void)_sendMonthlyUsageForTask:(int64_t)a3 date:(id)a4;
- (void)_sendWeeklyMobileAssetSnapshot:(id)a3 date:(id)a4;
- (void)_sendWeeklyUsageForTask:(int64_t)a3 date:(id)a4;
- (void)_updateLastLoggedDate:(id)a3 forTask:(int64_t)a4;
- (void)activityLogger:(id)a3 logAggregateUsageForInterval:(unint64_t)a4 date:(id)a5;
- (void)activityLogger:(id)a3 logUsageForTask:(int64_t)a4 interval:(unint64_t)a5 date:(id)a6;
- (void)activityLogger:(id)a3 updateLastLoggedDate:(id)a4 forTask:(int64_t)a5;
- (void)registerActivity:(int64_t)a3;
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

- (void)registerActivity:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEAA8] date];
  if (!a3)
  {
    v6 = _LTOSLogXPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [_LTActivityLogger registerActivity:v6];
    }
  }

  [(_LTActivityLogger *)self _registerActivity:a3 onDate:v5];
}

- (void)_registerActivity:(int64_t)a3 onDate:(id)a4
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (!a3)
  {
    v8 = [WeakRetained lastAggregateLogDateForActivityLogger:self];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    [(_LTActivityLogger *)self _logAllIntervalsForTask:a3 date:v9];
    goto LABEL_11;
  }

  v8 = [WeakRetained activityLogger:self lastLoggedDateForTask:a3];
  [(_LTActivityLogger *)self _registerActivity:0 onDate:v9];
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (![(NSCalendar *)self->_calendar isDate:v9 inSameDayAsDate:v8])
  {
    [(_LTActivityLogger *)self _logActivityForTask:a3 interval:0 date:v9];
  }

  if (![(NSCalendar *)self->_calendar isDate:v9 equalToDate:v8 toUnitGranularity:0x2000])
  {
    [(_LTActivityLogger *)self _logActivityForTask:a3 interval:1 date:v9];
  }

  if (![(NSCalendar *)self->_calendar isDate:v9 equalToDate:v8 toUnitGranularity:8])
  {
    [(_LTActivityLogger *)self _logActivityForTask:a3 interval:2 date:v9];
  }

LABEL_11:
  [(_LTActivityLogger *)self _updateLastLoggedDate:v9 forTask:a3];
}

- (void)_logAllIntervalsForTask:(int64_t)a3 date:(id)a4
{
  v6 = a4;
  [(_LTActivityLogger *)self _logActivityForTask:a3 interval:0 date:v6];
  [(_LTActivityLogger *)self _logActivityForTask:a3 interval:1 date:v6];
  [(_LTActivityLogger *)self _logActivityForTask:a3 interval:2 date:v6];
}

- (void)_logActivityForTask:(int64_t)a3 interval:(unint64_t)a4 date:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = _LTOSLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 > 2)
    {
      v10 = @"undefined";
    }

    else
    {
      v10 = off_2789B5188[a4];
    }

    v11 = v9;
    v12 = [(_LTActivityLogger *)self _featureNameForTask:a3];
    v16 = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEFAULT, "Log %{public}@ activity for %{public}@", &v16, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = WeakRetained;
  if (a3)
  {
    [WeakRetained activityLogger:self logUsageForTask:a3 interval:a4 date:v8];
  }

  else
  {
    [WeakRetained activityLogger:self logAggregateUsageForInterval:a4 date:v8];
    if (a4 == 1)
    {
      [(_LTActivityLogger *)self _logAssetSnapshotForDate:v8];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_logAssetSnapshotForDate:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v12 = v10;
  [(_LTDAnalyticsAssetSnapshotProvider *)v8 collectAssetSnapshotWithCompletion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_updateLastLoggedDate:(id)a3 forTask:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _LTOSLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = v7;
    v12 = [(_LTActivityLogger *)self _featureNameForTask:a4];
    v13 = 138543618;
    v14 = v12;
    v15 = 2114;
    v16 = v6;
    _os_log_debug_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEBUG, "Updating last logged date for %{public}@ to: %{public}@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (a4)
  {
    [WeakRetained activityLogger:self updateLastLoggedDate:v6 forTask:a4];
  }

  else
  {
    [WeakRetained activityLogger:self updateLastAggregateLogDate:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)activityLogger:(id)a3 logUsageForTask:(int64_t)a4 interval:(unint64_t)a5 date:(id)a6
{
  v11 = a3;
  v10 = a6;
  switch(a5)
  {
    case 2uLL:
      [(_LTActivityLogger *)self _sendMonthlyUsageForTask:a4 date:v10];
      break;
    case 1uLL:
      [(_LTActivityLogger *)self _sendWeeklyUsageForTask:a4 date:v10];
      break;
    case 0uLL:
      [(_LTActivityLogger *)self _sendDailyUsageForTask:a4 date:v10];
      break;
  }
}

- (id)activityLogger:(id)a3 lastLoggedDateForTask:(int64_t)a4
{
  v4 = [(_LTActivityLogger *)self _activityDatePreferenceKeyForTask:a4];
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 objectForKey:v4];

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

- (void)activityLogger:(id)a3 updateLastLoggedDate:(id)a4 forTask:(int64_t)a5
{
  v7 = a4;
  v9 = [(_LTActivityLogger *)self _activityDatePreferenceKeyForTask:a5];
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v8 setObject:v7 forKey:v9];
}

- (void)activityLogger:(id)a3 logAggregateUsageForInterval:(unint64_t)a4 date:(id)a5
{
  v9 = a3;
  v8 = a5;
  switch(a4)
  {
    case 2uLL:
      [(_LTActivityLogger *)self _sendMonthlyUsageForTask:0 date:v8];
      break;
    case 1uLL:
      [(_LTActivityLogger *)self _sendWeeklyUsageForTask:0 date:v8];
      break;
    case 0uLL:
      [(_LTActivityLogger *)self _sendDailyUsageForTask:0 date:v8];
      break;
  }
}

- (void)_sendDailyUsageForTask:(int64_t)a3 date:(id)a4
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(_LTActivityLogger *)self _featureNameForTask:a3, a4];
  v7 = @"feature";
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  AnalyticsSendEvent();

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_weekNameForDate:(id)a3
{
  v3 = [(NSCalendar *)self->_calendar components:8196 fromDate:a3];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0*ld_%ld", 2, objc_msgSend(v3, "weekOfYear"), objc_msgSend(v3, "year")];

  return v4;
}

- (void)_sendWeeklyUsageForTask:(int64_t)a3 date:(id)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(_LTActivityLogger *)self _featureNameForTask:a3];
  v8 = [(_LTActivityLogger *)self _weekNameForDate:v6];

  v11[0] = @"feature";
  v11[1] = @"week_name";
  v12[0] = v7;
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  AnalyticsSendEvent();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_sendMonthlyUsageForTask:(int64_t)a3 date:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(_LTActivityLogger *)self _featureNameForTask:a3];
  v8 = [(NSCalendar *)self->_calendar components:12 fromDate:v6];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%0*ld_%ld", 2, objc_msgSend(v8, "month"), objc_msgSend(v8, "year")];
  v12[0] = @"feature";
  v12[1] = @"month_name";
  v13[0] = v7;
  v13[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  AnalyticsSendEvent();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_sendWeeklyMobileAssetSnapshot:(id)a3 date:(id)a4
{
  v19[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(_LTActivityLogger *)self _weekNameForDate:a4];
  v19[0] = v7;
  v18[0] = @"week_name";
  v18[1] = @"asset_build_number";
  v8 = [v6 assetBuild];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<UNAVAILABLE>";
  }

  v19[1] = v10;
  v18[2] = @"expected_configuration_version";
  v11 = [v6 expectedAssetVersion];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"<UNAVAILABLE>";
  }

  v19[2] = v13;
  v18[3] = @"installed_configuration_version";
  v14 = [v6 installedAssetVersion];

  if (v14)
  {
    v15 = v14;
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

- (id)_featureNameForTask:(int64_t)a3
{
  if (a3 > 0xB)
  {
    return @"aggregate";
  }

  else
  {
    return off_2789B51A0[a3];
  }
}

- (id)_activityDatePreferenceKeyForTask:(int64_t)a3
{
  v3 = [(_LTActivityLogger *)self _featureNameForTask:a3];
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