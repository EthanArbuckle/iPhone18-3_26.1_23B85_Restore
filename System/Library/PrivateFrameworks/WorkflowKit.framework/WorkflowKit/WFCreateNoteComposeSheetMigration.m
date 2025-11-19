@interface WFCreateNoteComposeSheetMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFCreateNoteComposeSheetMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"1167"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"com.apple.mobilenotes.SharingExtension", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v3 = [(WFWorkflowMigration *)self actions];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__WFCreateNoteComposeSheetMigration_migrateWorkflow__block_invoke;
  v4[3] = &unk_1E837F7F8;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];

  [(WFWorkflowMigration *)self finish];
}

void __52__WFCreateNoteComposeSheetMigration_migrateWorkflow__block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [*(a1 + 32) actionIdentifierKey];
  v4 = [v19 objectForKeyedSubscript:v3];
  v5 = [v4 isEqualToString:@"com.apple.mobilenotes.SharingExtension"];

  if (v5)
  {
    v6 = [*(a1 + 32) actionParametersKey];
    v7 = [v19 objectForKeyedSubscript:v6];
    v8 = [v7 objectForKeyedSubscript:@"ShowWhenRun"];

    v9 = [(WFVariableSubstitutableParameterState *)[WFBooleanSubstitutableState alloc] initWithSerializedRepresentation:v8 variableProvider:0 parameter:0];
    v10 = [(WFNumberSubstitutableState *)v9 number];
    v11 = [v10 BOOLValue];

    v12 = *(a1 + 32);
    if (v11)
    {
      v13 = [v12 actionIdentifierKey];
      [v19 setObject:@"is.workflow.actions.runextension" forKeyedSubscript:v13];

      v14 = [*(a1 + 32) actionParametersKey];
      v15 = [v19 objectForKeyedSubscript:v14];
      v16 = v15;
      v17 = @"com.apple.mobilenotes";
      v18 = @"WFAppIdentifier";
    }

    else
    {
      v14 = [v12 actionParametersKey];
      v15 = [v19 objectForKeyedSubscript:v14];
      v16 = v15;
      v17 = MEMORY[0x1E695E110];
      v18 = @"OpenWhenRun";
    }

    [v15 setObject:v17 forKeyedSubscript:v18];
  }
}

@end