@interface SCLUnlockHistoryItem
- (BOOL)isEqual:(id)equal;
- (SCLUnlockHistoryItem)initWithCoder:(id)coder;
- (SCLUnlockHistoryItem)initWithInterval:(id)interval calendar:(id)calendar timeZone:(id)zone;
- (SCLUnlockHistoryItem)initWithInterval:(id)interval calendar:(id)calendar timeZone:(id)zone startTime:(id)time endTime:(id)endTime;
- (id)description;
- (unint64_t)hash;
- (void)_loadEffectiveRecurrence;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLUnlockHistoryItem

- (SCLUnlockHistoryItem)initWithInterval:(id)interval calendar:(id)calendar timeZone:(id)zone
{
  zoneCopy = zone;
  calendarCopy = calendar;
  intervalCopy = interval;
  v11 = [[SCLScheduleTime alloc] initWithHour:0 minute:0];
  v12 = [(SCLUnlockHistoryItem *)self initWithInterval:intervalCopy calendar:calendarCopy timeZone:zoneCopy startTime:v11 endTime:v11];

  return v12;
}

- (SCLUnlockHistoryItem)initWithInterval:(id)interval calendar:(id)calendar timeZone:(id)zone startTime:(id)time endTime:(id)endTime
{
  intervalCopy = interval;
  calendarCopy = calendar;
  zoneCopy = zone;
  timeCopy = time;
  endTimeCopy = endTime;
  v29.receiver = self;
  v29.super_class = SCLUnlockHistoryItem;
  v17 = [(SCLUnlockHistoryItem *)&v29 init];
  if (v17)
  {
    v18 = [intervalCopy copy];
    unlockedInterval = v17->_unlockedInterval;
    v17->_unlockedInterval = v18;

    v20 = [calendarCopy copy];
    calendar = v17->_calendar;
    v17->_calendar = v20;

    v22 = [zoneCopy copy];
    timeZone = v17->_timeZone;
    v17->_timeZone = v22;

    v24 = [timeCopy copy];
    scheduleStartTime = v17->_scheduleStartTime;
    v17->_scheduleStartTime = v24;

    v26 = [endTimeCopy copy];
    scheduleEndTime = v17->_scheduleEndTime;
    v17->_scheduleEndTime = v26;

    [(SCLUnlockHistoryItem *)v17 _loadEffectiveRecurrence];
  }

  return v17;
}

