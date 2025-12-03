@interface INCodableEnumAttribute(Workflow)
- (WFStringSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:;
- (id)wf_contentItemForValue:()Workflow;
- (id)wf_objectClass;
- (id)wf_outputDisplayNameWithLocalizer:()Workflow;
- (id)wf_parameterClass;
- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:;
- (void)wf_getProcessedIntentValueForParameterValue:()Workflow parameter:parameterState:completionHandler:;
@end

@implementation INCodableEnumAttribute(Workflow)

- (id)wf_contentItemForValue:()Workflow
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self valueWithName:v4];
LABEL_5:
    v6 = v5;
    v7 = MEMORY[0x1E6996D58];
    localizedDisplayName = [v5 localizedDisplayName];
    v9 = [v7 itemWithObject:localizedDisplayName];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [self valueForIndex:{objc_msgSend(v4, "integerValue")}];
    goto LABEL_5;
  }

  v11.receiver = self;
  v11.super_class = &off_1F4AF9FF8;
  v9 = objc_msgSendSuper2(&v11, sel_wf_contentItemForValue_, v4);
LABEL_7:

  return v9;
}

- (WFStringSubstitutableState)wf_parameterStateForIntentValue:()Workflow parameterDefinition:
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  codableEnum = [self codableEnum];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    index = [v6 index];
LABEL_5:
    v10 = index;
    if ([codableEnum type] == 1)
    {
      v11 = [WFBooleanSubstitutableState alloc];
      v12 = [MEMORY[0x1E696AD98] numberWithInt:v10 == 1];
      v13 = [(WFNumberSubstitutableState *)v11 initWithNumber:v12];
LABEL_7:

      goto LABEL_19;
    }

    if (![codableEnum type])
    {
      v14 = [v7 objectForKey:@"IntentEnumOverrides"];
      v15 = objc_opt_class();
      v12 = WFEnforceClass_1501(v14, v15);

      values = [codableEnum values];
      v17 = [values objectMatchingKey:@"index" intValue:v10];

      if (v17)
      {
        name = [v17 name];
        v19 = [v12 objectForKeyedSubscript:name];
        v20 = v19;
        if (v19)
        {
          name2 = v19;
        }

        else
        {
          name2 = [v17 name];
        }

        v25 = name2;

        v13 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v25];
        goto LABEL_7;
      }
    }

    objc_msgSendSuper2(&v26, sel_wf_parameterStateForIntentValue_parameterDefinition_, v6, v7, self, &off_1F4AF9FF8, v27.receiver, v27.super_class);
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    index = [v6 integerValue];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSendSuper2(&v27, sel_wf_parameterStateForIntentValue_parameterDefinition_, v6, v7, v26.receiver, v26.super_class, self, &off_1F4AF9FF8);
    v13 = LABEL_12:;
    goto LABEL_19;
  }

  v22 = getWFGeneralLogObject();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v29 = "[INCodableEnumAttribute(Workflow) wf_parameterStateForIntentValue:parameterDefinition:]";
    v30 = 2114;
    v31 = v6;
    _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_FAULT, "%s Unsupported value: %{public}@", buf, 0x16u);
  }

  v13 = 0;
LABEL_19:

  v23 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)wf_getProcessedIntentValueForParameterValue:()Workflow parameter:parameterState:completionHandler:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  codableEnum = [self codableEnum];
  type = [codableEnum type];

  if (type == 1)
  {
    v16 = objc_opt_class();
    v17 = WFEnforceClass_1501(v10, v16);
    if ([v17 BOOLValue])
    {
      v18 = &unk_1F4A9A1E0;
    }

    else
    {
      v18 = &unk_1F4A9A1F8;
    }

    v13[2](v13, v18, 0);
  }

  else
  {
    codableEnum2 = [self codableEnum];
    type2 = [codableEnum2 type];

    if (!type2)
    {
      v21 = objc_opt_class();
      v22 = WFEnforceClass_1501(v11, v21);
      v23 = objc_opt_class();
      v24 = WFEnforceClass_1501(v10, v23);
      keysToEnumNames = [v22 keysToEnumNames];
      v26 = [keysToEnumNames objectForKeyedSubscript:v24];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = v24;
      }

      v29 = v28;

      if (v29)
      {
        v30 = [self valueWithName:v29];
        v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v30, "index")}];
        v13[2](v13, v31, 0);

        goto LABEL_13;
      }
    }

    v32.receiver = self;
    v32.super_class = &off_1F4AF9FF8;
    objc_msgSendSuper2(&v32, sel_wf_getProcessedIntentValueForParameterValue_parameter_parameterState_completionHandler_, v10, v11, v12, v13);
  }

