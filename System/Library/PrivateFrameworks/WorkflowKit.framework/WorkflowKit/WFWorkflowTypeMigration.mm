@interface WFWorkflowTypeMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFWorkflowTypeMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"160") == 3)
  {
    v6 = [migrationCopy objectForKey:@"WFWorkflowShowInActionExtension"];
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
  workflow = [(WFWorkflowMigration *)self workflow];
  v4 = [workflow objectForKeyedSubscript:@"WFWorkflowShowInActionExtension"];
  if (v4)
  {
    v5 = v4;
    workflow2 = [(WFWorkflowMigration *)self workflow];
    v7 = [workflow2 objectForKeyedSubscript:@"WFWorkflowTypes"];

    if (v7)
    {
      goto LABEL_7;
    }

    workflow = objc_opt_new();
    workflow3 = [(WFWorkflowMigration *)self workflow];
    v9 = [workflow3 objectForKeyedSubscript:@"WFWorkflowShowInActionExtension"];
    bOOLValue = [v9 BOOLValue];

    if (bOOLValue)
    {
      [workflow addObject:*MEMORY[0x1E69E1458]];
    }

    workflow4 = [(WFWorkflowMigration *)self workflow];
    array = [workflow array];
    [workflow4 setObject:array forKey:@"WFWorkflowTypes"];
  }

LABEL_7:

  [(WFWorkflowMigration *)self finish];
}

@end