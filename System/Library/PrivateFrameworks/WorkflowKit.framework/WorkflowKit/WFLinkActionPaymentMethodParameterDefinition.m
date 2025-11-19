@interface WFLinkActionPaymentMethodParameterDefinition
- (WFLinkActionPaymentMethodParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3;
- (id)linkValueFromParameterState:(id)a3;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionPaymentMethodParameterDefinition

- (id)parameterStateFromLinkValue:(id)a3
{
  v3 = [a3 value];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [(WFVariableSubstitutableParameterState *)[WFINPaymentMethodParameterState alloc] initWithValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v21 = v14;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v21];
    v19[2](v19, v20, 0);
  }

  else
  {

    v19[2](v19, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = objc_alloc(MEMORY[0x1E696E938]);
    v5 = [v4 value];
    v6 = [v5 type];
    v7 = [v4 value];
    v8 = [v7 name];
    v9 = [v4 value];
    v10 = [v9 identificationHint];
    v11 = [v4 value];
    v12 = [v11 icon];
    v13 = [v16 initWithType:v6 name:v8 identificationHint:v10 icon:v12];

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

- (WFLinkActionPaymentMethodParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC888];
  v5 = a3;
  v6 = [v4 paymentMethodValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionPaymentMethodParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end