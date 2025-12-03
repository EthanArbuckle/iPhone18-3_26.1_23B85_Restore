@interface WFDatePickerToFieldMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFDatePickerToFieldMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"332") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.getupcomingevents", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setDateStyle:2];
  [v3 setTimeStyle:1];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__WFDatePickerToFieldMigration_migrateWorkflow__block_invoke;
  v5[3] = &unk_1E8379410;
  v6 = v3;
  v4 = v3;
  [(WFWorkflowMigration *)self enumerateActionsWithIdentifier:@"is.workflow.actions.getupcomingevents" usingBlock:v5];
  [(WFWorkflowMigration *)self finish];
}

void __47__WFDatePickerToFieldMigration_migrateWorkflow__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 objectForKey:@"WFSpecifiedDate"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [*(a1 + 32) stringFromDate:v4];
    [v6 setObject:v5 forKey:@"WFSpecifiedDate"];
  }
}

@end