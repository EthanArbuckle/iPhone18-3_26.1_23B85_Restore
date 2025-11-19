@interface PLModelMigrationAction_RemoveVisionComputeResources
- (id)recipeIDs;
- (int64_t)_removeComputedResourcesFromAssetOIDs:(id)a3 pendingParentUnitCount:(int64_t)a4 managedObjectContext:(id)a5;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RemoveVisionComputeResources

- (int64_t)_removeComputedResourcesFromAssetOIDs:(id)a3 pendingParentUnitCount:(int64_t)a4 managedObjectContext:(id)a5
{
  v19[2] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695D5E0];
  v9 = a5;
  v10 = a3;
  v11 = +[PLManagedAsset entityName];
  v12 = [v8 fetchRequestWithEntityName:v11];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v10];

  [v12 setPredicate:v13];
  v19[0] = @"modernResources";
  v19[1] = @"additionalAttributes";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v12 setRelationshipKeyPathsForPrefetching:v14];

  [v12 setFetchBatchSize:100];
  v17[4] = self;
  v18 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __137__PLModelMigrationAction_RemoveVisionComputeResources__removeComputedResourcesFromAssetOIDs_pendingParentUnitCount_managedObjectContext___block_invoke;
  v17[3] = &unk_1E756C850;
  v15 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v9 fetchRequest:v12 pendingParentUnitCount:a4 error:&v18 processingBlock:v17];

  return v15;
}

- (id)recipeIDs
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v13 = __64__PLModelMigrationAction_RemoveVisionComputeResources_recipeIDs__block_invoke;
  v14 = &unk_1E7568100;
  v3 = v2;
  v15 = v3;
  v4 = v12;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [&unk_1F0FBF5F8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(&unk_1F0FBF5F8);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) unsignedIntValue];
        if ((v9 - 327695) <= 6 && ((1 << (v9 - 15)) & 0x55) != 0)
        {
          v13(v4, v9);
        }
      }

      v6 = [&unk_1F0FBF5F8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v38[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLInternalResource entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = MEMORY[0x1E696AE18];
  v12 = [(PLModelMigrationAction_RemoveVisionComputeResources *)self recipeIDs];
  v13 = [v11 predicateWithFormat:@"%K IN %@", @"recipeID", v12];
  v38[0] = v13;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"resourceType", 14];
  v38[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v16 = [v10 andPredicateWithSubpredicates:v15];
  [v9 setPredicate:v16];

  v37 = @"asset";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v17];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__16168;
  v35 = __Block_byref_object_dispose__16169;
  v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = [(PLModelMigrationActionCore *)self progress];
  v19 = [v18 totalUnitCount];

  v20 = v19 / 5;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __99__PLModelMigrationAction_RemoveVisionComputeResources_performActionWithManagedObjectContext_error___block_invoke;
  v29[3] = &unk_1E756C8A0;
  v29[4] = &v31;
  v30 = 0;
  v21 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v6 fetchRequest:v9 pendingParentUnitCount:v20 error:&v30 processingBlock:v29];
  v22 = v30;
  if (v21 == 1)
  {
    if ([v32[5] count])
    {
      v23 = v32[5];
      v24 = [(PLModelMigrationActionCore *)self progress];
      v21 = -[PLModelMigrationAction_RemoveVisionComputeResources _removeComputedResourcesFromAssetOIDs:pendingParentUnitCount:managedObjectContext:](self, "_removeComputedResourcesFromAssetOIDs:pendingParentUnitCount:managedObjectContext:", v23, [v24 totalUnitCount] - v20, v6);
    }

    else
    {
      v21 = 1;
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v25 = v22;
  v26 = v25;
  if (v21 != 1 && a4)
  {
    v27 = v25;
    *a4 = v26;
  }

  _Block_object_dispose(&v31, 8);
  return v21;
}

@end