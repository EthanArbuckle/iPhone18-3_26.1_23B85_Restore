@interface WFSetFlashlightMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFSetFlashlightMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"1050.8") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.flashlight", v5);
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
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(WFWorkflowMigration *)self actions];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = @"is.workflow.actions.flashlight";
    v7 = @"WFFlashlightSetting";
    v8 = *v32;
    v30 = *v32;
    do
    {
      v9 = 0;
      v29 = v5;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = [(WFWorkflowMigration *)v2 actionIdentifierKey];
        v12 = [v10 objectForKey:v11];

        if ([v12 isEqualToString:v6])
        {
          v13 = [(WFWorkflowMigration *)v2 actionParametersKey];
          v14 = [v10 objectForKeyedSubscript:v13];

          v15 = [v14 objectForKeyedSubscript:v7];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
            if ([v16 isEqualToString:@"Off"])
            {
              [v14 setObject:@"set" forKey:@"operation"];
              v17 = v14;
              v18 = MEMORY[0x1E695E110];
              goto LABEL_15;
            }

            if ([v16 isEqualToString:@"On"])
            {
              [v14 setObject:@"set" forKey:@"operation"];
              v17 = v14;
              v18 = MEMORY[0x1E695E118];
LABEL_15:
              v25 = @"state";
LABEL_16:
              [v17 setObject:v18 forKey:v25];
              [v14 removeObjectForKey:v7];
            }

            else if ([v16 isEqualToString:@"Toggle"])
            {
              v17 = v14;
              v18 = @"toggle";
              v25 = @"operation";
              goto LABEL_16;
            }

LABEL_17:

            v5 = v29;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = v15;
              [(__CFString *)v28 objectForKeyedSubscript:@"WFSerializationType"];
              v19 = v2;
              v20 = v7;
              v21 = v6;
              v23 = v22 = v3;
              v24 = [v23 isEqual:@"WFTextTokenAttachment"];

              v3 = v22;
              v6 = v21;
              v7 = v20;
              v2 = v19;
              if (v24)
              {
                v17 = v14;
                v18 = v28;
                goto LABEL_15;
              }

              goto LABEL_17;
            }
          }

          v8 = v30;
        }

        ++v9;
      }

      while (v5 != v9);
      v26 = [v3 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v5 = v26;
    }

    while (v26);
  }

  [(WFWorkflowMigration *)v2 finish];
  v27 = *MEMORY[0x1E69E9840];
}

@end