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

  return [self wf_valueTypeOfClass:v2];
}

- (uint64_t)wf_entityValueType
{
  v2 = objc_opt_class();

  return [self wf_valueTypeOfClass:v2];
}

- (uint64_t)wf_unionValueType
{
  v2 = objc_opt_class();

  return [self wf_valueTypeOfClass:v2];
}

- (id)wf_valueTypeOfClass:()Workflow
{
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v3 = selfCopy;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    selfCopy2 = self;
    if (selfCopy2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      memberValueType = [selfCopy2 memberValueType];
      if (objc_opt_isKindOfClass())
      {
        memberValueType2 = [selfCopy2 memberValueType];
      }

      else
      {
        memberValueType2 = 0;
      }

      self = memberValueType2;
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (WFLinkActionArrayParameterDefinition)wf_parameterDefinitionWithParameterMetadata:()Workflow dynamicOptionsSupport:actionIdentifier:
{
  v55[17] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    name = [v8 name];
    v11 = name;
    if (name == @"shortcut" || name && (v12 = [(__CFString *)name isEqualToString:@"shortcut"], v11, v12))
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
                v29 = [[v33 alloc] initWithValueType:self parameterMetadata:v8];
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
    selfCopy = self;
    if (selfCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = selfCopy;
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

    memberValueType = [v30 memberValueType];

    v32 = [(WFLinkActionArrayParameterDefinition *)v25 initWithMemberValueType:memberValueType parameterMetadata:v8 actionIdentifier:v9];
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

  stringValueType = [MEMORY[0x1E69AC938] stringValueType];
  v54[0] = stringValueType;
  v55[0] = objc_opt_class();
  attributedStringValueType = [MEMORY[0x1E69AC938] attributedStringValueType];
  v54[1] = attributedStringValueType;
  v55[1] = objc_opt_class();
  intValueType = [MEMORY[0x1E69AC938] intValueType];
  v54[2] = intValueType;
  v55[2] = objc_opt_class();
  doubleValueType = [MEMORY[0x1E69AC938] doubleValueType];
  v54[3] = doubleValueType;
  v55[3] = objc_opt_class();
  bOOLValueType = [MEMORY[0x1E69AC938] BOOLValueType];
  v54[4] = bOOLValueType;
  v55[4] = objc_opt_class();
  dateValueType = [MEMORY[0x1E69AC938] dateValueType];
  v54[5] = dateValueType;
  v55[5] = objc_opt_class();
  dateComponentsValueType = [MEMORY[0x1E69AC938] dateComponentsValueType];
  v54[6] = dateComponentsValueType;
  v55[6] = objc_opt_class();
  placemarkValueType = [MEMORY[0x1E69AC938] placemarkValueType];
  v54[7] = placemarkValueType;
  v55[7] = objc_opt_class();
  uRLValueType = [MEMORY[0x1E69AC938] URLValueType];
  v54[8] = uRLValueType;
  v55[8] = objc_opt_class();
  fileValueType = [MEMORY[0x1E69AC888] fileValueType];
  v54[9] = fileValueType;
  v55[9] = objc_opt_class();
  personValueType = [MEMORY[0x1E69AC888] personValueType];
  v54[10] = personValueType;
  v55[10] = objc_opt_class();
  currencyAmountValueType = [MEMORY[0x1E69AC888] currencyAmountValueType];
  v54[11] = currencyAmountValueType;
  v55[11] = objc_opt_class();
  paymentMethodValueType = [MEMORY[0x1E69AC888] paymentMethodValueType];
  v54[12] = paymentMethodValueType;
  v55[12] = objc_opt_class();
  stringValueType2 = [MEMORY[0x1E69AC9B8] stringValueType];
  v54[13] = stringValueType2;
  v55[13] = objc_opt_class();
  photoItemCollectionValueType = [MEMORY[0x1E69AC720] photoItemCollectionValueType];
  v54[14] = photoItemCollectionValueType;
  v55[14] = objc_opt_class();
  applicationValueType = [MEMORY[0x1E69AC888] applicationValueType];
  v54[15] = applicationValueType;
  v55[15] = objc_opt_class();
  recurrenceRuleType = [MEMORY[0x1E69AC850] recurrenceRuleType];
  v54[16] = recurrenceRuleType;
  v55[16] = objc_opt_class();
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:17];

  v32 = [objc_alloc(objc_msgSend(v42 objectForKey:{self)), "initWithParameterMetadata:", v8}];
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

  v9 = [self wf_parameterDefinitionWithParameterMetadata:v6 dynamicOptionsSupport:v8 actionIdentifier:v7];

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

  v6 = [self wf_parameterDefinitionWithParameterMetadata:v4 dynamicOptionsSupport:v5];

  return v6;
}

- (id)wf_objectValueType
{
  selfCopy = self;
  if (selfCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    memberValueType = [selfCopy memberValueType];
  }

  else
  {

    memberValueType = selfCopy;
  }

  return memberValueType;
}

@end