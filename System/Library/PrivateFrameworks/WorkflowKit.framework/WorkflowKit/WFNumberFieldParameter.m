@interface WFNumberFieldParameter
- (WFNumberFieldParameter)initWithDefinition:(id)a3;
- (id)defaultSupportedVariableTypes;
- (id)parameterStateFromDialogResponse:(id)a3;
- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6;
@end

@implementation WFNumberFieldParameter

- (id)parameterStateFromDialogResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 inputtedText];
  if (v4)
  {
    v5 = [WFNumberStringSubstitutableState alloc];
    v6 = [v3 inputtedText];
    v7 = [(WFNumberStringSubstitutableState *)v5 initWithValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)createDialogRequestWithAttribution:(id)a3 defaultState:(id)a4 prompt:(id)a5 completionHandler:(id)a6
{
  v10 = MEMORY[0x1E69E0D88];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v22 = objc_alloc_init(v10);
  v15 = [v13 value];

  [v22 setText:v15];
  v16 = [(WFParameter *)self localizedPlaceholder];
  [v22 setPlaceholder:v16];

  [v22 setAllowsNegativeNumbers:{-[WFNumberFieldParameter allowsNegativeNumbers](self, "allowsNegativeNumbers")}];
  v17 = [(WFNumberFieldParameter *)self allowsDecimalNumbers];
  v18 = MEMORY[0x1E69E1280];
  if (!v17)
  {
    v18 = MEMORY[0x1E69E1298];
  }

  [v22 setKeyboardType:*v18];
  v19 = objc_alloc(MEMORY[0x1E69E0B80]);
  v20 = [(WFParameter *)self key];
  v21 = [v19 initWithTextFieldConfiguration:v22 message:0 attribution:v14 prompt:v12 parameterKey:v20];

  v11[2](v11, v21);
}

- (id)defaultSupportedVariableTypes
{
  v2 = [objc_opt_class() allInsertableVariableTypes];
  v3 = [v2 mutableCopy];

  [v3 removeObject:@"CurrentDate"];

  return v3;
}

- (WFNumberFieldParameter)initWithDefinition:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = WFNumberFieldParameter;
  v5 = [(WFParameter *)&v28 initWithDefinition:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"TextAlignment"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    textAlignment = v5->_textAlignment;
    v5->_textAlignment = v8;

    v10 = [v4 objectForKey:@"AllowsDecimalNumbers"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);

    v13 = [v4 objectForKey:@"AllowsNegativeNumbers"];
    v14 = objc_opt_class();
    v15 = WFEnforceClass_1501(v13, v14);

    if (v12)
    {
      v16 = [v12 BOOLValue];
    }

    else
    {
      v16 = [objc_opt_class() defaultAllowsDecimalNumbers];
    }

    v5->_allowsDecimalNumbers = v16;
    if (v15)
    {
      v17 = [v15 BOOLValue];
    }

    else
    {
      v17 = [objc_opt_class() defaultAllowsNegativeNumbers];
    }

    v5->_allowsNegativeNumbers = v17;
    v18 = [v4 objectForKey:@"MinimumValue"];
    v19 = objc_opt_class();
    v20 = WFEnforceClass_1501(v18, v19);
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v20;

    v22 = [v4 objectForKey:@"MaximumValue"];
    v23 = objc_opt_class();
    v24 = WFEnforceClass_1501(v22, v23);
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v24;

    v26 = v5;
  }

  return v5;
}

@end