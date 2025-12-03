@interface WFLinkDeleteEntityAction
+ (id)overrideInputParameterNames;
- (Class)contentItemClass;
- (id)entityParameterName;
- (id)itemsBeingDeleted;
- (id)overrideEntityName;
- (id)overrideLabelsByParameter;
- (id)parameterSummary;
@end

@implementation WFLinkDeleteEntityAction

- (id)parameterSummary
{
  v11.receiver = self;
  v11.super_class = WFLinkDeleteEntityAction;
  parameterSummary = [(WFAppIntentExecutionAction *)&v11 parameterSummary];
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  actionConfiguration = [metadata actionConfiguration];
  v6 = actionConfiguration | parameterSummary;

  if (v6)
  {
    v9 = parameterSummary;
  }

  else
  {
    v7 = [WFActionParameterSummary alloc];
    v8 = WFLocalizedStringResourceWithKey(@"Delete ${entities}", @"Delete ${entities}");
    v9 = [(WFActionParameterSummary *)v7 initWithString:v8];
  }

  return v9;
}

- (id)itemsBeingDeleted
{
  processedParameters = [(WFAction *)self processedParameters];
  entityParameterName = [(WFLinkDeleteEntityAction *)self entityParameterName];
  v5 = [processedParameters objectForKeyedSubscript:entityParameterName];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__WFLinkDeleteEntityAction_itemsBeingDeleted__block_invoke;
  v11[3] = &unk_1E8375E60;
  v11[4] = self;
  v8 = [v7 if_compactMap:v11];

  v9 = [MEMORY[0x1E6996D40] collectionWithItems:v8];

  return v9;
}

id __45__WFLinkDeleteEntityAction_itemsBeingDeleted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 valueType];
      v5 = [*(a1 + 32) bundleIdentifier];
      v6 = [*(a1 + 32) bundleIdentifier];
      v7 = [v4 wf_contentItemFromLinkValue:v3 appBundleIdentifier:v5 displayedBundleIdentifier:v6 teamIdentifier:0 disclosureLevel:1];

      v8 = v3;
      goto LABEL_23;
    }
  }

  v9 = *(a1 + 32);
  v10 = [v9 entityParameterName];
  v8 = [v9 parameterMetadataForIdentifier:v10];

  v4 = [v8 wf_parameterDefinition];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v4;
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
  v13 = [v12 memberParameterDefinition];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v4;
  }

  v16 = v15;

  if (v16)
  {
    objc_opt_class();
    v17 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v17) = 1;
  }

  v18 = v3;
  if (v3)
  {
    v19 = v18;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v5 = v20;

    if (!(v17 & 1 | (v5 == 0)))
    {
      v7 = [MEMORY[0x1E6996D58] itemWithFile:v5];
      goto LABEL_23;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = 0;
LABEL_23:

  return v7;
}

- (Class)contentItemClass
{
  inputDictionary = [(WFLinkAction *)self inputDictionary];
  v3 = [inputDictionary objectForKeyedSubscript:@"Types"];

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

  firstObject = [v5 firstObject];

  if (firstObject)
  {
    v7 = NSClassFromString(firstObject);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)overrideLabelsByParameter
{
  v16[1] = *MEMORY[0x1E69E9840];
  entityParameterName = [(WFLinkDeleteEntityAction *)self entityParameterName];
  if (entityParameterName)
  {
    v4 = entityParameterName;
    entityName = [(WFLinkEntityAction *)self entityName];
    if (entityName)
    {
      v6 = entityName;
      entityName2 = [(WFLinkEntityAction *)self entityName];
      v8 = [entityName2 key];
      v9 = [v8 length];

      if (v9)
      {
        entityParameterName2 = [(WFLinkDeleteEntityAction *)self entityParameterName];
        v15 = entityParameterName2;
        entityName3 = [(WFLinkEntityAction *)self entityName];
        v16[0] = entityName3;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_7:
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)overrideEntityName
{
  overrideTypeDescriptions = [(WFLinkEntityAction *)self overrideTypeDescriptions];
  if (overrideTypeDescriptions)
  {
    overrideTypeDescriptions = [(objc_class *)overrideTypeDescriptions pluralTypeDescription];
  }

  return overrideTypeDescriptions;
}

- (id)entityParameterName
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"entity";
  v7[1] = @"entities";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [(WFLinkEntityAction *)self actualEntityParameterNameFromPossibleNames:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)overrideInputParameterNames
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"entity";
  v5[1] = @"entities";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end