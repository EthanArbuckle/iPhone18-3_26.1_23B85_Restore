@interface PLModelMigrationAction_RemoveUnusedBackgroundJobWorkItems
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_RemoveUnusedBackgroundJobWorkItems

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[PLGlobalValues alloc] initWithManagedObjectContext:v6];
  if (([(PLGlobalValues *)v7 libraryCreateOptions]& 0x40) != 0)
  {
    v9 = objc_alloc(MEMORY[0x1E695D5E0]);
    v10 = +[PLBackgroundJobWorkItem entityName];
    v11 = [v9 initWithEntityName:v10];

    v22 = 0;
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __105__PLModelMigrationAction_RemoveUnusedBackgroundJobWorkItems_performActionWithManagedObjectContext_error___block_invoke;
    v20 = &unk_1E7564C28;
    v21 = v6;
    v8 = [PLModelMigrationActionUtility processManagedObjectWithAction:self managedObjectContext:v21 fetchRequest:v11 useObjectIDResumeMarker:1 error:&v22 processingBlock:&v17];
    v12 = v22;
    [(PLModelMigrationActionBackground *)self finalizeProgress:v17];
    v13 = v12;
    v14 = v13;
    if (v8 != 1 && a4)
    {
      v15 = v13;
      *a4 = v14;
    }
  }

  else
  {
    [(PLModelMigrationActionBackground *)self finalizeProgress];
    v8 = 1;
  }

  return v8;
}

@end