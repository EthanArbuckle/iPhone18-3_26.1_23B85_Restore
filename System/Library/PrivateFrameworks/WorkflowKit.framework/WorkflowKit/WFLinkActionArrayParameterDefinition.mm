@interface WFLinkActionArrayParameterDefinition
- (Class)parameterClass;
- (WFLinkActionArrayParameterDefinition)initWithMemberValueType:(id)type parameterMetadata:(id)metadata actionIdentifier:(id)identifier;
- (id)arraySizeRangeForWidgetFamily:(id)family withSizes:(id)sizes;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)linkValueFromProcessedParameterValue:(id)value;
- (id)localizedTitleForLinkValue:(id)value;
- (id)memberParameterDefinition;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionArrayParameterDefinition

- (id)memberParameterDefinition
{
  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  memberValueType = [valueType memberValueType];
  parameterMetadata = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  actionIdentifier = [(WFLinkActionArrayParameterDefinition *)self actionIdentifier];
  v7 = [memberValueType wf_parameterDefinitionWithParameterMetadata:parameterMetadata actionIdentifier:actionIdentifier];

  return v7;
}

- (id)localizedTitleForLinkValue:(id)value
{
  valueCopy = value;
  memberParameterDefinition = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
  v6 = [memberParameterDefinition localizedTitleForLinkValue:valueCopy];

  return v6;
}

