@interface WFResizeToCropActionMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
- (void)migrateWorkflow;
@end

@implementation WFResizeToCropActionMigration

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"128") == 3)
  {
    HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(@"is.workflow.actions.image.resize", migrationCopy);
  }

  else
  {
    HasActionsWithIdentifier = 0;
  }

  return HasActionsWithIdentifier;
}

- (void)migrateWorkflow
{
  v50 = *MEMORY[0x1E69E9840];
  actions = [(WFWorkflowMigration *)self actions];
  actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
  v5 = [actions filteredArrayForKey:actionIdentifierKey value:@"is.workflow.actions.image.resize"];

  selfCopy = self;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = v5;
  v41 = [v7 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v41)
  {
    v39 = v7;
    v40 = *v46;
    do
    {
      v8 = 0;
      do
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(v7);
        }

        v9 = *(*(&v45 + 1) + 8 * v8);
        actionParametersKey = [(WFWorkflowMigration *)selfCopy actionParametersKey];
        v42 = v9;
        v11 = [v9 objectForKey:actionParametersKey];

        v12 = [v11 objectForKeyedSubscript:@"WFImageResizeCropEnabled"];
        v13 = [v11 objectForKeyedSubscript:@"WFImageResizeWidth"];
        v14 = v13;
        v15 = &unk_1F4A9A888;
        if (v13)
        {
          v15 = v13;
        }

        v44 = v15;

        v16 = [v11 objectForKeyedSubscript:@"WFImageResizeHeight"];
        v17 = v16;
        v18 = &unk_1F4A9A8A0;
        if (v16)
        {
          v18 = v16;
        }

        v43 = v18;

        v19 = [v11 objectForKeyedSubscript:@"WFImageResizeCropX"];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = &unk_1F4A9A8B8;
        }

        v22 = v21;

        v23 = [v11 objectForKeyedSubscript:@"WFImageResizeCropY"];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = &unk_1F4A9A8B8;
        }

        v26 = v25;

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 BOOLValue])
        {
          v27 = objc_opt_new();
          [v27 setObject:v44 forKeyedSubscript:@"WFImageCropWidth"];
          [v27 setObject:v43 forKeyedSubscript:@"WFImageCropHeight"];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && ![v22 integerValue] && !objc_msgSend(v26, "integerValue"))
          {
            v28 = @"Top Left";
            v30 = &unk_1F4A9A8B8;
            v29 = &unk_1F4A9A8B8;
          }

          else
          {
            v28 = @"Custom";
            v29 = v22;
            v30 = v26;
          }

          [v27 setObject:v28 forKeyedSubscript:@"WFImageCropPosition"];
          [v27 setObject:v29 forKeyedSubscript:@"WFImageCropX"];
          [v27 setObject:v30 forKeyedSubscript:@"WFImageCropY"];
          v31 = objc_opt_new();
          actionIdentifierKey2 = [(WFWorkflowMigration *)selfCopy actionIdentifierKey];
          [v31 setObject:@"is.workflow.actions.image.crop" forKeyedSubscript:actionIdentifierKey2];

          actionParametersKey2 = [(WFWorkflowMigration *)selfCopy actionParametersKey];
          [v31 setObject:v27 forKeyedSubscript:actionParametersKey2];

          actions2 = [(WFWorkflowMigration *)selfCopy actions];
          [(WFWorkflowMigration *)selfCopy actions];
          v36 = v35 = selfCopy;
          [actions2 insertObject:v31 atIndex:{objc_msgSend(v36, "indexOfObject:", v42) + 1}];

          selfCopy = v35;
          v7 = v39;
        }

        [v11 removeObjectForKey:@"WFImageResizeCropEnabled"];
        [v11 removeObjectForKey:@"WFImageResizeCropX"];
        [v11 removeObjectForKey:@"WFImageResizeCropY"];

        ++v8;
      }

      while (v41 != v8);
      v37 = [v7 countByEnumeratingWithState:&v45 objects:v49 count:16];
      v41 = v37;
    }

    while (v37);
  }

  [(WFWorkflowMigration *)selfCopy finish];
  v38 = *MEMORY[0x1E69E9840];
}

@end