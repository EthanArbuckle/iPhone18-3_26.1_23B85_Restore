@interface SCLUnlockHistoryItem
- (BOOL)isEqual:(id)a3;
- (SCLUnlockHistoryItem)initWithCoder:(id)a3;
- (SCLUnlockHistoryItem)initWithInterval:(id)a3 calendar:(id)a4 timeZone:(id)a5;
- (SCLUnlockHistoryItem)initWithInterval:(id)a3 calendar:(id)a4 timeZone:(id)a5 startTime:(id)a6 endTime:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)_loadEffectiveRecurrence;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCLUnlockHistoryItem

- (SCLUnlockHistoryItem)initWithInterval:(id)a3 calendar:(id)a4 timeZone:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[SCLScheduleTime alloc] initWithHour:0 minute:0];
  v12 = [(SCLUnlockHistoryItem *)self initWithInterval:v10 calendar:v9 timeZone:v8 startTime:v11 endTime:v11];

  return v12;
}

- (SCLUnlockHistoryItem)initWithInterval:(id)a3 calendar:(id)a4 timeZone:(id)a5 startTime:(id)a6 endTime:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = SCLUnlockHistoryItem;
  v17 = [(SCLUnlockHistoryItem *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    unlockedInterval = v17->_unlockedInterval;
    v17->_unlockedInterval = v18;

    v20 = [v13 copy];
    calendar = v17->_calendar;
    v17->_calendar = v20;

    v22 = [v14 copy];
    timeZone = v17->_timeZone;
    v17->_timeZone = v22;

    v24 = [v15 copy];
    scheduleStartTime = v17->_scheduleStartTime;
    v17->_scheduleStartTime = v24;

    v26 = [v16 copy];
    scheduleEndTime = v17->_scheduleEndTime;
    v17->_scheduleEndTime = v26;

    [(SCLUnlockHistoryItem *)v17 _loadEffectiveRecurrence];
  }

  return v17;
}

- (SCLUnlockHistoryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SCLUnlockHistoryItem;
  v5 = [(SCLUnlockHistoryItem *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interval"];
    unlockedInterval = v5->_unlockedInterval;
    v5->_unlockedInterval = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"calendarIdentifier"];
    if (v8)
    {
      v9 = [MEMORY[0x277CBEA80] calendarWithIdentifier:v8];
      calendar = v5->_calendar;
      v5->_calendar = v9;
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZoneName"];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEBB0] timeZoneWithName:v11];
      timeZone = v5->_timeZone;
      v5->_timeZone = v12;
    }

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    scheduleStartTime = v5->_scheduleStartTime;
    v5->_scheduleStartTime = v14;

    if (!v5->_scheduleStartTime)
    {
      v16 = [[SCLScheduleTime alloc] initWithHour:0 minute:0];
      v17 = v5->_scheduleStartTime;
      v5->_scheduleStartTime = v16;
    }

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
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

- (void)encodeWithCoder:(id)a3
{
  unlockedInterval = self->_unlockedInterval;
  v7 = a3;
  [v7 encodeObject:unlockedInterval forKey:@"interval"];
  v5 = [(NSCalendar *)self->_calendar calendarIdentifier];
  [v7 encodeObject:v5 forKey:@"calendarIdentifier"];

  v6 = [(NSTimeZone *)self->_timeZone name];
  [v7 encodeObject:v6 forKey:@"timeZoneName"];

  [v7 encodeObject:self->_scheduleStartTime forKey:@"startTime"];
  [v7 encodeObject:self->_scheduleEndTime forKey:@"endTime"];
}

- (unint64_t)hash
{
  v3 = [(NSDateInterval *)self->_unlockedInterval hash];
  v4 = [(NSCalendar *)self->_calendar calendarIdentifier];
  v5 = [v4 hash] ^ v3;
  v6 = [(NSTimeZone *)self->_timeZone name];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(SCLScheduleTime *)self->_scheduleStartTime hash];
  v9 = [(SCLScheduleTime *)self->_scheduleEndTime hash];

  return v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 unlockedInterval];
    v7 = [(SCLUnlockHistoryItem *)self unlockedInterval];
    if ([v6 isEqual:v7])
    {
      v8 = [v5 calendar];
      v9 = [v8 calendarIdentifier];
      v10 = [(SCLUnlockHistoryItem *)self calendar];
      v11 = [v10 calendarIdentifier];
      if ([v9 isEqual:v11])
      {
        v25 = [v5 timeZone];
        v12 = [v25 name];
        v23 = [(SCLUnlockHistoryItem *)self timeZone];
        [v23 name];
        v22 = v24 = v12;
        if ([v12 isEqual:v22])
        {
          v13 = [v5 scheduleStartTime];
          v14 = [(SCLUnlockHistoryItem *)self scheduleStartTime];
          v21 = v13;
          v15 = v13;
          v16 = v14;
          if ([v15 isEqual:v14])
          {
            v20 = [v5 scheduleEndTime];
            v19 = [(SCLUnlockHistoryItem *)self scheduleEndTime];
            v17 = [v20 isEqual:v19];
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
  v4 = [(SCLUnlockHistoryItem *)self scheduleStartTime];
  v5 = [(SCLUnlockHistoryItem *)self scheduleEndTime];
  v12 = [(SCLTimeInterval *)v3 initWithStartTime:v4 endTime:v5];

  v6 = [(SCLUnlockHistoryItem *)self calendar];
  v7 = [(SCLUnlockHistoryItem *)self unlockedInterval];
  v8 = [v7 startDate];
  v9 = [v6 component:512 fromDate:v8];

  v10 = [[SCLScheduleRecurrence alloc] initWithTimeInterval:v12 day:v9];
  effectiveRecurrence = self->_effectiveRecurrence;
  self->_effectiveRecurrence = v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SCLUnlockHistoryItem *)self unlockedInterval];
  v5 = [v3 appendObject:v4 withName:@"interval"];

  v6 = [(SCLUnlockHistoryItem *)self calendar];
  v7 = [v6 calendarIdentifier];
  v8 = [v3 appendObject:v7 withName:@"calendar"];

  v9 = [(SCLUnlockHistoryItem *)self timeZone];
  v10 = [v9 name];
  v11 = [v3 appendObject:v10 withName:@"timezone"];

  v12 = [(SCLUnlockHistoryItem *)self scheduleStartTime];
  v13 = [v3 appendObject:v12 withName:@"scheduleStartTime"];

  v14 = [(SCLUnlockHistoryItem *)self scheduleEndTime];
  v15 = [v3 appendObject:v14 withName:@"scheduleEndTime"];

  v16 = [v3 build];

  return v16;
}

@end