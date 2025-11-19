@interface RTStateDepictionAggStateStats
- (RTStateDepictionAggStateStats)init;
@end

@implementation RTStateDepictionAggStateStats

- (RTStateDepictionAggStateStats)init
{
  v5.receiver = self;
  v5.super_class = RTStateDepictionAggStateStats;
  v2 = [(RTStateDepictionAggStateStats *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(RTStateModelLocation);
    [(RTStateDepictionAggStateStats *)v2 setLocation:v3];

    [(RTStateDepictionAggStateStats *)v2 setAggregateTime_s:-1.0];
    [(RTStateDepictionAggStateStats *)v2 setLastExit_s:-1.0];
    [(RTStateDepictionAggStateStats *)v2 setNumOfEntries:0];
  }

  return v2;
}

@end