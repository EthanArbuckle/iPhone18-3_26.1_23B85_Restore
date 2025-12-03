@interface WFParameterValueWrapper
- (NSString)readableTitle;
- (WFParameterValueWrapper)initWithValue:(id)value parameter:(id)parameter;
@end

@implementation WFParameterValueWrapper

- (NSString)readableTitle
{
  parameter = [(WFParameterValueWrapper *)self parameter];
  value = [(WFParameterValueWrapper *)self value];
  v5 = [parameter wf_pickerLocalizedTitleForState:value];

  return v5;
}

- (WFParameterValueWrapper)initWithValue:(id)value parameter:(id)parameter
{
  valueCopy = value;
  parameterCopy = parameter;
  v10 = parameterCopy;
  if (valueCopy)
  {
    if (parameterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFParameterValuePickerDataSource.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFParameterValuePickerDataSource.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFParameterValueWrapper;
  v11 = [(WFParameterValueWrapper *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_value, value);
    objc_storeStrong(&v12->_parameter, parameter);
    v13 = v12;
  }

  return v12;
}

@end