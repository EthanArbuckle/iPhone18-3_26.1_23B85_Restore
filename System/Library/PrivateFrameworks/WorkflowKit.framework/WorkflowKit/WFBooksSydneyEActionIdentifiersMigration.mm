@interface WFBooksSydneyEActionIdentifiersMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFBooksSydneyEActionIdentifiersMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1400"))
  {
    if (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.OpenRecentBookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.PlayRecentAudiobookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.OpenRecentBookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.PlayRecentAudiobookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.OpenBookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooks.PlayAudiobookIntent", migrationCopy) & 1) != 0 || (WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.OpenBookIntent", migrationCopy))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.apple.iBooksX.PlayAudiobookIntent", migrationCopy);
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
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v8 = [v6 objectForKeyedSubscript:actionIdentifierKey];

        if (([v8 isEqualToString:@"com.apple.iBooks.OpenBookIntent"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.iBooks.PlayAudiobookIntent") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.iBooksX.OpenBookIntent") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"com.apple.iBooksX.PlayAudiobookIntent"))
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v10 = [v6 objectForKeyedSubscript:actionParametersKey];
          v11 = [v10 objectForKeyedSubscript:@"target"];

          if (v11)
          {
            actionParametersKey2 = [(WFWorkflowMigration *)self actionParametersKey];
            v13 = [v6 objectForKeyedSubscript:actionParametersKey2];
            [v13 setObject:@"specific" forKeyedSubscript:@"mode"];
          }
        }

        if ([v8 isEqualToString:@"com.apple.iBooks.OpenRecentBookIntent"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"com.apple.iBooksX.OpenRecentBookIntent"))
        {
          v14 = @"com.apple.iBooks.OpenBookIntent";
          v15 = @"OpenBookIntent";
LABEL_15:
          actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v6 setObject:v14 forKeyedSubscript:actionIdentifierKey2];

          actionParametersKey3 = [(WFWorkflowMigration *)self actionParametersKey];
          v18 = [v6 objectForKeyedSubscript:actionParametersKey3];
          v19 = [v18 objectForKeyedSubscript:@"AppIntentDescriptor"];
          [v19 setObject:v15 forKeyedSubscript:@"AppIntentIdentifier"];

          actionParametersKey4 = [(WFWorkflowMigration *)self actionParametersKey];
          v21 = [v6 objectForKeyedSubscript:actionParametersKey4];
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