@interface WFLinkEntityAction
- (BOOL)isUniqueEntity;
- (Class)overrideTypeDescriptions;
- (LNValueMetadata)entityMetadata;
- (id)actualEntityParameterNameFromPossibleNames:(id)names;
- (id)entityName;
- (id)entityParameterMetadata;
- (id)overrideEntityName;
@end

@implementation WFLinkEntityAction

- (id)entityName
{
  overrideEntityName = [(WFLinkEntityAction *)self overrideEntityName];
  if (!overrideEntityName)
  {
    entityMetadata = [(WFLinkEntityAction *)self entityMetadata];
    displayRepresentation = [entityMetadata displayRepresentation];
    name = [displayRepresentation name];
    overrideEntityName = [name localizedStringResource];
  }

  return overrideEntityName;
}

- (id)overrideEntityName
{
  overrideTypeDescriptions = [(WFLinkEntityAction *)self overrideTypeDescriptions];
  if (overrideTypeDescriptions)
  {
    overrideTypeDescriptions = [(objc_class *)overrideTypeDescriptions typeDescription];
  }

  return overrideTypeDescriptions;
}

- (Class)overrideTypeDescriptions
{
  entityMetadata = [(WFLinkEntityAction *)self entityMetadata];
  v4 = entityMetadata;
  if (entityMetadata)
  {
    v5 = MEMORY[0x1E69AC800];
    identifier = [entityMetadata identifier];
    appBundleIdentifier = [(WFAction *)self appBundleIdentifier];
    v8 = [v5 wf_descriptionClassForEntityType:identifier appBundleIdentifier:appBundleIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (LNValueMetadata)entityMetadata
{
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  typeSpecificMetadata = [metadata typeSpecificMetadata];
  v5 = [typeSpecificMetadata objectForKey:*MEMORY[0x1E69AC1B0]];

  if (!v5)
  {
    entityParameterMetadata = [(WFLinkEntityAction *)self entityParameterMetadata];
    typeSpecificMetadata2 = [entityParameterMetadata typeSpecificMetadata];
    v8 = [typeSpecificMetadata2 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEntityMetadata"];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [typeSpecificMetadata2 objectForKeyedSubscript:@"LNValueTypeSpecificMetadataKeyLinkEnumerationMetadata"];
    }

    v5 = v10;
  }

  return v5;
}

- (id)entityParameterMetadata
{
  entityParameterName = [(WFLinkEntityAction *)self entityParameterName];
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  parameters = [metadata parameters];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__WFLinkEntityAction_entityParameterMetadata__block_invoke;
  v9[3] = &unk_1E837CB40;
  v10 = entityParameterName;
  v6 = entityParameterName;
  v7 = [parameters if_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __45__WFLinkEntityAction_entityParameterMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)actualEntityParameterNameFromPossibleNames:(id)names
{
  namesCopy = names;
  metadata = [(WFAppIntentExecutionAction *)self metadata];
  parameters = [metadata parameters];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__WFLinkEntityAction_actualEntityParameterNameFromPossibleNames___block_invoke;
  v11[3] = &unk_1E837CB40;
  v12 = namesCopy;
  v7 = namesCopy;
  v8 = [parameters if_firstObjectPassingTest:v11];

  name = [v8 name];

  return name;
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
  entityMetadata = [(WFLinkEntityAction *)self entityMetadata];
  if (entityMetadata)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = entityMetadata;
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

  systemProtocolMetadata = [v4 systemProtocolMetadata];

  v6 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2D8]];
  LOBYTE(v4) = v6 != 0;

  return v4;
}

@end