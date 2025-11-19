@interface WFiWorkActionsMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFiWorkActionsMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  sub_1CA94C1C8();
  sub_1CA94C3A8();
  v4 = static iWorkActionsMigration.workflowNeedsMigration(_:fromClientVersion:)();

  return v4;
}

- (void)migrateWorkflow
{
  v2 = self;
  iWorkActionsMigration.migrateWorkflow()();
}

@end