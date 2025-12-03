@interface WFGetFileMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFGetFileMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"1106.1"))
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.documentpicker.open", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  actions = [(WFWorkflowMigration *)self actions];
  v4 = [actions countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(actions);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
        v10 = [v8 objectForKey:actionIdentifierKey];

        if ([v10 isEqualToString:@"is.workflow.actions.documentpicker.open"])
        {
          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v12 = [v8 objectForKeyedSubscript:actionParametersKey];

          v13 = [v12 objectForKeyedSubscript:@"WFFileStorageService"];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;

          v16 = [v15 isEqualToString:@"Dropbox"];
          if (v16)
          {
            actionIdentifierKey2 = [(WFWorkflowMigration *)self actionIdentifierKey];
            [v8 setObject:@"is.workflow.actions.dropbox.open" forKey:actionIdentifierKey2];
LABEL_21:

            [v12 removeObjectForKey:@"WFFileStorageService"];
            goto LABEL_22;
          }

          actionIdentifierKey2 = [v12 objectForKeyedSubscript:@"WFShowFilePicker"];
          if (actionIdentifierKey2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if (![actionIdentifierKey2 BOOLValue])
            {
              [v12 removeObjectForKey:@"SelectMultiple"];
LABEL_20:
              [v12 setObject:MEMORY[0x1E695E118] forKey:@"WFGetFolderContents"];
              goto LABEL_21;
            }
          }

          else
          {

            actionIdentifierKey2 = 0;
          }

          actionIdentifierKey3 = [(WFWorkflowMigration *)self actionIdentifierKey];
          [v8 setObject:@"is.workflow.actions.file.select" forKey:actionIdentifierKey3];

          goto LABEL_20;
        }

LABEL_22:
      }

      v5 = [actions countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  [(WFWorkflowMigration *)self finish];
  v19 = *MEMORY[0x1E69E9840];
}

@end