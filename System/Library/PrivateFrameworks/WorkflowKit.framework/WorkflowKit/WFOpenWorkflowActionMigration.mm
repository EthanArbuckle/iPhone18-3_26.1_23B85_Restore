@interface WFOpenWorkflowActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFOpenWorkflowActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  sub_1CA94C1C8();
  sub_1CA94C3A8();
  v4 = static OpenWorkflowActionMigration.workflowNeedsMigration(_:fromClientVersion:)();

  return v4 & 1;
}

- (void)migrateWorkflow
{
  selfCopy = self;
  OpenWorkflowActionMigration.migrateWorkflow()();
}

@end