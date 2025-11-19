@interface RTPlaceTypeClassifierModelRankerOutput
- (RTPlaceTypeClassifierModelRankerOutput)initWithTarget:(double)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation RTPlaceTypeClassifierModelRankerOutput

- (RTPlaceTypeClassifierModelRankerOutput)initWithTarget:(double)a3
{
  v5.receiver = self;
  v5.super_class = RTPlaceTypeClassifierModelRankerOutput;
  result = [(RTPlaceTypeClassifierModelRankerOutput *)&v5 init];
  if (result)
  {
    result->_target = a3;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"target"])
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