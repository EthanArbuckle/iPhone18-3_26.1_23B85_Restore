@interface WFDateFieldParameter
- (BOOL)dateOnlyMode;
- (BOOL)timeOnlyMode;
- (Class)toolkitValueClass;
- (NSDateFormatter)hintDateFormatter;
- (NSString)localizedIncompleteHintString;
- (WFDateFieldParameter)initWithDefinition:(id)a3;
- (id)createDialogTextFieldConfigurationWithDefaultState:(id)a3;
- (id)dateFormatterForConfiguration:(id)a3;
- (id)datePickerConfiguration;
- (id)hintForState:(id)a3;
- (id)parameterStateFromDialogResponse:(id)a3;
- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6;
- (void)setForcesAllDayDates:(BOOL)a3;
@end

@implementation WFDateFieldParameter

- (Class)toolkitValueClass
{
  v3 = [(WFDateFieldParameter *)self resultType];
  v4 = [v3 isEqualToString:@"WFDetectedDate"];

  if (v4)
  {
    v5 = 0x1E6996DD0;
  }

  else
  {
    v6 = [(WFDateFieldParameter *)self resultType];
    v7 = [v6 isEqualToString:@"String"];

    if (v7)
    {
      v5 = 0x1E696AEC0;
    }

    else
    {
      v8 = [(WFDateFieldParameter *)self resultType];
      [v8 isEqualToString:@"Date"];

      v5 = 0x1E695DF00;
    }
  }

  v9 = *v5;
  v10 = objc_opt_class();

  return v10;
}

- (id)parameterStateFromDialogResponse:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 inputtedDate];

    if (v6)
    {
      v7 = [(WFDateFieldParameter *)self datePickerConfiguration];
      v8 = [(WFDateFieldParameter *)self dateFormatterForConfiguration:v7];

      v9 = [WFVariableString alloc];
      v10 = [v5 inputtedDate];
      v11 = [v8 stringFromDate:v10];
      v12 = [(WFVariableString *)v9 initWithString:v11];

      v6 = [(WFVariableStringParameterState *)[WFDateFieldParameterState alloc] initWithVariableString:v12];
      v13 = [v5 inputtedDate];
      [(WFDateFieldParameterState *)v6 setPreprocessedDate:v13];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15.receiver = self;
      v15.super_class = WFDateFieldParameter;
      v6 = [(WFTextInputParameter *)&v15 parameterStateFromDialogResponse:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)createDialogTextFieldConfigurationWithDefaultState:(id)a3
{
  v4 = a3;
  v5 = [(WFDateFieldParameter *)self timeOnlyMode];
  v6 = [(WFDateFieldParameter *)self dateOnlyMode];
  v11.receiver = self;
  v11.super_class = WFDateFieldParameter;
  v7 = [(WFTextInputParameter *)&v11 createDialogTextFieldConfigurationWithDefaultState:v4];

  [v7 setShowsDateFormattingHint:1];
  [v7 setTimeFormatStyle:!v6];
  [v7 setDateFormatStyle:!v5];
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
  v9 = [(WFDateFieldParameter *)self localizedIncompleteHintString];
  [v7 setLocalizedIncompleteHintString:v9];

  return v7;
}

- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v11 && ([v11 variableString], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEmpty"), v14, (v15 & 1) == 0))
  {
    v18.receiver = self;
    v18.super_class = WFDateFieldParameter;
    [(WFTextInputParameter *)&v18 createDialogRequestWithAttribution:v10 defaultState:v11 prompt:v12 completionHandler:v13];
  }

  else
  {
    v16 = [(WFDateFieldParameter *)self datePickerConfiguration];
    v17 = [objc_alloc(MEMORY[0x1E69E0B70]) initWithDatePickerConfiguration:v16 message:0 attribution:v10 prompt:v12];
    v13[2](v13, v17);
  }
}

- (id)dateFormatterForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 datePickerMode];
  v5 = v4 != *MEMORY[0x1E69E1008];

  v6 = [v3 datePickerMode];

  v7 = *MEMORY[0x1E69E0FF8];
  v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v9 = v8;
  if (v6 == v7)
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

