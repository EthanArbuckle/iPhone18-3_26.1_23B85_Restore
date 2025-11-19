@interface PLModelMigrationAction_AddMissingExtendedAttributeLocation
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_AddMissingExtendedAttributeLocation

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v29[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLModelMigrationActionBackground *)self resumeMarker];
  v8 = v6;
  if (v7)
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 persistentStoreCoordinator];
  v11 = [v10 managedObjectIDForURIRepresentation:v9];

  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  v15 = MEMORY[0x1E696AB28];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"extendedAttributes"];
  v29[0] = v16;
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes.latitude"];
  v29[1] = v17;
  if (v11)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v11];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v18 = ;
  v29[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v20 = [v15 andPredicateWithSubpredicates:v19];
  [v14 setPredicate:v20];

  v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v28 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v14 setSortDescriptors:v22];

  v27 = 0;
  v23 = [PLModelMigrationActionUtility updateExtendedAttributesWithAction:self managedObjectContext:v8 fetchRequest:v14 useObjectIDResumeMarker:1 error:&v27];
  v24 = v27;
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (a4)
  {
    v25 = v24;
    *a4 = v24;
  }

  return v23;
}

@end