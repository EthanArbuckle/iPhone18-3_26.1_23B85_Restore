@interface WFWorkflowTypeMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFWorkflowTypeMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"160") == 3)
  {
    v6 = [v5 objectForKey:@"WFWorkflowShowInActionExtension"];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)migrateWorkflow
{
  v3 = [(WFWorkflowMigration *)self workflow];
  v4 = [v3 objectForKeyedSubscript:@"WFWorkflowShowInActionExtension"];
  if (v4)
  {
    v5 = v4;
    v6 = [(WFWorkflowMigration *)self workflow];
    v7 = [v6 objectForKeyedSubscript:@"WFWorkflowTypes"];

    if (v7)
    {
      goto LABEL_7;
    }

    v3 = objc_opt_new();
    v8 = [(WFWorkflowMigration *)self workflow];
    v9 = [v8 objectForKeyedSubscript:@"WFWorkflowShowInActionExtension"];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      [v3 addObject:*MEMORY[0x1E69E1458]];
    }

    v11 = [(WFWorkflowMigration *)self workflow];
    v12 = [v3 array];
    [v11 setObject:v12 forKey:@"WFWorkflowTypes"];
  }

LABEL_7:

  [(WFWorkflowMigration *)self finish];
}

@end