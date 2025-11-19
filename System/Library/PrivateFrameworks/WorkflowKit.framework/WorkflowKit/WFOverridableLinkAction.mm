@interface WFOverridableLinkAction
+ (id)inputParameterMetadataWithActionMetadata:(id)a3;
+ (id)overrideInputParameterNames;
- (NSDictionary)parameterOverrides;
- (NSString)appName;
- (id)parameterDefinitions;
@end

@implementation WFOverridableLinkAction

- (id)parameterDefinitions
{
  v10.receiver = self;
  v10.super_class = WFOverridableLinkAction;
  v3 = [(WFLinkAction *)&v10 parameterDefinitions];
  v4 = [(WFOverridableLinkAction *)self parameterOverrides];
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__WFOverridableLinkAction_parameterDefinitions__block_invoke;
    v8[3] = &unk_1E8375E38;
    v9 = v4;
    v6 = [v3 if_map:v8];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (NSDictionary)parameterOverrides
{
  v3 = objc_opt_new();
  v4 = [(WFOverridableLinkAction *)self overrideLabelsByParameter];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__WFOverridableLinkAction_parameterOverrides__block_invoke;
  v17[3] = &unk_1E8375E10;
  v5 = v3;
  v18 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v17];

  v6 = [(WFOverridableLinkAction *)self overrideDefaultValuesByParameter];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45__WFOverridableLinkAction_parameterOverrides__block_invoke_2;
  v15[3] = &unk_1E8377C90;
  v7 = v5;
  v16 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v15];

  v8 = [(WFOverridableLinkAction *)self serializationKeysByParameter];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__WFOverridableLinkAction_parameterOverrides__block_invoke_3;
  v13[3] = &unk_1E837B748;
  v9 = v7;
  v14 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];

  v10 = v14;
  v11 = v9;

  return v9;
}

id __47__WFOverridableLinkAction_parameterDefinitions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"Key"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (v5)
    {
      v6 = v5;
      v7 = [v3 definitionByMergingWithDefinition:v5];

      goto LABEL_7;
    }
  }

  else
  {

    v4 = 0;
  }

  v7 = v3;
LABEL_7:

  return v7;
}

+ (id)inputParameterMetadataWithActionMetadata:(id)a3
{
  v4 = a3;
  v5 = [a1 overrideInputParameterNames];
  if (v5)
  {
    v6 = [v4 parameters];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__WFOverridableLinkAction_inputParameterMetadataWithActionMetadata___block_invoke;
    v9[3] = &unk_1E837CB40;
    v10 = v5;
    v7 = [v6 if_firstObjectPassingTest:v9];

    v4 = v6;
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___WFOverridableLinkAction;
    v7 = objc_msgSendSuper2(&v11, sel_inputParameterMetadataWithActionMetadata_, v4);
  }

  return v7;
}

uint64_t __68__WFOverridableLinkAction_inputParameterMetadataWithActionMetadata___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 containsObject:v3];

  return v4;
}

+ (id)overrideInputParameterNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 overrideInputParameterName];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSString)appName
{
  v3 = [(WFAppIntentExecutionAction *)self displayableAppDescriptor];
  v4 = [v3 localizedName];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(WFAppIntentExecutionAction *)self displayableAppDescriptor];
    v7 = [v6 applicationRecord];

    v8 = [v7 infoDictionary];
    v9 = objc_opt_self();
    v10 = [v8 objectForKey:@"CFBundleDisplayName" ofClass:v9];
    v11 = v10;
    if (v10)
    {
      v5 = v10;
    }

    else
    {
      v12 = [v7 infoDictionary];
      v13 = objc_opt_self();
      v5 = [v12 objectForKey:@"CFBundleName" ofClass:v13];
    }
  }

  return v5;
}

void __45__WFOverridableLinkAction_parameterOverrides__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v10[0] = @"Label";
  v10[1] = @"Placeholder";
  v11[0] = a3;
  v11[1] = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:v10 count:2];
  WFAddEntriesToDictionary(v4, v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

void __45__WFOverridableLinkAction_parameterOverrides__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v10 = @"DefaultValue";
  v11[0] = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  WFAddEntriesToDictionary(v4, v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

void __45__WFOverridableLinkAction_parameterOverrides__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v10 = @"KeyForSerialization";
  v11[0] = a3;
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  WFAddEntriesToDictionary(v4, v7, v8);

  v9 = *MEMORY[0x1E69E9840];
}

@end