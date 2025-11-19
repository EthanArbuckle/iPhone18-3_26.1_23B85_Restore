@interface WFLinkActionArrayParameterDefinition
- (Class)parameterClass;
- (WFLinkActionArrayParameterDefinition)initWithMemberValueType:(id)a3 parameterMetadata:(id)a4 actionIdentifier:(id)a5;
- (id)arraySizeRangeForWidgetFamily:(id)a3 withSizes:(id)a4;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)linkValueFromProcessedParameterValue:(id)a3;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)memberParameterDefinition;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
@end

@implementation WFLinkActionArrayParameterDefinition

- (id)memberParameterDefinition
{
  v3 = [(WFLinkActionParameterDefinition *)self valueType];
  v4 = [v3 memberValueType];
  v5 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v6 = [(WFLinkActionArrayParameterDefinition *)self actionIdentifier];
  v7 = [v4 wf_parameterDefinitionWithParameterMetadata:v5 actionIdentifier:v6];

  return v7;
}

- (id)localizedTitleForLinkValue:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
  v6 = [v5 localizedTitleForLinkValue:v4];

  return v6;
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v4 = [a3 value];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__WFLinkActionArrayParameterDefinition_parameterStateFromLinkValue___block_invoke;
  v10[3] = &unk_1E837B5E8;
  v10[4] = self;
  v7 = [v6 if_map:v10];

  if (v7)
  {
    v8 = [[WFMultipleValueParameterState alloc] initWithParameterStates:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __68__WFLinkActionArrayParameterDefinition_parameterStateFromLinkValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 memberParameterDefinition];
  v5 = [v4 parameterStateFromLinkValue:v3];

  return v5;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [(WFLinkActionParameterDefinition *)self valueType];
  v8 = [v7 memberValueType];
  v9 = [v6 if_objectsOfClass:{objc_msgSend(v8, "objectClass")}];

  if (v9)
  {
    v10 = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
    v11 = [v10 defaultSerializedRepresentationFromParameterMetadataDefaultValues:v4];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __105__WFLinkActionArrayParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValue___block_invoke;
      v15[3] = &unk_1E837E220;
      v16 = v10;
      v13 = [v9 if_compactMap:v15];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)arraySizeRangeForWidgetFamily:(id)a3 withSizes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFLinkActionArrayParameterDefinition.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"widgetFamily"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_20:
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"WFLinkActionArrayParameterDefinition.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"sizes"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_3:
  v10 = [v9 objectForKeyedSubscript:v7];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 min];
    v13 = [v12 integerValue];

    v14 = [v11 max];
    v15 = [v14 integerValue] - v13;

    v16 = [MEMORY[0x1E696B098] valueWithRange:{v13, v15 + 1}];
    goto LABEL_14;
  }

  v17 = [v7 isEqualToString:*MEMORY[0x1E69AC188]];
  v18 = *MEMORY[0x1E69AC190];
  if (v17)
  {
    goto LABEL_13;
  }

  v19 = [v7 isEqualToString:v18];
  v18 = *MEMORY[0x1E69AC198];
  if (v19)
  {
    goto LABEL_13;
  }

  v20 = [v7 isEqualToString:v18];
  v18 = *MEMORY[0x1E69AC1A0];
  if (v20)
  {
    goto LABEL_13;
  }

  if ([v7 isEqualToString:v18])
  {
    goto LABEL_9;
  }

  v21 = [v7 isEqualToString:*MEMORY[0x1E69AC178]];
  v18 = *MEMORY[0x1E69AC160];
  if (v21)
  {
    goto LABEL_13;
  }

  v22 = [v7 isEqualToString:v18];
  v18 = *MEMORY[0x1E69AC168];
  if (v22)
  {
    goto LABEL_13;
  }

  v23 = [v7 isEqualToString:v18];
  v18 = *MEMORY[0x1E69AC170];
  if (v23)
  {
    goto LABEL_13;
  }

  if ([v7 isEqualToString:v18])
  {
LABEL_9:
    v18 = *MEMORY[0x1E69AC1A8];
LABEL_13:
    v24 = v18;
    v16 = [(WFLinkActionArrayParameterDefinition *)self arraySizeRangeForWidgetFamily:v24 withSizes:v9];

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

- (id)parameterDefinitionDictionary
{
  v43[8] = *MEMORY[0x1E69E9840];
  v3 = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
  v4 = [v3 parameterDefinitionDictionary];

  v5 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC590] ofClass:objc_opt_class()];
  v6 = [v4 objectForKey:@"DefaultValue"];

  if (!v6)
  {
    v7 = [(WFLinkActionArrayParameterDefinition *)self defaultSerializedRepresentationFromParameterMetadataDefaultValue:v5];
    v8 = v7;
    if (v7)
    {
      v41 = @"DefaultValue";
      v42 = v7;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v10 = [v4 definitionByAddingEntriesInDictionary:v9];

      v4 = v10;
    }
  }

  v11 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC558] ofClass:objc_opt_class()];
  v12 = [v11 if_dictionaryWithNonEmptyValues];

  v13 = MEMORY[0x1E695E118];
  if (v12)
  {
    v14 = *MEMORY[0x1E69AC1A0];
    v43[0] = *MEMORY[0x1E69AC1A8];
    v43[1] = v14;
    v15 = *MEMORY[0x1E69AC190];
    v43[2] = *MEMORY[0x1E69AC198];
    v43[3] = v15;
    v16 = *MEMORY[0x1E69AC160];
    v43[4] = *MEMORY[0x1E69AC188];
    v43[5] = v16;
    v17 = *MEMORY[0x1E69AC170];
    v43[6] = *MEMORY[0x1E69AC178];
    v43[7] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __69__WFLinkActionArrayParameterDefinition_parameterDefinitionDictionary__block_invoke;
    v35[3] = &unk_1E837B580;
    v35[4] = self;
    v19 = v11;
    v36 = v19;
    v20 = [v18 if_compactMap:v35];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __69__WFLinkActionArrayParameterDefinition_parameterDefinitionDictionary__block_invoke_2;
    v32 = &unk_1E837B5A8;
    v33 = self;
    v34 = v19;
    v21 = [v18 if_objectsPassingTest:&v29];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:{v21, v29, v30, v31, v32, v33}];
    v39[0] = @"RangedSizeArray";
    v39[1] = @"ArraySizeRangesForWidgetFamily";
    v40[0] = v13;
    v40[1] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v24 = [v4 definitionByAddingEntriesInDictionary:v23];

    v4 = v24;
  }

  v37 = @"AllowsMultipleValues";
  v38 = v13;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v26 = [v4 definitionByAddingEntriesInDictionary:v25];

  v27 = *MEMORY[0x1E69E9840];

  return v26;
}

