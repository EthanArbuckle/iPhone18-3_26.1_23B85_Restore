@interface RTMotionActivityPedometerEvent
+ (id)convertRTMotionActivityPedometerEventTypeToString:(int64_t)string;
+ (int64_t)convertCMPedometerEventType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (RTMotionActivityPedometerEvent)initWithCMPedometerEvent:(id)event;
- (RTMotionActivityPedometerEvent)initWithCoder:(id)coder;
- (RTMotionActivityPedometerEvent)initWithDate:(id)date eventType:(int64_t)type;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTMotionActivityPedometerEvent

- (RTMotionActivityPedometerEvent)initWithDate:(id)date eventType:(int64_t)type
{
  dateCopy = date;
  if (dateCopy)
  {
    v13.receiver = self;
    v13.super_class = RTMotionActivityPedometerEvent;
    v8 = [(RTMotionActivityPedometerEvent *)&v13 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_date, date);
      v9->_eventType = type;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (RTMotionActivityPedometerEvent)initWithCMPedometerEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v10.receiver = self;
    v10.super_class = RTMotionActivityPedometerEvent;
    v5 = [(RTMotionActivityPedometerEvent *)&v10 init];
    if (v5)
    {
      date = [eventCopy date];
      v5 = -[RTMotionActivityPedometerEvent initWithDate:eventType:](v5, "initWithDate:eventType:", date, +[RTMotionActivityPedometerEvent convertCMPedometerEventType:](RTMotionActivityPedometerEvent, "convertCMPedometerEventType:", [eventCopy type]));
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: cmPedometerEvent", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  date = [(RTMotionActivityPedometerEvent *)self date];
  v5 = [RTMotionActivityPedometerEvent convertRTMotionActivityPedometerEventTypeToString:[(RTMotionActivityPedometerEvent *)self eventType]];
  v6 = [v3 stringWithFormat:@"date, %@, eventType, %@", date, v5];

  return v6;
}

- (RTMotionActivityPedometerEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"Date"];
  v6 = [coderCopy decodeIntegerForKey:@"EventType"];

  v7 = [(RTMotionActivityPedometerEvent *)self initWithDate:v5 eventType:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"Date"];
  [coderCopy encodeInteger:self->_eventType forKey:@"EventType"];
}

- (unint64_t)hash
{
  date = [(RTMotionActivityPedometerEvent *)self date];
  v4 = [date hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[RTMotionActivityPedometerEvent eventType](self, "eventType")}];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      date = [(RTMotionActivityPedometerEvent *)self date];
      date2 = [(RTMotionActivityPedometerEvent *)v5 date];
      if ([date isEqualToDate:date2])
      {
        eventType = [(RTMotionActivityPedometerEvent *)self eventType];
        v9 = eventType == [(RTMotionActivityPedometerEvent *)v5 eventType];
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

+ (int64_t)convertCMPedometerEventType:(int64_t)type
{
  if (type == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (id)convertRTMotionActivityPedometerEventTypeToString:(int64_t)string
{
  v3 = @"Pause";
  if (string == 1)
  {
    v3 = @"Resume";
  }

  if (string == -1)
  {
    return @"Unknown";
  }

  else
  {
    return v3;
  }
}

@end