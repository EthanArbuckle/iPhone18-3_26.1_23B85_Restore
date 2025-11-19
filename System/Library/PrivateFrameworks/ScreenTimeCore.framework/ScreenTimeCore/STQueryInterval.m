@interface STQueryInterval
- (NSDateInterval)dateInterval;
- (STQueryInterval)initWithStartDate:(id)a3 partitionTimeInterval:(double)a4;
- (id)debugDescription;
@end

@implementation STQueryInterval

- (STQueryInterval)initWithStartDate:(id)a3 partitionTimeInterval:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = STQueryInterval;
  v8 = [(STQueryInterval *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_startDate, a3);
    v9->_partitionTimeInterval = a4;
  }

  return v9;
}

- (NSDateInterval)dateInterval
{
  v3 = [(STQueryInterval *)self startDate];
  [(STQueryInterval *)self partitionTimeInterval];
  v5 = [v3 dateByAddingTimeInterval:{v4 * -[STQueryInterval numberOfPartitions](self, "numberOfPartitions")}];
  if ([v5 compare:v3] == -1)
  {
    v6 = v3;

    v5 = v6;
  }

  v7 = [[NSDateInterval alloc] initWithStartDate:v3 endDate:v5];

  return v7;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(STQueryInterval *)self startDate];
  [(STQueryInterval *)self partitionTimeInterval];
  v7 = [NSString stringWithFormat:@"<%@: %p { startDate = %@, partitionTimeInterval = %.2f, numberOfPartitions = %lu }>", v4, self, v5, v6, [(STQueryInterval *)self numberOfPartitions]];

  return v7;
}

@end