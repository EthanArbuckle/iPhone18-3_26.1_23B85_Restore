@interface WFNumberFieldParameter
- (WFNumberFieldParameter)initWithDefinition:(id)definition;
- (id)defaultSupportedVariableTypes;
- (id)parameterStateFromDialogResponse:(id)response;
- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler;
@end

@implementation WFNumberFieldParameter

- (id)parameterStateFromDialogResponse:(id)response
{
  responseCopy = response;
  inputtedText = [responseCopy inputtedText];
  if (inputtedText)
  {
    v5 = [WFNumberStringSubstitutableState alloc];
    inputtedText2 = [responseCopy inputtedText];
    v7 = [(WFNumberStringSubstitutableState *)v5 initWithValue:inputtedText2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)createDialogRequestWithAttribution:(id)attribution defaultState:(id)state prompt:(id)prompt completionHandler:(id)handler
{
  v10 = MEMORY[0x1E69E0D88];
  handlerCopy = handler;
  promptCopy = prompt;
  stateCopy = state;
  attributionCopy = attribution;
  v22 = objc_alloc_init(v10);
  value = [stateCopy value];

  [v22 setText:value];
  localizedPlaceholder = [(WFParameter *)self localizedPlaceholder];
  [v22 setPlaceholder:localizedPlaceholder];

  [v22 setAllowsNegativeNumbers:{-[WFNumberFieldParameter allowsNegativeNumbers](self, "allowsNegativeNumbers")}];
  allowsDecimalNumbers = [(WFNumberFieldParameter *)self allowsDecimalNumbers];
  v18 = MEMORY[0x1E69E1280];
  if (!allowsDecimalNumbers)
  {
    v18 = MEMORY[0x1E69E1298];
  }

  [v22 setKeyboardType:*v18];
  v19 = objc_alloc(MEMORY[0x1E69E0B80]);
  v20 = [(WFParameter *)self key];
  v21 = [v19 initWithTextFieldConfiguration:v22 message:0 attribution:attributionCopy prompt:promptCopy parameterKey:v20];

  handlerCopy[2](handlerCopy, v21);
}

- (id)defaultSupportedVariableTypes
{
  allInsertableVariableTypes = [objc_opt_class() allInsertableVariableTypes];
  v3 = [allInsertableVariableTypes mutableCopy];

  [v3 removeObject:@"CurrentDate"];

  return v3;
}

- (WFNumberFieldParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v28.receiver = self;
  v28.super_class = WFNumberFieldParameter;
  v5 = [(WFParameter *)&v28 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"TextAlignment"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    textAlignment = v5->_textAlignment;
    v5->_textAlignment = v8;

    v10 = [definitionCopy objectForKey:@"AllowsDecimalNumbers"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);

    v13 = [definitionCopy objectForKey:@"AllowsNegativeNumbers"];
    v14 = objc_opt_class();
    v15 = WFEnforceClass_1501(v13, v14);

    if (v12)
    {
      bOOLValue = [v12 BOOLValue];
    }

    else
    {
      bOOLValue = [objc_opt_class() defaultAllowsDecimalNumbers];
    }

    v5->_allowsDecimalNumbers = bOOLValue;
    if (v15)
    {
      bOOLValue2 = [v15 BOOLValue];
    }

    else
    {
      bOOLValue2 = [objc_opt_class() defaultAllowsNegativeNumbers];
    }

    v5->_allowsNegativeNumbers = bOOLValue2;
    v18 = [definitionCopy objectForKey:@"MinimumValue"];
    v19 = objc_opt_class();
    v20 = WFEnforceClass_1501(v18, v19);
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v20;

    v22 = [definitionCopy objectForKey:@"MaximumValue"];
    v23 = objc_opt_class();
    v24 = WFEnforceClass_1501(v22, v23);
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v24;

    v26 = v5;
  }

  return v5;
}

@end