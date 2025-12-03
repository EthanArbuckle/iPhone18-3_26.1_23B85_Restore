@interface RTPlaceTypeClassifierModelRankerOutput
- (RTPlaceTypeClassifierModelRankerOutput)initWithTarget:(double)target;
- (id)featureValueForName:(id)name;
@end

@implementation RTPlaceTypeClassifierModelRankerOutput

- (RTPlaceTypeClassifierModelRankerOutput)initWithTarget:(double)target
{
  v5.receiver = self;
  v5.super_class = RTPlaceTypeClassifierModelRankerOutput;
  result = [(RTPlaceTypeClassifierModelRankerOutput *)&v5 init];
  if (result)
  {
    result->_target = target;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"target"])
  {
    v4 = MEMORY[0x277CBFEF8];
    [(RTPlaceTypeClassifierModelRankerOutput *)self target];
    v5 = [v4 featureValueWithDouble:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end