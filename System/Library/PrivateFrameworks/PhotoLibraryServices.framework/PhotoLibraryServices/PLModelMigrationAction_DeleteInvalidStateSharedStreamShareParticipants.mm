@interface PLModelMigrationAction_DeleteInvalidStateSharedStreamShareParticipants
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_DeleteInvalidStateSharedStreamShareParticipants

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v41[2] = *MEMORY[0x1E69E9840];
  v34 = a3;
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLShareParticipant entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"participantKind", 1];
  v41[0] = v9;
  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"isCurrentUser", 1];
  v41[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];
  [v7 setPredicate:v12];

  v13 = [v34 executeFetchRequest:v7 error:a4];
  v14 = [v13 firstObject];

  v15 = MEMORY[0x1E695D5E0];
  v16 = +[PLShareParticipant entityName];
  v17 = [v15 fetchRequestWithEntityName:v16];

  [v17 setFetchBatchSize:100];
  v18 = MEMORY[0x1E696AB28];
  v19 = MEMORY[0x1E696AE18];
  v20 = [v14 hashedPersonID];
  v21 = [v19 predicateWithFormat:@"%K == %@", @"hashedPersonID", v20];
  v40[0] = v21;
  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"acceptanceStatus", 3];
  v40[1] = v22;
  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"participantKind", 1];
  v40[2] = v23;
  v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"isCurrentUser", 0];
  v40[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v26 = [v18 andPredicateWithSubpredicates:v25];
  [v17 setPredicate:v26];

  v39 = 0;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __118__PLModelMigrationAction_DeleteInvalidStateSharedStreamShareParticipants_performActionWithManagedObjectContext_error___block_invoke;
  v37[3] = &unk_1E75680B0;
  v27 = v34;
  v38 = v27;
  v28 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v27 fetchRequest:v17 pendingParentUnitCount:0 error:&v39 processingBlock:v37];
  v29 = v39;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v30 = v29;
  v31 = v30;
  if (v28 != 1 && a4)
  {
    v32 = v30;
    *a4 = v31;
  }

  return v28;
}

@end