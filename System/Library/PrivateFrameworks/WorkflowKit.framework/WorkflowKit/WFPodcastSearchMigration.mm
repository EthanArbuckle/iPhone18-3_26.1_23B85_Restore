@interface WFPodcastSearchMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFPodcastSearchMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.searchitunes", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  selfCopy = self;
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
        actionParametersKey = [(WFWorkflowMigration *)selfCopy actionParametersKey];
        v10 = [v8 objectForKey:actionParametersKey];

        actionIdentifierKey = [(WFWorkflowMigration *)selfCopy actionIdentifierKey];
        v12 = [v8 objectForKeyedSubscript:actionIdentifierKey];
        if ([v12 isEqualToString:v6])
        {
          [v10 objectForKeyedSubscript:@"WFMediaType"];
          v13 = v10;
          v14 = selfCopy;
          v15 = v4;
          v16 = v5;
          v18 = v17 = v6;
          v22 = [v18 isEqualToString:@"Podcasts"];

          v6 = v17;
          v5 = v16;
          v4 = v15;
          selfCopy = v14;
          v10 = v13;

          if (v22)
          {
            actionIdentifierKey2 = [(WFWorkflowMigration *)selfCopy actionIdentifierKey];
            [v8 setObject:@"is.workflow.actions.searchpodcasts" forKeyedSubscript:actionIdentifierKey2];

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

  [(WFWorkflowMigration *)selfCopy finish];
  v20 = *MEMORY[0x1E69E9840];
}

@end