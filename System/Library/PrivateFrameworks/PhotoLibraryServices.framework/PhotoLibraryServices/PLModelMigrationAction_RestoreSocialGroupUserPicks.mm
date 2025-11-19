@interface PLModelMigrationAction_RestoreSocialGroupUserPicks
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RestoreSocialGroupUserPicks

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionCore *)self migrationContextUserInfo];
  v8 = [v7 objectForKeyedSubscript:@"socialGroupUserPickAssetEdgeIDs"];

  if (v8)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __98__PLModelMigrationAction_RestoreSocialGroupUserPicks_performActionWithManagedObjectContext_error___block_invoke;
    v39[3] = &unk_1E7568038;
    v9 = v6;
    v40 = v9;
    v10 = [v8 _pl_map:v39];

    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 count];
      *buf = 134217984;
      v42 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "restoreSocialGroupUserPicks: found %lu edgeIDs present in migration context...", buf, 0xCu);
    }

    if ([v10 count])
    {
      v13 = [v9 pl_graphCache];
      v14 = [v13 labelWithCode:1003 inContext:v9];
      v15 = [v13 labelWithCode:1001 inContext:v9];
      v16 = [v13 labelWithCode:1004 inContext:v9];
      v17 = v16;
      v33 = v15;
      if (v14 && v16 && v15)
      {
        v31 = v6;
        v32 = a4;
        v18 = v15;
        v19 = MEMORY[0x1E695D5E0];
        v20 = +[PLGraphEdge entityName];
        v21 = [v19 fetchRequestWithEntityName:v20];

        v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v10];
        [v21 setPredicate:v22];

        v38 = 0;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __98__PLModelMigrationAction_RestoreSocialGroupUserPicks_performActionWithManagedObjectContext_error___block_invoke_499;
        v34[3] = &unk_1E7568060;
        v35 = v14;
        v36 = v18;
        v37 = v17;
        v23 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v9 fetchRequest:v21 pendingParentUnitCount:0 error:&v38 processingBlock:v34];
        v24 = v38;
        if (v23 == 1)
        {
          v25 = [(PLModelMigrationActionCore *)self migrationContextUserInfo];
          [v25 removeObjectForKey:@"socialGroupUserPickAssetEdgeIDs"];
        }

        v6 = v31;
        a4 = v32;
      }

      else
      {
        v21 = PLMigrationGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "can't get user picked key asset or exclusive asset labels", buf, 2u);
        }

        v24 = 0;
        v23 = 3;
      }
    }

    else
    {
      v24 = 0;
      v23 = 1;
    }

    v26 = v40;
  }

  else
  {
    v26 = PLMigrationGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "restoreSocialGroupUserPicks: no temporary user picked assets present in migration context.", buf, 2u);
    }

    v10 = 0;
    v24 = 0;
    v23 = 1;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v27 = v24;
  v28 = v27;
  if (v23 != 1 && a4)
  {
    v29 = v27;
    *a4 = v28;
  }

  return v23;
}

@end