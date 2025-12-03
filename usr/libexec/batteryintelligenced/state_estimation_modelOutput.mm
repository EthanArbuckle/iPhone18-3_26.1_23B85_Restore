@interface state_estimation_modelOutput
- (id)featureValueForName:(id)name;
- (state_estimation_modelOutput)initWithHealth_state_estimation:(id)health_state_estimation;
@end

@implementation state_estimation_modelOutput

- (state_estimation_modelOutput)initWithHealth_state_estimation:(id)health_state_estimation
{
  health_state_estimationCopy = health_state_estimation;
  v9.receiver = self;
  v9.super_class = state_estimation_modelOutput;
  v6 = [(state_estimation_modelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_health_state_estimation, health_state_estimation);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"health_state_estimation"])
  {
    health_state_estimation = [(state_estimation_modelOutput *)self health_state_estimation];
    v5 = [MLFeatureValue featureValueWithMultiArray:health_state_estimation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end