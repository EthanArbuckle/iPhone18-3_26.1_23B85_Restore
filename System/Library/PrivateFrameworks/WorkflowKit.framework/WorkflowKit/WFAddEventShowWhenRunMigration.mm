@interface WFAddEventShowWhenRunMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFAddEventShowWhenRunMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  versionCopy = version;
  if (WFCompareBundleVersions(versionCopy, @"0") == 2 && (WFCompareBundleVersions(versionCopy, @"1084") & 1) != 0)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.addnewevent", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  [(WFWorkflowMigration *)self enumerateActionsWithIdentifier:@"is.workflow.actions.addnewevent" usingBlock:&__block_literal_global_19035];

  [(WFWorkflowMigration *)self finish];
}

void __49__WFAddEventShowWhenRunMigration_migrateWorkflow__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = [v4 objectForKeyedSubscript:@"ShowWhenRun"];
  if (!v3)
  {
    [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"ShowWhenRun"];
  }
}

@end