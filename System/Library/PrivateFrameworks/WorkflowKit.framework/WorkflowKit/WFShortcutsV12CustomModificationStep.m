@interface WFShortcutsV12CustomModificationStep
- (BOOL)gatherStateFromPreviousContext:(id)a3 error:(id *)a4;
- (BOOL)performModificationsWithContext:(id)a3 error:(id *)a4;
- (BOOL)shouldAddWorkflowToLibrary:(id)a3;
- (id)createLibraryFromCurrentDatabaseSnapshot:(id)a3;
@end

@implementation WFShortcutsV12CustomModificationStep

- (BOOL)shouldAddWorkflowToLibrary:(id)a3
{
  v3 = a3;
  if ([v3 hiddenFromLibraryAndSync])
  {
    goto LABEL_6;
  }

  if ([v3 tombstoned])
  {
    goto LABEL_6;
  }

  v4 = [v3 conflictOf];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  v6 = [v3 conflictOf];
  v7 = [v6 tombstoned];

  if (!v7)
  {
LABEL_6:
    v9 = 0;
  }

  else
  {
LABEL_5:
    v8 = [v3 name];
    v9 = v8 != 0;
  }

  return v9;
}

- (id)createLibraryFromCurrentDatabaseSnapshot:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = getWFCoherenceLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "[WFShortcutsV12CustomModificationStep createLibraryFromCurrentDatabaseSnapshot:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Creating Library from Core Data snapshot.", buf, 0xCu);
  }

  v5 = [[WFLibrary alloc] initWithIdentifier:@"Library-2"];
  v6 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Collection"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", @"Root"];
  [v6 setPredicate:v7];

  [v6 setFetchLimit:1];
  v8 = [v3 executeFetchRequest:v6 error:0];
  v9 = [v8 firstObject];

  if (v9)
  {
    v28 = v5;
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = [MEMORY[0x1E695DF70] array];
    v12 = [v9 valueForKey:@"shortcuts"];
    v13 = [v9 valueForKey:@"collections"];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke;
    v34[3] = &unk_1E8375CF8;
    v34[4] = self;
    v35 = v10;
    v14 = v10;
    [v12 enumerateObjectsUsingBlock:v34];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_2;
    v32[3] = &unk_1E8375D20;
    v32[4] = self;
    v15 = v11;
    v33 = v15;
    [v13 enumerateObjectsUsingBlock:v32];
    v16 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v12 count];
      v18 = [v15 count];
      *buf = 136315650;
      v37 = "[WFShortcutsV12CustomModificationStep createLibraryFromCurrentDatabaseSnapshot:]";
      v38 = 2050;
      v39 = v17;
      v40 = 2050;
      v41 = v18;
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEFAULT, "%s Overwriting library with %{public}lu shortcuts and %{public}lu folders.", buf, 0x20u);
    }

    v5 = v28;
    [(WFLibrary *)v28 overwriteShortcutsAndFolders:v14 folders:v15];
  }

  v19 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Collection"];
  v20 = WFGetBuiltInCollectionIdentifiers(0);
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY parents = nil && (%K in %@)", @"identifier", v20];
  [v19 setPredicate:v21];

  v22 = [v3 executeFetchRequest:v19 error:0];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_209;
  v30[3] = &unk_1E8375D20;
  v30[4] = self;
  v23 = v5;
  v31 = v23;
  [v22 enumerateObjectsUsingBlock:v30];
  v24 = v31;
  v25 = v23;

  v26 = *MEMORY[0x1E69E9840];
  return v23;
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) shouldAddWorkflowToLibrary:?])
  {
    v3 = *(a1 + 40);
    v4 = [v5 workflowID];
    [v3 addObject:v4];
  }
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"shortcuts"];
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_3;
  v19 = &unk_1E8375CF8;
  v20 = *(a1 + 32);
  v21 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:&v16];
  v7 = [v3 valueForKey:{@"identifier", v16, v17, v18, v19, v20}];
  v8 = [v3 valueForKey:@"name"];
  v9 = v8;
  v10 = &stru_1F4A1C408;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v3 valueForKey:@"icon"];

  v13 = [v12 glyphNumber];
  v14 = [objc_alloc(MEMORY[0x1E69E0DD0]) initWithIdentifier:v7 isFolder:1 name:v11 glyphCharacter:v13 isDeleted:0];

  v15 = [[WFLibraryCollection alloc] initWithWorkflowCollection:v14 shortcutIdentifiers:v6];
  [*(a1 + 40) addObject:v15];
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_209(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"identifier"];
  v5 = [v3 valueForKey:@"shortcuts"];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_2_210;
  v8[3] = &unk_1E8375D48;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = v4;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_2_210(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) shouldAddWorkflowToLibrary:v3])
  {
    v4 = *(a1 + 40);
    v5 = [v3 workflowID];
    v6 = *(a1 + 48);
    v11 = 0;
    [v4 appendShortcutWithIdentifier:v5 toCollectionWithIdentifier:v6 error:&v11];
    v7 = v11;

    if (v7)
    {
      v8 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 48);
        *buf = 136315650;
        v13 = "[WFShortcutsV12CustomModificationStep createLibraryFromCurrentDatabaseSnapshot:]_block_invoke_2";
        v14 = 2114;
        v15 = v9;
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Failed to add shortcut to collection with identifier: %{public}@, error: %{public}@", buf, 0x20u);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) shouldAddWorkflowToLibrary:?])
  {
    v3 = *(a1 + 40);
    v4 = [v5 workflowID];
    [v3 addObject:v4];
  }
}