LABEL_13:
}

- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:
{
  v58[3] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = &off_1F4AF9FF8;
  v6 = objc_msgSendSuper2(&v49, sel_wf_updatedParameterDefinition_parameterClass_localizer_);
  if ([self supportsDynamicEnumeration])
  {
    v6 = v6;
    v7 = v6;
  }

  else
  {
    metadata = [self metadata];
    v9 = objc_opt_class();
    v10 = WFEnforceClass_1501(metadata, v9);

    defaultValue = [v10 defaultValue];
    if ([a4 isEqual:objc_opt_class()])
    {
      v57[0] = @"DefaultValue";
      v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(defaultValue, "index") == 1}];
      v58[0] = v12;
      v57[1] = @"OnDisplayName";
      v13 = [[WFINCodableEnumSwitchDisplayName alloc] initWithAttribute:self toggleState:1];
      v58[1] = v13;
      v57[2] = @"OffDisplayName";
      v14 = [[WFINCodableEnumSwitchDisplayName alloc] initWithAttribute:self toggleState:2];
      v58[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
      v7 = [v6 definitionByAddingEntriesInDictionary:v15];
    }

    else
    {
      if ([a4 isEqual:objc_opt_class()])
      {
        v16 = [MEMORY[0x1E695DFB8] orderedSetWithObjects:{@"Variable", @"ExtensionInput", @"ActionOutput", @"CurrentDate", @"Clipboard", 0}];
        v17 = [v6 objectForKey:@"DisallowedVariableTypes"];
        v44 = v17;
        if (v17)
        {
          v18 = [v16 orderedSetByAddingObjectsFromArray:v17];

          v16 = v18;
        }

        v55[0] = @"DisallowedVariableTypes";
        array = [v16 array];
        v55[1] = @"EnumAttribute";
        v56[0] = array;
        v56[1] = self;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
        v43 = [v6 definitionByAddingEntriesInDictionary:v20];

        v21 = objc_opt_new();
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        codableEnum = [self codableEnum];
        values = [codableEnum values];

        v24 = [values countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v46;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v46 != v26)
              {
                objc_enumerationMutation(values);
              }

              v28 = *(*(&v45 + 1) + 8 * i);
              if ([v28 index])
              {
                v29 = [[WFINCodableEnumValueLabelName alloc] initWithValue:v28];
                name = [v28 name];
                [v21 setObject:v29 forKeyedSubscript:name];
              }
            }

            v25 = [values countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v25);
        }

        v52 = @"EnumNamesToLabel";
        v53 = v21;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v6 = [v43 definitionByAddingEntriesInDictionary:v31];

        if (defaultValue)
        {
          v32 = [v6 objectForKey:@"IntentEnumOverrides"];
          v33 = objc_opt_class();
          v34 = WFEnforceClass_1501(v32, v33);

          name2 = [defaultValue name];
          v50 = @"DefaultValue";
          v36 = [v34 objectForKeyedSubscript:name2];
          v37 = v36;
          if (v36)
          {
            v38 = v36;
          }

          else
          {
            v38 = name2;
          }

          v51 = v38;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v40 = [v6 definitionByAddingEntriesInDictionary:v39];

          v6 = v40;
        }
      }

      v6 = v6;
      v7 = v6;
    }
  }

  v41 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)wf_parameterClass
{
  codableEnum = [self codableEnum];
  type = [codableEnum type];

  v3 = off_1E836F358;
  if (type != 1)
  {
    v3 = off_1E836E188;
  }

  v4 = *v3;
  v5 = objc_opt_class();

  return v5;
}

- (id)wf_outputDisplayNameWithLocalizer:()Workflow
{
  v4 = a3;
  codableEnum = [self codableEnum];
  v6 = [codableEnum localizedDisplayNameWithLocalizer:v4];

  return v6;
}

- (id)wf_objectClass
{
  codableEnum = [self codableEnum];
  type = [codableEnum type];

  if (type == 1)
  {
    v3 = 0x1E696AD98;
    goto LABEL_5;
  }

  if (!type)
  {
    v3 = 0x1E696AEC0;
LABEL_5:
    v4 = *v3;
    v5 = objc_opt_class();
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end