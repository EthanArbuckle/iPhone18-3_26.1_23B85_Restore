@interface WFLinkActionCurrencyAmountParameterDefinition
- (WFLinkActionCurrencyAmountParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionCurrencyAmountParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  value = [value value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [WFNumberStringSubstitutableState alloc];
    amount = [value amount];
    stringValue = [amount stringValue];
    v7 = [(WFNumberStringSubstitutableState *)v4 initWithValue:stringValue];

    v8 = [WFQuantityParameterState alloc];
    currencyCode = [value currencyCode];
    v10 = [(WFQuantityParameterState *)v8 initWithMagnitudeState:v7 unitString:currencyCode];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v25 = valueCopy;
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = objc_alloc(MEMORY[0x1E696E7E8]);
    magnitude = [v25 magnitude];
    unitString = [v25 unitString];
    v23 = [v20 initWithAmount:magnitude currencyCode:unitString];

    v24 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v23];
    handlerCopy[2](handlerCopy, v24, 0);
  }

  else
  {

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = objc_alloc(MEMORY[0x1E696E7E8]);
    magnitudeState = [v8 magnitudeState];
    decimalNumber = [magnitudeState decimalNumber];
    unitString = [v8 unitString];
    v13 = [v9 initWithAmount:decimalNumber currencyCode:unitString];

    v14 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = valueCopy;
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
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v8 parameterDefinitionDictionary];
  v6 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v3];

  return v6;
}

- (WFLinkActionCurrencyAmountParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC888];
  metadataCopy = metadata;
  currencyAmountValueType = [v4 currencyAmountValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionCurrencyAmountParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:currencyAmountValueType parameterMetadata:metadataCopy];

  return v7;
}

@end