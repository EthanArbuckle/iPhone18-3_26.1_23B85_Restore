@interface WFLinkEntityAction
- (BOOL)isUniqueEntity;
- (Class)overrideTypeDescriptions;
- (LNValueMetadata)entityMetadata;
- (id)actualEntityParameterNameFromPossibleNames:(id)a3;
- (id)entityName;
- (id)entityParameterMetadata;
- (id)overrideEntityName;
@end

@implementation WFLinkEntityAction

- (id)entityName
{
  v3 = [(WFLinkEntityAction *)self overrideEntityName];
  if (!v3)
  {
    v4 = [(WFLinkEntityAction *)self entityMetadata];
    v5 = [v4 displayRepresentation];
    v6 = [v5 name];
    v3 = [v6 localizedStringResource];
  }

  return v3;
}

- (id)overrideEntityName
{
  v2 = [(WFLinkEntityAction *)self overrideTypeDescriptions];
  if (v2)
  {
    v2 = [(objc_class *)v2 typeDescription];
  }

  return v2;
}

- (Class)overrideTypeDescriptions
{
  v3 = [(WFLinkEntityAction *)self entityMetadata];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69AC800];
    v6 = [v3 identifier];
    v7 = [(WFAction *)self appBundleIdentifier];
    v8 = [v5 wf_descriptionClassForEntityType:v6 appBundleIdentifier:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (LNValueMetadata)entityMetadata
{
  v3 = [(WFAppIntentExecutionAction *)self metadata];
  v4 = [v3 typeSpecificMetadata];
  v5 = [v4 objectForKey:*MEMORY[0x1E69AC1B0]];

  if (!v5)
  {
    v6 = [(WFLinkEntityAction *)self entityParameterMetadata];
    v7 = [v6 typeSpecificMetadata];
    v8 = [v7 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [v7 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata"];
    }

    v5 = v10;
  }

  return v5;
}

- (id)entityParameterMetadata
{
  v3 = [(WFLinkEntityAction *)self entityParameterName];
  v4 = [(WFAppIntentExecutionAction *)self metadata];
  v5 = [v4 parameters];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__WFLinkEntityAction_entityParameterMetadata__block_invoke;
  v9[3] = &unk_1E837CB40;
  v10 = v3;
  v6 = v3;
  v7 = [v5 if_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __45__WFLinkEntityAction_entityParameterMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)actualEntityParameterNameFromPossibleNames:(id)a3
{
  v4 = a3;
  v5 = [(WFAppIntentExecutionAction *)self metadata];
  v6 = [v5 parameters];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__WFLinkEntityAction_actualEntityParameterNameFromPossibleNames___block_invoke;
  v11[3] = &unk_1E837CB40;
  v12 = v4;
  v7 = v4;
  v8 = [v6 if_firstObjectPassingTest:v11];

  v9 = [v8 name];

  return v9;
}

uint64_t __65__WFLinkEntityAction_actualEntityParameterNameFromPossibleNames___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)isUniqueEntity
{
  v2 = [(WFLinkEntityAction *)self entityMetadata];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 systemProtocolMetadata];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AC2D8]];
  LOBYTE(v4) = v6 != 0;

  return v4;
}

@end