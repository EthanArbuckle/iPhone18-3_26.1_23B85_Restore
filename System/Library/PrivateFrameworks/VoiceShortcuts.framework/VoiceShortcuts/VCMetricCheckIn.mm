@interface VCMetricCheckIn
+ (id)recentCheckInWithMode:(int64_t)mode;
- (BOOL)isCheckInAllowed;
- (NSDate)checkInDate;
- (NSDate)intervalStartDate;
- (VCMetricCheckIn)initWithCurrentDate:(id)date mode:(int64_t)mode defaults:(id)defaults;
- (id)checkInKey;
- (void)updateCheckInToNow;
@end

@implementation VCMetricCheckIn

- (id)checkInKey
{
  v11 = *MEMORY[0x277D85DE8];
  mode = [(VCMetricCheckIn *)self mode];
  if (mode == 1)
  {
    result = @"VCDailyMetricCheckInLastCheckInKey";
  }

  else if (mode == 2)
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
      mode2 = [(VCMetricCheckIn *)self mode];
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
  mode = [(VCMetricCheckIn *)self mode];
  if (mode == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (mode == 2)
  {
    v4 = 0x2000;
LABEL_5:
    calendar = [(VCMetricCheckIn *)self calendar];
    currentDate = [(VCMetricCheckIn *)self currentDate];
    currentDate2 = [calendar dateByAddingUnit:v4 value:-1 toDate:currentDate options:0];

    goto LABEL_9;
  }

  v8 = getWFEventTrackerLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v11 = 136315394;
    v12 = "[VCMetricCheckIn intervalStartDate]";
    v13 = 2048;
    mode2 = [(VCMetricCheckIn *)self mode];
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_FAULT, "%s Invalid metric check in mode %lu", &v11, 0x16u);
  }

  currentDate2 = [(VCMetricCheckIn *)self currentDate];
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];

  return currentDate2;
}

- (NSDate)checkInDate
{
  userDefaults = [(VCMetricCheckIn *)self userDefaults];
  checkInKey = [(VCMetricCheckIn *)self checkInKey];
  v5 = [userDefaults objectForKey:checkInKey];

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
  userDefaults = [(VCMetricCheckIn *)self userDefaults];
  currentDate = [(VCMetricCheckIn *)self currentDate];
  checkInKey = [(VCMetricCheckIn *)self checkInKey];
  [userDefaults setObject:currentDate forKey:checkInKey];
}

- (BOOL)isCheckInAllowed
{
  v17 = *MEMORY[0x277D85DE8];
  checkInDate = [(VCMetricCheckIn *)self checkInDate];

  if (checkInDate)
  {
    mode = [(VCMetricCheckIn *)self mode];
    if (mode == 1)
    {
      v5 = 16;
      goto LABEL_7;
    }

    if (mode == 2)
    {
      v5 = 0x2000;
LABEL_7:
      calendar = [(VCMetricCheckIn *)self calendar];
      currentDate = [(VCMetricCheckIn *)self currentDate];
      checkInDate2 = [(VCMetricCheckIn *)self checkInDate];
      v6 = [calendar compareDate:currentDate toDate:checkInDate2 toUnitGranularity:v5] == 1;

      goto LABEL_11;
    }

    v10 = getWFEventTrackerLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315394;
      v14 = "[VCMetricCheckIn isCheckInAllowed]";
      v15 = 2048;
      mode2 = [(VCMetricCheckIn *)self mode];
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

- (VCMetricCheckIn)initWithCurrentDate:(id)date mode:(int64_t)mode defaults:(id)defaults
{
  dateCopy = date;
  defaultsCopy = defaults;
  v15.receiver = self;
  v15.super_class = VCMetricCheckIn;
  v11 = [(VCMetricCheckIn *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_mode = mode;
    objc_storeStrong(&v11->_currentDate, date);
    objc_storeStrong(&v12->_userDefaults, defaults);
    v13 = v12;
  }

  return v12;
}

+ (id)recentCheckInWithMode:(int64_t)mode
{
  v4 = [self alloc];
  date = [MEMORY[0x277CBEAA8] date];
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v7 = [v4 initWithCurrentDate:date mode:mode defaults:workflowUserDefaults];

  return v7;
}

@end