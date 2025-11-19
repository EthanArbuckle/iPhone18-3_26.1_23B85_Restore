@interface PLModelMigrationAction_SetPlatformSpecificSortAscendingForPublishDateSortedCollectionShares
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_SetPlatformSpecificSortAscendingForPublishDateSortedCollectionShares

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = +[PLCollectionShare entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  [v9 setFetchBatchSize:100];
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"customSortKey", 6];
  [v9 setPredicate:v10];

  v17 = 0;
  v11 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v7 fetchRequest:v9 pendingParentUnitCount:0 error:&v17 processingBlock:&__block_literal_global_665];

  v12 = v17;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v13 = v12;
  v14 = v13;
  if (v11 != 1 && a4)
  {
    v15 = v13;
    *a4 = v14;
  }

  return v11;
}

@end