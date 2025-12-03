@interface PLModelMigrationAction_DeleteEmptyGraphGroups
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_DeleteEmptyGraphGroups

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLGraphNode entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  1000 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"primaryLabelCode", 1000];
  [v9 setPredicate:1000];

  v20 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __93__PLModelMigrationAction_DeleteEmptyGraphGroups_performActionWithManagedObjectContext_error___block_invoke;
  v18[3] = &unk_1E756C918;
  v11 = contextCopy;
  v19 = v11;
  v12 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v11 fetchRequest:v9 pendingParentUnitCount:0 error:&v20 processingBlock:v18];
  v13 = v20;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v14 = v13;
  v15 = v14;
  if (v12 != 1 && error)
  {
    v16 = v14;
    *error = v15;
  }

  return v12;
}

@end