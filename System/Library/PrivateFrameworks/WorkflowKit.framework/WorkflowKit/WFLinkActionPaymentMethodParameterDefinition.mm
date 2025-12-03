@interface WFLinkActionPaymentMethodParameterDefinition
- (WFLinkActionPaymentMethodParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)linkValueFromParameterState:(id)state;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionPaymentMethodParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  value = [value value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [(WFVariableSubstitutableParameterState *)[WFINPaymentMethodParameterState alloc] initWithValue:value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v21 = valueCopy;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v21];
    handlerCopy[2](handlerCopy, v20, 0);
  }

  else
  {

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)state
{
  stateCopy = state;
  if (stateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = objc_alloc(MEMORY[0x1E696E938]);
    value = [stateCopy value];
    type = [value type];
    value2 = [stateCopy value];
    name = [value2 name];
    value3 = [stateCopy value];
    identificationHint = [value3 identificationHint];
    value4 = [stateCopy value];
    icon = [value4 icon];
    v13 = [v16 initWithType:type name:name identificationHint:identificationHint icon:icon];

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

- (WFLinkActionPaymentMethodParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC888];
  metadataCopy = metadata;
  paymentMethodValueType = [v4 paymentMethodValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionPaymentMethodParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:paymentMethodValueType parameterMetadata:metadataCopy];

  return v7;
}

@end