@interface WFDropboxDeleteMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
- (void)migrateWorkflow;
@end

@implementation WFDropboxDeleteMigration

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v5 = a3;
  if (WFCompareBundleVersions(a4, @"142") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.dropbox.delete", v5);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = [(WFWorkflowMigration *)self actions];
  v4 = [v3 copy];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v30 = *v34;
    do
    {
      v8 = 0;
      v31 = v6;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = [(WFWorkflowMigration *)self actionIdentifierKey];
        v11 = [v9 objectForKeyedSubscript:v10];
        v12 = [v11 isEqualToString:@"is.workflow.actions.dropbox.delete"];

        if (v12)
        {
          v13 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v9 setObject:@"is.workflow.actions.dropbox.delete2" forKeyedSubscript:v13];

          v14 = [(WFWorkflowMigration *)self actionParametersKey];
          v15 = [v9 objectForKeyedSubscript:v14];

          v16 = objc_opt_new();
          v17 = [(WFWorkflowMigration *)self actionParametersKey];
          v18 = [v9 objectForKeyedSubscript:v17];
          v19 = [v18 objectForKey:@"WFDropboxFilePath"];
          [v16 setValue:v19 forKey:@"WFDropboxFilePath"];

          v20 = [(WFWorkflowMigration *)self actionParametersKey];
          v21 = [v9 objectForKeyedSubscript:v20];
          v22 = [v21 objectForKey:@"WFDropboxShowPicker"];
          [v16 setValue:v22 forKey:@"WFDropboxShowPicker"];

          [v15 removeObjectForKey:@"WFDropboxFilePath"];
          [v15 removeObjectForKey:@"WFDropboxShowPicker"];
          v23 = objc_opt_new();
          v24 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v23 setObject:@"is.workflow.actions.dropbox.pick" forKeyedSubscript:v24];

          v25 = [(WFWorkflowMigration *)self actionParametersKey];
          [v23 setObject:v16 forKeyedSubscript:v25];

          v26 = [MEMORY[0x1E696AFB0] UUID];
          [v9 setObject:v26 forKeyedSubscript:@"WFActionUUID"];

          v27 = [(WFWorkflowMigration *)self actions];
          v28 = [(WFWorkflowMigration *)self actions];
          [v27 insertObject:v23 atIndex:{objc_msgSend(v28, "indexOfObject:", v9)}];

          v7 = v30;
          v6 = v31;
          [v9 removeObjectForKey:@"WFActionUUID"];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  [(WFWorkflowMigration *)self finish];
  v29 = *MEMORY[0x1E69E9840];
}

@end