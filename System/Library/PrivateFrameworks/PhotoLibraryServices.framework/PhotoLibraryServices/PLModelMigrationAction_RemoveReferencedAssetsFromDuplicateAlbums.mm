@interface PLModelMigrationAction_RemoveReferencedAssetsFromDuplicateAlbums
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveReferencedAssetsFromDuplicateAlbums

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v15[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForReferencedAsset"), 0}];
  v15[0] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];
  [v7 setPredicate:v12];

  [v7 setFetchBatchSize:100];
  v13 = [PLModelMigrationActionUtility removeFromDuplicatesWithAction:self managedObjectContext:contextCopy fetchRequest:v7 requiresLibraryReprocessing:0 error:error];

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v13;
}

@end