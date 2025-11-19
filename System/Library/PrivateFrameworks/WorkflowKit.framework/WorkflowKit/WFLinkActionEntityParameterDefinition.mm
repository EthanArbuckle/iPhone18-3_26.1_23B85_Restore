@interface WFLinkActionEntityParameterDefinition
- (BOOL)isUniqueEntity;
- (NSDictionary)parameterDefinitions;
- (WFLinkActionEntityParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)entityMetadata;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 completionHandler:(id)a7;
@end

@implementation WFLinkActionEntityParameterDefinition

- (BOOL)isUniqueEntity
{
  v2 = [(WFLinkActionEntityParameterDefinition *)self entityMetadata];
  v3 = [v2 systemProtocolMetadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69AC2D8]];
  v5 = v4 != 0;

  return v5;
}

- (id)entityMetadata
{
  v2 = [(WFLinkActionParameterDefinition *)self typeSpecificMetadata];
  v3 = [v2 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];

  return v3;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 completionHandler:(id)a7
{
  v22 = a7;
  v9 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:a3];
  if (v9)
  {
    v10 = [(WFLinkActionParameterDefinition *)self valueType];
    if (v10)
    {
      objc_opt_class();
      v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = [v12 identifier];

    v14 = [v9 valueType];
    if (v14)
    {
      objc_opt_class();
      v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v16 identifier];

    LODWORD(v16) = [v13 isEqualToString:v17];
    if (v16)
    {
      v18 = objc_alloc(MEMORY[0x1E69ACA90]);
      v19 = [v9 value];
      v20 = [(WFLinkActionParameterDefinition *)self valueType];
      v21 = [v18 initWithValue:v19 valueType:v20];

      v9 = v21;
    }
  }

  v22[2](v22, v9, 0);
}

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
      v22 = "[WFLinkActionEntityParameterDefinition parameterStateFromLinkValue:]";
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

- (WFLinkActionEntityParameterDefinition)initWithParameterMetadata:(id)a3
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
      [v11 handleFailureInMethod:a2 object:self file:@"WFLinkActionEntityParameterDefinition.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"valueType"}];
      v6 = 0;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[WFLinkActionEntityParameterDefinition parameterDefinitions](self, "parameterDefinitions"), v12 = objc_claimAutoreleasedReturnValue(), [v6 identifier], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "objectForKeyedSubscript:", v13), v13, v12, v14))
  {
    v15 = [[v14 alloc] initWithValueType:v6 parameterMetadata:v5];
  }

  else
  {
    v18.receiver = self;
    v18.super_class = WFLinkActionEntityParameterDefinition;
    v15 = [(WFLinkActionParameterDefinition *)&v18 initWithValueType:v6 parameterMetadata:v5];
    self = v15;
  }

  v16 = v15;

  return v16;
}

- (NSDictionary)parameterDefinitions
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69ACA38] wf_placeDescriptorEntityIdentifier];
  v6 = v2;
  v7[0] = objc_opt_class();
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end