@interface WFCreateFolderMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFCreateFolderMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1106"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.file.createfolder", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(WFWorkflowMigration *)self actions];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v9 = [v7 objectForKey:actionIdentifierKey];

        if ([v9 isEqualToString:@"is.workflow.actions.file.createfolder"])
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v11 = [v7 objectForKeyedSubscript:actionParametersKey];

          v12 = [v11 objectForKeyedSubscript:@"WFFileStorageService"];
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

          v15 = [v14 isEqualToString:@"Dropbox"];
          if (v15)
          {
            actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
            [v7 setObject:@"is.workflow.actions.dropbox.createfolder" forKey:actionIdentifierKey2];
          }

          [v11 removeObjectForKey:@"WFFileStorageService"];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
  v17 = *MEMORY[0x1E69E9840];
}

@end