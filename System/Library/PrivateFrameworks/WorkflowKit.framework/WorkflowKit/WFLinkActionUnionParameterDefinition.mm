@interface WFLinkActionUnionParameterDefinition
- (Class)contentItemClassFromValueType:(id)a3 metadata:(id)a4;
- (WFLinkActionUnionParameterDefinition)initWithValueType:(id)a3 parameterMetadata:(id)a4;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterDefinitionDictionary;
- (id)parameterMetadataForIdentifier:(id)a3;
- (id)parameterStateFromLinkValue:(id)a3;
- (id)subdefinitionForState:(id)a3;
- (id)subdefinitions;
- (id)substateForState:(id)a3;
- (id)subtypes;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionUnionParameterDefinition

- (id)localizedTitleForLinkValue:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v6 = [v4 valueType];
  v7 = [v5 wf_parameterMetadataWithValueType:v6 typeSpecificMetadata:MEMORY[0x1E695E0F8]];

  v8 = [v4 valueType];
  v9 = [v8 wf_parameterDefinitionWithParameterMetadata:v7 dynamicOptionsSupport:0];
  v10 = [v9 localizedTitleForLinkValue:v4];

  return v10;
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = objc_opt_class();
  v7 = WFEnforceClass_72101(v5, v6);

  if (v7)
  {
    v8 = [v7 memberValueTypes];
    v9 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v10 = [v9 typeSpecificMetadata];
    v11 = [v10 objectForKey:@"LNValueTypeSpecificMetadataKeyLinkUnionMetadata"];

    v12 = [v8 count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while (1)
      {
        v15 = [v8 objectAtIndex:v14];
        v16 = [v11 objectAtIndex:v14];
        v17 = [(WFLinkActionUnionParameterDefinition *)self contentItemClassFromValueType:v15 metadata:v16];
        if ([v15 valueIsKindOfType:v4])
        {
          if (v17)
          {
            break;
          }
        }

        if (v13 == ++v14)
        {
          goto LABEL_7;
        }
      }

      v27 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
      v19 = [v11 objectAtIndex:v14];
      v20 = [v27 wf_parameterMetadataWithValueType:v15 typeSpecificMetadata:v19];
      v28 = [v20 wf_parameterDefinition];

      v21 = [v28 parameterStateFromLinkValue:v4];
      v22 = NSStringFromClass(v17);
      v23 = [WFUnionParameterState alloc];
      v29 = v22;
      v30[0] = v21;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v18 = [(WFUnionParameterState *)v23 initWithWhich:v22 states:v24];
    }

    else
    {
LABEL_7:
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (v11)
  {
    v21 = [v18 toolInvocation];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __172__WFLinkActionUnionParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
    v28[3] = &unk_1E837F560;
    v30 = v20;
    v29 = v15;
    [v21 valueTypeForParameterWithKey:v19 completionHandler:v28];
  }

  else
  {
    v22 = objc_opt_class();
    v23 = WFEnforceClass_72101(v16, v22);
    v24 = v23;
    if (v15 && v23)
    {
      v25 = [(WFLinkActionUnionParameterDefinition *)self subdefinitionForState:v23];
      v26 = [(WFLinkActionUnionParameterDefinition *)self substateForState:v24];
      v27 = v26;
      if (v25 && v26)
      {
        [v25 getLinkValueFromProcessedParameterValue:v15 parameterState:v26 permissionRequestor:v17 runningFromToolKit:0 action:v18 parameterKey:v19 completionHandler:v20];
      }

      else
      {
        (*(v20 + 2))(v20, 0, 0);
      }
    }

    else
    {
      (*(v20 + 2))(v20, 0, 0);
    }
  }
}

void __172__WFLinkActionUnionParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v6 = v3;
  if (v3)
  {
    v5 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:*(a1 + 32) valueType:v3];
    (*(v4 + 16))(v4, v5, 0);
  }

  else
  {
    (*(v4 + 16))(v4, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = WFEnforceClass_72101(v6, v8);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 which];

    if (v11)
    {
      v12 = [(WFLinkActionUnionParameterDefinition *)self subdefinitionForState:v10];
      v13 = [(WFLinkActionUnionParameterDefinition *)self substateForState:v10];
      v14 = [v12 linkValueFromParameterState:v13 action:v7];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFLinkActionUnionParameterDefinition;
    v14 = [(WFLinkActionParameterDefinition *)&v16 linkValueFromParameterState:v6 action:v7];
  }

  return v14;
}

