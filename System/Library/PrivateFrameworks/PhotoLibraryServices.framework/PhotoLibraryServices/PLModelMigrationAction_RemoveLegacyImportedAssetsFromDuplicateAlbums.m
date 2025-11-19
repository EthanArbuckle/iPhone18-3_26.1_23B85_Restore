@interface PLModelMigrationAction_RemoveLegacyImportedAssetsFromDuplicateAlbums
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RemoveLegacyImportedAssetsFromDuplicateAlbums

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[PLManagedAsset fetchRequest];
  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFinderSyncedAsset"), 0}];
  v17[0] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];
  [v7 setPredicate:v12];

  v16 = @"albums";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [v7 setRelationshipKeyPathsForPrefetching:v13];

  [v7 setFetchBatchSize:100];
  v14 = [PLModelMigrationActionUtility removeFromDuplicatesWithAction:self managedObjectContext:v6 fetchRequest:v7 requiresLibraryReprocessing:0 error:a4];

  [(PLModelMigrationActionCore *)self finalizeProgress];
  return v14;
}

@end