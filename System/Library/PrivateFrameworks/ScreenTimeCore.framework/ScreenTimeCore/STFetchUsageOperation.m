@interface STFetchUsageOperation
+ (id)boundaryDateForDuration:(int64_t)a3 referenceDate:(id)a4;
- (STFetchUsageOperation)initWithGenesisDate:(id)a3 lastStartDate:(id)a4 referenceDate:(id)a5 includeAggregateUsage:(BOOL)a6 includeRemoteUsage:(BOOL)a7 forceRemoteDeviceSync:(BOOL)a8 duration:(int64_t)a9;
- (id)_computeStartDate;
- (id)_queryIntervalsStartingAtDate:(id)a3;
- (void)_fetchNextReportAndEndWhenDone;
- (void)_recordLocalUsageReports:(id)a3 usageReportsByCoreDuetIdentifier:(id)a4 aggregateUsageReports:(id)a5;
- (void)main;
@end

@implementation STFetchUsageOperation

- (STFetchUsageOperation)initWithGenesisDate:(id)a3 lastStartDate:(id)a4 referenceDate:(id)a5 includeAggregateUsage:(BOOL)a6 includeRemoteUsage:(BOOL)a7 forceRemoteDeviceSync:(BOOL)a8 duration:(int64_t)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v26.receiver = self;
  v26.super_class = STFetchUsageOperation;
  v18 = [(STOperation *)&v26 init];
  if (v18)
  {
    v19 = [v15 copy];
    genesisDate = v18->_genesisDate;
    v18->_genesisDate = v19;

    v21 = [v16 copy];
    lastStartDate = v18->_lastStartDate;
    v18->_lastStartDate = v21;

    v23 = [v17 copy];
    referenceDate = v18->_referenceDate;
    v18->_referenceDate = v23;

    v18->_includeAggregateUsage = a6;
    v18->_includeRemoteUsage = a7;
    v18->_forceRemoteDeviceSync = a8;
    v18->_duration = a9;
  }

  return v18;
}

+ (id)boundaryDateForDuration:(int64_t)a3 referenceDate:(id)a4
{
  v5 = a4;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 startOfDayForDate:v5];
  if (a3 == 1440)
  {
    v10 = [v6 dateByAddingUnit:16 value:-120 toDate:v7 options:260];
  }

  else if (a3 == 60)
  {
    v8 = [v6 dateByAddingUnit:0x2000 value:-4 toDate:v5 options:4];
    v9 = [v6 startOfDayForDate:v8];

    v10 = [v6 nextDateAfterDate:v9 matchingUnit:512 value:objc_msgSend(v6 options:{"minimumRangeOfUnit:", 512), 260}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "STFetchUsageOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v3];

  v4 = [(STOperation *)self activity:0];
  os_activity_scope_enter(v4, &v23);

  v5 = [(STFetchUsageOperation *)self referenceDate];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(STFetchUsageOperation *)self setReferenceDate:v5];
  }

  v6 = [(STFetchUsageOperation *)self _computeStartDate];
  v7 = [(STFetchUsageOperation *)self _queryIntervalsStartingAtDate:v6];
  v8 = objc_opt_new();
  [(STFetchUsageOperation *)self setUsageReporter:v8];

  [(STFetchUsageOperation *)self setQueryIntervals:v7];
  if ([v7 count])
  {
    v9 = [v7 firstObject];
    v10 = [v9 dateInterval];
    v11 = [v10 startDate];

    v12 = [v7 lastObject];
    v13 = [v12 dateInterval];
    v14 = [v13 endDate];

    v15 = [[NSDateInterval alloc] initWithStartDate:v11 endDate:v14];
    [(STFetchUsageOperation *)self setDateInterval:v15];
  }

  else
  {
    v16 = +[STLog persistence];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [(STFetchUsageOperation *)self genesisDate];
      v21 = [(STFetchUsageOperation *)self lastStartDate];
      v22 = [(STFetchUsageOperation *)self referenceDate];
      *buf = 138543874;
      v25 = v20;
      v26 = 2114;
      v27 = v21;
      v28 = 2114;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Can't figure out query intervals. genesisDate = %{public}@, lastStartDate = %{public}@, referenceDate = %{public}@", buf, 0x20u);
    }

    v11 = [[NSDateInterval alloc] initWithStartDate:v5 duration:0.0];
    [(STFetchUsageOperation *)self setDateInterval:v11];
  }

  v17 = objc_opt_new();
  [(STFetchUsageOperation *)self setLocalUsageReports:v17];

  v18 = objc_opt_new();
  [(STFetchUsageOperation *)self setAggregateUsageReports:v18];

  v19 = objc_opt_new();
  [(STFetchUsageOperation *)self setUsageReportsByCoreDuetIdentifier:v19];

  [(STFetchUsageOperation *)self _fetchNextReportAndEndWhenDone];
  os_activity_scope_leave(&v23);
}

