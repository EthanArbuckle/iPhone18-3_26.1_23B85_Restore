@interface WFOpenInActionAskWhenRunMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFOpenInActionAskWhenRunMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (WFCompareBundleVersions(v6, @"0") == 2 && (WFCompareBundleVersions(v6, @"1122") & 1) != 0)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.openin", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  [(WFWorkflowMigration *)self enumerateActionsWithIdentifier:@"is.workflow.actions.openin" usingBlock:&__block_literal_global_5638];

  [(WFWorkflowMigration *)self finish];
}

void __52__WFOpenInActionAskWhenRunMigration_migrateWorkflow__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = [v4 objectForKeyedSubscript:@"WFOpenInAskWhenRun"];
  if (!v3)
  {
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"WFOpenInAskWhenRun"];
  }
}

@end