@interface tt80_lstm_regressionInput
- (id)featureValueForName:(id)name;
- (tt80_lstm_regressionInput)initWithSbc_in:(id)sbc_in;
@end

@implementation tt80_lstm_regressionInput

- (tt80_lstm_regressionInput)initWithSbc_in:(id)sbc_in
{
  sbc_inCopy = sbc_in;
  v9.receiver = self;
  v9.super_class = tt80_lstm_regressionInput;
  v6 = [(tt80_lstm_regressionInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sbc_in, sbc_in);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"sbc_in"])
  {
    sbc_in = [(tt80_lstm_regressionInput *)self sbc_in];
    v5 = [MLFeatureValue featureValueWithMultiArray:sbc_in];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end