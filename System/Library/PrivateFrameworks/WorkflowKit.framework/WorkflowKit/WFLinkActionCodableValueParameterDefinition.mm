@interface WFLinkActionCodableValueParameterDefinition
- (WFLinkActionCodableValueParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitions;
- (id)parameterStateFromLinkValue:(id)a3;
@end

@implementation WFLinkActionCodableValueParameterDefinition

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
      v22 = "[WFLinkActionCodableValueParameterDefinition parameterStateFromLinkValue:]";
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
  v3 = [a3 displayRepresentation];
  v4 = [v3 title];
  v5 = [v4 wf_localizedString];

  return v5;
}

- (WFLinkActionCodableValueParameterDefinition)initWithParameterMetadata:(id)a3
{
  v5 = a3;
  v6 = [v5 valueType];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v7 = [v5 valueType];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v9 memberValueType];

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = v10;
      v6 = v11;
    }

    else
    {

      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"WFLinkActionCodableValueParameterDefinition.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
      v6 = 0;
    }
  }

  v12 = [(WFLinkActionCodableValueParameterDefinition *)self parameterDefinitions];
  v13 = [v6 identifier];
  v14 = [v12 objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [[v14 alloc] initWithValueType:v6 parameterMetadata:v5];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WFLinkActionCodableValueParameterDefinition;
    v15 = [(WFLinkActionParameterDefinition *)&v18 initWithValueType:v6 parameterMetadata:v5];
    self = v15;
  }

  v16 = v15;

  return v16;
}

- (id)parameterDefinitions
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AC750] wf_dateIntervalIdentifier];
  v8[0] = v2;
  v9[0] = objc_opt_class();
  v3 = [MEMORY[0x1E69AC750] wf_durationIdentifier];
  v8[1] = v3;
  v9[1] = objc_opt_class();
  v4 = [MEMORY[0x1E69AC750] wf_personNameComponentsIdentifier];
  v8[2] = v4;
  v9[2] = objc_opt_class();
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end