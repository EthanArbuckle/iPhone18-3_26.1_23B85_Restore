@interface ocv_drift_modelInput
- (id)featureValueForName:(id)a3;
- (ocv_drift_modelInput)initWithInput:(id)a3;
@end

@implementation ocv_drift_modelInput

- (ocv_drift_modelInput)initWithInput:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ocv_drift_modelInput;
  v6 = [(ocv_drift_modelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Input, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"Input"])
  {
    v4 = [(ocv_drift_modelInput *)self Input];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end