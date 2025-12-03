@interface tt80_lstm_regressionOutput
- (id)featureValueForName:(id)name;
- (tt80_lstm_regressionOutput)initWithTt80_prediction_in_hrs:(id)tt80_prediction_in_hrs;
@end

@implementation tt80_lstm_regressionOutput

- (tt80_lstm_regressionOutput)initWithTt80_prediction_in_hrs:(id)tt80_prediction_in_hrs
{
  tt80_prediction_in_hrsCopy = tt80_prediction_in_hrs;
  v9.receiver = self;
  v9.super_class = tt80_lstm_regressionOutput;
  v6 = [(tt80_lstm_regressionOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tt80_prediction_in_hrs, tt80_prediction_in_hrs);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"tt80_prediction_in_hrs"])
  {
    tt80_prediction_in_hrs = [(tt80_lstm_regressionOutput *)self tt80_prediction_in_hrs];
    v5 = [MLFeatureValue featureValueWithMultiArray:tt80_prediction_in_hrs];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end