@interface WFTimeUntilActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFTimeUntilActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.gettimebetweendates", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v21 = actions;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:actionIdentifierKey];

        if ([v10 isEqualToString:@"is.workflow.actions.gettimebetweendates"])
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:actionParametersKey];

          v13 = [v12 objectForKey:@"WFTimeUntilFromDate"];

          if (!v13)
          {
            v14 = [v12 objectForKeyedSubscript:@"WFTimeUntilReferenceDate"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (!v14 || (isKindOfClass & 1) != 0)
            {
              if (v14 && ((isKindOfClass ^ 1) & 1) == 0 && [v14 isEqualToString:@"Other"])
              {
                v16 = [v12 objectForKey:@"WFTimeUntilCustomDate"];
                if (v16)
                {
                  [v12 setObject:v16 forKey:@"WFTimeUntilFromDate"];
                }
              }

              else
              {
                v16 = objc_alloc_init(WFCurrentDateVariable);
                v17 = [[WFVariableStringParameterState alloc] initWithVariable:v16];
                serializedRepresentation = [(WFVariableStringParameterState *)v17 serializedRepresentation];
                [v12 setObject:serializedRepresentation forKey:@"WFTimeUntilFromDate"];

                actions = v21;
              }
            }

            else
            {
              [v12 setObject:v14 forKey:@"WFTimeUntilFromDate"];
            }

            v26[0] = @"WFTimeUntilReferenceDate";
            v26[1] = @"WFTimeUntilCustomDate";
            v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
            [v12 removeObjectsForKeys:v19];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [actions countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v20 = *MEMORY[0x1E69E9840];
}

@end