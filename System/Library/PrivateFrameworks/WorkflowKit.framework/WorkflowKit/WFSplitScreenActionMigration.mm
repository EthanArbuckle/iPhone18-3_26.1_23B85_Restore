@interface WFSplitScreenActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFSplitScreenActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  sub_1CA94C1C8();
  sub_1CA94C3A8();
  v4 = static SplitScreenActionMigration.workflowNeedsMigration(_:fromClientVersion:)();

  return v4 & 1;
}

- (void)migrateWorkflow
{
  selfCopy = self;
  SplitScreenActionMigration.migrateWorkflow()();
}

@end