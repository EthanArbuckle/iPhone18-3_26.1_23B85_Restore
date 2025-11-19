@interface WFLinkActionCurrencyAmountParameterDefinition
- (WFLinkActionCurrencyAmountParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionCurrencyAmountParameterDefinition

- (id)parameterStateFromLinkValue:(id)a3
{
  v3 = [a3 value];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [WFNumberStringSubstitutableState alloc];
    v5 = [v3 amount];
    v6 = [v5 stringValue];
    v7 = [(WFNumberStringSubstitutableState *)v4 initWithValue:v6];

    v8 = [WFQuantityParameterState alloc];
    v9 = [v3 currencyCode];
    v10 = [(WFQuantityParameterState *)v8 initWithMagnitudeState:v7 unitString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v25 = v14;
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = objc_alloc(MEMORY[0x1E696E7E8]);
    v21 = [v25 magnitude];
    v22 = [v25 unitString];
    v23 = [v20 initWithAmount:v21 currencyCode:v22];

    v24 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v23];
    v19[2](v19, v24, 0);
  }

  else
  {

    v19[2](v19, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = objc_alloc(MEMORY[0x1E696E7E8]);
    v10 = [v8 magnitudeState];
    v11 = [v10 decimalNumber];
    v12 = [v8 unitString];
    v13 = [v9 initWithAmount:v11 currencyCode:v12];

    v14 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)parameterDefinitionDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setValue:&unk_1F4A9ADC8 forKey:@"DefaultValue"];
  [v3 setValue:*MEMORY[0x1E69E12D0] forKey:@"TextAlignment"];
  [v3 setValue:MEMORY[0x1E695E110] forKey:@"AllowsNegativeNumbers"];
  v4 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC560] ofClass:objc_opt_class()];
  if ([v4 count])
  {
    [v3 setObject:v4 forKey:@"PossibleUnits"];
  }

  v8.receiver = self;
  v8.super_class = WFLinkActionCurrencyAmountParameterDefinition;
  v5 = [(WFLinkActionParameterDefinition *)&v8 parameterDefinitionDictionary];
  v6 = [v5 definitionByAddingEntriesInDictionary:v3];

  return v6;
}

- (WFLinkActionCurrencyAmountParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC888];
  v5 = a3;
  v6 = [v4 currencyAmountValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionCurrencyAmountParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end