@interface LNValueType(Workflow)
- (WFLinkActionArrayParameterDefinition)wf_parameterDefinitionWithParameterMetadata:()Workflow dynamicOptionsSupport:actionIdentifier:;
- (id)wf_objectValueType;
- (id)wf_parameterDefinitionWithParameterMetadata:()Workflow;
- (id)wf_parameterDefinitionWithParameterMetadata:()Workflow actionIdentifier:;
- (id)wf_valueTypeOfClass:()Workflow;
- (uint64_t)wf_entityValueType;
- (uint64_t)wf_enumValueType;
- (uint64_t)wf_unionValueType;
@end

@implementation LNValueType(Workflow)

- (uint64_t)wf_enumValueType
{
  v2 = objc_opt_class();

  return [a1 wf_valueTypeOfClass:v2];
}

- (uint64_t)wf_entityValueType
{
  v2 = objc_opt_class();

  return [a1 wf_valueTypeOfClass:v2];
}

- (uint64_t)wf_unionValueType
{
  v2 = objc_opt_class();

  return [a1 wf_valueTypeOfClass:v2];
}

- (id)wf_valueTypeOfClass:()Workflow
{
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = a1;
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v5 memberValueType];
      if (objc_opt_isKindOfClass())
      {
        v7 = [v5 memberValueType];
      }

      else
      {
        v7 = 0;
      }

      a1 = v7;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (WFLinkActionArrayParameterDefinition)wf_parameterDefinitionWithParameterMetadata:()Workflow dynamicOptionsSupport:actionIdentifier:
{
  v55[17] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 name];
    v11 = v10;
    if (v10 == @"shortcut" || v10 && (v12 = [(__CFString *)v10 isEqualToString:@"shortcut"], v11, v12))
    {
      v13 = v9;
      v14 = v13;
      if (v13 == @"com.apple.shortcuts.RunShortcutIntent")
      {
        goto LABEL_28;
      }

      if (v13)
      {
        v15 = [(__CFString *)v13 isEqualToString:@"com.apple.shortcuts.RunShortcutIntent"];

        if (v15)
        {
          goto LABEL_29;
        }

        v16 = v14;
        if (v16 != @"com.apple.shortcuts.RunShortcutConfigurationIntent")
        {
          v17 = v16;
          v18 = [(__CFString *)v16 isEqualToString:@"com.apple.shortcuts.RunShortcutConfigurationIntent"];

          if (v18)
          {
            goto LABEL_29;
          }

          v19 = v17;
          if (v19 != @"com.apple.shortcuts.WFShortcutsSmallWidgetConfigurationIntent")
          {
            v20 = v19;
            v21 = [(__CFString *)v19 isEqualToString:@"com.apple.shortcuts.WFShortcutsSmallWidgetConfigurationIntent"];

            if ((v21 & 1) == 0)
            {
              v22 = v20;
              if (v22 != @"com.apple.shortcuts.WFShortcutsWidgetConfigurationIntent")
              {
                v23 = v22;
                v24 = [(__CFString *)v22 isEqualToString:@"com.apple.shortcuts.WFShortcutsWidgetConfigurationIntent"];

                if ((v24 & 1) == 0)
                {
                  goto LABEL_16;
                }

LABEL_30:
                v33 = WFLinkActionSystemShortcutParameterDefinition;
LABEL_31:
                v29 = [[v33 alloc] initWithValueType:a1 parameterMetadata:v8];
                goto LABEL_32;
              }

              goto LABEL_28;
            }

LABEL_29:

            goto LABEL_30;
          }
        }

LABEL_28:

        goto LABEL_29;
      }
    }
  }

