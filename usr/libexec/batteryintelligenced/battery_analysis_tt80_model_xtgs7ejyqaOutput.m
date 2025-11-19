@interface battery_analysis_tt80_model_xtgs7ejyqaOutput
- (battery_analysis_tt80_model_xtgs7ejyqaOutput)initWithTt80_prediction:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation battery_analysis_tt80_model_xtgs7ejyqaOutput

- (battery_analysis_tt80_model_xtgs7ejyqaOutput)initWithTt80_prediction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = battery_analysis_tt80_model_xtgs7ejyqaOutput;
  v6 = [(battery_analysis_tt80_model_xtgs7ejyqaOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tt80_prediction, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"tt80_prediction"])
  {
    v4 = [(battery_analysis_tt80_model_xtgs7ejyqaOutput *)self tt80_prediction];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end