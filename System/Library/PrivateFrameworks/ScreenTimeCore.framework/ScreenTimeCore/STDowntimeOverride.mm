@interface STDowntimeOverride
+ (STDowntimeOverride)overrideWithState:(int64_t)state creationDate:(id)date calendar:(id)calendar endDate:(id)endDate;
+ (STDowntimeOverride)overrideWithState:(int64_t)state creationDate:(id)date calendar:(id)calendar fixedDuration:(id)duration;
- (BOOL)isActiveAtDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDowntimeOverride:(id)override;
- (BOOL)isExpiredAtDate:(id)date;
- (id)_initWithType:(int64_t)type state:(int64_t)state creationDate:(id)date calendar:(id)calendar endDate:(id)endDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STDowntimeOverride

- (id)_initWithType:(int64_t)type state:(int64_t)state creationDate:(id)date calendar:(id)calendar endDate:(id)endDate
{
  v22.receiver = self;
  v22.super_class = STDowntimeOverride;
  endDateCopy = endDate;
  calendarCopy = calendar;
  dateCopy = date;
  v14 = [(STDowntimeOverride *)&v22 init];
  v14->_type = type;
  v14->_state = state;
  v15 = [dateCopy copy];

  creationDate = v14->_creationDate;
  v14->_creationDate = v15;

  v17 = [calendarCopy copy];
  calendar = v14->_calendar;
  v14->_calendar = v17;

  v19 = [endDateCopy copy];
  endDate = v14->_endDate;
  v14->_endDate = v19;

  return v14;
}

+ (STDowntimeOverride)overrideWithState:(int64_t)state creationDate:(id)date calendar:(id)calendar fixedDuration:(id)duration
{
  calendarCopy = calendar;
  dateCopy = date;
  [duration doubleValue];
  v12 = [dateCopy dateByAddingTimeInterval:?];
  v13 = [[self alloc] _initWithType:1 state:state creationDate:dateCopy calendar:calendarCopy endDate:v12];

  return v13;
}

+ (STDowntimeOverride)overrideWithState:(int64_t)state creationDate:(id)date calendar:(id)calendar endDate:(id)endDate
{
  endDateCopy = endDate;
  calendarCopy = calendar;
  dateCopy = date;
  v13 = [[self alloc] _initWithType:0 state:state creationDate:dateCopy calendar:calendarCopy endDate:endDateCopy];

  return v13;
}

- (BOOL)isActiveAtDate:(id)date
{
  dateCopy = date;
  creationDate = [(STDowntimeOverride *)self creationDate];
  if ([creationDate compare:dateCopy] == 1)
  {
    v6 = 0;
  }

  else
  {
    endDate = [(STDowntimeOverride *)self endDate];
    v6 = [endDate compare:dateCopy] != -1;
  }

  return v6;
}

- (BOOL)isExpiredAtDate:(id)date
{
  dateCopy = date;
  endDate = [(STDowntimeOverride *)self endDate];
  v6 = [endDate compare:dateCopy];

  return v6 != 1;
}

- (id)description
{
  if ([(STDowntimeOverride *)self type]== 1)
  {
    v3 = MEMORY[0x1E696AD98];
    endDate = [(STDowntimeOverride *)self endDate];
    creationDate = [(STDowntimeOverride *)self creationDate];
    [endDate timeIntervalSinceDate:creationDate];
    v6 = [v3 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  if ([(STDowntimeOverride *)self type])
  {
    v9 = @"FixedDuration";
  }

  else
  {
    v9 = @"Automatic";
  }

  if ([(STDowntimeOverride *)self state]== 1)
  {
    v10 = @"Enabled";
  }

  else
  {
    v10 = @"Disabled";
  }

  creationDate2 = [(STDowntimeOverride *)self creationDate];
  calendar = [(STDowntimeOverride *)self calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  endDate2 = [(STDowntimeOverride *)self endDate];
  v15 = [v7 stringWithFormat:@"<%@: %p { Type: %@, State: %@, CreationDate: %@, Calendar: %@, FixedDuration: %@, EndDate: %@ }>", v8, self, v9, v10, creationDate2, calendarIdentifier, v6, endDate2];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  type = self->_type;
  state = self->_state;
  creationDate = self->_creationDate;
  calendar = self->_calendar;
  endDate = self->_endDate;

  return [v4 _initWithType:type state:state creationDate:creationDate calendar:calendar endDate:endDate];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STDowntimeOverride *)self isEqualToDowntimeOverride:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToDowntimeOverride:(id)override
{
  overrideCopy = override;
  if (overrideCopy == self)
  {
    v15 = 1;
  }

  else
  {
    type = [(STDowntimeOverride *)self type];
    if (type == [(STDowntimeOverride *)overrideCopy type]&& (v6 = [(STDowntimeOverride *)self state], v6 == [(STDowntimeOverride *)overrideCopy state]))
    {
      creationDate = [(STDowntimeOverride *)self creationDate];
      creationDate2 = [(STDowntimeOverride *)overrideCopy creationDate];
      if ([creationDate isEqualToDate:creationDate2])
      {
        calendar = [(STDowntimeOverride *)self calendar];
        calendarIdentifier = [calendar calendarIdentifier];
        calendar2 = [(STDowntimeOverride *)overrideCopy calendar];
        calendarIdentifier2 = [calendar2 calendarIdentifier];
        if ([calendarIdentifier isEqualToString:calendarIdentifier2])
        {
          endDate = [(STDowntimeOverride *)self endDate];
          endDate2 = [(STDowntimeOverride *)overrideCopy endDate];
          v15 = [endDate isEqualToDate:endDate2];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  type = [(STDowntimeOverride *)self type];
  v4 = [(STDowntimeOverride *)self state]^ type;
  calendar = [(STDowntimeOverride *)self calendar];
  v6 = v4 ^ [calendar hash];
  creationDate = [(STDowntimeOverride *)self creationDate];
  v8 = [creationDate hash];
  endDate = [(STDowntimeOverride *)self endDate];
  v10 = v8 ^ [endDate hash];

  return v6 ^ v10;
}

@end