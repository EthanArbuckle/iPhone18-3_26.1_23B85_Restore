@interface WFDropboxStorageServicesMigration
+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4;
+ (id)migrationClassDependencies;
- (void)migrateWorkflow;
@end

@implementation WFDropboxStorageServicesMigration

+ (id)migrationClassDependencies
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (BOOL)workflowNeedsMigration:(id)a3 fromClientVersion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"is.workflow.actions.dropbox.append", @"is.workflow.actions.dropbox.createfolder", @"is.workflow.actions.dropbox.delete2", @"is.workflow.actions.dropbox.getlink", @"is.workflow.actions.dropbox.pick", @"is.workflow.actions.dropbox.save", 0}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 objectForKey:@"WFWorkflowActions"];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) objectForKey:@"WFWorkflowActionIdentifier"];
        v12 = [v5 containsObject:v11];

        if (v12)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)migrateWorkflow
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(WFWorkflowMigration *)self actions];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 objectForKey:@"WFWorkflowActionIdentifier"];
        if ([v8 isEqualToString:@"is.workflow.actions.dropbox.append"])
        {
          v9 = v7;
          v10 = @"is.workflow.actions.file.append";
          v11 = &unk_1F4A99D98;
        }

        else if ([v8 isEqualToString:@"is.workflow.actions.dropbox.createfolder"])
        {
          v9 = v7;
          v10 = @"is.workflow.actions.file.createfolder";
          v11 = &unk_1F4A99DC0;
        }

        else if ([v8 isEqualToString:@"is.workflow.actions.dropbox.delete2"])
        {
          v9 = v7;
          v10 = @"is.workflow.actions.file.delete";
          v11 = &unk_1F4A99DE8;
        }

        else if ([v8 isEqualToString:@"is.workflow.actions.dropbox.getlink"])
        {
          v9 = v7;
          v10 = @"is.workflow.actions.file.getlink";
          v11 = MEMORY[0x1E695E0F8];
        }

        else if ([v8 isEqualToString:@"is.workflow.actions.dropbox.pick"])
        {
          v9 = v7;
          v10 = @"is.workflow.actions.documentpicker.open";
          v11 = &unk_1F4A99E10;
        }

        else
        {
          if (![v8 isEqualToString:@"is.workflow.actions.dropbox.save"])
          {
            goto LABEL_19;
          }

          v9 = v7;
          v10 = @"is.workflow.actions.documentpicker.save";
          v11 = &unk_1F4A99E38;
        }

        WFMigrateDropboxAction(v9, v10, v11);
LABEL_19:
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  [(WFWorkflowMigration *)self finish];
  v12 = *MEMORY[0x1E69E9840];
}

@end