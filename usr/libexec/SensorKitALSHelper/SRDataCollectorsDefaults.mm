@interface SRDataCollectorsDefaults
- (BMBookmarkNode)deviceUsageReportServiceDataSessionPublisherBookmark;
- (BMBookmarkNode)deviceUsageReportSessionPublisherBookmark;
- (BMBookmarkNode)sleepSessionsBookmark;
- (BMStoreEvent)lastDeviceUsageActivityLevelEvent;
- (BMStoreEvent)lastDeviceUsageMotionActivityEvent;
- (NSDate)lastDeviceUsageQueryDate;
- (NSDate)lastMediaEventsQueryDate;
- (NSDate)lastMessagesUsageQueryDate;
- (NSDate)lastPhoneUsageQueryDate;
- (NSDate)lastVisitsQueryDate;
- (SRDataCollectorsDefaults)init;
- (SRDataCollectorsDefaults)initWithDefaults:(id)defaults;
- (id)localObjectForKey:(id)key ofClass:(Class)class;
- (void)dealloc;
- (void)setLocalObject:(id)object forKey:(id)key;
- (void)setMessagesUsageReportInterval:(double)interval;
- (void)setPhoneUsageReportInterval:(double)interval;
- (void)setQueryIntervalShift:(double)shift;
- (void)setVisitsQueryIntervalShift:(double)shift;
@end

@implementation SRDataCollectorsDefaults

- (SRDataCollectorsDefaults)init
{
  v3 = +[NSUserDefaults standardUserDefaults];

  return [(SRDataCollectorsDefaults *)self initWithDefaults:v3];
}

- (SRDataCollectorsDefaults)initWithDefaults:(id)defaults
{
  v14.receiver = self;
  v14.super_class = SRDataCollectorsDefaults;
  v4 = [(SRDataCollectorsDefaults *)&v14 init];
  if (v4)
  {
    defaultsCopy = defaults;
    v4->_defaults = defaultsCopy;
    v25 = @"queryIntervalShift";
    v26 = [NSNumber numberWithDouble:3600.0];
    [(NSUserDefaults *)defaultsCopy registerDefaults:[NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1]];
    defaults = v4->_defaults;
    v23 = @"roundingEnabled";
    v24 = [NSNumber numberWithBool:1];
    [(NSUserDefaults *)defaults registerDefaults:[NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1]];
    v7 = v4->_defaults;
    v21 = @"queryIntervalDuration";
    v22 = [NSNumber numberWithDouble:28800.0];
    [(NSUserDefaults *)v7 registerDefaults:[NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1]];
    v8 = v4->_defaults;
    v19 = @"phoneUsageReportInterval";
    v20 = [NSNumber numberWithDouble:86400.0];
    [(NSUserDefaults *)v8 registerDefaults:[NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1]];
    v9 = v4->_defaults;
    v17 = @"messagesUsageReportInterval";
    v18 = [NSNumber numberWithDouble:1800.0];
    [(NSUserDefaults *)v9 registerDefaults:[NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1]];
    v10 = v4->_defaults;
    v15 = @"kVisitsQueryWindowShiftKey";
    v16 = &off_100027148;
    [(NSUserDefaults *)v10 registerDefaults:[NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1]];
    lastInteractionHistoryQueryDate = [(SRDataCollectorsDefaults *)v4 lastInteractionHistoryQueryDate];
    if (lastInteractionHistoryQueryDate)
    {
      v12 = lastInteractionHistoryQueryDate;
      [(SRDataCollectorsDefaults *)v4 setLastPhoneUsageQueryDate:lastInteractionHistoryQueryDate];
      [(SRDataCollectorsDefaults *)v4 setLastMessagesUsageQueryDate:v12];
      [(SRDataCollectorsDefaults *)v4 setLastInteractionHistoryQueryDate:0];
    }
  }

  return v4;
}

