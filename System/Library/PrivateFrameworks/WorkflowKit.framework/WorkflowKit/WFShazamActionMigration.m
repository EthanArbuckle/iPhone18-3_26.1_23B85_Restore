@interface WFShazamActionMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFShazamActionMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  sub_1CA94C1C8();
  sub_1CA94C3A8();
  v4 = static ShazamActionMigration.workflowNeedsMigration(_:fromClientVersion:)();

  return v4 & 1;
}

- (void)migrateWorkflow
{
  v2 = self;
  ShazamActionMigration.migrateWorkflow()();
}

@end