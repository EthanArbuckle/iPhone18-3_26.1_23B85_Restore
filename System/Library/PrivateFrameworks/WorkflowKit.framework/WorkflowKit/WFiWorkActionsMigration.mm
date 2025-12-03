@interface WFiWorkActionsMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFiWorkActionsMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  sub_1CA94C1C8();
  sub_1CA94C3A8();
  v4 = static iWorkActionsMigration.workflowNeedsMigration(_:fromClientVersion:)();

  return v4;
}

- (void)migrateWorkflow
{
  selfCopy = self;
  iWorkActionsMigration.migrateWorkflow()();
}

@end