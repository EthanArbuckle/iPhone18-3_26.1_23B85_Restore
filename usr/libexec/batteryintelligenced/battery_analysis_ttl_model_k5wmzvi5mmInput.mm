@interface battery_analysis_ttl_model_k5wmzvi5mmInput
- (battery_analysis_ttl_model_k5wmzvi5mmInput)initWithInput_1:(id)input_1;
- (id)featureValueForName:(id)name;
@end

@implementation battery_analysis_ttl_model_k5wmzvi5mmInput

- (battery_analysis_ttl_model_k5wmzvi5mmInput)initWithInput_1:(id)input_1
{
  input_1Copy = input_1;
  v9.receiver = self;
  v9.super_class = battery_analysis_ttl_model_k5wmzvi5mmInput;
  v6 = [(battery_analysis_ttl_model_k5wmzvi5mmInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_input_1, input_1);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"input_1"])
  {
    input = [(battery_analysis_ttl_model_k5wmzvi5mmInput *)self input];
    v5 = [MLFeatureValue featureValueWithMultiArray:input];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end