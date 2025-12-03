@interface WFShortcutsV3CustomModificationsStep
- (BOOL)performModificationsWithContext:(id)context error:(id *)error;
@end

@implementation WFShortcutsV3CustomModificationsStep

- (BOOL)performModificationsWithContext:(id)context error:(id *)error
{
  v70[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v39 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Shortcut"];
  [v5 setFetchLimit:5];
  [v5 setPropertiesToFetch:&unk_1F4A9B770];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"workflowID" ascending:1];
  v70[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
  [v5 setSortDescriptors:v7];

  v66 = 0;
  v45 = contextCopy;
  v42 = v5;
  v8 = [contextCopy executeFetchRequest:v5 error:&v66];
  v9 = v66;
  while ([v8 count])
  {
    context = objc_autoreleasePoolPush();
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v63;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v63 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v62 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v61 = v9;
          WFMigratePropertyListObject(v15, @"actions", @"actionsData", &v61);
          v17 = v61;

          v60 = v17;
          WFMigratePropertyListObject(v15, @"importQuestions", @"importQuestionsData", &v60);
          v18 = v60;

          v59 = v18;
          WFMigratePropertyListObject(v15, @"inputClasses", @"inputClassesData", &v59);
          v9 = v59;

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v12);
    }

    v58 = v9;
    [v45 save:&v58];
    v19 = v58;

    [v45 reset];
    [v42 setFetchOffset:{objc_msgSend(v42, "fetchOffset") + objc_msgSend(v42, "fetchLimit")}];
    v57 = v19;
    v8 = [v45 executeFetchRequest:v42 error:&v57];
    v9 = v57;

    objc_autoreleasePoolPop(context);
  }

  objc_autoreleasePoolPop(v39);
  v40 = objc_autoreleasePoolPush();
  v20 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Collection"];
  [v20 setFetchLimit:5];
  [v20 setPropertiesToFetch:&unk_1F4A9B788];
  v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  v68 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
  [v20 setSortDescriptors:v22];

  v56 = v9;
  v23 = [v45 executeFetchRequest:v20 error:&v56];
  v24 = v56;

  while ([v23 count])
  {
    contexta = objc_autoreleasePoolPush();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v52 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v53;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v53 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v52 + 1) + 8 * j);
          v31 = objc_autoreleasePoolPush();
          v51 = v24;
          WFMigratePropertyListObject(v30, @"lastRemoteCollectionOrdering", @"lastRemoteCollectionOrderingData", &v51);
          v32 = v51;

          v50 = v32;
          WFMigratePropertyListObject(v30, @"lastRemoteCollectionOrderingSubset", @"lastRemoteCollectionOrderingSubsetData", &v50);
          v33 = v50;

          v49 = v33;
          WFMigratePropertyListObject(v30, @"lastRemoteShortcutOrdering", @"lastRemoteShortcutOrderingData", &v49);
          v34 = v49;

          v48 = v34;
          WFMigratePropertyListObject(v30, @"lastRemoteShortcutOrderingSubset", @"lastRemoteShortcutOrderingSubsetData", &v48);
          v24 = v48;

          objc_autoreleasePoolPop(v31);
        }

        v27 = [v25 countByEnumeratingWithState:&v52 objects:v67 count:16];
      }

      while (v27);
    }

    v47 = v24;
    [v45 save:&v47];
    v35 = v47;

    [v45 reset];
    [v20 setFetchOffset:{objc_msgSend(v20, "fetchOffset") + objc_msgSend(v20, "fetchLimit")}];
    v46 = v35;
    v23 = [v45 executeFetchRequest:v20 error:&v46];
    v24 = v46;

    objc_autoreleasePoolPop(contexta);
  }

  objc_autoreleasePoolPop(v40);
  if (error)
  {
    v36 = v24;
    *error = v24;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v24 == 0;
}

@end