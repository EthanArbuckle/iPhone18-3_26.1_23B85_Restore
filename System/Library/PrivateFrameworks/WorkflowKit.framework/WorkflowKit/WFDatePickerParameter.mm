@interface WFDatePickerParameter
- (WFDatePickerParameter)initWithDefinition:(id)a3;
- (id)defaultSupportedVariableTypes;
- (id)parameterStateFromDialogResponse:(id)a3;
- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6;
- (void)setDatePickerMode:(id)a3;
- (void)setMaximumDate:(id)a3;
- (void)setMinimumDate:(id)a3;
@end

@implementation WFDatePickerParameter

- (id)parameterStateFromDialogResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 inputtedDate];
  if (v4)
  {
    v5 = [WFDateSubstitutableState alloc];
    v6 = [v3 inputtedDate];
    v7 = [(WFVariableSubstitutableParameterState *)v5 initWithValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6
{
  v10 = MEMORY[0x1E69E0A78];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v20 = objc_alloc_init(v10);
  v15 = [v13 value];

  [v20 setDefaultDate:v15];
  v16 = [(WFDatePickerParameter *)self datePickerMode];
  [v20 setDatePickerMode:v16];

  v17 = [(WFDatePickerParameter *)self minimumDate];
  [v20 setMinimumDate:v17];

  v18 = [(WFDatePickerParameter *)self maximumDate];
  [v20 setMaximumDate:v18];

  v19 = [objc_alloc(MEMORY[0x1E69E0B70]) initWithDatePickerConfiguration:v20 message:0 attribution:v14 prompt:v12];
  v11[2](v11, v19);
}

- (id)defaultSupportedVariableTypes
{
  v2 = objc_opt_class();

  return [v2 allInsertableVariableTypes];
}

- (void)setMaximumDate:(id)a3
{
  v5 = a3;
  maximumDate = self->_maximumDate;
  v8 = v5;
  if (maximumDate == v5)
  {
    objc_storeStrong(&self->_maximumDate, a3);
  }

  else
  {
    v7 = [(NSDate *)maximumDate isEqualToDate:v5];
    objc_storeStrong(&self->_maximumDate, a3);
    if (!v7)
    {
      [(WFParameter *)self attributesDidChange];
    }
  }
}

- (void)setMinimumDate:(id)a3
{
  v5 = a3;
  minimumDate = self->_minimumDate;
  v8 = v5;
  if (minimumDate == v5)
  {
    objc_storeStrong(&self->_minimumDate, a3);
  }

  else
  {
    v7 = [(NSDate *)minimumDate isEqualToDate:v5];
    objc_storeStrong(&self->_minimumDate, a3);
    if (!v7)
    {
      [(WFParameter *)self attributesDidChange];
    }
  }
}

- (void)setDatePickerMode:(id)a3
{
  v4 = a3;
  v5 = self->_datePickerMode;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    datePickerMode = self->_datePickerMode;
    self->_datePickerMode = v8;

    [(WFParameter *)self attributesDidChange];
  }

LABEL_9:
}

- (WFDatePickerParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WFDatePickerParameter;
  v5 = [(WFParameter *)&v20 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"DatePickerMode"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    datePickerMode = v5->_datePickerMode;
    v5->_datePickerMode = v8;

    v10 = [v4 objectForKey:@"MinimumValue"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    minimumDate = v5->_minimumDate;
    v5->_minimumDate = v12;

    v14 = [v4 objectForKey:@"MaximumValue"];
    v15 = objc_opt_class();
    v16 = WFEnforceClass_1501(v14, v15);
    maximumDate = v5->_maximumDate;
    v5->_maximumDate = v16;

    v18 = v5;
  }

  return v5;
}

@end