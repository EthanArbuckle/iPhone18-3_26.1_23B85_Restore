@interface PLModelMigrationAction_ResetCustomSocialGroupDataForRejectedGroups
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetCustomSocialGroupDataForRejectedGroups

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__43771;
  v20 = __Block_byref_object_dispose__43772;
  v21 = 0;
  v7 = +[PLGraphNode fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"primaryLabelCode", 1000];
  [v7 setPredicate:v8];

  [PLGraphLabel ensureLabelsAreUpdatedInContext:v6];
  v10 = (v17 + 5);
  v9 = v17[5];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __114__PLModelMigrationAction_ResetCustomSocialGroupDataForRejectedGroups_performActionWithManagedObjectContext_error___block_invoke;
  v14[3] = &unk_1E756C878;
  v14[4] = &v16;
  obj = v9;
  v11 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v6 fetchRequest:v7 pendingParentUnitCount:0 error:&obj processingBlock:v14];
  objc_storeStrong(v10, obj);
  v12 = v17[5];
  if (v11 != 1 && a4)
  {
    v12 = v12;
    *a4 = v12;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  _Block_object_dispose(&v16, 8);

  return v11;
}

@end