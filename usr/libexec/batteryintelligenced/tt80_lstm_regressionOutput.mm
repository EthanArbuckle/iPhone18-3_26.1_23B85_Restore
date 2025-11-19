@interface tt80_lstm_regressionOutput
- (id)featureValueForName:(id)a3;
- (tt80_lstm_regressionOutput)initWithTt80_prediction_in_hrs:(id)a3;
@end

@implementation tt80_lstm_regressionOutput

- (tt80_lstm_regressionOutput)initWithTt80_prediction_in_hrs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = tt80_lstm_regressionOutput;
  v6 = [(tt80_lstm_regressionOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tt80_prediction_in_hrs, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"tt80_prediction_in_hrs"])
  {
    v4 = [(tt80_lstm_regressionOutput *)self tt80_prediction_in_hrs];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end