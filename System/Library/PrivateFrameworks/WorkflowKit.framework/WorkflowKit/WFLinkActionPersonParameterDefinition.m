@interface WFLinkActionPersonParameterDefinition
- (Class)parameterClass;
- (WFLinkActionPersonParameterDefinition)initWithParameterMetadata:(id)a3;
- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValues:(id)a3;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)localizedTitleForLinkValue:(id)a3;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkArrayValuesFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9;
- (void)getPeopleFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6;
@end

@implementation WFLinkActionPersonParameterDefinition

- (id)parameterStateFromLinkValue:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [a3 value];
  if (!v4)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v5 = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [v5 objectIsMemberOfType:v4];

  if ((v6 & 1) == 0)
  {
    v10 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = [(WFLinkActionParameterDefinition *)self valueType];
      *buf = 136315650;
      v21 = "[WFLinkActionPersonParameterDefinition parameterStateFromLinkValue:]";
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = v16;
    }

    goto LABEL_11;
  }

  v7 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ((isKindOfClass & 1) == 0)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E6996D00] cnContactWithINPerson:v7];
  v12 = [objc_alloc(MEMORY[0x1E6996D10]) initWithContact:v11];
  v13 = [WFContactSubstitutableState alloc];
  v19 = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v15 = [(WFMultipleValueParameterState *)v13 initWithParameterStates:v14];

LABEL_12:
LABEL_13:

  v17 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)defaultSerializedRepresentationFromParameterMetadataDefaultValues:(id)a3
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

    v5 = v4;

    v6 = [v5 if_compactMap:&__block_literal_global_19780];
    v7 = [(WFMultipleValueParameterState *)[WFContactSubstitutableState alloc] initWithParameterStates:v6];
    v8 = [(WFContactSubstitutableState *)v7 serializedRepresentation];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __107__WFLinkActionPersonParameterDefinition_defaultSerializedRepresentationFromParameterMetadataDefaultValues___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    v4 = v2;
    v2 = 0;
    goto LABEL_7;
  }

  v3 = [MEMORY[0x1E6996D00] cnContactWithINPerson:v2];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x1E6996D10]) initWithContact:v3];
LABEL_7:

    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (void)getPeopleFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (v8)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    if (isKindOfClass)
    {
      v15 = objc_alloc(MEMORY[0x1E6996F20]);
      v16 = [objc_alloc(MEMORY[0x1E6996D10]) initWithContact:v8];
      v29[0] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      v18 = [v15 initWithEntries:v17];
    }

    else
    {
      v16 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      v18 = v19;
    }

    if (v18)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __131__WFLinkActionPersonParameterDefinition_getPeopleFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke;
      v23[3] = &unk_1E83765B0;
      v24 = v11;
      [v18 getRecipientsWithPermissionRequestor:v9 completionHandler:v23];
    }

    else
    {
      v20 = getWFActionsLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v26 = "[WFLinkActionPersonParameterDefinition getPeopleFromProcessedParameterValue:parameterState:permissionRequestor:completionHandler:]";
        v27 = 2112;
        v28 = objc_opt_class();
        v21 = v28;
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, "%s Expected WFProcessedContacts as processed parameter type for Person, but got %@ instead", buf, 0x16u);
      }

      v11[2](v11, 0, 0);
    }
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)getLinkArrayValuesFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __140__WFLinkActionPersonParameterDefinition_getLinkArrayValuesFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke;
  v12[3] = &unk_1E837F020;
  v12[4] = self;
  v13 = v10;
  v11 = v10;
  [(WFLinkActionPersonParameterDefinition *)self getPeopleFromProcessedParameterValue:a3 parameterState:a4 permissionRequestor:a5 completionHandler:v12];
}

void __140__WFLinkActionPersonParameterDefinition_getLinkArrayValuesFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __140__WFLinkActionPersonParameterDefinition_getLinkArrayValuesFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke_194;
    v9[3] = &unk_1E8376588;
    v9[4] = *(a1 + 32);
    v5 = a3;
    v6 = [a2 if_map:v9];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = a3;
    v7 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[WFLinkActionPersonParameterDefinition getLinkArrayValuesFromProcessedParameterValue:parameterState:permissionRequestor:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Could not make INPerson from processedContacts.", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

id __140__WFLinkActionPersonParameterDefinition_getLinkArrayValuesFromProcessedParameterValue_parameterState_permissionRequestor_completionHandler___block_invoke_194(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69ACA90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) valueType];
  v7 = [v5 initWithValue:v4 valueType:v6];

  return v7;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(id)a4 permissionRequestor:(id)a5 runningFromToolKit:(BOOL)a6 action:(id)a7 parameterKey:(id)a8 completionHandler:(id)a9
{
  v13 = a9;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __173__WFLinkActionPersonParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke;
  v15[3] = &unk_1E837F020;
  v15[4] = self;
  v16 = v13;
  v14 = v13;
  [(WFLinkActionPersonParameterDefinition *)self getPeopleFromProcessedParameterValue:a3 parameterState:a4 permissionRequestor:a5 completionHandler:v15];
}

