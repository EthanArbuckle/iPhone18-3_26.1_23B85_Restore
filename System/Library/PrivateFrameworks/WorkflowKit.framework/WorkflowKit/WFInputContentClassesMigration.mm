@interface WFInputContentClassesMigration
+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version;
+ (id)addedContentItemClassesByVersion;
- (void)migrateWorkflow;
@end

@implementation WFInputContentClassesMigration

+ (id)addedContentItemClassesByVersion
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F4A9A2D0;
  v2 = [MEMORY[0x1E695DFD8] setWithObject:@"WFSafariWebPageContentItem"];
  v10[0] = v2;
  v9[1] = &unk_1F4A9A2E8;
  v3 = [MEMORY[0x1E695DFD8] setWithObject:@"WFArticleContentItem"];
  v10[1] = v3;
  v9[2] = &unk_1F4A9A300;
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{@"WFiTunesProductContentItem", @"WFAppStoreAppContentItem", 0}];
  v10[2] = v4;
  v9[3] = &unk_1F4A9A318;
  v5 = [MEMORY[0x1E695DFD8] setWithObject:@"WFFolderContentItem"];
  v10[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)workflowNeedsMigration:(id)migration fromClientVersion:(id)version
{
  migrationCopy = migration;
  if (WFCompareBundleVersions(version, @"327") == 3)
  {
    v6 = [migrationCopy objectForKey:@"WFWorkflowInputContentItemClasses"];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)migrateWorkflow
{
  workflow = [(WFWorkflowMigration *)self workflow];
  v4 = [workflow objectForKey:@"WFWorkflowInputContentItemClasses"];

  if ([v4 containsObject:@"WFAudiovisualContentItem"])
  {
    [v4 removeObject:@"WFAudiovisualContentItem"];
    [v4 addObject:@"WFAVAssetContentItem"];
  }

  workflow2 = [(WFWorkflowMigration *)self workflow];
  v6 = [workflow2 objectForKey:@"WFWorkflowClientVersion"];
  integerValue = [v6 integerValue];

  addedContentItemClassesByVersion = [objc_opt_class() addedContentItemClassesByVersion];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __49__WFInputContentClassesMigration_migrateWorkflow__block_invoke;
  v13 = &unk_1E8375FE0;
  v14 = v4;
  v15 = integerValue;
  v9 = v4;
  [addedContentItemClassesByVersion enumerateKeysAndObjectsUsingBlock:&v10];

  [(WFWorkflowMigration *)self finish:v10];
}

void __49__WFInputContentClassesMigration_migrateWorkflow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6 < [a2 integerValue])
  {
    v7 = +[WFWorkflow supportedInputClassNames];
    v8 = [v7 set];
    v9 = [v8 mutableCopy];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [v9 removeObject:*(*(&v27 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    v15 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
    v16 = [v15 isEqualToSet:v9];

    if (v16)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = v10;
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          v21 = 0;
          do
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(a1 + 32) addObject:{*(*(&v23 + 1) + 8 * v21++), v23}];
          }

          while (v19 != v21);
          v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v19);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end