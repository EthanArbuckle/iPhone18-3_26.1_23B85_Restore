@interface WFStingWorkflow
@end

@implementation WFStingWorkflow

id __102__WFStingWorkflow_WorkflowReferenceConvertible__getObjectsFromReferences_databaseProvider_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7A148];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 identifier];
  v6 = [v3 name];
  v7 = [v3 color];
  v8 = [v3 glyphCharacter];
  v9 = [v3 associatedAppBundleIdentifier];
  v10 = [v3 searchAttributionAppBundleIdentifier];

  v11 = [v4 initWithIdentifier:v5 name:v6 color:v7 glyphCharacter:v8 associatedAppBundleIdentifier:v9 searchAttributionAppBundleIdentifier:v10];

  return v11;
}

@end