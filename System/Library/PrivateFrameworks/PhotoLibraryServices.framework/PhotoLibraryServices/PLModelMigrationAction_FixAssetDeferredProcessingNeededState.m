@interface PLModelMigrationAction_FixAssetDeferredProcessingNeededState
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixAssetDeferredProcessingNeededState

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = +[PLManagedAsset entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"deferredProcessingNeeded", 1];
  v22[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == nil", @"additionalAttributes.deferredPhotoIdentifier"];
  v22[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  [v9 setFetchBatchSize:100];
  v21 = 0;
  v15 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v7 fetchRequest:v9 pendingParentUnitCount:0 error:&v21 processingBlock:&__block_literal_global_735];

  v16 = v21;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v17 = v16;
  v18 = v17;
  if (v15 != 1 && a4)
  {
    v19 = v17;
    *a4 = v18;
  }

  return v15;
}

@end