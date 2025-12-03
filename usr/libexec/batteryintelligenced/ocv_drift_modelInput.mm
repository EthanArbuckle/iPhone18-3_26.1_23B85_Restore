@interface ocv_drift_modelInput
- (id)featureValueForName:(id)name;
- (ocv_drift_modelInput)initWithInput:(id)input;
@end

@implementation ocv_drift_modelInput

- (ocv_drift_modelInput)initWithInput:(id)input
{
  inputCopy = input;
  v9.receiver = self;
  v9.super_class = ocv_drift_modelInput;
  v6 = [(ocv_drift_modelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Input, input);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"Input"])
  {
    input = [(ocv_drift_modelInput *)self Input];
    v5 = [MLFeatureValue featureValueWithMultiArray:input];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end