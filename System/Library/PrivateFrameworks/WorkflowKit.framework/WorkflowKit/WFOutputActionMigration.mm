@interface WFOutputActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFOutputActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1123"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.exit", migrationCopy);
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
  v38 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = @"is.workflow.actions.exit";
    v7 = *v32;
    v25 = actions;
    v28 = *v32;
    do
    {
      v8 = 0;
      v29 = v5;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(actions);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        actionIdentifierKey = [(WFWorkflowMigration *)selfCopy actionIdentifierKey];
        v11 = [v9 objectForKeyedSubscript:actionIdentifierKey];

        if ([v11 isEqualToString:v6])
        {
          actionParametersKey = [(WFWorkflowMigration *)selfCopy actionParametersKey];
          v13 = [v9 objectForKeyedSubscript:actionParametersKey];

          v14 = [v13 objectForKeyedSubscript:@"WFResult"];
          if (v14)
          {
            v15 = [[WFVariableParameterState alloc] initWithSerializedRepresentation:v14 variableProvider:0 parameter:0];
            if (v15)
            {
              v30 = v15;
              v16 = [WFVariableString alloc];
              variable = [(WFVariableParameterState *)v30 variable];
              v27 = [(WFVariableString *)v16 initWithVariable:variable];

              v26 = [[WFVariableStringParameterState alloc] initWithVariableString:v27];
              actionIdentifierKey2 = [(WFWorkflowMigration *)selfCopy actionIdentifierKey];
              [v9 setObject:@"is.workflow.actions.output" forKeyedSubscript:actionIdentifierKey2];

              v35 = @"WFOutput";
              serializedRepresentation = [(WFVariableStringParameterState *)v26 serializedRepresentation];
              v36 = serializedRepresentation;
              [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
              v21 = v20 = v6;
              [(WFWorkflowMigration *)selfCopy actionParametersKey];
              v23 = v22 = selfCopy;
              [v9 setObject:v21 forKeyedSubscript:v23];

              selfCopy = v22;
              v6 = v20;

              actions = v25;
              v15 = v30;
            }
          }

          v7 = v28;
          v5 = v29;
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [actions countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)selfCopy finish];
  v24 = *MEMORY[0x1E69E9840];
}

@end