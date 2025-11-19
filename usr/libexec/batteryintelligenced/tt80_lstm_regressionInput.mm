@interface tt80_lstm_regressionInput
- (id)featureValueForName:(id)a3;
- (tt80_lstm_regressionInput)initWithSbc_in:(id)a3;
@end

@implementation tt80_lstm_regressionInput

- (tt80_lstm_regressionInput)initWithSbc_in:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = tt80_lstm_regressionInput;
  v6 = [(tt80_lstm_regressionInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sbc_in, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"sbc_in"])
  {
    v4 = [(tt80_lstm_regressionInput *)self sbc_in];
    v5 = [MLFeatureValue featureValueWithMultiArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end