@interface PLModelMigrationAction_UpdateGenericAlbumModificationDate
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateGenericAlbumModificationDate

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v6 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v8 = +[PLGenericAlbum entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"lastModifiedDate"];
  [v9 setPredicate:v10];

  [v9 setFetchBatchSize:100];
  v17 = 0;
  v11 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v9 pendingParentUnitCount:0 error:&v17 processingBlock:&__block_literal_global_44306];

  v12 = v17;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v13 = v12;
  v14 = v13;
  if (v11 != 1 && error)
  {
    v15 = v13;
    *error = v14;
  }

  return v11;
}

@end