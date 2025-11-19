@interface WFOpenWorkflowActionMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFOpenWorkflowActionMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  sub_1CA94C1C8();
  sub_1CA94C3A8();
  v4 = static OpenWorkflowActionMigration.workflowNeedsMigration(_:fromClientVersion:)();

  return v4 & 1;
}

- (void)migrateWorkflow
{
  v2 = self;
  OpenWorkflowActionMigration.migrateWorkflow()();
}

@end