- (BOOL)performModificationsWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFShortcutsV12CustomModificationStep *)self libraryToWrite];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Library"];
  v9 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  v10 = [v6 executeRequest:v9 error:a4];

  if (!v10)
  {

    LOBYTE(v14) = 0;
    goto LABEL_6;
  }

  v11 = [(WFShortcutsV12CustomModificationStep *)self libraryToWrite];
  v12 = [v11 capsuleDataWithPersistenceMode:0 error:0];

  v13 = [[WFCoreDataLibrary alloc] initWithContext:v6];
  [(WFCoreDataLibrary *)v13 setIdentifier:@"Library-2"];
  [(WFCoreDataLibrary *)v13 setData:v12];
  [(WFCoreDataLibrary *)v13 setSyncHash:[WFLibraryRecord syncHashFromData:v12]];
  [(WFCoreDataLibrary *)v13 setResetVersion:1];
  v14 = [v6 save:a4];

  if (v14)
  {
LABEL_4:
    LOBYTE(v14) = 1;
  }

LABEL_6:

  return v14;
}

- (BOOL)gatherStateFromPreviousContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Library"];
  [v6 setFetchLimit:1];
  v7 = [v5 executeFetchRequest:v6 error:0];
  v8 = [v7 firstObject];
  v9 = [v8 identifier];
  if (v9 == @"Library-2")
  {
    v12 = @"Library-2";

    goto LABEL_13;
  }

  v10 = v9;
  if (!v9 || (v11 = [(__CFString *)v9 isEqualToString:@"Library-2"], v10, v10, (v11 & 1) == 0))
  {
    v13 = [v8 identifier];
    if (v13 == @"Library")
    {
    }

    else
    {
      v14 = v13;
      if (!v13 || (v15 = [(__CFString *)v13 isEqualToString:@"Library"], v14, v14, !v15))
      {
        v12 = [(WFShortcutsV12CustomModificationStep *)self createLibraryFromCurrentDatabaseSnapshot:v5];
        [(WFShortcutsV12CustomModificationStep *)self setLibraryToWrite:v12];
        goto LABEL_13;
      }
    }

    v16 = [WFLibrary alloc];
    v17 = [v8 identifier];
    v18 = [v8 data];
    v12 = [(WFLibrary *)v16 initWithIdentifier:v17 data:v18];

    v19 = [(__CFString *)v12 libraryByErasingChangeHistory];
    [(WFShortcutsV12CustomModificationStep *)self setLibraryToWrite:v19];

LABEL_13:
  }

  return 1;
}

@end