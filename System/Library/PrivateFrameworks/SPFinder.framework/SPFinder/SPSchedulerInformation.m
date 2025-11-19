@interface SPSchedulerInformation
- (SPSchedulerInformation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSchedulerInformation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SPSchedulerInformation advertisementCount](self forKey:{"advertisementCount"), @"advertisementCount"}];
  [v4 encodeInteger:-[SPSchedulerInformation priorityCount](self forKey:{"priorityCount"), @"priorityCount"}];
  [v4 encodeInteger:-[SPSchedulerInformation lowBatteryCount](self forKey:{"lowBatteryCount"), @"lowBatteryCount"}];
}

- (SPSchedulerInformation)initWithCoder:(id)a3
{
  v4 = a3;
  -[SPSchedulerInformation setAdvertisementCount:](self, "setAdvertisementCount:", [v4 decodeIntegerForKey:@"advertisementCount"]);
  -[SPSchedulerInformation setPriorityCount:](self, "setPriorityCount:", [v4 decodeIntegerForKey:@"priorityCount"]);
  v5 = [v4 decodeIntegerForKey:@"lowBatteryCount"];

  [(SPSchedulerInformation *)self setLowBatteryCount:v5];
  return self;
}

@end