@interface PLModelMigrationAction_AddCloudFeedEntryUUID
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_AddCloudFeedEntryUUID

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a3;
  v8 = +[PLCloudFeedEntry entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v17 = 0;
  v10 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v7 fetchRequest:v9 pendingParentUnitCount:0 error:&v17 processingBlock:&__block_literal_global_16123];

  v11 = v17;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v12 = v11;
  v13 = v12;
  if (v10 != 1 && a4 != 0)
  {
    v15 = v12;
    *a4 = v13;
  }

  return v10;
}

@end