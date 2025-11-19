@interface PLModelMigrationAction_UpdateEditSuggestionImageRecipeID
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_UpdateEditSuggestionImageRecipeID

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[PLInternalResource fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"recipeID", 66136];
  [v7 setPredicate:v8];

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[4] = &v19;
  v18 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __104__PLModelMigrationAction_UpdateEditSuggestionImageRecipeID_performActionWithManagedObjectContext_error___block_invoke;
  v17[3] = &unk_1E756C8A0;
  v9 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v6 fetchRequest:v7 pendingParentUnitCount:0 error:&v18 processingBlock:v17];
  v10 = v18;
  v11 = PLMigrationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v20[3];
    *buf = 134217984;
    v24 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "PLModelMigrationAction_UpdateEditSuggestionImageRecipeID: updated %ld resources.", buf, 0xCu);
  }

  v13 = v10;
  v14 = v13;
  if (v9 != 1 && a4)
  {
    v15 = v13;
    *a4 = v14;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  _Block_object_dispose(&v19, 8);

  return v9;
}

@end