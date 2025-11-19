@interface VCSEvent
- (VCSDate)endDate;
- (VCSDate)startDate;
- (void)ensureDurationAlarms;
- (void)setEndDate:(id)a3;
- (void)setStartDate:(id)a3;
@end

@implementation VCSEvent

- (VCSDate)startDate
{
  v2 = [(VCSEntity *)self propertyForName:@"DTSTART"];
  v3 = [v2 singleValue];
  v4 = [v3 value];

  return v4;
}

- (void)setStartDate:(id)a3
{
  v4 = a3;
  v5 = [[VCSProperty alloc] initWithName:@"DTSTART" rawValue:v4 type:7];

  [(VCSEntity *)self setProperty:v5];
}

- (VCSDate)endDate
{
  v2 = [(VCSEntity *)self propertyForName:@"DTEND"];
  v3 = [v2 singleValue];
  v4 = [v3 value];

  return v4;
}

- (void)setEndDate:(id)a3
{
  v4 = a3;
  v5 = [[VCSProperty alloc] initWithName:@"DTEND" rawValue:v4 type:7];

  [(VCSEntity *)self setProperty:v5];
}

- (void)ensureDurationAlarms
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(VCSEntity *)self alarms];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(VCSEvent *)self startDate];
        [v8 ensureRelativeAlarmWithStartDate:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end