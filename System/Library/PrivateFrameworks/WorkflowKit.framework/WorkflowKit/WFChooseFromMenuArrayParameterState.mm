@interface WFChooseFromMenuArrayParameterState
- (WFChooseFromMenuArrayParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
@end

@implementation WFChooseFromMenuArrayParameterState

- (WFChooseFromMenuArrayParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = WFEnforceClass_1501(v10, v11);

  if (v12)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __99__WFChooseFromMenuArrayParameterState_initWithSerializedRepresentation_variableProvider_parameter___block_invoke;
    v19 = &unk_1E837D9A0;
    v20 = v8;
    v21 = v9;
    v13 = [v12 if_compactMap:&v16];
    self = [(WFArrayParameterState *)self initWithValues:v13, v16, v17, v18, v19];

    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

WFPropertyListParameterValue *__99__WFChooseFromMenuArrayParameterState_initWithSerializedRepresentation_variableProvider_parameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[WFPropertyListParameterValue alloc] initWithChooseFromMenuString:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[WFPropertyListParameterValue alloc] initWithSerializedRepresentation:v3 variableProvider:*(a1 + 32) parameter:*(a1 + 40) valueType:6 variableStringStateClass:objc_opt_class()];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end