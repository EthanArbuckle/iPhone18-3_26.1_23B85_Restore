@interface VCMetricCheckIn
+ (id)recentCheckInWithMode:(int64_t)a3;
- (BOOL)isCheckInAllowed;
- (NSDate)checkInDate;
- (NSDate)intervalStartDate;
- (VCMetricCheckIn)initWithCurrentDate:(id)a3 mode:(int64_t)a4 defaults:(id)a5;
- (id)checkInKey;
- (void)updateCheckInToNow;
@end

@implementation VCMetricCheckIn

- (id)checkInKey
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(VCMetricCheckIn *)self mode];
  if (v3 == 1)
  {
    result = @"VCDailyMetricCheckInLastCheckInKey";
  }

  else if (v3 == 2)
  {
    result = @"VCWeeklyMetricCheckInLastCheckInKey";
  }

  else
  {
    v5 = getWFEventTrackerLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315394;
      v8 = "[VCMetricCheckIn checkInKey]";
      v9 = 2048;
      v10 = [(VCMetricCheckIn *)self mode];
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_FAULT, "%s Invalid metric check in mode %lu", &v7, 0x16u);
    }

    result = @"fiddlesticks";
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSDate)intervalStartDate
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(VCMetricCheckIn *)self mode];
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = 0x2000;
LABEL_5:
    v5 = [(VCMetricCheckIn *)self calendar];
    v6 = [(VCMetricCheckIn *)self currentDate];
    v7 = [v5 dateByAddingUnit:v4 value:-1 toDate:v6 options:0];

    goto LABEL_9;
  }

  v8 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v11 = 136315394;
    v12 = "[VCMetricCheckIn intervalStartDate]";
    v13 = 2048;
    v14 = [(VCMetricCheckIn *)self mode];
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_FAULT, "%s Invalid metric check in mode %lu", &v11, 0x16u);
  }

  v7 = [(VCMetricCheckIn *)self currentDate];
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSDate)checkInDate
{
  v3 = [(VCMetricCheckIn *)self userDefaults];
  v4 = [(VCMetricCheckIn *)self checkInKey];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)updateCheckInToNow
{
  v5 = [(VCMetricCheckIn *)self userDefaults];
  v3 = [(VCMetricCheckIn *)self currentDate];
  v4 = [(VCMetricCheckIn *)self checkInKey];
  [v5 setObject:v3 forKey:v4];
}

- (BOOL)isCheckInAllowed
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(VCMetricCheckIn *)self checkInDate];

  if (v3)
  {
    v4 = [(VCMetricCheckIn *)self mode];
    if (v4 == 1)
    {
      v5 = 16;
      goto LABEL_7;
    }

    if (v4 == 2)
    {
      v5 = 0x2000;
LABEL_7:
      v7 = [(VCMetricCheckIn *)self calendar];
      v8 = [(VCMetricCheckIn *)self currentDate];
      v9 = [(VCMetricCheckIn *)self checkInDate];
      v6 = [v7 compareDate:v8 toDate:v9 toUnitGranularity:v5] == 1;

      goto LABEL_11;
    }

    v10 = getWFEventTrackerLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315394;
      v14 = "[VCMetricCheckIn isCheckInAllowed]";
      v15 = 2048;
      v16 = [(VCMetricCheckIn *)self mode];
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_FAULT, "%s Invalid metric check in mode %lu", &v13, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (VCMetricCheckIn)initWithCurrentDate:(id)a3 mode:(int64_t)a4 defaults:(id)a5
{
  v9 = a3;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = VCMetricCheckIn;
  v11 = [(VCMetricCheckIn *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_mode = a4;
    objc_storeStrong(&v11->_currentDate, a3);
    objc_storeStrong(&v12->_userDefaults, a5);
    v13 = v12;
  }

  return v12;
}

+ (id)recentCheckInWithMode:(int64_t)a3
{
  v4 = [a1 alloc];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v7 = [v4 initWithCurrentDate:v5 mode:a3 defaults:v6];

  return v7;
}

@end