BOOL __69__WFLinkActionArrayParameterDefinition_parameterDefinitionDictionary__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) arraySizeRangeForWidgetFamily:a2 withSizes:*(a1 + 40)];
  v3 = v2 != 0;

  return v3;
}

- (Class)parameterClass
{
  v2 = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
  v3 = [v2 parameterClass];

  return v3;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = v15;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v22 = v16;
    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v27 = v23;

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __172__WFLinkActionArrayParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke_2;
    v31[3] = &unk_1E837B558;
    v32 = v27;
    v33 = self;
    v34 = v22;
    v35 = v17;
    v38 = a6;
    v36 = v18;
    v37 = v19;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __172__WFLinkActionArrayParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke_2_168;
    v29[3] = &unk_1E837F020;
    v29[4] = self;
    v30 = v20;
    v26 = v27;
    v28 = v20;
    [v21 if_mapAsynchronously:v31 completionHandler:v29];

    v24 = v21;
  }

  else
  {

    v24 = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __172__WFLinkActionArrayParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
    v39[3] = &unk_1E837F020;
    v39[4] = self;
    v40 = v20;
    v25 = v20;
    [v24 getLinkArrayValuesFromProcessedParameterValue:v21 parameterState:v16 permissionRequestor:v17 completionHandler:v39];
    v26 = v40;
  }
}

