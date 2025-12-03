@interface WFShazamActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFShazamActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  sub_1CA94C1C8();
  sub_1CA94C3A8();
  v4 = static ShazamActionMigration.workflowNeedsMigration(_:fromClientVersion:)();

  return v4 & 1;
}

- (void)migrateWorkflow
{
  selfCopy = self;
  ShazamActionMigration.migrateWorkflow()();
}

@end