- (void)dealloc
{
  [(SRDataCollectorsDefaults *)self setDefaults:0];
  v3.receiver = self;
  v3.super_class = SRDataCollectorsDefaults;
  [(SRDataCollectorsDefaults *)&v3 dealloc];
}

- (id)localObjectForKey:(id)key ofClass:(Class)class
{
  v6 = [(NSUserDefaults *)self->_defaults dictionaryForKey:?];
  if (!v6)
  {
    if (qword_10002B2C0 != -1)
    {
      dispatch_once(&qword_10002B2C0, &stru_100024D00);
    }

    v12 = qword_10002B2C8;
    if (!os_log_type_enabled(qword_10002B2C8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412290;
    keyCopy3 = key;
    v13 = "Could not read %@ from defaults.";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, buf, 0xCu);
    return 0;
  }

  v7 = v6;
  v8 = [(NSDictionary *)v6 objectForKeyedSubscript:@"deviceID"];
  if (qword_10002B2D0 != -1)
  {
    dispatch_once(&qword_10002B2D0, &stru_100024D20);
  }

  if (![v8 isEqualToString:qword_10002B2D8])
  {
    if (qword_10002B2C0 != -1)
    {
      dispatch_once(&qword_10002B2C0, &stru_100024D00);
    }

    v12 = qword_10002B2C8;
    if (!os_log_type_enabled(qword_10002B2C8, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412290;
    keyCopy3 = key;
    v13 = "%@ value was stored on another device. Discarded.";
    goto LABEL_20;
  }

  v15 = 0;
  v9 = [NSKeyedUnarchiver unarchivedObjectOfClass:class fromData:[(NSDictionary *)v7 objectForKeyedSubscript:key] error:&v15];
  if (v15 || (v10 = v9) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_10002B2C0 != -1)
    {
      dispatch_once(&qword_10002B2C0, &stru_100024D00);
    }

    v11 = qword_10002B2C8;
    if (os_log_type_enabled(qword_10002B2C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      keyCopy3 = key;
      v18 = 2112;
      v19 = v15;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to unarchive %@ because %@", buf, 0x16u);
    }

    return 0;
  }

  return v10;
}

- (void)setLocalObject:(id)object forKey:(id)key
{
  if (qword_10002B2D0 == -1)
  {
    if (!object)
    {
      goto LABEL_12;
    }
  }

  else
  {
    dispatch_once(&qword_10002B2D0, &stru_100024D20);
    if (!object)
    {
      goto LABEL_12;
    }
  }

  v7 = qword_10002B2D8;
  if (qword_10002B2D8)
  {
    v14 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:object requiringSecureCoding:1 error:&v14];
    if (!v14 && v8)
    {
      v15[0] = @"deviceID";
      v15[1] = key;
      v16[0] = v7;
      v16[1] = v8;
      [(NSUserDefaults *)self->_defaults setObject:[NSDictionary forKey:"dictionaryWithObjects:forKeys:count:" dictionaryWithObjects:v16 forKeys:v15 count:2], key];
      return;
    }

    if (qword_10002B2C0 != -1)
    {
      dispatch_once(&qword_10002B2C0, &stru_100024D00);
    }

    v9 = qword_10002B2C8;
    if (os_log_type_enabled(qword_10002B2C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      keyCopy2 = key;
      v19 = 2112;
      v20 = v14;
      v10 = "Failed to serilize %@ because %@";
      v11 = v9;
      v12 = 22;
LABEL_17:
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      return;
    }

    return;
  }

LABEL_12:
  if (qword_10002B2C0 != -1)
  {
    dispatch_once(&qword_10002B2C0, &stru_100024D00);
  }

  v13 = qword_10002B2C8;
  if (os_log_type_enabled(qword_10002B2C8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    keyCopy2 = key;
    v10 = "Failed to save %@ to defaults. Invalid parameters.";
    v11 = v13;
    v12 = 12;
    goto LABEL_17;
  }
}

- (NSDate)lastDeviceUsageQueryDate
{
  [(NSUserDefaults *)self->_defaults doubleForKey:@"queryIntervalShift"];
  v4 = v3;
  v5 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() + -604800.0 - v3, 0.0)];
  v6 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastDeviceUsageQueryDate"];
  if (!v6)
  {
    v6 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() + -86400.0 - v4, 0.0)];
  }

  return [(NSDate *)v6 laterDate:v5];
}

