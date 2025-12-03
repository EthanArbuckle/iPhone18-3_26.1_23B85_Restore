@interface ocv_drift_modelOutput
- (id)featureValueForName:(id)name;
- (ocv_drift_modelOutput)initWithPrediction:(id)prediction;
@end

@implementation ocv_drift_modelOutput

- (ocv_drift_modelOutput)initWithPrediction:(id)prediction
{
  predictionCopy = prediction;
  v9.receiver = self;
  v9.super_class = ocv_drift_modelOutput;
  v6 = [(ocv_drift_modelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_Prediction, prediction);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"Prediction"])
  {
    prediction = [(ocv_drift_modelOutput *)self Prediction];
    v5 = [MLFeatureValue featureValueWithMultiArray:prediction];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end