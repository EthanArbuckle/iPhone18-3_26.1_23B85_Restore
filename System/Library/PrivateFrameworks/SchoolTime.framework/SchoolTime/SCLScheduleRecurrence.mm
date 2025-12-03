@interface SCLScheduleRecurrence
- (BOOL)intersectsRecurrence:(id)recurrence;
- (BOOL)isActiveAtDate:(id)date calendar:(id)calendar;
- (BOOL)isContiguousWithRecurrence:(id)recurrence;
- (BOOL)isEqual:(id)equal;
- (SCLScheduleRecurrence)initWithCoder:(id)coder;
- (SCLScheduleRecurrence)initWithTimeInterval:(id)interval day:(int64_t)day;
- (id)dateIntervalForActiveScheduleOnOrAfterDate:(id)date calendar:(id)calendar;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLScheduleRecurrence

- (SCLScheduleRecurrence)initWithTimeInterval:(id)interval day:(int64_t)day
{
  intervalCopy = interval;
  v11.receiver = self;
  v11.super_class = SCLScheduleRecurrence;
  v7 = [(SCLScheduleRecurrence *)&v11 init];
  if (v7)
  {
    v8 = [intervalCopy copy];
    timeInterval = v7->_timeInterval;
    v7->_timeInterval = v8;

    v7->_day = day;
  }

  return v7;
}

- (SCLScheduleRecurrence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SCLScheduleRecurrence;
  v5 = [(SCLScheduleRecurrence *)&v9 init];
  if (v5)
  {
    v5->_day = [coderCopy decodeIntegerForKey:@"day"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeInterval"];
    timeInterval = v5->_timeInterval;
    v5->_timeInterval = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  day = self->_day;
  coderCopy = coder;
  [coderCopy encodeInteger:day forKey:@"day"];
  [coderCopy encodeObject:self->_timeInterval forKey:@"timeInterval"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(SCLScheduleRecurrence *)v5 day];
      if (v6 == [(SCLScheduleRecurrence *)self day])
      {
        timeInterval = [(SCLScheduleRecurrence *)v5 timeInterval];
        timeInterval2 = [(SCLScheduleRecurrence *)self timeInterval];
        v9 = [timeInterval isEqual:timeInterval2];
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

- (unint64_t)hash
{
  v3 = [(SCLScheduleRecurrence *)self day];
  timeInterval = [(SCLScheduleRecurrence *)self timeInterval];
  v5 = [timeInterval hash];

  return v5 ^ v3;
}

- (id)description
{
  v20 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v3 = MEMORY[0x277CCABB0];
  timeInterval = [(SCLScheduleRecurrence *)self timeInterval];
  startTime = [timeInterval startTime];
  v4 = [v3 numberWithUnsignedInteger:{objc_msgSend(startTime, "hour")}];
  v5 = MEMORY[0x277CCABB0];
  timeInterval2 = [(SCLScheduleRecurrence *)self timeInterval];
  startTime2 = [timeInterval2 startTime];
  v6 = [v5 numberWithUnsignedInteger:{objc_msgSend(startTime2, "minute")}];
  v7 = MEMORY[0x277CCABB0];
  timeInterval3 = [(SCLScheduleRecurrence *)self timeInterval];
  endTime = [timeInterval3 endTime];
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(endTime, "hour")}];
  v11 = MEMORY[0x277CCABB0];
  timeInterval4 = [(SCLScheduleRecurrence *)self timeInterval];
  endTime2 = [timeInterval4 endTime];
  v14 = [v11 numberWithUnsignedInteger:{objc_msgSend(endTime2, "minute")}];
  v15 = NSStringForSCLDay([(SCLScheduleRecurrence *)self day]);
  v16 = [v20 stringWithFormat:@"<%@ %p startTime: %@:%@; endTime: %@:%@; %@>", v18, self, v4, v6, v10, v14, v15];;

  return v16;
}

- (BOOL)isActiveAtDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  v7 = [(SCLScheduleRecurrence *)self dateIntervalForActiveScheduleOnOrAfterDate:dateCopy calendar:calendar];
  LOBYTE(self) = [v7 containsDate:dateCopy];

  return self;
}

- (id)dateIntervalForActiveScheduleOnOrAfterDate:(id)date calendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v8 = calendarCopy;
  v9 = 0;
  if (dateCopy && calendarCopy)
  {
    Day = [(SCLScheduleRecurrence *)self day];
    v11 = [v8 component:512 fromDate:dateCopy];
    timeInterval = [(SCLScheduleRecurrence *)self timeInterval];
    startTime = [timeInterval startTime];
    dateComponents = [startTime dateComponents];

    timeInterval2 = [(SCLScheduleRecurrence *)self timeInterval];
    endTime = [timeInterval2 endTime];
    dateComponents2 = [endTime dateComponents];

    [dateComponents setWeekday:Day];
    timeInterval3 = [(SCLScheduleRecurrence *)self timeInterval];
    LODWORD(timeInterval2) = [timeInterval3 crossesDayBoundary];

    if (timeInterval2)
    {
      Day = SCLGetNextDay(v11);
    }

    [dateComponents2 setWeekday:Day];
    v9 = [MEMORY[0x277CCA970] SCL_dateIntervalForActiveScheduleOnOrAfterDate:dateCopy calendar:v8 startComponents:dateComponents endComponents:dateComponents2];
  }

  return v9;
}

