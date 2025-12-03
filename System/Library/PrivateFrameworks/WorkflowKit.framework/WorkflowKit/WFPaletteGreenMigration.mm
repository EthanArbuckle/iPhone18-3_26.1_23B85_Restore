@interface WFPaletteGreenMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFPaletteGreenMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  versionCopy = version;
  v6 = [migration objectForKey:@"WFWorkflowIcon"];
  v7 = WFCompareBundleVersions(versionCopy, @"128");

  if (v7 == 3)
  {
    v8 = [v6 objectForKey:@"WFWorkflowIconStartColor"];
    v9 = [v8 unsignedIntValue] == -1512163329;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)migrateWorkflow
{
  workflow = [(WFWorkflowMigration *)self workflow];
  v8 = [workflow objectForKey:@"WFWorkflowIcon"];

  v4 = [v8 objectForKey:@"WFWorkflowIconStartColor"];
  unsignedIntValue = [v4 unsignedIntValue];

  if (unsignedIntValue == -1512163329)
  {
    [v8 setObject:&unk_1F4A9A6C0 forKey:@"WFWorkflowIconStartColor"];
  }

  v6 = [v8 objectForKey:@"WFWorkflowIconEndColor"];
  unsignedIntValue2 = [v6 unsignedIntValue];

  if (unsignedIntValue2 == -1512163329)
  {
    [v8 setObject:&unk_1F4A9A6C0 forKey:@"WFWorkflowIconEndColor"];
  }

  [(WFWorkflowMigration *)self finish];
}

@end