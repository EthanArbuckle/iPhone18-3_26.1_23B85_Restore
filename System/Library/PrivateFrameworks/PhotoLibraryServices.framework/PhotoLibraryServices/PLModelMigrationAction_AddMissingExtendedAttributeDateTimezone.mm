@interface PLModelMigrationAction_AddMissingExtendedAttributeDateTimezone
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_AddMissingExtendedAttributeDateTimezone

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v38[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  selfCopy = self;
  resumeMarker = [(PLModelMigrationActionBackground *)self resumeMarker];
  v7 = contextCopy;
  if (resumeMarker)
  {
    v8 = [MEMORY[0x1E695DFF8] URLWithString:resumeMarker];
  }

  else
  {
    v8 = 0;
  }

  persistentStoreCoordinator = [v7 persistentStoreCoordinator];
  v10 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v8];

  v33 = v7;
  v11 = MEMORY[0x1E695D5E0];
  v12 = +[PLManagedAsset entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v30 = MEMORY[0x1E696AB28];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"extendedAttributes"];
  v38[0] = v14;
  v15 = MEMORY[0x1E696AB28];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes.dateCreated"];
  v37[0] = v16;
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes.timezoneName"];
  v37[1] = v17;
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes.timezoneOffset"];
  v37[2] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3];
  v20 = [v15 orPredicateWithSubpredicates:v19];
  v38[1] = v20;
  v31 = v10;
  if (v10)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v10];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v21 = ;
  v38[2] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
  v23 = [v30 andPredicateWithSubpredicates:v22];
  [v13 setPredicate:v23];

  v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v36 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v13 setSortDescriptors:v25];

  v35 = 0;
  v26 = [PLModelMigrationActionUtility updateExtendedAttributesWithAction:selfCopy managedObjectContext:v33 fetchRequest:v13 useObjectIDResumeMarker:1 error:&v35];
  v27 = v35;
  [(PLModelMigrationActionBackground *)selfCopy finalizeProgress];
  if (error)
  {
    v28 = v27;
    *error = v27;
  }

  return v26;
}

@end