@interface nccp_wra_qmaxp_seq_modelInput
- (id)featureValueForName:(id)name;
- (nccp_wra_qmaxp_seq_modelInput)initWithDaily_history_input:(id)daily_history_input usage_history_input:(id)usage_history_input;
@end

@implementation nccp_wra_qmaxp_seq_modelInput

- (nccp_wra_qmaxp_seq_modelInput)initWithDaily_history_input:(id)daily_history_input usage_history_input:(id)usage_history_input
{
  daily_history_inputCopy = daily_history_input;
  usage_history_inputCopy = usage_history_input;
  v12.receiver = self;
  v12.super_class = nccp_wra_qmaxp_seq_modelInput;
  v9 = [(nccp_wra_qmaxp_seq_modelInput *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daily_history_input, daily_history_input);
    objc_storeStrong(&v10->_usage_history_input, usage_history_input);
  }

  return v10;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"daily_history_input"])
  {
    daily_history_input = [(nccp_wra_qmaxp_seq_modelInput *)self daily_history_input];
LABEL_5:
    v6 = daily_history_input;
    v7 = [MLFeatureValue featureValueWithMultiArray:daily_history_input];

    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"usage_history_input"])
  {
    daily_history_input = [(nccp_wra_qmaxp_seq_modelInput *)self usage_history_input];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

@end