- (BOOL)intersectsRecurrence:(id)recurrence
{
  recurrenceCopy = recurrence;
  v5 = [(SCLScheduleRecurrence *)recurrenceCopy day];
  v6 = [(SCLScheduleRecurrence *)self day];
  timeInterval = [(SCLScheduleRecurrence *)self timeInterval];
  timeInterval2 = timeInterval;
  if (v5 != v6)
  {
    if ([timeInterval crossesDayBoundary])
    {
      Day = SCLGetNextDay([(SCLScheduleRecurrence *)self day]);
      v12 = [(SCLScheduleRecurrence *)recurrenceCopy day];

      if (Day == v12)
      {
        timeInterval2 = [(SCLScheduleRecurrence *)recurrenceCopy timeInterval];
        startTime = [timeInterval2 startTime];
        selfCopy = self;
LABEL_10:
        timeInterval3 = [(SCLScheduleRecurrence *)selfCopy timeInterval];
        startTime2 = [timeInterval3 startTime];
        v10 = [startTime compare:startTime2] == -1;

        goto LABEL_11;
      }
    }

    else
    {
    }

    timeInterval2 = [(SCLScheduleRecurrence *)recurrenceCopy timeInterval];
    if (![timeInterval2 crossesDayBoundary])
    {
      v10 = 0;
      goto LABEL_13;
    }

    v14 = SCLGetPreviousDay([(SCLScheduleRecurrence *)self day]);
    v15 = [(SCLScheduleRecurrence *)recurrenceCopy day];

    if (v14 != v15)
    {
      v10 = 0;
      goto LABEL_14;
    }

    timeInterval2 = [(SCLScheduleRecurrence *)self timeInterval];
    startTime = [timeInterval2 startTime];
    selfCopy = recurrenceCopy;
    goto LABEL_10;
  }

  startTime = [(SCLScheduleRecurrence *)recurrenceCopy timeInterval];
  v10 = [timeInterval2 intersectsTimeInterval:startTime];
LABEL_11:

LABEL_13:
LABEL_14:

  return v10;
}

- (BOOL)isContiguousWithRecurrence:(id)recurrence
{
  recurrenceCopy = recurrence;
  timeInterval = [(SCLScheduleRecurrence *)self timeInterval];
  endTime = [timeInterval endTime];

  v7 = [recurrenceCopy day];
  if (v7 == [(SCLScheduleRecurrence *)self day])
  {
    timeInterval2 = [(SCLScheduleRecurrence *)self timeInterval];
    crossesDayBoundary = [timeInterval2 crossesDayBoundary];

    if ((crossesDayBoundary & 1) == 0)
    {
      timeInterval3 = [recurrenceCopy timeInterval];
      startTime = [timeInterval3 startTime];
      v16 = [endTime isEqual:startTime];
LABEL_10:

      goto LABEL_11;
    }
  }

  timeInterval3 = [(SCLScheduleRecurrence *)self timeInterval];
  if (([timeInterval3 crossesDayBoundary] & 1) != 0 || !objc_msgSend(endTime, "hour") && !objc_msgSend(endTime, "minute"))
  {
    Day = SCLGetNextDay([(SCLScheduleRecurrence *)self day]);
    v12 = [recurrenceCopy day];

    if (Day != v12)
    {
      v16 = 0;
      goto LABEL_13;
    }

    timeInterval3 = [(SCLScheduleRecurrence *)self timeInterval];
    startTime = [timeInterval3 endTime];
    timeInterval4 = [recurrenceCopy timeInterval];
    startTime2 = [timeInterval4 startTime];
    v16 = [startTime isEqual:startTime2];

    goto LABEL_10;
  }

  v16 = 0;
LABEL_11:

LABEL_13:
  return v16;
}

uint64_t __66__SCLScheduleRecurrence_Extended__dayOfWeekAndStartTimeComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "day")}];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "day")}];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 timeInterval];
    v10 = [v9 startTime];
    v11 = [v5 timeInterval];
    v12 = [v11 startTime];
    v8 = [v10 compare:v12];
  }

  return v8;
}

@end