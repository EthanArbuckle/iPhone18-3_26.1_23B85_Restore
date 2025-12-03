@interface PLClusterTimeInfo
- (BOOL)utcDateBelongsInCluster:(id)cluster;
- (PLClusterTimeInfo)initWithCalendar:(id)calendar;
- (void)_updateTimestampsWithUTCDate:(id)date localDate:(id)localDate;
- (void)reset;
- (void)updateWithUTCDate:(id)date localDate:(id)localDate;
@end

@implementation PLClusterTimeInfo

- (BOOL)utcDateBelongsInCluster:(id)cluster
{
  clusterCopy = cluster;
  [clusterCopy timeIntervalSinceReferenceDate];
  if (self->_latestUTCDate && v5 > self->_endOfSameDayTimestamp)
  {
    if (v5 <= self->_maximumNextDayTimestamp)
    {
      [clusterCopy timeIntervalSinceDate:?];
      v6 = v8 <= 10800.0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)updateWithUTCDate:(id)date localDate:(id)localDate
{
  v16 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  localDateCopy = localDate;
  v9 = localDateCopy;
  if (dateCopy && localDateCopy)
  {
    latestUTCDate = self->_latestUTCDate;
    objc_storeStrong(&self->_latestUTCDate, date);
    if (!latestUTCDate)
    {
      [(PLClusterTimeInfo *)self _updateTimestampsWithUTCDate:dateCopy localDate:v9];
    }
  }

  else
  {
    v11 = PLMomentsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = dateCopy;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Trying to update cluster time info with nil date. utcDate: %@, localDate: %@", &v12, 0x16u);
    }
  }
}

- (void)_updateTimestampsWithUTCDate:(id)date localDate:(id)localDate
{
  v7 = self->_calendar;
  localDateCopy = localDate;
  [localDateCopy timeIntervalSinceDate:date];
  v10 = v9;
  v15 = [(NSCalendar *)v7 pl_endOfDayForDate:localDateCopy];
  [v15 timeIntervalSinceReferenceDate];
  self->_endOfSameDayTimestamp = v11 - v10;
  v12 = [(NSCalendar *)v7 pl_startOfNextDayForDate:localDateCopy];

  v13 = [v12 dateByAddingTimeInterval:28800.0];
  [v13 timeIntervalSinceReferenceDate];
  self->_maximumNextDayTimestamp = v14 - v10;
}

- (void)reset
{
  latestUTCDate = self->_latestUTCDate;
  self->_latestUTCDate = 0;
}

- (PLClusterTimeInfo)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v9.receiver = self;
  v9.super_class = PLClusterTimeInfo;
  v6 = [(PLClusterTimeInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendar, calendar);
  }

  return v7;
}

@end