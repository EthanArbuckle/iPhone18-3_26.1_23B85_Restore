@interface STDowntimeConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDowntimeState:(id)state;
- (STDowntimeConfiguration)initWithCurrentState:(int64_t)state currentDate:(id)date nextState:(int64_t)nextState nextStateChangeDate:(id)changeDate calendar:(id)calendar;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STDowntimeConfiguration

- (STDowntimeConfiguration)initWithCurrentState:(int64_t)state currentDate:(id)date nextState:(int64_t)nextState nextStateChangeDate:(id)changeDate calendar:(id)calendar
{
  v22.receiver = self;
  v22.super_class = STDowntimeConfiguration;
  calendarCopy = calendar;
  changeDateCopy = changeDate;
  dateCopy = date;
  v14 = [(STDowntimeConfiguration *)&v22 init];
  v14->_currentState = state;
  v15 = [dateCopy copy];

  currentDate = v14->_currentDate;
  v14->_currentDate = v15;

  v14->_nextState = nextState;
  v17 = [changeDateCopy copy];

  nextStateChangeDate = v14->_nextStateChangeDate;
  v14->_nextStateChangeDate = v17;

  v19 = [calendarCopy copy];
  calendar = v14->_calendar;
  v14->_calendar = v19;

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(STDowntimeConfiguration *)self currentState]- 1;
  if (v5 > 3)
  {
    v6 = @"Disabled";
  }

  else
  {
    v6 = off_1E7CE7630[v5];
  }

  v7 = [(STDowntimeConfiguration *)self nextState]- 1;
  if (v7 > 3)
  {
    v8 = @"Disabled";
  }

  else
  {
    v8 = off_1E7CE7630[v7];
  }

  currentDate = [(STDowntimeConfiguration *)self currentDate];
  nextStateChangeDate = [(STDowntimeConfiguration *)self nextStateChangeDate];
  calendar = [(STDowntimeConfiguration *)self calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  v13 = [v3 stringWithFormat:@"<%@: %p { Current: %@, Next: %@, CurrentDate: %@, NextDate: %@, Calendar: %@ }>", v4, self, v6, v8, currentDate, nextStateChangeDate, calendarIdentifier];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  currentState = self->_currentState;
  currentDate = self->_currentDate;
  nextState = self->_nextState;
  nextStateChangeDate = self->_nextStateChangeDate;
  calendar = self->_calendar;

  return [v4 initWithCurrentState:currentState currentDate:currentDate nextState:nextState nextStateChangeDate:nextStateChangeDate calendar:calendar];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(STDowntimeConfiguration *)self isEqualToDowntimeState:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToDowntimeState:(id)state
{
  stateCopy = state;
  if (stateCopy == self)
  {
    v13 = 1;
  }

  else
  {
    currentState = [(STDowntimeConfiguration *)self currentState];
    if (currentState == [(STDowntimeConfiguration *)stateCopy currentState])
    {
      nextState = [(STDowntimeConfiguration *)self nextState];
      if (nextState == [(STDowntimeConfiguration *)stateCopy nextState])
      {
        currentDate = [(STDowntimeConfiguration *)self currentDate];
        currentDate2 = [(STDowntimeConfiguration *)stateCopy currentDate];
        if (![currentDate isEqualToDate:currentDate2])
        {
          v13 = 0;
LABEL_17:

          goto LABEL_18;
        }

        nextStateChangeDate = [(STDowntimeConfiguration *)self nextStateChangeDate];
        nextStateChangeDate2 = [(STDowntimeConfiguration *)stateCopy nextStateChangeDate];
        if (nextStateChangeDate == nextStateChangeDate2)
        {
          [(STDowntimeConfiguration *)self calendar:v19];
        }

        else
        {
          nextStateChangeDate3 = [(STDowntimeConfiguration *)self nextStateChangeDate];
          nextStateChangeDate4 = [(STDowntimeConfiguration *)stateCopy nextStateChangeDate];
          if (![nextStateChangeDate3 isEqualToDate:nextStateChangeDate4])
          {
            v13 = 0;
LABEL_15:

LABEL_16:
            goto LABEL_17;
          }

          [(STDowntimeConfiguration *)self calendar:nextStateChangeDate4];
        }
        v14 = ;
        calendarIdentifier = [v14 calendarIdentifier];
        calendar = [(STDowntimeConfiguration *)stateCopy calendar];
        calendarIdentifier2 = [calendar calendarIdentifier];
        v13 = [calendarIdentifier isEqualToString:calendarIdentifier2];

        nextStateChangeDate4 = v20;
        nextStateChangeDate3 = v22;
        if (nextStateChangeDate == nextStateChangeDate2)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    v13 = 0;
  }

LABEL_18:

  return v13;
}

- (unint64_t)hash
{
  currentState = [(STDowntimeConfiguration *)self currentState];
  v4 = [(STDowntimeConfiguration *)self nextState]^ currentState;
  currentDate = [(STDowntimeConfiguration *)self currentDate];
  v6 = v4 ^ [currentDate hash];
  nextStateChangeDate = [(STDowntimeConfiguration *)self nextStateChangeDate];
  v8 = [nextStateChangeDate hash];
  calendar = [(STDowntimeConfiguration *)self calendar];
  v10 = v8 ^ [calendar hash];

  return v6 ^ v10;
}

@end