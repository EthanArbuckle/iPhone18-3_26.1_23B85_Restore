@interface battery_analysis_tt80_model_bkwqiw7f79Input
- (battery_analysis_tt80_model_bkwqiw7f79Input)initWithInput_1:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation battery_analysis_tt80_model_bkwqiw7f79Input

- (battery_analysis_tt80_model_bkwqiw7f79Input)initWithInput_1:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = battery_analysis_tt80_model_bkwqiw7f79Input;
  v6 = [(battery_analysis_tt80_model_bkwqiw7f79Input *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input_1, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"input_1"])
  {
    v4 = [(battery_analysis_tt80_model_bkwqiw7f79Input *)self input];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end