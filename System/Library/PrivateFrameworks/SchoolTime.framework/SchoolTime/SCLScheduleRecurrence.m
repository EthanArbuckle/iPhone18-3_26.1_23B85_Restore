@interface SCLScheduleRecurrence
- (BOOL)intersectsRecurrence:(id)a3;
- (BOOL)isActiveAtDate:(id)a3 calendar:(id)a4;
- (BOOL)isContiguousWithRecurrence:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SCLScheduleRecurrence)initWithCoder:(id)a3;
- (SCLScheduleRecurrence)initWithTimeInterval:(id)a3 day:(int64_t)a4;
- (id)dateIntervalForActiveScheduleOnOrAfterDate:(id)a3 calendar:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCLScheduleRecurrence

- (SCLScheduleRecurrence)initWithTimeInterval:(id)a3 day:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = SCLScheduleRecurrence;
  v7 = [(SCLScheduleRecurrence *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    timeInterval = v7->_timeInterval;
    v7->_timeInterval = v8;

    v7->_day = a4;
  }

  return v7;
}

- (SCLScheduleRecurrence)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCLScheduleRecurrence;
  v5 = [(SCLScheduleRecurrence *)&v9 init];
  if (v5)
  {
    v5->_day = [v4 decodeIntegerForKey:@"day"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeInterval"];
    timeInterval = v5->_timeInterval;
    v5->_timeInterval = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  day = self->_day;
  v5 = a3;
  [v5 encodeInteger:day forKey:@"day"];
  [v5 encodeObject:self->_timeInterval forKey:@"timeInterval"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SCLScheduleRecurrence *)v5 day];
      if (v6 == [(SCLScheduleRecurrence *)self day])
      {
        v7 = [(SCLScheduleRecurrence *)v5 timeInterval];
        v8 = [(SCLScheduleRecurrence *)self timeInterval];
        v9 = [v7 isEqual:v8];
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
  v4 = [(SCLScheduleRecurrence *)self timeInterval];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v20 = MEMORY[0x277CCACA8];
  v18 = objc_opt_class();
  v3 = MEMORY[0x277CCABB0];
  v23 = [(SCLScheduleRecurrence *)self timeInterval];
  v22 = [v23 startTime];
  v4 = [v3 numberWithUnsignedInteger:{objc_msgSend(v22, "hour")}];
  v5 = MEMORY[0x277CCABB0];
  v21 = [(SCLScheduleRecurrence *)self timeInterval];
  v19 = [v21 startTime];
  v6 = [v5 numberWithUnsignedInteger:{objc_msgSend(v19, "minute")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [(SCLScheduleRecurrence *)self timeInterval];
  v9 = [v8 endTime];
  v10 = [v7 numberWithUnsignedInteger:{objc_msgSend(v9, "hour")}];
  v11 = MEMORY[0x277CCABB0];
  v12 = [(SCLScheduleRecurrence *)self timeInterval];
  v13 = [v12 endTime];
  v14 = [v11 numberWithUnsignedInteger:{objc_msgSend(v13, "minute")}];
  v15 = NSStringForSCLDay([(SCLScheduleRecurrence *)self day]);
  v16 = [v20 stringWithFormat:@"<%@ %p startTime: %@:%@; endTime: %@:%@; %@>", v18, self, v4, v6, v10, v14, v15];;

  return v16;
}

- (BOOL)isActiveAtDate:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = [(SCLScheduleRecurrence *)self dateIntervalForActiveScheduleOnOrAfterDate:v6 calendar:a4];
  LOBYTE(self) = [v7 containsDate:v6];

  return self;
}

- (id)dateIntervalForActiveScheduleOnOrAfterDate:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    Day = [(SCLScheduleRecurrence *)self day];
    v11 = [v8 component:512 fromDate:v6];
    v12 = [(SCLScheduleRecurrence *)self timeInterval];
    v13 = [v12 startTime];
    v14 = [v13 dateComponents];

    v15 = [(SCLScheduleRecurrence *)self timeInterval];
    v16 = [v15 endTime];
    v17 = [v16 dateComponents];

    [v14 setWeekday:Day];
    v18 = [(SCLScheduleRecurrence *)self timeInterval];
    LODWORD(v15) = [v18 crossesDayBoundary];

    if (v15)
    {
      Day = SCLGetNextDay(v11);
    }

    [v17 setWeekday:Day];
    v9 = [MEMORY[0x277CCA970] SCL_dateIntervalForActiveScheduleOnOrAfterDate:v6 calendar:v8 startComponents:v14 endComponents:v17];
  }

  return v9;
}

- (BOOL)intersectsRecurrence:(id)a3
{
  v4 = a3;
  v5 = [(SCLScheduleRecurrence *)v4 day];
  v6 = [(SCLScheduleRecurrence *)self day];
  v7 = [(SCLScheduleRecurrence *)self timeInterval];
  v8 = v7;
  if (v5 != v6)
  {
    if ([v7 crossesDayBoundary])
    {
      Day = SCLGetNextDay([(SCLScheduleRecurrence *)self day]);
      v12 = [(SCLScheduleRecurrence *)v4 day];

      if (Day == v12)
      {
        v8 = [(SCLScheduleRecurrence *)v4 timeInterval];
        v9 = [v8 startTime];
        v13 = self;
LABEL_10:
        v16 = [(SCLScheduleRecurrence *)v13 timeInterval];
        v17 = [v16 startTime];
        v10 = [v9 compare:v17] == -1;

        goto LABEL_11;
      }
    }

    else
    {
    }

    v8 = [(SCLScheduleRecurrence *)v4 timeInterval];
    if (![v8 crossesDayBoundary])
    {
      v10 = 0;
      goto LABEL_13;
    }

    v14 = SCLGetPreviousDay([(SCLScheduleRecurrence *)self day]);
    v15 = [(SCLScheduleRecurrence *)v4 day];

    if (v14 != v15)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v8 = [(SCLScheduleRecurrence *)self timeInterval];
    v9 = [v8 startTime];
    v13 = v4;
    goto LABEL_10;
  }

  v9 = [(SCLScheduleRecurrence *)v4 timeInterval];
  v10 = [v8 intersectsTimeInterval:v9];
LABEL_11:

LABEL_13:
LABEL_14:

  return v10;
}

- (BOOL)isContiguousWithRecurrence:(id)a3
{
  v4 = a3;
  v5 = [(SCLScheduleRecurrence *)self timeInterval];
  v6 = [v5 endTime];

  v7 = [v4 day];
  if (v7 == [(SCLScheduleRecurrence *)self day])
  {
    v8 = [(SCLScheduleRecurrence *)self timeInterval];
    v9 = [v8 crossesDayBoundary];

    if ((v9 & 1) == 0)
    {
      v10 = [v4 timeInterval];
      v13 = [v10 startTime];
      v16 = [v6 isEqual:v13];
LABEL_10:

      goto LABEL_11;
    }
  }

  v10 = [(SCLScheduleRecurrence *)self timeInterval];
  if (([v10 crossesDayBoundary] & 1) != 0 || !objc_msgSend(v6, "hour") && !objc_msgSend(v6, "minute"))
  {
    Day = SCLGetNextDay([(SCLScheduleRecurrence *)self day]);
    v12 = [v4 day];

    if (Day != v12)
    {
      v16 = 0;
      goto LABEL_13;
    }

    v10 = [(SCLScheduleRecurrence *)self timeInterval];
    v13 = [v10 endTime];
    v14 = [v4 timeInterval];
    v15 = [v14 startTime];
    v16 = [v13 isEqual:v15];

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