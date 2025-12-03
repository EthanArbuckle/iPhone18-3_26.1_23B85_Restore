@interface INCodableCurrencyAmountAttributeMetadata(Workflow)
- (WFQuantityParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:;
- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:;
- (void)wf_updateWithParameterState:()Workflow;
- (void)wf_updateWithParameterValue:()Workflow;
@end

@implementation INCodableCurrencyAmountAttributeMetadata(Workflow)

- (void)wf_updateWithParameterValue:()Workflow
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      currencyCode = [v5 currencyCode];
      [self setCurrencyCode:currencyCode];
    }
  }
}

- (void)wf_updateWithParameterState:()Workflow
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unitString = [v5 unitString];
      [self setCurrencyCode:unitString];
    }
  }
}

- (WFQuantityParameterState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [WFQuantityParameterState alloc];
    v10 = [WFNumberStringSubstitutableState alloc];
    amount = [v8 amount];
    stringValue = [amount stringValue];
    v13 = [(WFNumberStringSubstitutableState *)v10 initWithValue:stringValue];
    currencyCode = [v8 currencyCode];

    v15 = [(WFQuantityParameterState *)v9 initWithMagnitudeState:v13 unitString:currencyCode];
  }

  else
  {
    v17.receiver = self;
    v17.super_class = &off_1F4AFF5D8;
    v15 = objc_msgSendSuper2(&v17, sel_wf_parameterStateForIntentValue_parameterDefinition_, v6, v7);
  }

  return v15;
}

- (uint64_t)wf_processParameterValue:()Workflow forParameter:parameterState:codableAttribute:completionHandler:
{
  v8 = a3;
  v9 = a7;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = MEMORY[0x1E696E7E8];
    v12 = v8;
    v13 = [v11 alloc];
    magnitude = [v12 magnitude];
    unitString = [v12 unitString];

    v16 = [v13 initWithAmount:magnitude currencyCode:unitString];
    v9[2](v9, v16, 0);
  }

  return isKindOfClass & 1;
}

- (id)wf_updatedParameterDefinition:()Workflow forCodableAttribute:localizer:
{
  v11[2] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = &off_1F4AFF5D8;
  v2 = objc_msgSendSuper2(&v9, sel_wf_updatedParameterDefinition_forCodableAttribute_localizer_);
  v10[0] = @"PossibleUnits";
  currencyCodes = [self currencyCodes];
  v10[1] = @"AllowsNegativeNumbers";
  v11[0] = currencyCodes;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "supportsNegativeNumbers")}];
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = [v2 definitionByAddingEntriesInDictionary:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end