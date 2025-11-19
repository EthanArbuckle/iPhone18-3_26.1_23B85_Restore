@interface USDeviceActivitySchedule
+ (id)nextIntervalForStartComponents:(id)a3 endComponents:(id)a4;
+ (id)nextWarningDateForComponents:(id)a3 referenceDate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSDateInterval)nextInterval;
- (USDeviceActivitySchedule)initWithCoder:(id)a3;
- (USDeviceActivitySchedule)initWithIntervalStart:(id)a3 intervalEnd:(id)a4 repeats:(BOOL)a5 warningTime:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USDeviceActivitySchedule

- (USDeviceActivitySchedule)initWithIntervalStart:(id)a3 intervalEnd:(id)a4 repeats:(BOOL)a5 warningTime:(id)a6
{
  v20.receiver = self;
  v20.super_class = USDeviceActivitySchedule;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = [(USDeviceActivitySchedule *)&v20 init];
  v13 = [v11 copy];

  intervalStart = v12->_intervalStart;
  v12->_intervalStart = v13;

  v15 = [v10 copy];
  intervalEnd = v12->_intervalEnd;
  v12->_intervalEnd = v15;

  v12->_repeats = a5;
  v17 = [v9 copy];

  warningTime = v12->_warningTime;
  v12->_warningTime = v17;

  return v12;
}

- (USDeviceActivitySchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IntervalStart"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IntervalEnd"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WarningTime"];
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ![v4 containsValueForKey:@"Repeats"])
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

    v9->_repeats = [v4 decodeBoolForKey:@"Repeats"];
    v14 = [v7 copy];
    warningTime = v9->_warningTime;
    v9->_warningTime = v14;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  intervalStart = self->_intervalStart;
  v5 = a3;
  [v5 encodeObject:intervalStart forKey:@"IntervalStart"];
  [v5 encodeObject:self->_intervalEnd forKey:@"IntervalEnd"];
  [v5 encodeBool:self->_repeats forKey:@"Repeats"];
  [v5 encodeObject:self->_warningTime forKey:@"WarningTime"];
}

- (NSDateInterval)nextInterval
{
  v3 = objc_opt_class();
  v4 = [(USDeviceActivitySchedule *)self intervalStart];
  v5 = [(USDeviceActivitySchedule *)self intervalEnd];
  v6 = [v3 nextIntervalForStartComponents:v4 endComponents:v5];

  return v6;
}

+ (id)nextIntervalForStartComponents:(id)a3 endComponents:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = v5;
    v32 = 2114;
    v33 = v6;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Computing next interval with start components: %{public}@, end components: %{public}@", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [v5 calendar];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v11 = v10;

  v12 = [v5 timeZone];
  if (v12)
  {
    [v11 setTimeZone:v12];
  }

  else
  {
    v13 = [MEMORY[0x277CBEBB0] localTimeZone];
    [v11 setTimeZone:v13];
  }

  v14 = [v11 nextDateAfterDate:v7 matchingComponents:v5 options:516];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v14;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Previous start date is: %{public}@", buf, 0xCu);
  }

  v15 = [v6 calendar];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v18 = v17;

  v19 = [v6 timeZone];
  if (v19)
  {
    [v18 setTimeZone:v19];
  }

  else
  {
    v20 = [MEMORY[0x277CBEBB0] localTimeZone];
    [v18 setTimeZone:v20];
  }

  v21 = [v18 nextDateAfterDate:v7 matchingComponents:v6 options:516];
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
    v22 = [v11 nextDateAfterDate:v7 matchingComponents:v5 options:512];
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
    v25 = [v18 nextDateAfterDate:v24 matchingComponents:v6 options:512];
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

+ (id)nextWarningDateForComponents:(id)a3 referenceDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 calendar];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v10 = v9;

  v11 = [v5 timeZone];
  if (v11)
  {
    [v10 setTimeZone:v11];
  }

  else
  {
    v12 = [MEMORY[0x277CBEBB0] localTimeZone];
    [v10 setTimeZone:v12];
  }

  v13 = [v10 dateByAddingComponents:v5 toDate:v6 options:0];
  if (!v13)
  {
LABEL_11:
    v13 = v13;
    v16 = v13;
    goto LABEL_15;
  }

  [v6 timeIntervalSinceDate:v13];
  if (v14 != 0.0)
  {
    if (v14 < 0.0)
    {
      v15 = [v6 dateByAddingTimeInterval:?];

      v13 = v15;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [USDeviceActivitySchedule nextWarningDateForComponents:v5 referenceDate:?];
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(USDeviceActivitySchedule *)self warningTime];
    v6 = v4;
    v7 = [v6 warningTime];
    v8 = [(USDeviceActivitySchedule *)self intervalStart];
    v9 = [v6 intervalStart];
    if ([v8 isEqual:v9])
    {
      v10 = [(USDeviceActivitySchedule *)self intervalEnd];
      v11 = [v6 intervalEnd];
      if ([v10 isEqual:v11] && (v12 = -[USDeviceActivitySchedule repeats](self, "repeats"), v12 == objc_msgSend(v6, "repeats")))
      {
        if (v5 == v7)
        {
          v13 = 1;
        }

        else
        {
          v13 = [v5 isEqual:v7];
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
  v3 = [(USDeviceActivitySchedule *)self intervalStart];
  v4 = [v3 hash];
  v5 = [(USDeviceActivitySchedule *)self intervalEnd];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(USDeviceActivitySchedule *)self repeats];
  v8 = [(USDeviceActivitySchedule *)self warningTime];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = USDeviceActivitySchedule;
  v4 = [(USDeviceActivitySchedule *)&v11 description];
  v5 = [(USDeviceActivitySchedule *)self intervalStart];
  v6 = [(USDeviceActivitySchedule *)self intervalEnd];
  v7 = [(USDeviceActivitySchedule *)self repeats];
  v8 = [(USDeviceActivitySchedule *)self warningTime];
  v9 = [v3 stringWithFormat:@"%@\nIntervalStart: %@\nIntervalEnd: %@\nRepeats: %d\nWarningTime: %@", v4, v5, v6, v7, v8];

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