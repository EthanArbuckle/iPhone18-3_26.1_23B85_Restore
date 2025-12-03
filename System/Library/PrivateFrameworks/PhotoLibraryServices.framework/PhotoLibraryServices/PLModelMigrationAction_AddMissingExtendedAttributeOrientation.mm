@interface PLModelMigrationAction_AddMissingExtendedAttributeOrientation
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_AddMissingExtendedAttributeOrientation

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v28[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v8 = contextCopy;
  if (resumeMarker)
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:resumeMarker];
  }

  else
  {
    v9 = 0;
  }

  persistentStoreCoordinator = [v8 persistentStoreCoordinator];
  v11 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v9];

  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  v15 = MEMORY[0x1E696AB28];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"kind", &unk_1F0FBF1F0];
  v28[0] = v16;
  if (v11)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v11];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v17 = ;
  v28[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v19 = [v15 andPredicateWithSubpredicates:v18];
  [v14 setPredicate:v19];

  v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v27 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  [v14 setSortDescriptors:v21];

  v26 = 0;
  v22 = [PLModelMigrationActionUtility updateExtendedAttributesWithAction:self managedObjectContext:v8 fetchRequest:v14 useObjectIDResumeMarker:1 error:&v26];
  v23 = v26;
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (error)
  {
    v24 = v23;
    *error = v23;
  }

  return v22;
}

@end