- (SCLUnlockHistoryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SCLUnlockHistoryItem;
  v5 = [(SCLUnlockHistoryItem *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
    unlockedInterval = v5->_unlockedInterval;
    v5->_unlockedInterval = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendarIdentifier"];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v8];
      calendar = v5->_calendar;
      v5->_calendar = v9;
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZoneName"];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEBB0] timeZoneWithName:v11];
      timeZone = v5->_timeZone;
      v5->_timeZone = v12;
    }

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    scheduleStartTime = v5->_scheduleStartTime;
    v5->_scheduleStartTime = v14;

    if (!v5->_scheduleStartTime)
    {
      v16 = [[SCLScheduleTime alloc] initWithHour:0 minute:0];
      v17 = v5->_scheduleStartTime;
      v5->_scheduleStartTime = v16;
    }

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
    scheduleEndTime = v5->_scheduleEndTime;
    v5->_scheduleEndTime = v18;

    if (!v5->_scheduleEndTime)
    {
      v20 = [[SCLScheduleTime alloc] initWithHour:0 minute:0];
      v21 = v5->_scheduleEndTime;
      v5->_scheduleEndTime = v20;
    }

    [(SCLUnlockHistoryItem *)v5 _loadEffectiveRecurrence];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  unlockedInterval = self->_unlockedInterval;
  coderCopy = coder;
  [coderCopy encodeObject:unlockedInterval forKey:@"interval"];
  calendarIdentifier = [(NSCalendar *)self->_calendar calendarIdentifier];
  [coderCopy encodeObject:calendarIdentifier forKey:@"calendarIdentifier"];

  name = [(NSTimeZone *)self->_timeZone name];
  [coderCopy encodeObject:name forKey:@"timeZoneName"];

  [coderCopy encodeObject:self->_scheduleStartTime forKey:@"startTime"];
  [coderCopy encodeObject:self->_scheduleEndTime forKey:@"endTime"];
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_unlockedInterval hash];
  calendarIdentifier = [(NSCalendar *)self->_calendar calendarIdentifier];
  v5 = [calendarIdentifier hash] ^ v3;
  name = [(NSTimeZone *)self->_timeZone name];
  v7 = [name hash];
  v8 = v5 ^ v7 ^ [(SCLScheduleTime *)self->_scheduleStartTime hash];
  v9 = [(SCLScheduleTime *)self->_scheduleEndTime hash];

  return v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    unlockedInterval = [v5 unlockedInterval];
    unlockedInterval2 = [(SCLUnlockHistoryItem *)self unlockedInterval];
    if ([unlockedInterval isEqual:unlockedInterval2])
    {
      calendar = [v5 calendar];
      calendarIdentifier = [calendar calendarIdentifier];
      calendar2 = [(SCLUnlockHistoryItem *)self calendar];
      calendarIdentifier2 = [calendar2 calendarIdentifier];
      if ([calendarIdentifier isEqual:calendarIdentifier2])
      {
        timeZone = [v5 timeZone];
        name = [timeZone name];
        timeZone2 = [(SCLUnlockHistoryItem *)self timeZone];
        [timeZone2 name];
        v22 = v24 = name;
        if ([name isEqual:v22])
        {
          scheduleStartTime = [v5 scheduleStartTime];
          scheduleStartTime2 = [(SCLUnlockHistoryItem *)self scheduleStartTime];
          v21 = scheduleStartTime;
          v15 = scheduleStartTime;
          v16 = scheduleStartTime2;
          if ([v15 isEqual:scheduleStartTime2])
          {
            scheduleEndTime = [v5 scheduleEndTime];
            scheduleEndTime2 = [(SCLUnlockHistoryItem *)self scheduleEndTime];
            v17 = [scheduleEndTime isEqual:scheduleEndTime2];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_loadEffectiveRecurrence
{
  v3 = [SCLTimeInterval alloc];
  scheduleStartTime = [(SCLUnlockHistoryItem *)self scheduleStartTime];
  scheduleEndTime = [(SCLUnlockHistoryItem *)self scheduleEndTime];
  v12 = [(SCLTimeInterval *)v3 initWithStartTime:scheduleStartTime endTime:scheduleEndTime];

  calendar = [(SCLUnlockHistoryItem *)self calendar];
  unlockedInterval = [(SCLUnlockHistoryItem *)self unlockedInterval];
  startDate = [unlockedInterval startDate];
  v9 = [calendar component:512 fromDate:startDate];

  v10 = [[SCLScheduleRecurrence alloc] initWithTimeInterval:v12 day:v9];
  effectiveRecurrence = self->_effectiveRecurrence;
  self->_effectiveRecurrence = v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  unlockedInterval = [(SCLUnlockHistoryItem *)self unlockedInterval];
  v5 = [v3 appendObject:unlockedInterval withName:@"interval"];

  calendar = [(SCLUnlockHistoryItem *)self calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  v8 = [v3 appendObject:calendarIdentifier withName:@"calendar"];

  timeZone = [(SCLUnlockHistoryItem *)self timeZone];
  name = [timeZone name];
  v11 = [v3 appendObject:name withName:@"timezone"];

  scheduleStartTime = [(SCLUnlockHistoryItem *)self scheduleStartTime];
  v13 = [v3 appendObject:scheduleStartTime withName:@"scheduleStartTime"];

  scheduleEndTime = [(SCLUnlockHistoryItem *)self scheduleEndTime];
  v15 = [v3 appendObject:scheduleEndTime withName:@"scheduleEndTime"];

  build = [v3 build];

  return build;
}

@end