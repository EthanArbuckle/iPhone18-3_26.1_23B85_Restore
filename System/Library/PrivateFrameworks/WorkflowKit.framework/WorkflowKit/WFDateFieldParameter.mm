@interface WFDateFieldParameter
- (BOOL)dateOnlyMode;
- (BOOL)timeOnlyMode;
- (Class)toolkitValueClass;
- (NSDateFormatter)hintDateFormatter;
- (NSString)localizedIncompleteHintString;
- (WFDateFieldParameter)initWithDefinition:(id)definition;
- (id)createDialogTextFieldConfigurationWithDefaultState:(id)state;
- (id)dateFormatterForConfiguration:(id)configuration;
- (id)datePickerConfiguration;
- (id)hintForState:(id)state;
- (id)parameterStateFromDialogResponse:(id)response;
- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler;
- (void)setForcesAllDayDates:(BOOL)dates;
@end

@implementation WFDateFieldParameter

- (Class)toolkitValueClass
{
  resultType = [(WFDateFieldParameter *)self resultType];
  v4 = [resultType isEqualToString:@"WFDetectedDate"];

  if (v4)
  {
    v5 = 0x1E6996DD0;
  }

  else
  {
    resultType2 = [(WFDateFieldParameter *)self resultType];
    v7 = [resultType2 isEqualToString:@"String"];

    if (v7)
    {
      v5 = 0x1E696AEC0;
    }

    else
    {
      resultType3 = [(WFDateFieldParameter *)self resultType];
      [resultType3 isEqualToString:@"Date"];

      v5 = 0x1E695DF00;
    }
  }

  v9 = *v5;
  v10 = objc_opt_class();

  return v10;
}

- (id)parameterStateFromDialogResponse:(id)response
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = responseCopy;
    inputtedDate = [v5 inputtedDate];

    if (inputtedDate)
    {
      datePickerConfiguration = [(WFDateFieldParameter *)self datePickerConfiguration];
      v8 = [(WFDateFieldParameter *)self dateFormatterForConfiguration:datePickerConfiguration];

      v9 = [WFVariableString alloc];
      inputtedDate2 = [v5 inputtedDate];
      v11 = [v8 stringFromDate:inputtedDate2];
      v12 = [(WFVariableString *)v9 initWithString:v11];

      inputtedDate = [(WFVariableStringParameterState *)[WFDateFieldParameterState alloc] initWithVariableString:v12];
      inputtedDate3 = [v5 inputtedDate];
      [(WFDateFieldParameterState *)inputtedDate setPreprocessedDate:inputtedDate3];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15.receiver = self;
      v15.super_class = WFDateFieldParameter;
      inputtedDate = [(WFTextInputParameter *)&v15 parameterStateFromDialogResponse:responseCopy];
    }

    else
    {
      inputtedDate = 0;
    }
  }

  return inputtedDate;
}

- (id)createDialogTextFieldConfigurationWithDefaultState:(id)state
{
  stateCopy = state;
  timeOnlyMode = [(WFDateFieldParameter *)self timeOnlyMode];
  dateOnlyMode = [(WFDateFieldParameter *)self dateOnlyMode];
  v11.receiver = self;
  v11.super_class = WFDateFieldParameter;
  v7 = [(WFTextInputParameter *)&v11 createDialogTextFieldConfigurationWithDefaultState:stateCopy];

  [v7 setShowsDateFormattingHint:1];
  [v7 setTimeFormatStyle:!dateOnlyMode];
  [v7 setDateFormatStyle:!timeOnlyMode];
  if ([(WFDateFieldParameter *)self detectsAllDayDates])
  {
    v8 = [(WFDateFieldParameter *)self displaysAllDayString]^ 1;
  }

  else
  {
    v8 = 0;
  }

  [v7 setDateHintPrefersDateOnly:v8];
  [v7 setDoesRelativeDateFormatting:1];
  localizedIncompleteHintString = [(WFDateFieldParameter *)self localizedIncompleteHintString];
  [v7 setLocalizedIncompleteHintString:localizedIncompleteHintString];

  return v7;
}

- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler
{
  attributionCopy = attribution;
  stateCopy = state;
  promptCopy = prompt;
  handlerCopy = handler;
  if (stateCopy && ([stateCopy variableString], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEmpty"), v14, (v15 & 1) == 0))
  {
    v18.receiver = self;
    v18.super_class = WFDateFieldParameter;
    [(WFTextInputParameter *)&v18 createDialogRequestWithAttribution:attributionCopy defaultState:stateCopy prompt:promptCopy completionHandler:handlerCopy];
  }

  else
  {
    datePickerConfiguration = [(WFDateFieldParameter *)self datePickerConfiguration];
    v17 = [objc_alloc(MEMORY[0x1E69E0B70]) initWithDatePickerConfiguration:datePickerConfiguration message:0 attribution:attributionCopy prompt:promptCopy];
    handlerCopy[2](handlerCopy, v17);
  }
}

- (id)dateFormatterForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  datePickerMode = [configurationCopy datePickerMode];
  v5 = datePickerMode != *MEMORY[0x1E69E1008];

  datePickerMode2 = [configurationCopy datePickerMode];

  v7 = *MEMORY[0x1E69E0FF8];
  v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v9 = v8;
  if (datePickerMode2 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  [v8 setTimeStyle:v10];
  [v9 setDateStyle:4 * v5];

  return v9;
}

- (id)datePickerConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E69E0A78]);
  v4 = *MEMORY[0x1E69E1000];
  if ([(WFDateFieldParameter *)self timeOnlyMode])
  {
    v5 = MEMORY[0x1E69E1008];
LABEL_6:
    v6 = *v5;

    v4 = v6;
    goto LABEL_7;
  }

  if ([(WFDateFieldParameter *)self dateOnlyMode]|| [(WFDateFieldParameter *)self forcesAllDayDates])
  {
    v5 = MEMORY[0x1E69E0FF8];
    goto LABEL_6;
  }

LABEL_7:
  [v3 setDatePickerMode:v4];

  return v3;
}

- (void)setForcesAllDayDates:(BOOL)dates
{
  if (self->_forcesAllDayDates != dates)
  {
    self->_forcesAllDayDates = dates;
    [(WFParameter *)self attributesDidChange];
  }
}

- (NSString)localizedIncompleteHintString
{
  if ([(WFDateFieldParameter *)self timeOnlyMode])
  {
    v2 = @"Incomplete time";
  }

  else
  {
    v2 = @"Incomplete date";
  }

  v3 = WFLocalizedString(v2);

  return v3;
}

- (id)hintForState:(id)state
{
  stateCopy = state;
  variableString = [stateCopy variableString];
  variables = [variableString variables];
  if ([variables count])
  {

    localizedIncompleteHintString = 0;
LABEL_3:

    goto LABEL_4;
  }

  variableString2 = [stateCopy variableString];
  stringByRemovingVariables = [variableString2 stringByRemovingVariables];
  v11 = [stringByRemovingVariables length];

  if (v11)
  {
    v12 = MEMORY[0x1E6996DC0];
    variableString3 = [stateCopy variableString];
    stringByRemovingVariables2 = [variableString3 stringByRemovingVariables];
    v15 = [v12 datesInString:stringByRemovingVariables2 error:0];
    variableString = [v15 firstObject];

    if (variableString)
    {
      hintDateFormatter = [(WFDateFieldParameter *)self hintDateFormatter];
      localizedIncompleteHintString = [hintDateFormatter stringFromDate:variableString];
    }

    else
    {
      localizedIncompleteHintString = [(WFDateFieldParameter *)self localizedIncompleteHintString];
    }

    goto LABEL_3;
  }

  localizedIncompleteHintString = 0;
LABEL_4:

  return localizedIncompleteHintString;
}

