@interface USDeviceActivitySchedule
+ (id)nextIntervalForStartComponents:(id)components endComponents:(id)endComponents;
+ (id)nextWarningDateForComponents:(id)components referenceDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSDateInterval)nextInterval;
- (USDeviceActivitySchedule)initWithCoder:(id)coder;
- (USDeviceActivitySchedule)initWithIntervalStart:(id)start intervalEnd:(id)end repeats:(BOOL)repeats warningTime:(id)time;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USDeviceActivitySchedule

- (USDeviceActivitySchedule)initWithIntervalStart:(id)start intervalEnd:(id)end repeats:(BOOL)repeats warningTime:(id)time
{
  v20.receiver = self;
  v20.super_class = USDeviceActivitySchedule;
  timeCopy = time;
  endCopy = end;
  startCopy = start;
  v12 = [(USDeviceActivitySchedule *)&v20 init];
  v13 = [startCopy copy];

  intervalStart = v12->_intervalStart;
  v12->_intervalStart = v13;

  v15 = [endCopy copy];
  intervalEnd = v12->_intervalEnd;
  v12->_intervalEnd = v15;

  v12->_repeats = repeats;
  v17 = [timeCopy copy];

  warningTime = v12->_warningTime;
  v12->_warningTime = v17;

  return v12;
}

