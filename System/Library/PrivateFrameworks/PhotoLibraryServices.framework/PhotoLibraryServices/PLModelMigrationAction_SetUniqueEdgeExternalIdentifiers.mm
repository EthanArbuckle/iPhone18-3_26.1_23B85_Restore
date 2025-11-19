@interface PLModelMigrationAction_SetUniqueEdgeExternalIdentifiers
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_SetUniqueEdgeExternalIdentifiers

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PLModelMigrationActionCore *)self progress];
  v8 = [v7 totalUnitCount];

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 1;
  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLGraphEdge entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];
  v12 = v8 / 2;

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __103__PLModelMigrationAction_SetUniqueEdgeExternalIdentifiers_performActionWithManagedObjectContext_error___block_invoke;
  v24[3] = &unk_1E7571BB0;
  v24[4] = v26;
  v25 = 0;
  v13 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v6 fetchRequest:v11 pendingParentUnitCount:v12 error:&v25 processingBlock:v24];
  v14 = v25;

  _Block_object_dispose(v26, 8);
  if (v13 == 1)
  {
    v15 = MEMORY[0x1E695D5E0];
    v16 = +[PLGraphLabel entityName];
    v17 = [v15 fetchRequestWithEntityName:v16];

    v23 = v14;
    v13 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v6 fetchRequest:v17 pendingParentUnitCount:v12 error:&v23 processingBlock:&__block_literal_global_76478];
    v18 = v23;

    v14 = v18;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v19 = v14;
  v20 = v19;
  if (v13 != 1 && a4)
  {
    v21 = v19;
    *a4 = v20;
  }

  return v13;
}

@end