- (void)setQueryIntervalShift:(double)shift
{
  if (shift >= 0.0)
  {
    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setDouble:@"queryIntervalShift" forKey:?];
  }

  else
  {
    if (qword_10002B2C0 != -1)
    {
      dispatch_once(&qword_10002B2C0, &stru_100024D00);
    }

    v4 = qword_10002B2C8;
    if (os_log_type_enabled(qword_10002B2C8, OS_LOG_TYPE_ERROR))
    {
      v6 = 134218240;
      shiftCopy = shift;
      v8 = 2048;
      v9 = 0x40AC200000000000;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Negative value (%f) for query shift is not supported. Valid range is [0..n] seconds. Default value is %f seconds.", &v6, 0x16u);
    }
  }
}

- (BMStoreEvent)lastDeviceUsageActivityLevelEvent
{
  v3 = objc_opt_class();

  return [(SRDataCollectorsDefaults *)self localObjectForKey:@"lastDeviceUsageActivityLevelEvent" ofClass:v3];
}

- (BMStoreEvent)lastDeviceUsageMotionActivityEvent
{
  v3 = objc_opt_class();

  return [(SRDataCollectorsDefaults *)self localObjectForKey:@"lastDeviceUsageMotionActivityEvent" ofClass:v3];
}

- (BMBookmarkNode)deviceUsageReportSessionPublisherBookmark
{
  v3 = objc_opt_class();

  return [(SRDataCollectorsDefaults *)self localObjectForKey:@"deviceUsageReportSessionPublisherBookmark" ofClass:v3];
}

- (BMBookmarkNode)deviceUsageReportServiceDataSessionPublisherBookmark
{
  v3 = objc_opt_class();

  return [(SRDataCollectorsDefaults *)self localObjectForKey:@"deviceUsageReportServiceDataSessionPublisherBookmark" ofClass:v3];
}

- (void)setPhoneUsageReportInterval:(double)interval
{
  if (interval >= 0.0)
  {
    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setDouble:@"phoneUsageReportInterval" forKey:?];
  }

  else
  {
    if (qword_10002B2C0 != -1)
    {
      dispatch_once(&qword_10002B2C0, &stru_100024D00);
    }

    v4 = qword_10002B2C8;
    if (os_log_type_enabled(qword_10002B2C8, OS_LOG_TYPE_ERROR))
    {
      v6 = 134218240;
      intervalCopy = interval;
      v8 = 2048;
      v9 = 0x40F5180000000000;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Negative value (%f) for phone usage report interval is not supported. Valid range is [0..n] seconds. Default value is %f seconds.", &v6, 0x16u);
    }
  }
}

- (NSDate)lastPhoneUsageQueryDate
{
  v3 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() + -604800.0, 0.0)];
  v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastPhoneUsageQueryDate"];
  if (!v4)
  {
    v4 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() + -86400.0, 0.0)];
  }

  sr_localMidnightFollowingDate = [(NSDate *)v4 laterDate:v3];
  if (![(SRDataCollectorsDefaults *)self bypassQueryFromMidnightToMidnight])
  {
    v6 = [NSDate dateWithSRAbsoluteTime:0.0];
    sr_localMidnightPriorToDate = [(NSDate *)sr_localMidnightFollowingDate sr_localMidnightPriorToDate];
    sr_localMidnightFollowingDate = [(NSDate *)sr_localMidnightFollowingDate sr_localMidnightFollowingDate];
    if ([(NSDate *)v6 compare:sr_localMidnightPriorToDate]== NSOrderedAscending)
    {
      return sr_localMidnightPriorToDate;
    }
  }

  return sr_localMidnightFollowingDate;
}

