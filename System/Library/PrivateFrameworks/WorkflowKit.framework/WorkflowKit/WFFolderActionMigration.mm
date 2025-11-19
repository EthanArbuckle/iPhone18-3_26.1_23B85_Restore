@interface WFFolderActionMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFFolderActionMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"2035") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.folder", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(WFWorkflowMigration *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:v9];

        if ([v10 isEqualToString:@"is.workflow.actions.folder"])
        {
          v11 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v8 setObject:@"is.workflow.actions.file" forKeyedSubscript:v11];

          v12 = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v8 objectForKeyedSubscript:v12];

          v14 = [v13 objectForKeyedSubscript:@"WFFolder"];
          [v13 setObject:v14 forKeyedSubscript:@"WFFile"];
          [v13 removeObjectForKey:@"WFFolder"];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v15 = *MEMORY[0x1E69E9840];
}

@end