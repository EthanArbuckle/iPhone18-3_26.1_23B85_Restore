@interface HKSPAnalyticsWindDownEventDataWrapper
- (HKSPAnalyticsWindDownEventDataWrapper)initWithCoder:(id)coder;
- (HKSPAnalyticsWindDownEventDataWrapper)initWithEventDatums:(id)datums;
@end

@implementation HKSPAnalyticsWindDownEventDataWrapper

- (HKSPAnalyticsWindDownEventDataWrapper)initWithEventDatums:(id)datums
{
  datumsCopy = datums;
  v10.receiver = self;
  v10.super_class = HKSPAnalyticsWindDownEventDataWrapper;
  v6 = [(HKSPAnalyticsWindDownEventDataWrapper *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventDatums, datums);
    v8 = v7;
  }

  return v7;
}

- (HKSPAnalyticsWindDownEventDataWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"WindDownEvents"];

  v6 = [(HKSPAnalyticsWindDownEventDataWrapper *)self initWithEventDatums:v5];
  return v6;
}

@end