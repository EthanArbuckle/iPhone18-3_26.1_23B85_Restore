@interface PLModelMigrationAction_FixupTombstonedPeople
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_FixupTombstonedPeople

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionCore *)self cancellableDiscreteProgressWithTotalUnitCount:1 pendingParentUnitCount:0];
  v8 = MEMORY[0x1E695D560];
  v9 = +[PLPerson entityName];
  v10 = [v8 batchUpdateRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"verifiedType", 4294967294];
  [v10 setPredicate:v11];

  v25[0] = @"contactMatchingDictionary";
  v12 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v25[1] = @"personUri";
  v26[0] = v12;
  v13 = [MEMORY[0x1E696ABC8] expressionForConstantValue:0];
  v26[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v10 setPropertiesToUpdate:v14];

  [v10 setResultType:2];
  v22 = 0;
  v15 = [v6 executeRequest:v10 error:&v22];

  v16 = v22;
  if (v15)
  {
    v17 = 1;
    [v7 setCompletedUnitCount:1];
    v18 = PLMigrationGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v15 result];
      *buf = 138412290;
      v24 = v19;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Removed contactMatchingDictionary and personUri from %@ persons with PLPersonVerifiedTypeTombstone", buf, 0xCu);

      v17 = 1;
    }
  }

  else
  {
    v18 = PLMigrationGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to remove contactMatchingDictionary and personUri from persons with PLPersonVerifiedTypeTombstone, error: %@", buf, 0xCu);
    }

    v17 = 3;
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  if (a4)
  {
    v20 = v16;
    *a4 = v16;
  }

  return v17;
}

@end