- (void)setForcesAllDayDates:(BOOL)a3
{
  if (self->_forcesAllDayDates != a3)
  {
    self->_forcesAllDayDates = a3;
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

- (id)hintForState:(id)a3
{
  v4 = a3;
  v5 = [v4 variableString];
  v6 = [v5 variables];
  if ([v6 count])
  {

    v7 = 0;
LABEL_3:

    goto LABEL_4;
  }

  v9 = [v4 variableString];
  v10 = [v9 stringByRemovingVariables];
  v11 = [v10 length];

  if (v11)
  {
    v12 = MEMORY[0x1E6996DC0];
    v13 = [v4 variableString];
    v14 = [v13 stringByRemovingVariables];
    v15 = [v12 datesInString:v14 error:0];
    v5 = [v15 firstObject];

    if (v5)
    {
      v16 = [(WFDateFieldParameter *)self hintDateFormatter];
      v7 = [v16 stringFromDate:v5];
    }

    else
    {
      v7 = [(WFDateFieldParameter *)self localizedIncompleteHintString];
    }

    goto LABEL_3;
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (NSDateFormatter)hintDateFormatter
{
  hintDateFormatter = self->_hintDateFormatter;
  if (!hintDateFormatter)
  {
    v4 = [(WFDateFieldParameter *)self timeOnlyMode];
    v5 = [(WFDateFieldParameter *)self dateOnlyMode];
    v6 = [(WFDateFieldParameter *)self dateFormatterDateStyleNumber];
    if (v6)
    {
      v7 = [(WFDateFieldParameter *)self dateFormatterDateStyleNumber];
      v8 = [v7 integerValue];
    }

    else
    {
      v8 = 1;
    }

    v9 = [(WFDateFieldParameter *)self dateFormatterTimeStyleNumber];
    if (v9)
    {
      v10 = [(WFDateFieldParameter *)self dateFormatterTimeStyleNumber];
      v11 = [v10 integerValue];
    }

    else
    {
      v11 = 1;
    }

    v12 = [(WFDateFieldParameter *)self dateFormatterRelativeDateFormattingNumber];
    if (v12)
    {
      v13 = [(WFDateFieldParameter *)self dateFormatterRelativeDateFormattingNumber];
      v14 = [v13 BOOLValue];
    }

    else
    {
      v14 = 1;
    }

    v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v16 = v15;
    if (v5)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11;
    }

    [(NSDateFormatter *)v15 setTimeStyle:v17];
    if (v4)
    {
      v18 = 0;
    }

    else
    {
      v18 = v8;
    }

    [(NSDateFormatter *)v16 setDateStyle:v18];
    [(NSDateFormatter *)v16 setDoesRelativeDateFormatting:v14];
    v19 = [(WFDateFieldParameter *)self dateFormatterTemplateString];
    [(NSDateFormatter *)v16 setDateFormat:v19];

    v20 = self->_hintDateFormatter;
    self->_hintDateFormatter = v16;

    hintDateFormatter = self->_hintDateFormatter;
  }

  return hintDateFormatter;
}

- (BOOL)dateOnlyMode
{
  v2 = [(WFDateFieldParameter *)self hintDateMode];
  v3 = [v2 isEqualToString:@"Date"];

  return v3;
}

- (BOOL)timeOnlyMode
{
  v2 = [(WFDateFieldParameter *)self hintDateMode];
  v3 = [v2 isEqualToString:@"Time"];

  return v3;
}

- (WFDateFieldParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = WFDateFieldParameter;
  v5 = [(WFTextInputParameter *)&v41 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"HintDateMode"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    v9 = [v8 copy];
    hintDateMode = v5->_hintDateMode;
    v5->_hintDateMode = v9;

    v11 = [v4 objectForKey:@"ReactiveParameterKey"];
    v12 = objc_opt_class();
    v13 = WFEnforceClass_1501(v11, v12);
    v14 = [v13 copy];
    reactiveParameterKey = v5->_reactiveParameterKey;
    v5->_reactiveParameterKey = v14;

    v16 = [v4 objectForKey:@"DetectsAllDayDates"];
    v17 = objc_opt_class();
    v18 = WFEnforceClass_1501(v16, v17);
    v5->_detectsAllDayDates = [v18 BOOLValue];

    v19 = [v4 objectForKey:@"DisplaysAllDayString"];
    v20 = objc_opt_class();
    v21 = WFEnforceClass_1501(v19, v20);
    v5->_displaysAllDayString = [v21 BOOLValue];

    v22 = [v4 objectForKey:@"DateFormatterDateStyle"];
    v23 = objc_opt_class();
    v5->_dateFormatterDateStyleNumber = WFEnforceClass_1501(v22, v23);

    v24 = [v4 objectForKey:@"DateFormatterTimeStyle"];
    v25 = objc_opt_class();
    v5->_dateFormatterTimeStyleNumber = WFEnforceClass_1501(v24, v25);

    v26 = [v4 objectForKey:@"DateFormatterAllowsRelative"];
    v27 = objc_opt_class();
    v5->_dateFormatterRelativeDateFormattingNumber = WFEnforceClass_1501(v26, v27);

    v28 = [v4 objectForKey:@"DateFormatterTemplate"];
    v29 = objc_opt_class();
    v30 = WFEnforceClass_1501(v28, v29);
    v31 = [v30 copy];
    dateFormatterTemplateString = v5->_dateFormatterTemplateString;
    v5->_dateFormatterTemplateString = v31;

    v33 = [v4 objectForKey:@"ResultType"];
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