- (NSDateFormatter)hintDateFormatter
{
  hintDateFormatter = self->_hintDateFormatter;
  if (!hintDateFormatter)
  {
    timeOnlyMode = [(WFDateFieldParameter *)self timeOnlyMode];
    dateOnlyMode = [(WFDateFieldParameter *)self dateOnlyMode];
    dateFormatterDateStyleNumber = [(WFDateFieldParameter *)self dateFormatterDateStyleNumber];
    if (dateFormatterDateStyleNumber)
    {
      dateFormatterDateStyleNumber2 = [(WFDateFieldParameter *)self dateFormatterDateStyleNumber];
      integerValue = [dateFormatterDateStyleNumber2 integerValue];
    }

    else
    {
      integerValue = 1;
    }

    dateFormatterTimeStyleNumber = [(WFDateFieldParameter *)self dateFormatterTimeStyleNumber];
    if (dateFormatterTimeStyleNumber)
    {
      dateFormatterTimeStyleNumber2 = [(WFDateFieldParameter *)self dateFormatterTimeStyleNumber];
      integerValue2 = [dateFormatterTimeStyleNumber2 integerValue];
    }

    else
    {
      integerValue2 = 1;
    }

    dateFormatterRelativeDateFormattingNumber = [(WFDateFieldParameter *)self dateFormatterRelativeDateFormattingNumber];
    if (dateFormatterRelativeDateFormattingNumber)
    {
      dateFormatterRelativeDateFormattingNumber2 = [(WFDateFieldParameter *)self dateFormatterRelativeDateFormattingNumber];
      bOOLValue = [dateFormatterRelativeDateFormattingNumber2 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v16 = v15;
    if (dateOnlyMode)
    {
      v17 = 0;
    }

    else
    {
      v17 = integerValue2;
    }

    [(NSDateFormatter *)v15 setTimeStyle:v17];
    if (timeOnlyMode)
    {
      v18 = 0;
    }

    else
    {
      v18 = integerValue;
    }

    [(NSDateFormatter *)v16 setDateStyle:v18];
    [(NSDateFormatter *)v16 setDoesRelativeDateFormatting:bOOLValue];
    dateFormatterTemplateString = [(WFDateFieldParameter *)self dateFormatterTemplateString];
    [(NSDateFormatter *)v16 setDateFormat:dateFormatterTemplateString];

    v20 = self->_hintDateFormatter;
    self->_hintDateFormatter = v16;

    hintDateFormatter = self->_hintDateFormatter;
  }

  return hintDateFormatter;
}

- (BOOL)dateOnlyMode
{
  hintDateMode = [(WFDateFieldParameter *)self hintDateMode];
  v3 = [hintDateMode isEqualToString:@"Date"];

  return v3;
}

- (BOOL)timeOnlyMode
{
  hintDateMode = [(WFDateFieldParameter *)self hintDateMode];
  v3 = [hintDateMode isEqualToString:@"Time"];

  return v3;
}

- (WFDateFieldParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v41.receiver = self;
  v41.super_class = WFDateFieldParameter;
  v5 = [(WFTextInputParameter *)&v41 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"HintDateMode"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    v9 = [v8 copy];
    hintDateMode = v5->_hintDateMode;
    v5->_hintDateMode = v9;

    v11 = [definitionCopy objectForKey:@"ReactiveParameterKey"];
    v12 = objc_opt_class();
    v13 = WFEnforceClass_1501(v11, v12);
    v14 = [v13 copy];
    reactiveParameterKey = v5->_reactiveParameterKey;
    v5->_reactiveParameterKey = v14;

    v16 = [definitionCopy objectForKey:@"DetectsAllDayDates"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass_1501(v16, v17);
    v5->_detectsAllDayDates = [v18 BOOLValue];

    v19 = [definitionCopy objectForKey:@"DisplaysAllDayString"];
    v20 = objc_opt_class();
    v21 = WFEnforceClass_1501(v19, v20);
    v5->_displaysAllDayString = [v21 BOOLValue];

    v22 = [definitionCopy objectForKey:@"DateFormatterDateStyle"];
    v23 = objc_opt_class();
    v5->_dateFormatterDateStyleNumber = WFEnforceClass_1501(v22, v23);

    v24 = [definitionCopy objectForKey:@"DateFormatterTimeStyle"];
    v25 = objc_opt_class();
    v5->_dateFormatterTimeStyleNumber = WFEnforceClass_1501(v24, v25);

    v26 = [definitionCopy objectForKey:@"DateFormatterAllowsRelative"];
    v27 = objc_opt_class();
    v5->_dateFormatterRelativeDateFormattingNumber = WFEnforceClass_1501(v26, v27);

    v28 = [definitionCopy objectForKey:@"DateFormatterTemplate"];
    v29 = objc_opt_class();
    v30 = WFEnforceClass_1501(v28, v29);
    v31 = [v30 copy];
    dateFormatterTemplateString = v5->_dateFormatterTemplateString;
    v5->_dateFormatterTemplateString = v31;

    v33 = [definitionCopy objectForKey:@"ResultType"];
    v34 = objc_opt_class();
    v35 = WFEnforceClass_1501(v33, v34);
    v36 = [v35 copy];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = @"Date";
    }

    objc_storeStrong(&v5->_resultType, v38);

    v39 = v5;
  }

  return v5;
}

@end