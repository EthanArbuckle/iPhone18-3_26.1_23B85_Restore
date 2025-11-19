@interface WFOutputActionMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFOutputActionMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"1123"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.exit", v5);
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
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(WFWorkflowMigration *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = @"is.workflow.actions.exit";
    v7 = *v32;
    v25 = v3;
    v28 = *v32;
    do
    {
      v8 = 0;
      v29 = v5;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        v10 = [(WFWorkflowMigration *)v2 actionIdentifierKey];
        v11 = [v9 objectForKeyedSubscript:v10];

        if ([v11 isEqualToString:v6])
        {
          v12 = [(WFWorkflowMigration *)v2 actionParametersKey];
          v13 = [v9 objectForKeyedSubscript:v12];

          v14 = [v13 objectForKeyedSubscript:@"WFResult"];
          if (v14)
          {
            v15 = [[WFVariableParameterState alloc] initWithSerializedRepresentation:v14 variableProvider:0 parameter:0];
            if (v15)
            {
              v30 = v15;
              v16 = [WFVariableString alloc];
              v17 = [(WFVariableParameterState *)v30 variable];
              v27 = [(WFVariableString *)v16 initWithVariable:v17];

              v26 = [[WFVariableStringParameterState alloc] initWithVariableString:v27];
              v18 = [(WFWorkflowMigration *)v2 actionIdentifierKey];
              [v9 setObject:@"is.workflow.actions.output" forKeyedSubscript:v18];

              v35 = @"WFOutput";
              v19 = [(WFVariableStringParameterState *)v26 serializedRepresentation];
              v36 = v19;
              [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
              v21 = v20 = v6;
              [(WFWorkflowMigration *)v2 actionParametersKey];
              v23 = v22 = v2;
              [v9 setObject:v21 forKeyedSubscript:v23];

              v2 = v22;
              v6 = v20;

              v3 = v25;
              v15 = v30;
            }
          }

          v7 = v28;
          v5 = v29;
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)v2 finish];
  v24 = *MEMORY[0x1E69E9840];
}

@end