@interface WFPaletteGreenMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFPaletteGreenMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a4;
  v6 = [a3 objectForKey:@"WFWorkflowIcon"];
  v7 = WFCompareBundleVersions(v5, @"128");

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
  v3 = [(WFWorkflowMigration *)self workflow];
  v8 = [v3 objectForKey:@"WFWorkflowIcon"];

  v4 = [v8 objectForKey:@"WFWorkflowIconStartColor"];
  v5 = [v4 unsignedIntValue];

  if (v5 == -1512163329)
  {
    [v8 setObject:&unk_1F4A9A6C0 forKey:@"WFWorkflowIconStartColor"];
  }

  v6 = [v8 objectForKey:@"WFWorkflowIconEndColor"];
  v7 = [v6 unsignedIntValue];

  if (v7 == -1512163329)
  {
    [v8 setObject:&unk_1F4A9A6C0 forKey:@"WFWorkflowIconEndColor"];
  }

  [(WFWorkflowMigration *)self finish];
}

@end