@interface WFPodcastSearchMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFPodcastSearchMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.searchitunes", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v2 = self;
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    v6 = @"is.workflow.actions.searchitunes";
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [(WFWorkflowMigration *)v2 actionParametersKey];
        v10 = [v8 objectForKey:v9];

        v11 = [(WFWorkflowMigration *)v2 actionIdentifierKey];
        v12 = [v8 objectForKeyedSubscript:v11];
        if ([v12 isEqualToString:v6])
        {
          [v10 objectForKeyedSubscript:@"WFMediaType"];
          v13 = v10;
          v14 = v2;
          v15 = v4;
          v16 = v5;
          v18 = v17 = v6;
          v22 = [v18 isEqualToString:@"Podcasts"];

          v6 = v17;
          v5 = v16;
          v4 = v15;
          v2 = v14;
          v10 = v13;

          if (v22)
          {
            v19 = [(WFWorkflowMigration *)v2 actionIdentifierKey];
            [v8 setObject:@"is.workflow.actions.searchpodcasts" forKeyedSubscript:v19];

            [v10 removeObjectForKey:@"WFMediaType"];
          }
        }

        else
        {
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)v2 finish];
  v20 = *MEMORY[0x1E69E9840];
}

@end