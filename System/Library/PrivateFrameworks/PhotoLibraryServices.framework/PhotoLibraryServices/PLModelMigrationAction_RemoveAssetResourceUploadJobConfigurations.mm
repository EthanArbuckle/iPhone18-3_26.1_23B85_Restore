@interface PLModelMigrationAction_RemoveAssetResourceUploadJobConfigurations
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveAssetResourceUploadJobConfigurations

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLAssetResourceUploadJobConfiguration entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v23 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __113__PLModelMigrationAction_RemoveAssetResourceUploadJobConfigurations_performActionWithManagedObjectContext_error___block_invoke;
  v21 = &unk_1E75681E8;
  v10 = contextCopy;
  v22 = v10;
  v11 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v10 fetchRequest:v9 pendingParentUnitCount:0 error:&v23 processingBlock:&v18];
  v12 = v23;
  [(PLModelMigrationActionCore *)self finalizeProgress:v18];
  v13 = v12;
  v14 = v13;
  if (v11 != 1 && error != 0)
  {
    v16 = v13;
    *error = v14;
  }

  return v11;
}

@end