- (void)setMessagesUsageReportInterval:(double)interval
{
  if (interval >= 0.0)
  {
    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setDouble:@"messagesUsageReportInterval" forKey:?];
  }

  else
  {
    if (qword_10002B2C0 != -1)
    {
      dispatch_once(&qword_10002B2C0, &stru_100024D00);
    }

    v4 = qword_10002B2C8;
    if (os_log_type_enabled(qword_10002B2C8, OS_LOG_TYPE_ERROR))
    {
      v6 = 134218240;
      intervalCopy = interval;
      v8 = 2048;
      v9 = 0x409C200000000000;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Negative value (%f) for messages usage report interval is not supported. Valid range is [0..n] seconds. Default value is %f seconds.", &v6, 0x16u);
    }
  }
}

- (NSDate)lastMessagesUsageQueryDate
{
  v3 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() + -604800.0, 0.0)];
  v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastMessagesUsageQueryDate"];
  if (!v4)
  {
    v4 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() + -86400.0, 0.0)];
  }

  sr_localMidnightFollowingDate = [(NSDate *)v4 laterDate:v3];
  if (![(SRDataCollectorsDefaults *)self bypassQueryFromMidnightToMidnight])
  {
    v6 = [NSDate dateWithSRAbsoluteTime:0.0];
    sr_localMidnightPriorToDate = [(NSDate *)sr_localMidnightFollowingDate sr_localMidnightPriorToDate];
    sr_localMidnightFollowingDate = [(NSDate *)sr_localMidnightFollowingDate sr_localMidnightFollowingDate];
    if ([(NSDate *)v6 compare:sr_localMidnightPriorToDate]== NSOrderedAscending)
    {
      return sr_localMidnightPriorToDate;
    }
  }

  return sr_localMidnightFollowingDate;
}

- (BMBookmarkNode)sleepSessionsBookmark
{
  v3 = objc_opt_class();

  return [(SRDataCollectorsDefaults *)self localObjectForKey:@"sleepSessionsBookmark" ofClass:v3];
}

- (NSDate)lastMediaEventsQueryDate
{
  v3 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() + -604800.0, 0.0)];
  v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"lastMediaEventsCollectingDate"];
  if (!v4)
  {
    v4 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() + -86400.0, 0.0)];
  }

  return [(NSDate *)v4 laterDate:v3];
}

- (NSDate)lastVisitsQueryDate
{
  v3 = [NSDate dateWithSRAbsoluteTime:fmax(SRAbsoluteTimeGetCurrent() + -604800.0, 0.0)];
  v4 = [(NSUserDefaults *)self->_defaults objectForKey:@"kCurrentMonitoringLastTimestamp"];
  if (!v4)
  {
    return v3;
  }

  return [v4 laterDate:v3];
}

- (void)setVisitsQueryIntervalShift:(double)shift
{
  if (shift >= 0.0)
  {
    defaults = self->_defaults;

    [(NSUserDefaults *)defaults setDouble:@"kVisitsQueryWindowShiftKey" forKey:?];
  }

  else
  {
    if (qword_10002B2C0 != -1)
    {
      dispatch_once(&qword_10002B2C0, &stru_100024D00);
    }

    v4 = qword_10002B2C8;
    if (os_log_type_enabled(qword_10002B2C8, OS_LOG_TYPE_ERROR))
    {
      v6 = 134218240;
      shiftCopy = shift;
      v8 = 2048;
      v9 = 0x40CC200000000000;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Negative value (%f) for visits query shift is not supported. Valid range [0..n] seconds. Default value is %f seconds.", &v6, 0x16u);
    }
  }
}

@end