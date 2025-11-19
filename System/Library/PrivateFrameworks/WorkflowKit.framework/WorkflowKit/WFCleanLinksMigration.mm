@interface WFCleanLinksMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFCleanLinksMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"128") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.smallpotatoes.evanston.cleanlinks", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(WFWorkflowMigration *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:v9];

        if ([v10 isEqualToString:@"com.smallpotatoes.evanston.cleanlinks"])
        {
          v11 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v8 setObject:@"is.workflow.actions.url.expand" forKeyedSubscript:v11];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v12 = *MEMORY[0x1E69E9840];
}

@end