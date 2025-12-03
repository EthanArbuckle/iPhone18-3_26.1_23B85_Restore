@interface WFOpenAppPosterBoardMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFOpenAppPosterBoardMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1177.1"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.openapp", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  actions = [(WFWorkflowMigration *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__WFOpenAppPosterBoardMigration_migrateWorkflow__block_invoke;
  v4[3] = &unk_1E837F7F8;
  v4[4] = self;
  [actions enumerateObjectsUsingBlock:v4];

  [(WFWorkflowMigration *)self finish];
}

void __48__WFOpenAppPosterBoardMigration_migrateWorkflow__block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [*(a1 + 32) actionIdentifierKey];
  v4 = [v23 objectForKeyedSubscript:v3];
  v5 = [v4 isEqualToString:@"is.workflow.actions.openapp"];

  if (v5)
  {
    v6 = [*(a1 + 32) actionParametersKey];
    v7 = [v23 objectForKeyedSubscript:v6];
    v8 = [v7 objectForKeyedSubscript:@"WFSelectedApp"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKey:@"BundleIdentifier"];
        if (v9)
        {
          objc_opt_class();
          v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        v12 = [v11 isEqualToString:@"com.apple.PosterBoard"];
        if (v12)
        {
          v13 = [*(a1 + 32) actionParametersKey];
          v14 = [v23 objectForKeyedSubscript:v13];
          [v14 setObject:0 forKeyedSubscript:@"WFSelectedApp"];
        }
      }
    }

    v15 = [*(a1 + 32) actionParametersKey];
    v16 = [v23 objectForKeyedSubscript:v15];
    v17 = [v16 objectForKeyedSubscript:@"WFAppIdentifier"];

    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [v19 isEqualToString:@"com.apple.PosterBoard"];
    if (v20)
    {
      v21 = [*(a1 + 32) actionParametersKey];
      v22 = [v23 objectForKeyedSubscript:v21];
      [v22 setObject:0 forKeyedSubscript:@"WFAppIdentifier"];
    }
  }
}

@end