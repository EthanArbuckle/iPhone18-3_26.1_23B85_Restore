@interface STQueryInterval
- (NSDateInterval)dateInterval;
- (STQueryInterval)initWithStartDate:(id)date partitionTimeInterval:(double)interval;
- (id)debugDescription;
@end

@implementation STQueryInterval

- (STQueryInterval)initWithStartDate:(id)date partitionTimeInterval:(double)interval
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = STQueryInterval;
  v8 = [(STQueryInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_startDate, date);
    v9->_partitionTimeInterval = interval;
  }

  return v9;
}

- (NSDateInterval)dateInterval
{
  startDate = [(STQueryInterval *)self startDate];
  [(STQueryInterval *)self partitionTimeInterval];
  v5 = [startDate dateByAddingTimeInterval:{v4 * -[STQueryInterval numberOfPartitions](self, "numberOfPartitions")}];
  if ([v5 compare:startDate] == -1)
  {
    v6 = startDate;

    v5 = v6;
  }

  v7 = [[NSDateInterval alloc] initWithStartDate:startDate endDate:v5];

  return v7;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  startDate = [(STQueryInterval *)self startDate];
  [(STQueryInterval *)self partitionTimeInterval];
  v7 = [NSString stringWithFormat:@"<%@: %p { startDate = %@, partitionTimeInterval = %.2f, numberOfPartitions = %lu }>", v4, self, startDate, v6, [(STQueryInterval *)self numberOfPartitions]];

  return v7;
}

@end