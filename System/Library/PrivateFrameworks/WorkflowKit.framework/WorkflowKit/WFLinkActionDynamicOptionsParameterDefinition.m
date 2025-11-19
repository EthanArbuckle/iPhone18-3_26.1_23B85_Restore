@interface WFLinkActionDynamicOptionsParameterDefinition
- (WFLinkActionDynamicOptionsParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionDynamicOptionsParameterDefinition

- (id)parameterStateFromLinkValue:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 value];
  if (v5)
  {
    v6 = [(WFLinkActionParameterDefinition *)self valueType];
    v7 = [v6 objectIsMemberOfType:v5];

    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E69ACEC8]) initWithValue:v4 indentationLevel:0];
      v9 = [WFLinkDynamicOptionSubstitutableState alloc];
      v10 = [v8 title];
      v11 = [v10 wf_localizedString];
      v12 = [v8 subtitle];
      v13 = [v12 wf_localizedString];
      v14 = [v8 image];
      v15 = [v14 wf_image];
      v16 = [(WFLinkDynamicOptionSubstitutableState *)v9 initWithValue:v8 localizedTitle:v11 localizedSubtitle:v13 image:v15];

      goto LABEL_8;
    }

    v17 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [(WFLinkActionParameterDefinition *)self valueType];
      v21 = 136315650;
      v22 = "[WFLinkActionDynamicOptionsParameterDefinition parameterStateFromLinkValue:]";
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v18;
    }
  }

  v16 = 0;
LABEL_8:

  v19 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v14 = a3;
  v9 = a9;
  if (v14)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    if (isKindOfClass)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0;
    }

    v9[2](v9, v13, 0);
  }

  else
  {
    v9[2](v9, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 value];
    v9 = [v8 value];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedTitleForLinkValue:(id)a3
{
  v4 = a3;
  v5 = [v4 valueType];
  v6 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v7 = [v5 wf_parameterDefinitionWithParameterMetadata:v6 dynamicOptionsSupport:0];
  v8 = [v7 localizedTitleForLinkValue:v4];

  return v8;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata" ofClass:objc_opt_class()];
    v6 = [v5 cases];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __114__WFLinkActionDynamicOptionsParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValue___block_invoke;
    v19[3] = &unk_1E837F1B0;
    v7 = v4;
    v20 = v7;
    v8 = [v6 if_firstObjectPassingTest:v19];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E69AC890]);
      v10 = [v5 identifier];
      v11 = [v9 initWithEnumerationIdentifier:v10];

      v12 = objc_alloc(MEMORY[0x1E69ACA90]);
      v13 = [v8 identifier];
      v14 = [v8 displayRepresentation];
      v15 = [v12 initWithValue:v13 valueType:v11 displayRepresentation:v14];

      v16 = [objc_alloc(MEMORY[0x1E69ACEC8]) initWithValue:v15 indentationLevel:0];
      v17 = [WFLinkDynamicOptionSubstitutableState serializedRepresentationFromValue:v16];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {

    v17 = 0;
  }

  return v17;
}

uint64_t __114__WFLinkActionDynamicOptionsParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (WFLinkActionDynamicOptionsParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 valueType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 memberValueType];

    v5 = v6;
  }

  v9.receiver = self;
  v9.super_class = WFLinkActionDynamicOptionsParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v5 parameterMetadata:v4];

  return v7;
}

@end