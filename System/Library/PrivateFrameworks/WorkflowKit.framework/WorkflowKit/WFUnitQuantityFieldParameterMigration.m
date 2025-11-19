@interface WFUnitQuantityFieldParameterMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFUnitQuantityFieldParameterMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"996"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.searchlocalbusinesses", v5);
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
  v36 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(WFWorkflowMigration *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = @"is.workflow.actions.searchlocalbusinesses";
    v7 = *v28;
    v8 = 0x1E696A000uLL;
    v25 = v2;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [(WFWorkflowMigration *)v2 actionIdentifierKey];
        v12 = [v10 objectForKeyedSubscript:v11];

        if ([v12 isEqualToString:v6])
        {
          v13 = [(WFWorkflowMigration *)v2 actionParametersKey];
          v14 = [v10 objectForKeyedSubscript:v13];

          v15 = [v14 objectForKey:@"WFSearchRadius"];
          v16 = *(v8 + 3480);
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (v15 && (isKindOfClass & 1) != 0)
          {
            v26 = [v14 objectForKeyedSubscript:@"WFSearchRadius"];
            v31[0] = @"Magnitude";
            v31[1] = @"Unit";
            v32[0] = v26;
            v32[1] = @"km";
            v33[0] = @"Value";
            v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
            v33[1] = @"WFSerializationType";
            v34[0] = v18;
            v34[1] = @"WFQuantityFieldValue";
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
            v19 = v7;
            v20 = v5;
            v21 = v6;
            v23 = v22 = v3;

            v2 = v25;
            [v14 setObject:v23 forKey:@"WFSearchRadius"];

            v3 = v22;
            v6 = v21;
            v5 = v20;
            v7 = v19;
            v8 = 0x1E696A000;
          }
        }

        ++v9;
      }

      while (v5 != v9);
      v5 = [v3 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)v2 finish];
  v24 = *MEMORY[0x1E69E9840];
}

@end