- (id)substateForState:(id)a3
{
  v3 = a3;
  v4 = [v3 which];
  if (v4)
  {
    v5 = [v3 states];
    v6 = [v3 which];
    v7 = [v5 objectForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)subdefinitionForState:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = objc_opt_class();
  v7 = WFEnforceClass_72101(v5, v6);

  if (v7 && ([v4 which], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v31 = v7;
    v9 = [v7 memberValueTypes];
    v10 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v11 = [v10 typeSpecificMetadata];
    v32 = [v11 objectForKey:@"LNValueTypeSpecificMetadataKeyLinkUnionMetadata"];

    v12 = v9;
    v13 = [v9 count];
    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = v13;
    v15 = 0;
    while (1)
    {
      v16 = [v12 objectAtIndex:v15];
      v17 = [v32 objectAtIndex:v15];
      v18 = [(WFLinkActionUnionParameterDefinition *)self contentItemClassFromValueType:v16 metadata:v17];
      if (v18)
      {
        v19 = NSStringFromClass(v18);
        [v4 which];
        v21 = v20 = v4;
        v22 = [v19 isEqual:v21];

        v4 = v20;
        if (v22)
        {
          break;
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_8;
      }
    }

    v28 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v29 = [v32 objectAtIndex:v15];
    v30 = [v28 wf_parameterMetadataWithValueType:v16 typeSpecificMetadata:v29];
    v25 = [v30 wf_parameterDefinition];

    v4 = v20;
    if (!v25)
    {
LABEL_8:
      v23 = getWFGeneralLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v4 which];
        *buf = 136315394;
        v34 = "[WFLinkActionUnionParameterDefinition subdefinitionForState:]";
        v35 = 2112;
        v36 = v24;
        _os_log_impl(&dword_1CA256000, v23, OS_LOG_TYPE_ERROR, "%s no subdefinition for %@", buf, 0x16u);
      }

      v25 = 0;
    }

    v7 = v31;
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)parameterDefinitionDictionary
{
  v33 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = WFLinkActionUnionParameterDefinition;
  v3 = [(WFLinkActionParameterDefinition *)&v26 parameterDefinitionDictionary];
  v4 = [(WFLinkActionParameterDefinition *)self valueType];
  v5 = objc_opt_class();
  v6 = WFEnforceClass_72101(v4, v5);

  if (v6)
  {
    v25 = v3;
    v7 = [v6 memberValueTypes];
    v8 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v9 = [v8 typeSpecificMetadata];
    v10 = [v9 objectForKey:@"LNValueTypeSpecificMetadataKeyLinkUnionMetadata"];

    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v12 = [v7 count];
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = [v7 objectAtIndex:i];
        v16 = [v10 objectAtIndex:i];
        v17 = [(WFLinkActionUnionParameterDefinition *)self contentItemClassFromValueType:v15 metadata:v16];
        if (v17)
        {
          v18 = NSStringFromClass(v17);
          [v11 addObject:v18];
        }

        else
        {
          v18 = getWFGeneralLogObject();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v30 = "[WFLinkActionUnionParameterDefinition parameterDefinitionDictionary]";
            v31 = 2112;
            v32 = v15;
            _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s could not map %@ to a content item class.", buf, 0x16u);
          }
        }
      }
    }

    v19 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
    v20 = [v6 memberTypeParameterDefinitionsFromParameterMetadata:v19];

    v27[0] = @"WFUnionTypes";
    v27[1] = @"WFUnionDefinitions";
    v28[0] = v11;
    v28[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v3 = v25;
    v22 = [v25 definitionByAddingEntriesInDictionary:v21];
  }

  else
  {
    v22 = v3;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)subtypes
{
  v2 = [(WFLinkActionUnionParameterDefinition *)self parameterDefinitionDictionary];
  v3 = [v2 objectForKey:@"WFUnionTypes"];

  return v3;
}

- (id)subdefinitions
{
  v2 = [(WFLinkActionUnionParameterDefinition *)self parameterDefinitionDictionary];
  v3 = [v2 objectForKey:@"WFUnionDefinitions"];

  return v3;
}

- (id)parameterMetadataForIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 containsString:@"~"])
  {
    v5 = [v4 componentsSeparatedByString:@"~"];
    v6 = [(WFLinkActionUnionParameterDefinition *)self parameterDefinitionDictionary];
    v7 = [WFParameter parameterWithDefinition:v6];

    v8 = [v7 parameterMetadataByType];
    v9 = [v5 lastObject];
    v10 = [v8 objectForKey:v9];
  }

  else
  {
    v10 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  }

  return v10;
}

- (Class)contentItemClassFromValueType:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
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

    v9 = v8;

    v10 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v9)
    {
      v13 = [v6 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];
      v14 = objc_opt_class();
      v15 = WFEnforceClass_72101(v13, v14);

      if (v15)
      {
        v16 = [v13 effectiveBundleIdentifiers];
        v17 = [v16 firstObject];
        v18 = [v17 bundleIdentifier];

        v19 = [v9 wf_contentItemClassWithEntityMetadata:v13];

        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_18;
    }

    if (v12)
    {
      v13 = [v6 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata"];
      v20 = objc_opt_class();
      v21 = WFEnforceClass_72101(v13, v20);

      if (v21)
      {
        v22 = [v13 effectiveBundleIdentifiers];
        v23 = [v22 firstObject];
        v24 = [v23 bundleIdentifier];

        v19 = [v12 wf_contentItemClassWithEnumMetadata:v13];

        v12 = v10;
        v10 = 0;
        goto LABEL_19;
      }

      v12 = v10;
      v10 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
  }

  v10 = 0;
LABEL_18:
  v19 = [v7 wf_contentItemClassWithAppBundleIdentifier:0];
LABEL_19:

  return v19;
}

- (WFLinkActionUnionParameterDefinition)initWithValueType:(id)a3 parameterMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = WFEnforceClass_72101(v6, v8);

  if (v9)
  {
    v12.receiver = self;
    v12.super_class = WFLinkActionUnionParameterDefinition;
    v10 = [(WFLinkActionParameterDefinition *)&v12 initWithValueType:v6 parameterMetadata:v7];
    if (v10)
    {
      self = v10;
      v9 = self;
    }

    else
    {
      self = 0;
      v9 = 0;
    }
  }

  return v9;
}

@end