void __172__WFLinkActionArrayParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 40);
  v14 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E69ACA90];
    v8 = a3;
    v9 = [v7 alloc];
    v10 = [*(a1 + 32) valueType];
    v11 = [v10 memberValueType];
    v12 = [v9 initWithValues:v14 memberValueType:v11];
    (*(v6 + 16))(v6, v12, v8);
  }

  else
  {
    v13 = *(v6 + 16);
    v10 = a3;
    v13(v6, 0, v10);
  }
}

void __172__WFLinkActionArrayParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = [v9 parameterStates];
    v11 = [v10 count];

    if (v11 > a3)
    {
      v12 = [*(a1 + 32) parameterStates];
      v13 = [v12 objectAtIndexedSubscript:a3];

      goto LABEL_8;
    }

    v14 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[WFLinkActionArrayParameterDefinition getLinkValueFromProcessedParameterValue:parameterState:permissionRequestor:runningFromToolKit:action:parameterKey:completionHandler:]_block_invoke_2";
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Attempted to unwrap WFMultipleValueParameterState but did not find a matching substate this is a serious error! Falling back to multiple parameter state.", buf, 0xCu);
    }
  }

  v13 = 0;
LABEL_8:
  v15 = [*(a1 + 40) memberParameterDefinition];
  v16 = v13;
  if (!v13)
  {
    v16 = *(a1 + 48);
  }

  v17 = *(a1 + 80);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __172__WFLinkActionArrayParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke_165;
  v23[3] = &unk_1E837B530;
  v24 = v8;
  v21 = v8;
  [v15 getLinkValueFromProcessedParameterValue:v7 parameterState:v16 permissionRequestor:v18 runningFromToolKit:v17 action:v19 parameterKey:v20 completionHandler:v23];

  v22 = *MEMORY[0x1E69E9840];
}

void __172__WFLinkActionArrayParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke_2_168(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 linkValueWithValue:a2];
  (*(v4 + 16))(v4, v7, v6);
}

- (id)linkValueFromProcessedParameterValue:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [v5 objectIsMemberOfType:v4];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E69ACA90]);
      v8 = [(WFLinkActionParameterDefinition *)self valueType];
      v9 = [v8 memberValueType];
      v10 = [v7 initWithValues:v4 memberValueType:v9];

      goto LABEL_8;
    }

    v11 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = [(WFLinkActionParameterDefinition *)self valueType];
      v15 = 136315650;
      v16 = "[WFLinkActionArrayParameterDefinition linkValueFromProcessedParameterValue:]";
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v12;
    }
  }

  v10 = 0;
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 parameterStates];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __75__WFLinkActionArrayParameterDefinition_linkValueFromParameterState_action___block_invoke;
    v18 = &unk_1E837B508;
    v19 = self;
    v20 = v7;
    v13 = [v12 if_compactMap:&v15];

    if (v13)
    {
      v11 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v13, v15, v16, v17, v18, v19];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

id __75__WFLinkActionArrayParameterDefinition_linkValueFromParameterState_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 memberParameterDefinition];
  v6 = [v5 linkValueFromParameterState:v4 action:*(a1 + 40)];

  return v6;
}

- (WFLinkActionArrayParameterDefinition)initWithMemberValueType:(id)a3 parameterMetadata:(id)a4 actionIdentifier:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x1E69AC6C0];
  v10 = a4;
  v11 = a3;
  v12 = [[v9 alloc] initWithMemberValueType:v11];

  v18.receiver = self;
  v18.super_class = WFLinkActionArrayParameterDefinition;
  v13 = [(WFLinkActionParameterDefinition *)&v18 initWithValueType:v12 parameterMetadata:v10];

  if (v13)
  {
    v14 = [v8 copy];
    actionIdentifier = v13->_actionIdentifier;
    v13->_actionIdentifier = v14;

    v16 = v13;
  }

  return v13;
}

@end