- (id)_computeStartDate
{
  v3 = [(STFetchUsageOperation *)self referenceDate];
  v4 = [(STFetchUsageOperation *)self genesisDate];
  if ([v4 compare:v3] != 1)
  {
    v7 = [(STFetchUsageOperation *)self duration];
    v8 = [objc_opt_class() boundaryDateForDuration:v7 referenceDate:v3];
    v5 = v8;
    if (v4 && v8)
    {
      v9 = [v4 laterDate:v8];
    }

    else
    {
      if (v4)
      {
        v10 = v4;
      }

      else
      {
        v10 = v8;
      }

      v9 = v10;
    }

    v11 = v9;
    v12 = [(STFetchUsageOperation *)self lastStartDate];
    if (!v12)
    {
LABEL_17:
      v6 = v11;
LABEL_46:

      goto LABEL_47;
    }

    v13 = v12;
    if ([v12 compare:v3] == 1)
    {
      v14 = +[STLog usage];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100116A58();
      }

      goto LABEL_17;
    }

    v15 = [STCoreDuetUsageQuery earliestUsageEventStartDateCreatedSince:v13 whereStartDateIsOnOrAfter:v4 andEndDateOnOrBefore:v3];
    v16 = v15;
    if (v15 && [v15 compare:v3] == 1)
    {
      v17 = +[STLog usage];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1001169F0();
      }

      v16 = 0;
    }

    if (v7 == 1440)
    {
      v21 = +[NSCalendar currentCalendar];
      v22 = v13;
      v23 = v22;
      if (v16)
      {
        v24 = [v16 earlierDate:v22];
      }

      else
      {
        v24 = v22;
      }

      v27 = v24;

      v25 = [v21 startOfDayForDate:v27];
    }

    else
    {
      if (v7 != 60)
      {
        v25 = 0;
        if (!v11)
        {
          goto LABEL_41;
        }

LABEL_39:
        if (v25)
        {
          v30 = [v25 laterDate:v11];
LABEL_45:
          v6 = v30;

          goto LABEL_46;
        }

LABEL_41:
        if (v25)
        {
          v31 = v25;
        }

        else
        {
          v31 = v11;
        }

        v30 = v31;
        goto LABEL_45;
      }

      v18 = v13;
      v19 = v18;
      if (v16)
      {
        v20 = [v16 earlierDate:v18];
      }

      else
      {
        v20 = v18;
      }

      v26 = v20;

      v27 = v26;
      if (v27)
      {
        v28 = +[NSCalendar currentCalendar];
        v29 = [v28 components:60 fromDate:v27];
        v25 = [v28 dateFromComponents:v29];
      }

      else
      {
        v25 = 0;
      }

      v21 = v27;
    }

    if (!v11)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v5 = +[STLog usage];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100116AC0();
  }

  v6 = 0;
LABEL_47:

  return v6;
}

- (id)_queryIntervalsStartingAtDate:(id)a3
{
  v4 = a3;
  v5 = +[NSCalendar currentCalendar];
  v6 = v4;
  v7 = [(STFetchUsageOperation *)self referenceDate];
  v8 = [(STFetchUsageOperation *)self duration];
  if (v8 == 60)
  {
    v9 = 64;
  }

  else
  {
    v9 = 32 * (v8 == 1440);
  }

  v10 = objc_opt_new();
  v11 = v6;
  if ([v6 compare:v7] == -1)
  {
    v12 = v6;
    do
    {
      v11 = [v5 nextDateAfterDate:v12 matchingUnit:v9 value:0 options:1024];
      if ([v11 compare:v7] == 1)
      {
        v13 = v7;

        v11 = v13;
      }

      v14 = [v10 lastObject];
      [v11 timeIntervalSinceDate:v12];
      v16 = v15;
      if (!v14 || ([v14 partitionTimeInterval], v17 != v16))
      {
        v18 = [[STQueryInterval alloc] initWithStartDate:v12 partitionTimeInterval:v16];

        [v10 addObject:v18];
        v14 = v18;
      }

      [v14 setNumberOfPartitions:{objc_msgSend(v14, "numberOfPartitions") + 1}];

      v12 = v11;
    }

    while ([v11 compare:v7] == -1);
  }

  return v10;
}

