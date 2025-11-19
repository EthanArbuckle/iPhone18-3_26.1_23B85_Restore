@interface HVConsumerCoordinatorGuardedData
- (HVConsumerCoordinatorGuardedData)init;
@end

@implementation HVConsumerCoordinatorGuardedData

- (HVConsumerCoordinatorGuardedData)init
{
  v6.receiver = self;
  v6.super_class = HVConsumerCoordinatorGuardedData;
  v2 = [(HVConsumerCoordinatorGuardedData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    budget = v2->_budget;
    v2->_budget = v3;
  }

  return v2;
}

@end