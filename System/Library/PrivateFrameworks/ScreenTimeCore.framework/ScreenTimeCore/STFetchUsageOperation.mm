@interface STFetchUsageOperation
+ (id)boundaryDateForDuration:(int64_t)duration referenceDate:(id)date;
- (STFetchUsageOperation)initWithGenesisDate:(id)date lastStartDate:(id)startDate referenceDate:(id)referenceDate includeAggregateUsage:(BOOL)usage includeRemoteUsage:(BOOL)remoteUsage forceRemoteDeviceSync:(BOOL)sync duration:(int64_t)duration;
- (id)_computeStartDate;
- (id)_queryIntervalsStartingAtDate:(id)date;
- (void)_fetchNextReportAndEndWhenDone;
- (void)_recordLocalUsageReports:(id)reports usageReportsByCoreDuetIdentifier:(id)identifier aggregateUsageReports:(id)usageReports;
- (void)main;
@end

@implementation STFetchUsageOperation

- (STFetchUsageOperation)initWithGenesisDate:(id)date lastStartDate:(id)startDate referenceDate:(id)referenceDate includeAggregateUsage:(BOOL)usage includeRemoteUsage:(BOOL)remoteUsage forceRemoteDeviceSync:(BOOL)sync duration:(int64_t)duration
{
  dateCopy = date;
  startDateCopy = startDate;
  referenceDateCopy = referenceDate;
  v26.receiver = self;
  v26.super_class = STFetchUsageOperation;
  v18 = [(STOperation *)&v26 init];
  if (v18)
  {
    v19 = [dateCopy copy];
    genesisDate = v18->_genesisDate;
    v18->_genesisDate = v19;

    v21 = [startDateCopy copy];
    lastStartDate = v18->_lastStartDate;
    v18->_lastStartDate = v21;

    v23 = [referenceDateCopy copy];
    referenceDate = v18->_referenceDate;
    v18->_referenceDate = v23;

    v18->_includeAggregateUsage = usage;
    v18->_includeRemoteUsage = remoteUsage;
    v18->_forceRemoteDeviceSync = sync;
    v18->_duration = duration;
  }

  return v18;
}

