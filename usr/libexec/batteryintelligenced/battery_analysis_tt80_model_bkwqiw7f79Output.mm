@interface battery_analysis_tt80_model_bkwqiw7f79Output
- (battery_analysis_tt80_model_bkwqiw7f79Output)initWithTt80_prediction:(id)tt80_prediction;
- (id)featureValueForName:(id)name;
@end

@implementation battery_analysis_tt80_model_bkwqiw7f79Output

- (battery_analysis_tt80_model_bkwqiw7f79Output)initWithTt80_prediction:(id)tt80_prediction
{
  tt80_predictionCopy = tt80_prediction;
  v9.receiver = self;
  v9.super_class = battery_analysis_tt80_model_bkwqiw7f79Output;
  v6 = [(battery_analysis_tt80_model_bkwqiw7f79Output *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tt80_prediction, tt80_prediction);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"tt80_prediction"])
  {
    tt80_prediction = [(battery_analysis_tt80_model_bkwqiw7f79Output *)self tt80_prediction];
    v5 = [MLFeatureValue featureValueWithMultiArray:tt80_prediction];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end