- (USDeviceActivitySchedule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IntervalStart"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IntervalEnd"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WarningTime"];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ![coderCopy containsValueForKey:@"Repeats"])
  {

    v9 = 0;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = USDeviceActivitySchedule;
    v9 = [(USDeviceActivitySchedule *)&v17 init];
    v10 = [v5 copy];
    intervalStart = v9->_intervalStart;
    v9->_intervalStart = v10;

    v12 = [v6 copy];
    intervalEnd = v9->_intervalEnd;
    v9->_intervalEnd = v12;

    v9->_repeats = [coderCopy decodeBoolForKey:@"Repeats"];
    v14 = [v7 copy];
    warningTime = v9->_warningTime;
    v9->_warningTime = v14;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  intervalStart = self->_intervalStart;
  coderCopy = coder;
  [coderCopy encodeObject:intervalStart forKey:@"IntervalStart"];
  [coderCopy encodeObject:self->_intervalEnd forKey:@"IntervalEnd"];
  [coderCopy encodeBool:self->_repeats forKey:@"Repeats"];
  [coderCopy encodeObject:self->_warningTime forKey:@"WarningTime"];
}

- (NSDateInterval)nextInterval
{
  v3 = objc_opt_class();
  intervalStart = [(USDeviceActivitySchedule *)self intervalStart];
  intervalEnd = [(USDeviceActivitySchedule *)self intervalEnd];
  v6 = [v3 nextIntervalForStartComponents:intervalStart endComponents:intervalEnd];

  return v6;
}

+ (id)nextIntervalForStartComponents:(id)components endComponents:(id)endComponents
{
  v34 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  endComponentsCopy = endComponents;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = componentsCopy;
    v32 = 2114;
    v33 = endComponentsCopy;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Computing next interval with start components: %{public}@, end components: %{public}@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CBEAA8] now];
  calendar = [componentsCopy calendar];
  v9 = calendar;
  if (calendar)
  {
    currentCalendar = calendar;
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v11 = currentCalendar;

  timeZone = [componentsCopy timeZone];
  if (timeZone)
  {
    [v11 setTimeZone:timeZone];
  }

  else
  {
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    [v11 setTimeZone:localTimeZone];
  }

  v14 = [v11 nextDateAfterDate:v7 matchingComponents:componentsCopy options:516];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v14;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Previous start date is: %{public}@", buf, 0xCu);
  }

  calendar2 = [endComponentsCopy calendar];
  v16 = calendar2;
  if (calendar2)
  {
    currentCalendar2 = calendar2;
  }

  else
  {
    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v18 = currentCalendar2;

  timeZone2 = [endComponentsCopy timeZone];
  if (timeZone2)
  {
    [v18 setTimeZone:timeZone2];
  }

  else
  {
    localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
    [v18 setTimeZone:localTimeZone2];
  }

  v21 = [v18 nextDateAfterDate:v7 matchingComponents:endComponentsCopy options:516];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v21;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Previous end date is: %{public}@", buf, 0xCu);
  }

  if (v14 && (!v21 || [v14 compare:v21] == 1))
  {
    v22 = v14;
  }

  else
  {
    v22 = [v11 nextDateAfterDate:v7 matchingComponents:componentsCopy options:512];
  }

  v23 = v22;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v23;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Next start date is: %{public}@", buf, 0xCu);
  }

  if (v23)
  {
    v29 = v11;
    v24 = [v23 laterDate:v7];
    v25 = [v18 nextDateAfterDate:v24 matchingComponents:endComponentsCopy options:512];
    if (v25)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v25;
        _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Next end date is: %{public}@", buf, 0xCu);
      }

      v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v25];
    }

    else
    {
      v26 = 0;
    }

    v11 = v29;
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)nextWarningDateForComponents:(id)components referenceDate:(id)date
{
  componentsCopy = components;
  dateCopy = date;
  calendar = [componentsCopy calendar];
  v8 = calendar;
  if (calendar)
  {
    currentCalendar = calendar;
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v10 = currentCalendar;

  timeZone = [componentsCopy timeZone];
  if (timeZone)
  {
    [v10 setTimeZone:timeZone];
  }

  else
  {
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    [v10 setTimeZone:localTimeZone];
  }

  v13 = [v10 dateByAddingComponents:componentsCopy toDate:dateCopy options:0];
  if (!v13)
  {
LABEL_11:
    v13 = v13;
    v16 = v13;
    goto LABEL_15;
  }

  [dateCopy timeIntervalSinceDate:v13];
  if (v14 != 0.0)
  {
    if (v14 < 0.0)
    {
      v15 = [dateCopy dateByAddingTimeInterval:?];

      v13 = v15;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [USDeviceActivitySchedule nextWarningDateForComponents:componentsCopy referenceDate:?];
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    warningTime = [(USDeviceActivitySchedule *)self warningTime];
    v6 = equalCopy;
    warningTime2 = [v6 warningTime];
    intervalStart = [(USDeviceActivitySchedule *)self intervalStart];
    intervalStart2 = [v6 intervalStart];
    if ([intervalStart isEqual:intervalStart2])
    {
      intervalEnd = [(USDeviceActivitySchedule *)self intervalEnd];
      intervalEnd2 = [v6 intervalEnd];
      if ([intervalEnd isEqual:intervalEnd2] && (v12 = -[USDeviceActivitySchedule repeats](self, "repeats"), v12 == objc_msgSend(v6, "repeats")))
      {
        if (warningTime == warningTime2)
        {
          v13 = 1;
        }

        else
        {
          v13 = [warningTime isEqual:warningTime2];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  intervalStart = [(USDeviceActivitySchedule *)self intervalStart];
  v4 = [intervalStart hash];
  intervalEnd = [(USDeviceActivitySchedule *)self intervalEnd];
  v6 = [intervalEnd hash] ^ v4;
  v7 = v6 ^ [(USDeviceActivitySchedule *)self repeats];
  warningTime = [(USDeviceActivitySchedule *)self warningTime];
  v9 = [warningTime hash];

  return v7 ^ v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = USDeviceActivitySchedule;
  v4 = [(USDeviceActivitySchedule *)&v11 description];
  intervalStart = [(USDeviceActivitySchedule *)self intervalStart];
  intervalEnd = [(USDeviceActivitySchedule *)self intervalEnd];
  repeats = [(USDeviceActivitySchedule *)self repeats];
  warningTime = [(USDeviceActivitySchedule *)self warningTime];
  v9 = [v3 stringWithFormat:@"%@\nIntervalStart: %@\nIntervalEnd: %@\nRepeats: %d\nWarningTime: %@", v4, intervalStart, intervalEnd, repeats, warningTime];

  return v9;
}

+ (void)nextWarningDateForComponents:(uint64_t)a1 referenceDate:.cold.1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Tried to create a 0-length warning interval with components %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end