+ (id)boundaryDateForDuration:(int64_t)duration referenceDate:(id)date
{
  dateCopy = date;
  v6 = +[NSCalendar currentCalendar];
  v7 = [v6 startOfDayForDate:dateCopy];
  if (duration == 1440)
  {
    v10 = [v6 dateByAddingUnit:16 value:-120 toDate:v7 options:260];
  }

  else if (duration == 60)
  {
    v8 = [v6 dateByAddingUnit:0x2000 value:-4 toDate:dateCopy options:4];
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

  referenceDate = [(STFetchUsageOperation *)self referenceDate];
  if (!referenceDate)
  {
    referenceDate = objc_opt_new();
    [(STFetchUsageOperation *)self setReferenceDate:referenceDate];
  }

  _computeStartDate = [(STFetchUsageOperation *)self _computeStartDate];
  v7 = [(STFetchUsageOperation *)self _queryIntervalsStartingAtDate:_computeStartDate];
  v8 = objc_opt_new();
  [(STFetchUsageOperation *)self setUsageReporter:v8];

  [(STFetchUsageOperation *)self setQueryIntervals:v7];
  if ([v7 count])
  {
    firstObject = [v7 firstObject];
    dateInterval = [firstObject dateInterval];
    startDate = [dateInterval startDate];

    lastObject = [v7 lastObject];
    dateInterval2 = [lastObject dateInterval];
    endDate = [dateInterval2 endDate];

    v15 = [[NSDateInterval alloc] initWithStartDate:startDate endDate:endDate];
    [(STFetchUsageOperation *)self setDateInterval:v15];
  }

  else
  {
    v16 = +[STLog persistence];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      genesisDate = [(STFetchUsageOperation *)self genesisDate];
      lastStartDate = [(STFetchUsageOperation *)self lastStartDate];
      referenceDate2 = [(STFetchUsageOperation *)self referenceDate];
      *buf = 138543874;
      v25 = genesisDate;
      v26 = 2114;
      v27 = lastStartDate;
      v28 = 2114;
      v29 = referenceDate2;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Can't figure out query intervals. genesisDate = %{public}@, lastStartDate = %{public}@, referenceDate = %{public}@", buf, 0x20u);
    }

    startDate = [[NSDateInterval alloc] initWithStartDate:referenceDate duration:0.0];
    [(STFetchUsageOperation *)self setDateInterval:startDate];
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
  referenceDate = [(STFetchUsageOperation *)self referenceDate];
  genesisDate = [(STFetchUsageOperation *)self genesisDate];
  if ([genesisDate compare:referenceDate] != 1)
  {
    duration = [(STFetchUsageOperation *)self duration];
    v8 = [objc_opt_class() boundaryDateForDuration:duration referenceDate:referenceDate];
    v5 = v8;
    if (genesisDate && v8)
    {
      v9 = [genesisDate laterDate:v8];
    }

    else
    {
      if (genesisDate)
      {
        v10 = genesisDate;
      }

      else
      {
        v10 = v8;
      }

      v9 = v10;
    }

    v11 = v9;
    lastStartDate = [(STFetchUsageOperation *)self lastStartDate];
    if (!lastStartDate)
    {
LABEL_17:
      v6 = v11;
LABEL_46:

      goto LABEL_47;
    }

    v13 = lastStartDate;
    if ([lastStartDate compare:referenceDate] == 1)
    {
      v14 = +[STLog usage];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100116A58();
      }

      goto LABEL_17;
    }

    v15 = [STCoreDuetUsageQuery earliestUsageEventStartDateCreatedSince:v13 whereStartDateIsOnOrAfter:genesisDate andEndDateOnOrBefore:referenceDate];
    v16 = v15;
    if (v15 && [v15 compare:referenceDate] == 1)
    {
      v17 = +[STLog usage];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1001169F0();
      }

      v16 = 0;
    }

    if (duration == 1440)
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
      if (duration != 60)
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

- (id)_queryIntervalsStartingAtDate:(id)date
{
  dateCopy = date;
  v5 = +[NSCalendar currentCalendar];
  v6 = dateCopy;
  referenceDate = [(STFetchUsageOperation *)self referenceDate];
  duration = [(STFetchUsageOperation *)self duration];
  if (duration == 60)
  {
    v9 = 64;
  }

  else
  {
    v9 = 32 * (duration == 1440);
  }

  v10 = objc_opt_new();
  v11 = v6;
  if ([v6 compare:referenceDate] == -1)
  {
    v12 = v6;
    do
    {
      v11 = [v5 nextDateAfterDate:v12 matchingUnit:v9 value:0 options:1024];
      if ([v11 compare:referenceDate] == 1)
      {
        v13 = referenceDate;

        v11 = v13;
      }

      lastObject = [v10 lastObject];
      [v11 timeIntervalSinceDate:v12];
      v16 = v15;
      if (!lastObject || ([lastObject partitionTimeInterval], v17 != v16))
      {
        v18 = [[STQueryInterval alloc] initWithStartDate:v12 partitionTimeInterval:v16];

        [v10 addObject:v18];
        lastObject = v18;
      }

      [lastObject setNumberOfPartitions:{objc_msgSend(lastObject, "numberOfPartitions") + 1}];

      v12 = v11;
    }

    while ([v11 compare:referenceDate] == -1);
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
    queryIntervals = [(STFetchUsageOperation *)self queryIntervals];
    if ([queryIntervals count])
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

      firstObject = [queryIntervals firstObject];
      [queryIntervals removeObjectAtIndex:0];
      [(STFetchedUsageResults *)firstObject partitionTimeInterval];
      v8 = v7;
      dateInterval = [(STFetchedUsageResults *)firstObject dateInterval];
      usageReporter = [(STFetchUsageOperation *)self usageReporter];
      if (!usageReporter)
      {
        sub_100116B28(a2, self);
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_10003E378;
      v29[3] = &unk_1001A4070;
      v29[4] = self;
      [usageReporter fetchReportsDuringInterval:dateInterval partitionInterval:v29 completionHandler:v8];
    }

    else
    {
      v11 = [STFetchedUsageResults alloc];
      dateInterval2 = [(STFetchUsageOperation *)self dateInterval];
      duration = [(STFetchUsageOperation *)self duration];
      localUsageReports = [(STFetchUsageOperation *)self localUsageReports];
      usageReportsByCoreDuetIdentifier = [(STFetchUsageOperation *)self usageReportsByCoreDuetIdentifier];
      aggregateUsageReports = [(STFetchUsageOperation *)self aggregateUsageReports];
      firstObject = [(STFetchedUsageResults *)v11 initWithDateInterval:dateInterval2 partitionDurationInMinutes:duration localUsageReports:localUsageReports usageReportsByCoreDuetIdentifier:usageReportsByCoreDuetIdentifier aggregateUsageReports:aggregateUsageReports];

      v17 = +[STLog usage];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        localUsageReports2 = [(STFetchUsageOperation *)self localUsageReports];
        v18 = [localUsageReports2 count];
        aggregateUsageReports2 = [(STFetchUsageOperation *)self aggregateUsageReports];
        v19 = &v18[[aggregateUsageReports2 count]];
        aggregateUsageReports3 = [(STFetchUsageOperation *)self aggregateUsageReports];
        if ([aggregateUsageReports3 count])
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        dateInterval3 = [(STFetchUsageOperation *)self dateInterval];
        startDate = [dateInterval3 startDate];
        dateInterval4 = [(STFetchUsageOperation *)self dateInterval];
        endDate = [dateInterval4 endDate];
        *buf = 134218754;
        v33 = v19;
        v34 = 2112;
        v35 = v20;
        v36 = 2112;
        v37 = startDate;
        v38 = 2112;
        v39 = endDate;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetched %lu reports - contains aggregate: %@ - start date: %@ - end date: %@", buf, 0x2Au);
      }

      [(STFetchUsageOperation *)self endOperationWithResultObject:firstObject];
    }
  }
}

- (void)_recordLocalUsageReports:(id)reports usageReportsByCoreDuetIdentifier:(id)identifier aggregateUsageReports:(id)usageReports
{
  identifierCopy = identifier;
  usageReportsCopy = usageReports;
  reportsCopy = reports;
  localUsageReports = [(STFetchUsageOperation *)self localUsageReports];
  [localUsageReports addObjectsFromArray:reportsCopy];

  if ([(STFetchUsageOperation *)self includeAggregateUsage])
  {
    aggregateUsageReports = [(STFetchUsageOperation *)self aggregateUsageReports];
    [aggregateUsageReports addObjectsFromArray:usageReportsCopy];
  }

  if ([(STFetchUsageOperation *)self includeRemoteUsage])
  {
    [(STFetchUsageOperation *)self usageReportsByCoreDuetIdentifier];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003E510;
    v15 = v14[3] = &unk_1001A4098;
    v13 = v15;
    [identifierCopy enumerateKeysAndObjectsUsingBlock:v14];
  }
}

@end