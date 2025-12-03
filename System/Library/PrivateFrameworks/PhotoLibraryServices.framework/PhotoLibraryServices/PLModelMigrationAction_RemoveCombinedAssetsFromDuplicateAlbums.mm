@interface PLModelMigrationAction_RemoveCombinedAssetsFromDuplicateAlbums
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveCombinedAssetsFromDuplicateAlbums

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v20[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = +[PLManagedAsset fetchRequest];
  v7 = MEMORY[0x1E696AB28];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  v20[0] = v8;
  v9 = MEMORY[0x1E696AB28];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kindSubtype", 10];
  v19[0] = v10;
  v11 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForDuplicateProcessingExclusions"), 0}];
  v19[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v13 = [v9 orPredicateWithSubpredicates:v12];
  v20[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v15 = [v7 andPredicateWithSubpredicates:v14];
  [v6 setPredicate:v15];

  [v6 setFetchBatchSize:100];
  v16 = [PLModelMigrationActionUtility removeFromDuplicatesWithAction:self managedObjectContext:contextCopy fetchRequest:v6 requiresLibraryReprocessing:1 error:error];

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v16;
}

@end