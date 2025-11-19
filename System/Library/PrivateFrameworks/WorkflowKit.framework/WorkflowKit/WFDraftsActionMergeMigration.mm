@interface WFDraftsActionMergeMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFDraftsActionMergeMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"128") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.agiletortoise.Drafts4.create", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(WFWorkflowMigration *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:v9];
        v11 = [v10 isEqualToString:@"com.agiletortoise.Drafts4.create"];

        if (v11)
        {
          v12 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v8 setObject:@"com.agiletortoise.Drafts4.addto" forKeyedSubscript:v12];

          v13 = [(WFWorkflowMigration *)self actionParametersKey];
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = objc_opt_new();
          }

          v17 = v16;

          [v17 setObject:@"Create" forKeyedSubscript:@"DraftsAddMode"];
          v18 = [(WFWorkflowMigration *)self actionParametersKey];
          [v8 setObject:v17 forKeyedSubscript:v18];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v19 = *MEMORY[0x1E69E9840];
}

@end