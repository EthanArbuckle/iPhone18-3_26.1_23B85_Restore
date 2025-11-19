@interface PLModelMigrationAction_ReprocessInvalidDuplicateHashes
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (int64_t)removeDuplicateHashesAndResetAlbumsWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ReprocessInvalidDuplicateHashes

- (int64_t)removeDuplicateHashesAndResetAlbumsWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v36[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v28 = a3;
  v5 = +[PLDuplicateDetectorExactPixel invalidHashData];
  v6 = [v4 setWithArray:v5];

  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) = %d", @"kind", 0];
  v36[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) != %d", @"additionalAttributes.sceneAnalysisVersion", 0];
  v36[1] = v12;
  v13 = MEMORY[0x1E696AB28];
  v27 = v6;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) IN %@", @"additionalAttributes.sceneprint.duplicateMatchingData", v6];
  v35[0] = v14;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) IN %@", @"additionalAttributes.sceneprint.duplicateMatchingAlternateData", v6];
  v35[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v17 = [v13 orPredicateWithSubpredicates:v16];
  v36[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  v19 = [v10 andPredicateWithSubpredicates:v18];
  [v9 setPredicate:v19];

  v34[0] = @"albums";
  v34[1] = @"additionalAttributes";
  v34[2] = @"additionalAttributes.sceneprint";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  [v9 setRelationshipKeyPathsForPrefetching:v20];

  v33 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __124__PLModelMigrationAction_ReprocessInvalidDuplicateHashes_removeDuplicateHashesAndResetAlbumsWithManagedObjectContext_error___block_invoke;
  v31[3] = &unk_1E756C850;
  v21 = v27;
  v32 = v21;
  v22 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v28 fetchRequest:v9 pendingParentUnitCount:0 error:&v33 processingBlock:v31];

  v23 = v33;
  v24 = v23;
  if (v22 != 1 && a4)
  {
    v25 = v23;
    *a4 = v24;
  }

  return v22;
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v11 = 0;
  v6 = [(PLModelMigrationAction_ReprocessInvalidDuplicateHashes *)self removeDuplicateHashesAndResetAlbumsWithManagedObjectContext:a3 error:&v11];
  v7 = v11;
  v8 = v7;
  if (v6 != 1 && a4)
  {
    v9 = v7;
    *a4 = v8;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v6;
}

@end