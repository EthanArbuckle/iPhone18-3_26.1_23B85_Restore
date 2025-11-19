@interface HKSPAnalyticsWindDownEventDataWrapper
- (HKSPAnalyticsWindDownEventDataWrapper)initWithCoder:(id)a3;
- (HKSPAnalyticsWindDownEventDataWrapper)initWithEventDatums:(id)a3;
@end

@implementation HKSPAnalyticsWindDownEventDataWrapper

- (HKSPAnalyticsWindDownEventDataWrapper)initWithEventDatums:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HKSPAnalyticsWindDownEventDataWrapper;
  v6 = [(HKSPAnalyticsWindDownEventDataWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventDatums, a3);
    v8 = v7;
  }

  return v7;
}

- (HKSPAnalyticsWindDownEventDataWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"WindDownEvents"];

  v6 = [(HKSPAnalyticsWindDownEventDataWrapper *)self initWithEventDatums:v5];
  return v6;
}

@end