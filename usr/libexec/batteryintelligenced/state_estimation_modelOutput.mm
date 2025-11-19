@interface state_estimation_modelOutput
- (id)featureValueForName:(id)a3;
- (state_estimation_modelOutput)initWithHealth_state_estimation:(id)a3;
@end

@implementation state_estimation_modelOutput

- (state_estimation_modelOutput)initWithHealth_state_estimation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = state_estimation_modelOutput;
  v6 = [(state_estimation_modelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_health_state_estimation, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"health_state_estimation"])
  {
    v4 = [(state_estimation_modelOutput *)self health_state_estimation];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end