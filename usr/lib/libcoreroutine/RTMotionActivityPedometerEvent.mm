@interface RTMotionActivityPedometerEvent
+ (id)convertRTMotionActivityPedometerEventTypeToString:(int64_t)a3;
+ (int64_t)convertCMPedometerEventType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (RTMotionActivityPedometerEvent)initWithCMPedometerEvent:(id)a3;
- (RTMotionActivityPedometerEvent)initWithCoder:(id)a3;
- (RTMotionActivityPedometerEvent)initWithDate:(id)a3 eventType:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTMotionActivityPedometerEvent

- (RTMotionActivityPedometerEvent)initWithDate:(id)a3 eventType:(int64_t)a4
{
  v7 = a3;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = RTMotionActivityPedometerEvent;
    v8 = [(RTMotionActivityPedometerEvent *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_date, a3);
      v9->_eventType = a4;
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (RTMotionActivityPedometerEvent)initWithCMPedometerEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = RTMotionActivityPedometerEvent;
    v5 = [(RTMotionActivityPedometerEvent *)&v10 init];
    if (v5)
    {
      v6 = [v4 date];
      v5 = -[RTMotionActivityPedometerEvent initWithDate:eventType:](v5, "initWithDate:eventType:", v6, +[RTMotionActivityPedometerEvent convertCMPedometerEventType:](RTMotionActivityPedometerEvent, "convertCMPedometerEventType:", [v4 type]));
    }

    self = v5;
    v7 = self;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cmPedometerEvent", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RTMotionActivityPedometerEvent *)self date];
  v5 = [RTMotionActivityPedometerEvent convertRTMotionActivityPedometerEventTypeToString:[(RTMotionActivityPedometerEvent *)self eventType]];
  v6 = [v3 stringWithFormat:@"date, %@, eventType, %@", v4, v5];

  return v6;
}

- (RTMotionActivityPedometerEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"Date"];
  v6 = [v4 decodeIntegerForKey:@"EventType"];

  v7 = [(RTMotionActivityPedometerEvent *)self initWithDate:v5 eventType:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"Date"];
  [v5 encodeInteger:self->_eventType forKey:@"EventType"];
}

- (unint64_t)hash
{
  v3 = [(RTMotionActivityPedometerEvent *)self date];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RTMotionActivityPedometerEvent eventType](self, "eventType")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(RTMotionActivityPedometerEvent *)self date];
      v7 = [(RTMotionActivityPedometerEvent *)v5 date];
      if ([v6 isEqualToDate:v7])
      {
        v8 = [(RTMotionActivityPedometerEvent *)self eventType];
        v9 = v8 == [(RTMotionActivityPedometerEvent *)v5 eventType];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (int64_t)convertCMPedometerEventType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (id)convertRTMotionActivityPedometerEventTypeToString:(int64_t)a3
{
  v3 = @"Pause";
  if (a3 == 1)
  {
    v3 = @"Resume";
  }

  if (a3 == -1)
  {
    return @"Unknown";
  }

  else
  {
    return v3;
  }
}

@end