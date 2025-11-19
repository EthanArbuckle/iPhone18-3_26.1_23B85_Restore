@interface state_estimation_modelInput
- (id)featureValueForName:(id)a3;
- (state_estimation_modelInput)initWithDaily_history_input:(id)a3 usage_history_input:(id)a4;
@end

@implementation state_estimation_modelInput

- (state_estimation_modelInput)initWithDaily_history_input:(id)a3 usage_history_input:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = state_estimation_modelInput;
  v9 = [(state_estimation_modelInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daily_history_input, a3);
    objc_storeStrong(&v10->_usage_history_input, a4);
  }

  return v10;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"daily_history_input"])
  {
    v5 = [(state_estimation_modelInput *)self daily_history_input];
LABEL_5:
    v6 = v5;
    v7 = [MLFeatureValue featureValueWithMultiArray:v5];

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"usage_history_input"])
  {
    v5 = [(state_estimation_modelInput *)self usage_history_input];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end