@interface WFSendPaymentCurrencyAmountMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFSendPaymentCurrencyAmountMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"1075"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.venmo.pay", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  [(WFWorkflowMigration *)self enumerateActionsWithIdentifier:@"is.workflow.actions.venmo.pay" usingBlock:&__block_literal_global_26678];

  [(WFWorkflowMigration *)self finish];
}

@end