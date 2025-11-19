@interface PLModelMigrationAction_updateBrokenStyleableFromRebuild
- (id)buildFetchRequest;
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_updateBrokenStyleableFromRebuild

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PLModelMigrationAction_updateBrokenStyleableFromRebuild *)self buildFetchRequest];
  v16 = 0;
  v17 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103__PLModelMigrationAction_updateBrokenStyleableFromRebuild_performActionWithManagedObjectContext_error___block_invoke;
  v15[3] = &unk_1E756C850;
  v8 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v6 fetchRequest:v7 pendingParentUnitCount:0 error:&v17 processingBlock:v15];

  v9 = v17;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v10 = v9;
  v11 = v10;
  if (v8 != 1 && a4 != 0)
  {
    v13 = v10;
    *a4 = v11;
  }

  return v8;
}

- (id)buildFetchRequest
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = MEMORY[0x1E696AB28];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 0];
  v13[0] = v6;
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %d", @"currentSleetCast", 0];
  v13[1] = v7;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniformTypeIdentifier", *MEMORY[0x1E6982E00]];
  v13[2] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == 0", @"additionalAttributes.sleetIsReversible"];
  v13[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v11 = [v5 andPredicateWithSubpredicates:v10];
  [v4 setPredicate:v11];

  [v4 setFetchBatchSize:100];

  return v4;
}

@end