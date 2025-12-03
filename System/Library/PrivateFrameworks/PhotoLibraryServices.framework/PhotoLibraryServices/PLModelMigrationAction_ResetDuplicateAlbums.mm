@interface PLModelMigrationAction_ResetDuplicateAlbums
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ResetDuplicateAlbums

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  [v7 setPredicate:v8];

  [v7 setFetchBatchSize:100];
  v9 = [PLModelMigrationActionUtility removeFromDuplicatesWithAction:self managedObjectContext:contextCopy fetchRequest:v7 requiresLibraryReprocessing:1 error:error];

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v9;
}

@end