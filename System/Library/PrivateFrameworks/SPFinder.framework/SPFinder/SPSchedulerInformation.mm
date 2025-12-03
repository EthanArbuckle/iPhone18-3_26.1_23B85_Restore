@interface SPSchedulerInformation
- (SPSchedulerInformation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPSchedulerInformation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SPSchedulerInformation advertisementCount](self forKey:{"advertisementCount"), @"advertisementCount"}];
  [coderCopy encodeInteger:-[SPSchedulerInformation priorityCount](self forKey:{"priorityCount"), @"priorityCount"}];
  [coderCopy encodeInteger:-[SPSchedulerInformation lowBatteryCount](self forKey:{"lowBatteryCount"), @"lowBatteryCount"}];
}

- (SPSchedulerInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  -[SPSchedulerInformation setAdvertisementCount:](self, "setAdvertisementCount:", [coderCopy decodeIntegerForKey:@"advertisementCount"]);
  -[SPSchedulerInformation setPriorityCount:](self, "setPriorityCount:", [coderCopy decodeIntegerForKey:@"priorityCount"]);
  v5 = [coderCopy decodeIntegerForKey:@"lowBatteryCount"];

  [(SPSchedulerInformation *)self setLowBatteryCount:v5];
  return self;
}

@end