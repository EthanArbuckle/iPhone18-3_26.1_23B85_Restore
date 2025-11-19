@interface PLModelMigrationAction_ResetDuplicateAlbums
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_ResetDuplicateAlbums

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  [v7 setPredicate:v8];

  [v7 setFetchBatchSize:100];
  v9 = [PLModelMigrationActionUtility removeFromDuplicatesWithAction:self managedObjectContext:v6 fetchRequest:v7 requiresLibraryReprocessing:1 error:a4];

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v9;
}

@end