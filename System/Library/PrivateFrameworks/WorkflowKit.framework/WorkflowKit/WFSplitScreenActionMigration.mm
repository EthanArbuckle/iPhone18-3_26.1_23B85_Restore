@interface WFSplitScreenActionMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFSplitScreenActionMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  sub_1CA94C1C8();
  sub_1CA94C3A8();
  v4 = static SplitScreenActionMigration.workflowNeedsMigration(_:fromClientVersion:)();

  return v4 & 1;
}

- (void)migrateWorkflow
{
  v2 = self;
  SplitScreenActionMigration.migrateWorkflow()();
}

@end