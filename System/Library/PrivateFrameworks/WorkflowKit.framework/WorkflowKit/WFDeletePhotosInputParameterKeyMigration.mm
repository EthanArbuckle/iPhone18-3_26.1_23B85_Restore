@interface WFDeletePhotosInputParameterKeyMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFDeletePhotosInputParameterKeyMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"1093") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.deletephotos", v5);
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
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:v9];

        if ([v10 isEqualToString:@"is.workflow.actions.deletephotos"])
        {
          v11 = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:v11];

          v13 = [v12 objectForKey:@"WFInputPhotos"];
          if (v13)
          {
            v14 = [v12 objectForKey:@"photos"];
            if (!v14)
            {
              [v12 setObject:v13 forKey:@"photos"];
            }

            [v12 removeObjectForKey:@"WFInputPhotos"];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v15 = *MEMORY[0x1E69E9840];
}

@end