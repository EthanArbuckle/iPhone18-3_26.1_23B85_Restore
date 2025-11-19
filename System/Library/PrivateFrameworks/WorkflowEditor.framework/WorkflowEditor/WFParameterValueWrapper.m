@interface WFParameterValueWrapper
- (NSString)readableTitle;
- (WFParameterValueWrapper)initWithValue:(id)a3 parameter:(id)a4;
@end

@implementation WFParameterValueWrapper

- (NSString)readableTitle
{
  v3 = [(WFParameterValueWrapper *)self parameter];
  v4 = [(WFParameterValueWrapper *)self value];
  v5 = [v3 wf_pickerLocalizedTitleForState:v4];

  return v5;
}

- (WFParameterValueWrapper)initWithValue:(id)a3 parameter:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFParameterValuePickerDataSource.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"value"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFParameterValuePickerDataSource.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFParameterValueWrapper;
  v11 = [(WFParameterValueWrapper *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_value, a3);
    objc_storeStrong(&v12->_parameter, a4);
    v13 = v12;
  }

  return v12;
}

@end