- (void)_fetchNextReportAndEndWhenDone
{
  if ([(STFetchUsageOperation *)self isCanceled])
  {
    v27 = [NSError errorWithDomain:CATErrorDomain code:404 userInfo:0];
    [(STFetchUsageOperation *)self endOperationWithError:?];
  }

  else
  {
    v4 = [(STFetchUsageOperation *)self queryIntervals];
    if ([v4 count])
    {
      if ([(STFetchUsageOperation *)self forceRemoteDeviceSync]&& ([(STFetchUsageOperation *)self includeAggregateUsage]|| [(STFetchUsageOperation *)self includeRemoteUsage]))
      {
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10003E318;
        v30[3] = &unk_1001A4048;
        v31 = os_transaction_create();
        v5 = v31;
        [USUsageReporter synchronizeUsageWithCompletionHandler:v30];
      }

      v6 = [v4 firstObject];
      [v4 removeObjectAtIndex:0];
      [(STFetchedUsageResults *)v6 partitionTimeInterval];
      v8 = v7;
      v9 = [(STFetchedUsageResults *)v6 dateInterval];
      v10 = [(STFetchUsageOperation *)self usageReporter];
      if (!v10)
      {
        sub_100116B28(a2, self);
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10003E378;
      v29[3] = &unk_1001A4070;
      v29[4] = self;
      [v10 fetchReportsDuringInterval:v9 partitionInterval:v29 completionHandler:v8];
    }

    else
    {
      v11 = [STFetchedUsageResults alloc];
      v12 = [(STFetchUsageOperation *)self dateInterval];
      v13 = [(STFetchUsageOperation *)self duration];
      v14 = [(STFetchUsageOperation *)self localUsageReports];
      v15 = [(STFetchUsageOperation *)self usageReportsByCoreDuetIdentifier];
      v16 = [(STFetchUsageOperation *)self aggregateUsageReports];
      v6 = [(STFetchedUsageResults *)v11 initWithDateInterval:v12 partitionDurationInMinutes:v13 localUsageReports:v14 usageReportsByCoreDuetIdentifier:v15 aggregateUsageReports:v16];

      v17 = +[STLog usage];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [(STFetchUsageOperation *)self localUsageReports];
        v18 = [v28 count];
        v26 = [(STFetchUsageOperation *)self aggregateUsageReports];
        v19 = &v18[[v26 count]];
        v25 = [(STFetchUsageOperation *)self aggregateUsageReports];
        if ([v25 count])
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v21 = [(STFetchUsageOperation *)self dateInterval];
        v22 = [v21 startDate];
        v23 = [(STFetchUsageOperation *)self dateInterval];
        v24 = [v23 endDate];
        *buf = 134218754;
        v33 = v19;
        v34 = 2112;
        v35 = v20;
        v36 = 2112;
        v37 = v22;
        v38 = 2112;
        v39 = v24;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetched %lu reports - contains aggregate: %@ - start date: %@ - end date: %@", buf, 0x2Au);
      }

      [(STFetchUsageOperation *)self endOperationWithResultObject:v6];
    }
  }
}

- (void)_recordLocalUsageReports:(id)a3 usageReportsByCoreDuetIdentifier:(id)a4 aggregateUsageReports:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(STFetchUsageOperation *)self localUsageReports];
  [v11 addObjectsFromArray:v10];

  if ([(STFetchUsageOperation *)self includeAggregateUsage])
  {
    v12 = [(STFetchUsageOperation *)self aggregateUsageReports];
    [v12 addObjectsFromArray:v9];
  }

  if ([(STFetchUsageOperation *)self includeRemoteUsage])
  {
    [(STFetchUsageOperation *)self usageReportsByCoreDuetIdentifier];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003E510;
    v15 = v14[3] = &unk_1001A4098;
    v13 = v15;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];
  }
}

@end