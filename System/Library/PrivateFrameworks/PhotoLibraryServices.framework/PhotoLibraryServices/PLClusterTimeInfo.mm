@interface PLClusterTimeInfo
- (BOOL)utcDateBelongsInCluster:(id)a3;
- (PLClusterTimeInfo)initWithCalendar:(id)a3;
- (void)_updateTimestampsWithUTCDate:(id)a3 localDate:(id)a4;
- (void)reset;
- (void)updateWithUTCDate:(id)a3 localDate:(id)a4;
@end

@implementation PLClusterTimeInfo

- (BOOL)utcDateBelongsInCluster:(id)a3
{
  v4 = a3;
  [v4 timeIntervalSinceReferenceDate];
  if (self->_latestUTCDate && v5 > self->_endOfSameDayTimestamp)
  {
    if (v5 <= self->_maximumNextDayTimestamp)
    {
      [v4 timeIntervalSinceDate:?];
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

- (void)updateWithUTCDate:(id)a3 localDate:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    latestUTCDate = self->_latestUTCDate;
    objc_storeStrong(&self->_latestUTCDate, a3);
    if (!latestUTCDate)
    {
      [(PLClusterTimeInfo *)self _updateTimestampsWithUTCDate:v7 localDate:v9];
    }
  }

  else
  {
    v11 = PLMomentsGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Trying to update cluster time info with nil date. utcDate: %@, localDate: %@", &v12, 0x16u);
    }
  }
}

- (void)_updateTimestampsWithUTCDate:(id)a3 localDate:(id)a4
{
  v7 = self->_calendar;
  v8 = a4;
  [v8 timeIntervalSinceDate:a3];
  v10 = v9;
  v15 = [(NSCalendar *)v7 pl_endOfDayForDate:v8];
  [v15 timeIntervalSinceReferenceDate];
  self->_endOfSameDayTimestamp = v11 - v10;
  v12 = [(NSCalendar *)v7 pl_startOfNextDayForDate:v8];

  v13 = [v12 dateByAddingTimeInterval:28800.0];
  [v13 timeIntervalSinceReferenceDate];
  self->_maximumNextDayTimestamp = v14 - v10;
}

- (void)reset
{
  latestUTCDate = self->_latestUTCDate;
  self->_latestUTCDate = 0;
}

- (PLClusterTimeInfo)initWithCalendar:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLClusterTimeInfo;
  v6 = [(PLClusterTimeInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calendar, a3);
  }

  return v7;
}

@end