@interface PLModelMigrationAction_RemoveOrphanedSceneprint
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_RemoveOrphanedSceneprint

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v6 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v8 = +[PLSceneprint entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL", @"additionalAssetAttributes"];
  [v9 setPredicate:v10];

  v15 = 0;
  v11 = [PLModelMigrationActionUtility removeOrphanedObjectsWithAction:self managedObjectContext:contextCopy fetchRequest:v9 error:&v15];

  v12 = v15;
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (error)
  {
    v13 = v12;
    *error = v12;
  }

  return v11;
}

@end