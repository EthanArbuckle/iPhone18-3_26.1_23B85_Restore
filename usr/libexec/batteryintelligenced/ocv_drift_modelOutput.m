@interface ocv_drift_modelOutput
- (id)featureValueForName:(id)a3;
- (ocv_drift_modelOutput)initWithPrediction:(id)a3;
@end

@implementation ocv_drift_modelOutput

- (ocv_drift_modelOutput)initWithPrediction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ocv_drift_modelOutput;
  v6 = [(ocv_drift_modelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Prediction, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"Prediction"])
  {
    v4 = [(ocv_drift_modelOutput *)self Prediction];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end