@interface WFOpenInActionAskWhenRunMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFOpenInActionAskWhenRunMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  versionCopy = version;
  if (WFCompareBundleVersions(versionCopy, @"0") == 2 && (WFCompareBundleVersions(versionCopy, @"1122") & 1) != 0)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.openin", migrationCopy);
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