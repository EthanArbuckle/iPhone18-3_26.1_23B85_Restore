@interface WFVoiceMemosActionIdentifiersMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFVoiceMemosActionIdentifiersMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"1200"))
  {
    if (WFWorkflowHasActionsWithIdentifier(@"com.apple.VoiceMemos.PlayRecording", v5))
    {
      HasActionsWithIdentifier = 1;
    }

    else
    {
      HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.apple.VoiceMemos.CreateRecording", v5);
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
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKeyedSubscript:v8];

        if ([v9 isEqualToString:@"com.apple.VoiceMemos.PlayRecording"])
        {
          v10 = @"com.apple.VoiceMemos.PlaybackVoiceMemoIntent";
          v11 = @"PlaybackVoiceMemoIntent";
        }

        else
        {
          if (![v9 isEqualToString:@"com.apple.VoiceMemos.CreateRecording"])
          {
            goto LABEL_11;
          }

          v10 = @"com.apple.VoiceMemos.RecordVoiceMemoIntent";
          v11 = @"RecordVoiceMemoIntent";
        }

        v12 = [(WFWorkflowMigration *)self actionIdentifierKey];
        [v7 setObject:v10 forKeyedSubscript:v12];

        v13 = [(WFWorkflowMigration *)self actionParametersKey];
        v14 = [v7 objectForKeyedSubscript:v13];
        v15 = [v14 objectForKeyedSubscript:@"AppIntentDescriptor"];
        [v15 setObject:v11 forKeyedSubscript:@"AppIntentIdentifier"];

LABEL_11:
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
  v16 = *MEMORY[0x1E69E9840];
}

@end