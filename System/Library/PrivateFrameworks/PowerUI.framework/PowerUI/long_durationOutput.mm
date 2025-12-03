@interface long_durationOutput
- (id)featureValueForName:(id)name;
- (long_durationOutput)initWithDuration_pred:(double)duration_pred;
@end

@implementation long_durationOutput

- (long_durationOutput)initWithDuration_pred:(double)duration_pred
{
  v5.receiver = self;
  v5.super_class = long_durationOutput;
  result = [(long_durationOutput *)&v5 init];
  if (result)
  {
    result->_duration_pred = duration_pred;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"duration_pred"])
  {
    v4 = MEMORY[0x277CBFEF8];
    [(long_durationOutput *)self duration_pred];
    v5 = [v4 featureValueWithDouble:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end