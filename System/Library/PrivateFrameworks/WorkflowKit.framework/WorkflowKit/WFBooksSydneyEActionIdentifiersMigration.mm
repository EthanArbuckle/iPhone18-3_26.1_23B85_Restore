@interface WFBooksSydneyEActionIdentifiersMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFBooksSydneyEActionIdentifiersMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"1400"))
  {
    if (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.OpenRecentBookIntent", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.PlayRecentAudiobookIntent", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.OpenRecentBookIntent", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.PlayRecentAudiobookIntent", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.OpenBookIntent", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.PlayAudiobookIntent", v5) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.OpenBookIntent", v5))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.PlayAudiobookIntent", v5);
    }
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v26 = *v28;
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        v7 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v8 = [v6 objectForKeyedSubscript:v7];

        if (([v8 isEqualToString:@"com.apple.iBooks.OpenBookIntent"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.iBooks.PlayAudiobookIntent") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.iBooksX.OpenBookIntent") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"com.apple.iBooksX.PlayAudiobookIntent"))
        {
          v9 = [(WFWorkflowMigration *)self actionParametersKey];
          v10 = [v6 objectForKeyedSubscript:v9];
          v11 = [v10 objectForKeyedSubscript:@"target"];

          if (v11)
          {
            v12 = [(WFWorkflowMigration *)self actionParametersKey];
            v13 = [v6 objectForKeyedSubscript:v12];
            [v13 setObject:@"specific" forKeyedSubscript:@"mode"];
          }
        }

        if ([v8 isEqualToString:@"com.apple.iBooks.OpenRecentBookIntent"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.iBooksX.OpenRecentBookIntent"))
        {
          v14 = @"com.apple.iBooks.OpenBookIntent";
          v15 = @"OpenBookIntent";
LABEL_15:
          v16 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v6 setObject:v14 forKeyedSubscript:v16];

          v17 = [(WFWorkflowMigration *)self actionParametersKey];
          v18 = [v6 objectForKeyedSubscript:v17];
          v19 = [v18 objectForKeyedSubscript:@"AppIntentDescriptor"];
          [v19 setObject:v15 forKeyedSubscript:@"AppIntentIdentifier"];

          v20 = [(WFWorkflowMigration *)self actionParametersKey];
          v21 = [v6 objectForKeyedSubscript:v20];
          v22 = [v21 objectForKeyedSubscript:@"AppIntentDescriptor"];
          [v22 setObject:@"com.apple.iBooks" forKeyedSubscript:@"BundleIdentifier"];

          goto LABEL_16;
        }

        if (([v8 isEqualToString:@"com.apple.iBooks.PlayRecentAudiobookIntent"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"com.apple.iBooksX.PlayRecentAudiobookIntent"))
        {
          v14 = @"com.apple.iBooks.PlayAudiobookIntent";
          v15 = @"PlayAudiobookIntent";
          goto LABEL_15;
        }

LABEL_16:

        ++v5;
      }

      while (v4 != v5);
      v23 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      v4 = v23;
    }

    while (v23);
  }

  [(WFWorkflowMigration *)self finish];
  v24 = *MEMORY[0x1E69E9840];
}

@end