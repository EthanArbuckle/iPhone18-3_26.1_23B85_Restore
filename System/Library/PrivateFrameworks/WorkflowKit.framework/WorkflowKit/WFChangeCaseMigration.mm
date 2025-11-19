@interface WFChangeCaseMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFChangeCaseMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"142") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.text.changecase", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(WFWorkflowMigration *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKeyedSubscript:v9];
        v11 = [v10 isEqualToString:@"is.workflow.actions.text.changecase"];

        if (v11)
        {
          v12 = [(WFWorkflowMigration *)self actionParametersKey];
          v13 = [v8 objectForKey:v12];

          v14 = [v13 objectForKeyedSubscript:@"WFCaseType"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v13 objectForKeyedSubscript:@"WFCaseType"];
            v16 = [v15 isEqualToString:@"Capitalize"];

            if (v16)
            {
              [v13 setObject:@"Capitalize Every Word" forKeyedSubscript:@"WFCaseType"];
            }
          }

          else
          {
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v17 = *MEMORY[0x1E69E9840];
}

@end