@interface PLModelMigrationAction_ResetVideoDuplicateAssetFromDuplicateAlbums
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetVideoDuplicateAssetFromDuplicateAlbums

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  v15[0] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"kind", &unk_1F0FBC070];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];
  [v7 setPredicate:v12];

  [v7 setFetchBatchSize:100];
  v13 = [PLModelMigrationActionUtility removeFromDuplicatesWithAction:self managedObjectContext:v6 fetchRequest:v7 requiresLibraryReprocessing:1 error:a4];

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v13;
}

@end