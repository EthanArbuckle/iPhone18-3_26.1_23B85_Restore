@interface WFDatePickerParameter
- (WFDatePickerParameter)initWithDefinition:(id)definition;
- (id)defaultSupportedVariableTypes;
- (id)parameterStateFromDialogResponse:(id)response;
- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler;
- (void)setDatePickerMode:(id)mode;
- (void)setMaximumDate:(id)date;
- (void)setMinimumDate:(id)date;
@end

@implementation WFDatePickerParameter

- (id)parameterStateFromDialogResponse:(id)response
{
  responseCopy = response;
  inputtedDate = [responseCopy inputtedDate];
  if (inputtedDate)
  {
    v5 = [WFDateSubstitutableState alloc];
    inputtedDate2 = [responseCopy inputtedDate];
    v7 = [(WFVariableSubstitutableParameterState *)v5 initWithValue:inputtedDate2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler
{
  v10 = MEMORY[0x1E69E0A78];
  handlerCopy = handler;
  promptCopy = prompt;
  stateCopy = state;
  attributionCopy = attribution;
  v20 = objc_alloc_init(v10);
  value = [stateCopy value];

  [v20 setDefaultDate:value];
  datePickerMode = [(WFDatePickerParameter *)self datePickerMode];
  [v20 setDatePickerMode:datePickerMode];

  minimumDate = [(WFDatePickerParameter *)self minimumDate];
  [v20 setMinimumDate:minimumDate];

  maximumDate = [(WFDatePickerParameter *)self maximumDate];
  [v20 setMaximumDate:maximumDate];

  v19 = [objc_alloc(MEMORY[0x1E69E0B70]) initWithDatePickerConfiguration:v20 message:0 attribution:attributionCopy prompt:promptCopy];
  handlerCopy[2](handlerCopy, v19);
}

- (id)defaultSupportedVariableTypes
{
  v2 = objc_opt_class();

  return [v2 allInsertableVariableTypes];
}

- (void)setMaximumDate:(id)date
{
  dateCopy = date;
  maximumDate = self->_maximumDate;
  v8 = dateCopy;
  if (maximumDate == dateCopy)
  {
    objc_storeStrong(&self->_maximumDate, date);
  }

  else
  {
    v7 = [(NSDate *)maximumDate isEqualToDate:dateCopy];
    objc_storeStrong(&self->_maximumDate, date);
    if (!v7)
    {
      [(WFParameter *)self attributesDidChange];
    }
  }
}

- (void)setMinimumDate:(id)date
{
  dateCopy = date;
  minimumDate = self->_minimumDate;
  v8 = dateCopy;
  if (minimumDate == dateCopy)
  {
    objc_storeStrong(&self->_minimumDate, date);
  }

  else
  {
    v7 = [(NSDate *)minimumDate isEqualToDate:dateCopy];
    objc_storeStrong(&self->_minimumDate, date);
    if (!v7)
    {
      [(WFParameter *)self attributesDidChange];
    }
  }
}

- (void)setDatePickerMode:(id)mode
{
  modeCopy = mode;
  v5 = self->_datePickerMode;
  v6 = modeCopy;
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

- (WFDatePickerParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v20.receiver = self;
  v20.super_class = WFDatePickerParameter;
  v5 = [(WFParameter *)&v20 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"DatePickerMode"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    datePickerMode = v5->_datePickerMode;
    v5->_datePickerMode = v8;

    v10 = [definitionCopy objectForKey:@"MinimumValue"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    minimumDate = v5->_minimumDate;
    v5->_minimumDate = v12;

    v14 = [definitionCopy objectForKey:@"MaximumValue"];
    v15 = objc_opt_class();
    v16 = WFEnforceClass_1501(v14, v15);
    maximumDate = v5->_maximumDate;
    v5->_maximumDate = v16;

    v18 = v5;
  }

  return v5;
}

@end