void __173__WFLinkActionPersonParameterDefinition_getLinkValueFromProcessedParameterValue_parameterState_permissionRequestor_runningFromToolKit_action_parameterKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 40);
    v8 = objc_alloc(MEMORY[0x1E69ACA90]);
    v9 = [v5 firstObject];
    v10 = [*(a1 + 32) valueType];
    v11 = [v8 initWithValue:v9 valueType:v10];
    (*(v7 + 16))(v7, v11, v6);
  }

  else
  {
    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[WFLinkActionPersonParameterDefinition getLinkValueFromProcessedParameterValue:parameterState:permissionRequestor:runningFromToolKit:action:parameterKey:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Could not make INPerson from processedContacts.", &v14, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (v8)
  {
    objc_opt_class();
    v9 = v8;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }

    v10 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
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

  v12 = v11;

  v13 = [v12 value];

  v14 = [v13 firstObject];
  v15 = [v14 parameterState];

  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v19 = 0;
    goto LABEL_29;
  }

  v9 = v15;

LABEL_10:
  v16 = [v9 type];
  v17 = 0;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 == 3)
      {
        v17 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v31 = 136315138;
          v32 = "[WFLinkActionPersonParameterDefinition linkValueFromParameterState:action:]";
          _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_FAULT, "%s Custom handles are not supported", &v31, 0xCu);
        }

        v19 = 0;
        goto LABEL_28;
      }

      if (v16 == 4)
      {
        v18 = getWFAppIntentsLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v31 = 136315138;
          v32 = "[WFLinkActionPersonParameterDefinition linkValueFromParameterState:action:]";
          _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_FAULT, "%s Message groups are not supported", &v31, 0xCu);
        }

        v17 = 0;
      }

      goto LABEL_27;
    }

    v26 = objc_alloc(MEMORY[0x1E696E948]);
    v21 = [v9 emailAddress];
    v22 = [v21 address];
    v23 = v26;
    v24 = v22;
    v25 = 1;
LABEL_22:
    v27 = [v23 initWithValue:v24 type:v25];

    v17 = [objc_alloc(MEMORY[0x1E696E940]) initWithPersonHandle:v27 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
    goto LABEL_27;
  }

  if (!v16)
  {
    v28 = [v9 contact];
    v17 = [v28 INPersonRepresentation];

    goto LABEL_27;
  }

  if (v16 == 1)
  {
    v20 = objc_alloc(MEMORY[0x1E696E948]);
    v21 = [v9 phoneNumber];
    v22 = [v21 string];
    v23 = v20;
    v24 = v22;
    v25 = 2;
    goto LABEL_22;
  }

LABEL_27:
  v19 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v17];
LABEL_28:

LABEL_29:
  v29 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)localizedTitleForLinkValue:(id)a3
{
  v3 = [a3 value];
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

  v6 = [v5 displayName];

  return v6;
}

- (Class)parameterClass
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(WFLinkActionParameterDefinition *)self parameterMetadata];
  v3 = [v2 typeSpecificMetadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69AC5F0]];

  if (![v4 length] || (objc_msgSend(v4, "isEqualToString:", @"contact") & 1) != 0)
  {
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"email"])
  {
    v5 = off_1E836E2D0;
    goto LABEL_4;
  }

  if ([v4 isEqualToString:@"phone"])
  {
    v5 = off_1E836EE08;
    goto LABEL_4;
  }

  if (([v4 isEqualToString:@"emailOrPhone"] & 1) == 0)
  {
    v10 = [v4 isEqualToString:@"username"];
    v11 = getWFAppIntentsLogObject();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (v10)
    {
      if (v12)
      {
        v16 = 136315138;
        v17 = "[WFLinkActionPersonParameterDefinition parameterClass]";
        v13 = "%s username parameterMode is not implemented yet.";
        v14 = v11;
        v15 = 12;
LABEL_18:
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, v13, &v16, v15);
      }
    }

    else if (v12)
    {
      v16 = 136315394;
      v17 = "[WFLinkActionPersonParameterDefinition parameterClass]";
      v18 = 2112;
      v19 = v4;
      v13 = "%s Unhandled parameterMode %@ for Person parameter definition.";
      v14 = v11;
      v15 = 22;
      goto LABEL_18;
    }

LABEL_3:
    v5 = off_1E836E040;
    goto LABEL_4;
  }

  v5 = off_1E836E048;
LABEL_4:
  v6 = *v5;
  v7 = objc_opt_class();

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (WFLinkActionPersonParameterDefinition)initWithParameterMetadata:(id)a3
{
  v4 = MEMORY[0x1E69AC888];
  v5 = a3;
  v6 = [v4 personValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionPersonParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:v6 parameterMetadata:v5];

  return v7;
}

@end