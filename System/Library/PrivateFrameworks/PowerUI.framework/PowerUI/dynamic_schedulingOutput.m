@interface dynamic_schedulingOutput
- (dynamic_schedulingOutput)initWithCharge_duration:(double)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation dynamic_schedulingOutput

- (dynamic_schedulingOutput)initWithCharge_duration:(double)a3
{
  v5.receiver = self;
  v5.super_class = dynamic_schedulingOutput;
  result = [(dynamic_schedulingOutput *)&v5 init];
  if (result)
  {
    result->_charge_duration = a3;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"charge_duration"])
  {
    v4 = MEMORY[0x277CBFEF8];
    [(dynamic_schedulingOutput *)self charge_duration];
    v5 = [v4 featureValueWithDouble:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end