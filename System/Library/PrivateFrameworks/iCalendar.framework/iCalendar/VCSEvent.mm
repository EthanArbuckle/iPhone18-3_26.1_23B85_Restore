@interface VCSEvent
- (VCSDate)endDate;
- (VCSDate)startDate;
- (void)ensureDurationAlarms;
- (void)setEndDate:(id)date;
- (void)setStartDate:(id)date;
@end

@implementation VCSEvent

- (VCSDate)startDate
{
  v2 = [(VCSEntity *)self propertyForName:@"DTSTART"];
  singleValue = [v2 singleValue];
  value = [singleValue value];

  return value;
}

- (void)setStartDate:(id)date
{
  dateCopy = date;
  v5 = [[VCSProperty alloc] initWithName:@"DTSTART" rawValue:dateCopy type:7];

  [(VCSEntity *)self setProperty:v5];
}

- (VCSDate)endDate
{
  v2 = [(VCSEntity *)self propertyForName:@"DTEND"];
  singleValue = [v2 singleValue];
  value = [singleValue value];

  return value;
}

- (void)setEndDate:(id)date
{
  dateCopy = date;
  v5 = [[VCSProperty alloc] initWithName:@"DTEND" rawValue:dateCopy type:7];

  [(VCSEntity *)self setProperty:v5];
}

- (void)ensureDurationAlarms
{
  v16 = *MEMORY[0x277D85DE8];
  alarms = [(VCSEntity *)self alarms];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [alarms countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(alarms);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        startDate = [(VCSEvent *)self startDate];
        [v8 ensureRelativeAlarmWithStartDate:startDate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [alarms countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end