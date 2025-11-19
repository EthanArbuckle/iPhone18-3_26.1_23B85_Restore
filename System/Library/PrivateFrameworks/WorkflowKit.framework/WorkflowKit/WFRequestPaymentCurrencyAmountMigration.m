@interface WFRequestPaymentCurrencyAmountMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFRequestPaymentCurrencyAmountMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"1084"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.venmo.request", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  [(WFWorkflowMigration *)self enumerateActionsWithIdentifier:@"is.workflow.actions.venmo.request" usingBlock:&__block_literal_global_179_26701];

  [(WFWorkflowMigration *)self finish];
}

@end