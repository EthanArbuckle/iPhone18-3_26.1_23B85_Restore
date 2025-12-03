@interface PLModelMigrationAction_AddMissingExtendedAttributeDigitalZoomRatio
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_AddMissingExtendedAttributeDigitalZoomRatio

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v31[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v8 = contextCopy;
  errorCopy = error;
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
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"extendedAttributes"];
  v31[0] = v16;
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes.digitalZoomRatio"];
  v31[1] = v17;
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  v31[2] = v18;
  if (v11)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v11];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v19 = ;
  v31[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
  v21 = [v15 andPredicateWithSubpredicates:v20];
  [v14 setPredicate:v21];

  v22 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v30 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [v14 setSortDescriptors:v23];

  v29 = 0;
  v24 = [PLModelMigrationActionUtility updateExtendedAttributesWithAction:self managedObjectContext:v8 fetchRequest:v14 useObjectIDResumeMarker:1 error:&v29];
  v25 = v29;
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (errorCopy)
  {
    v26 = v25;
    *errorCopy = v25;
  }

  return v24;
}

@end