- (id)parameterStateFromLinkValue:(id)value
{
  value = [value value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = value;
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

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = valueCopy;
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
  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  memberValueType = [valueType memberValueType];
  v9 = [v6 if_objectsOfClass:{objc_msgSend(memberValueType, "objectClass")}];

  if (v9)
  {
    memberParameterDefinition = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
    v11 = [memberParameterDefinition defaultSerializedRepresentationFromParameterMetadataDefaultValues:valueCopy];
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
      v16 = memberParameterDefinition;
      v13 = [v9 if_compactMap:v15];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)arraySizeRangeForWidgetFamily:(id)family withSizes:(id)sizes
{
  familyCopy = family;
  sizesCopy = sizes;
  v9 = sizesCopy;
  if (!familyCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFLinkActionArrayParameterDefinition.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"widgetFamily"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_20:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFLinkActionArrayParameterDefinition.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"sizes"}];

    goto LABEL_3;
  }

  if (!sizesCopy)
  {
    goto LABEL_20;
  }

LABEL_3:
  v10 = [v9 objectForKeyedSubscript:familyCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 min];
    integerValue = [v12 integerValue];

    v14 = [v11 max];
    v15 = [v14 integerValue] - integerValue;

    v16 = [MEMORY[0x1E696B098] valueWithRange:{integerValue, v15 + 1}];
    goto LABEL_14;
  }

  v17 = [familyCopy isEqualToString:*MEMORY[0x1E69AC188]];
  v18 = *MEMORY[0x1E69AC190];
  if (v17)
  {
    goto LABEL_13;
  }

  v19 = [familyCopy isEqualToString:v18];
  v18 = *MEMORY[0x1E69AC198];
  if (v19)
  {
    goto LABEL_13;
  }

  v20 = [familyCopy isEqualToString:v18];
  v18 = *MEMORY[0x1E69AC1A0];
  if (v20)
  {
    goto LABEL_13;
  }

  if ([familyCopy isEqualToString:v18])
  {
    goto LABEL_9;
  }

  v21 = [familyCopy isEqualToString:*MEMORY[0x1E69AC178]];
  v18 = *MEMORY[0x1E69AC160];
  if (v21)
  {
    goto LABEL_13;
  }

  v22 = [familyCopy isEqualToString:v18];
  v18 = *MEMORY[0x1E69AC168];
  if (v22)
  {
    goto LABEL_13;
  }

  v23 = [familyCopy isEqualToString:v18];
  v18 = *MEMORY[0x1E69AC170];
  if (v23)
  {
    goto LABEL_13;
  }

  if ([familyCopy isEqualToString:v18])
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
  memberParameterDefinition = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
  parameterDefinitionDictionary = [memberParameterDefinition parameterDefinitionDictionary];

  v5 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC590] ofClass:objc_opt_class()];
  v6 = [parameterDefinitionDictionary objectForKey:@"DefaultValue"];

  if (!v6)
  {
    v7 = [(WFLinkActionArrayParameterDefinition *)self defaultSerializedRepresentationFromParameterMetadataDefaultValue:v5];
    v8 = v7;
    if (v7)
    {
      v41 = @"DefaultValue";
      v42 = v7;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v10 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v9];

      parameterDefinitionDictionary = v10;
    }
  }

  v11 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC558] ofClass:objc_opt_class()];
  if_dictionaryWithNonEmptyValues = [v11 if_dictionaryWithNonEmptyValues];

  v13 = MEMORY[0x1E695E118];
  if (if_dictionaryWithNonEmptyValues)
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
    selfCopy = self;
    v34 = v19;
    v21 = [v18 if_objectsPassingTest:&v29];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:{v21, v29, v30, v31, v32, selfCopy}];
    v39[0] = @"RangedSizeArray";
    v39[1] = @"ArraySizeRangesForWidgetFamily";
    v40[0] = v13;
    v40[1] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v24 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v23];

    parameterDefinitionDictionary = v24;
  }

  v37 = @"AllowsMultipleValues";
  v38 = v13;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v26 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v25];

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
  memberParameterDefinition = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
  parameterClass = [memberParameterDefinition parameterClass];

  return parameterClass;
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
    v22 = stateCopy;
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
    selfCopy = self;
    v34 = v22;
    v35 = requestorCopy;
    kitCopy = kit;
    v36 = actionCopy;
    v37 = keyCopy;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __172__WFLinkActionArrayParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke_2_168;
    v29[3] = &unk_1E837F020;
    v29[4] = self;
    v30 = handlerCopy;
    v26 = v27;
    v28 = handlerCopy;
    [v21 if_mapAsynchronously:v31 completionHandler:v29];

    memberParameterDefinition = v21;
  }

  else
  {

    memberParameterDefinition = [(WFLinkActionArrayParameterDefinition *)self memberParameterDefinition];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __172__WFLinkActionArrayParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
    v39[3] = &unk_1E837F020;
    v39[4] = self;
    v40 = handlerCopy;
    v25 = handlerCopy;
    [memberParameterDefinition getLinkArrayValuesFromProcessedParameterValue:v21 parameterState:stateCopy permissionRequestor:requestorCopy completionHandler:v39];
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

- (id)linkValueFromProcessedParameterValue:(id)value
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (valueCopy)
  {
    valueType = [(WFLinkActionParameterDefinition *)self valueType];
    v6 = [valueType objectIsMemberOfType:valueCopy];

    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x1E69ACA90]);
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      memberValueType = [valueType2 memberValueType];
      v10 = [v7 initWithValues:valueCopy memberValueType:memberValueType];

      goto LABEL_8;
    }

    v11 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      valueType3 = [(WFLinkActionParameterDefinition *)self valueType];
      v15 = 136315650;
      v16 = "[WFLinkActionArrayParameterDefinition linkValueFromProcessedParameterValue:]";
      v17 = 2112;
      v18 = valueCopy;
      v19 = 2112;
      v20 = valueType3;
    }
  }

  v10 = 0;
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  stateCopy = state;
  actionCopy = action;
  v8 = stateCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    parameterStates = [v8 parameterStates];
    if (parameterStates)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = parameterStates;
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
    selfCopy = self;
    v20 = actionCopy;
    v13 = [v12 if_compactMap:&v15];

    if (v13)
    {
      selfCopy = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v13, v15, v16, v17, v18, selfCopy];
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {

    selfCopy = 0;
  }

  return selfCopy;
}

id __75__WFLinkActionArrayParameterDefinition_linkValueFromParameterState_action___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 memberParameterDefinition];
  v6 = [v5 linkValueFromParameterState:v4 action:*(a1 + 40)];

  return v6;
}

- (WFLinkActionArrayParameterDefinition)initWithMemberValueType:(id)type parameterMetadata:(id)metadata actionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = MEMORY[0x1E69AC6C0];
  metadataCopy = metadata;
  typeCopy = type;
  v12 = [[v9 alloc] initWithMemberValueType:typeCopy];

  v18.receiver = self;
  v18.super_class = WFLinkActionArrayParameterDefinition;
  v13 = [(WFLinkActionParameterDefinition *)&v18 initWithValueType:v12 parameterMetadata:metadataCopy];

  if (v13)
  {
    v14 = [identifierCopy copy];
    actionIdentifier = v13->_actionIdentifier;
    v13->_actionIdentifier = v14;

    v16 = v13;
  }

  return v13;
}

@end