LABEL_16:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [WFLinkActionArrayParameterDefinition alloc];
    v26 = a1;
    if (v26)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }

    v30 = v27;

    v31 = [v30 memberValueType];

    v32 = [(WFLinkActionArrayParameterDefinition *)v25 initWithMemberValueType:v31 parameterMetadata:v8 actionIdentifier:v9];
    goto LABEL_33;
  }

  if ([v8 wf_isPersistentFileIdentifiableEntity])
  {
    v28 = WFLinkActionFileEntityParameterDefinition;
LABEL_25:
    v29 = [[v28 alloc] initWithParameterMetadata:v8];
LABEL_32:
    v32 = v29;
    goto LABEL_33;
  }

  if (a4)
  {
    v28 = WFLinkActionDynamicOptionsParameterDefinition;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = WFLinkActionUnionParameterDefinition;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = WFLinkActionEnumParameterDefinition;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = WFLinkActionMeasurementParameterDefinition;
    goto LABEL_31;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = WFLinkActionEntityParameterDefinition;
    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = WFLinkActionCodableValueParameterDefinition;
    goto LABEL_25;
  }

  v53 = [MEMORY[0x1E69AC938] stringValueType];
  v54[0] = v53;
  v55[0] = objc_opt_class();
  v52 = [MEMORY[0x1E69AC938] attributedStringValueType];
  v54[1] = v52;
  v55[1] = objc_opt_class();
  v51 = [MEMORY[0x1E69AC938] intValueType];
  v54[2] = v51;
  v55[2] = objc_opt_class();
  v50 = [MEMORY[0x1E69AC938] doubleValueType];
  v54[3] = v50;
  v55[3] = objc_opt_class();
  v49 = [MEMORY[0x1E69AC938] BOOLValueType];
  v54[4] = v49;
  v55[4] = objc_opt_class();
  v48 = [MEMORY[0x1E69AC938] dateValueType];
  v54[5] = v48;
  v55[5] = objc_opt_class();
  v47 = [MEMORY[0x1E69AC938] dateComponentsValueType];
  v54[6] = v47;
  v55[6] = objc_opt_class();
  v46 = [MEMORY[0x1E69AC938] placemarkValueType];
  v54[7] = v46;
  v55[7] = objc_opt_class();
  v45 = [MEMORY[0x1E69AC938] URLValueType];
  v54[8] = v45;
  v55[8] = objc_opt_class();
  v44 = [MEMORY[0x1E69AC888] fileValueType];
  v54[9] = v44;
  v55[9] = objc_opt_class();
  v43 = [MEMORY[0x1E69AC888] personValueType];
  v54[10] = v43;
  v55[10] = objc_opt_class();
  v36 = [MEMORY[0x1E69AC888] currencyAmountValueType];
  v54[11] = v36;
  v55[11] = objc_opt_class();
  v37 = [MEMORY[0x1E69AC888] paymentMethodValueType];
  v54[12] = v37;
  v55[12] = objc_opt_class();
  v38 = [MEMORY[0x1E69AC9B8] stringValueType];
  v54[13] = v38;
  v55[13] = objc_opt_class();
  v39 = [MEMORY[0x1E69AC720] photoItemCollectionValueType];
  v54[14] = v39;
  v55[14] = objc_opt_class();
  v40 = [MEMORY[0x1E69AC888] applicationValueType];
  v54[15] = v40;
  v55[15] = objc_opt_class();
  v41 = [MEMORY[0x1E69AC850] recurrenceRuleType];
  v54[16] = v41;
  v55[16] = objc_opt_class();
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:17];

  v32 = [objc_alloc(objc_msgSend(v42 objectForKey:{a1)), "initWithParameterMetadata:", v8}];
LABEL_33:

  v34 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)wf_parameterDefinitionWithParameterMetadata:()Workflow actionIdentifier:
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dynamicOptionsSupport] != 0;
  if ([v6 wf_isPersistentFileIdentifiableEntity])
  {
    v8 = [v6 dynamicOptionsSupport] == 2;
  }

  v9 = [a1 wf_parameterDefinitionWithParameterMetadata:v6 dynamicOptionsSupport:v8 actionIdentifier:v7];

  return v9;
}

- (id)wf_parameterDefinitionWithParameterMetadata:()Workflow
{
  v4 = a3;
  v5 = [v4 dynamicOptionsSupport] != 0;
  if ([v4 wf_isPersistentFileIdentifiableEntity])
  {
    v5 = [v4 dynamicOptionsSupport] == 2;
  }

  v6 = [a1 wf_parameterDefinitionWithParameterMetadata:v4 dynamicOptionsSupport:v5];

  return v6;
}

- (id)wf_objectValueType
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 memberValueType];
  }

  else
  {

    v2 = v1;
  }

  return v2;
}

@end