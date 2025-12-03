@interface WFImageCombineActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFImageCombineActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"900"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.image.combine", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKey:actionIdentifierKey];

        if ([v9 isEqualToString:@"is.workflow.actions.image.combine"])
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v11 = [v7 objectForKeyedSubscript:actionParametersKey];

          v12 = [v11 objectForKeyedSubscript:@"WFImageCombineMode"];
          if (v12)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          v15 = [v11 objectForKeyedSubscript:@"WFImageCombineDirection"];
          if (v15)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = @"Side-by-Side";
          }

          if (v17)
          {
            v19 = v17;
          }

          else
          {
            v19 = @"Horizontal";
          }

          if ([(__CFString *)v18 isEqualToString:@"Side-by-Side"]&& (v20 = [(__CFString *)v19 isEqualToString:@"Horizontal"], v21 = @"Horizontally", (v20 & 1) != 0) || [(__CFString *)v18 isEqualToString:@"Side-by-Side"]&& (v22 = [(__CFString *)v19 isEqualToString:@"Vertical"], v21 = @"Vertically", (v22 & 1) != 0))
          {
            [v11 setObject:v21 forKey:@"WFImageCombineMode"];
            goto LABEL_30;
          }

          if ([(__CFString *)v18 isEqualToString:@"Grid"])
          {
            [v11 setObject:@"In a Grid" forKey:@"WFImageCombineMode"];
            v23 = [v11 objectForKey:@"WFImageCombineDirection"];

            if (v23)
            {
LABEL_30:
              [v11 removeObjectForKey:@"WFImageCombineDirection"];
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
  v24 = *MEMORY[0x1E69E9840];
}

@end