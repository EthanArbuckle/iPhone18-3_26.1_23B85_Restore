@interface PLModelMigrationAction_AddMissingExtendedAttributeDateTimezoneFromCloudMaster
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_AddMissingExtendedAttributeDateTimezoneFromCloudMaster

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v54[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  selfCopy = self;
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

  v45 = v8;
  v12 = MEMORY[0x1E695D5E0];
  v13 = +[PLManagedAsset entityName];
  v47 = [v12 fetchRequestWithEntityName:v13];

  v14 = MEMORY[0x1E696AB28];
  v42 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"additionalAttributes.dateCreatedSource", &unk_1F0FBA828];
  v53[0] = v42;
  v15 = MEMORY[0x1E696AB28];
  v41 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"additionalAttributes.dateCreatedSource", &unk_1F0FBA810];
  v52[0] = v41;
  v16 = MEMORY[0x1E696AB28];
  v40 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes.dateCreated"];
  v51[0] = v40;
  v17 = MEMORY[0x1E696AB28];
  v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes.timezoneName"];
  v50[0] = v39;
  v38 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes.timezoneOffset"];
  v50[1] = v38;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v36 = [v17 andPredicateWithSubpredicates:?];
  v51[1] = v36;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v19 = [v16 orPredicateWithSubpredicates:v18];
  v52[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v21 = [v15 andPredicateWithSubpredicates:v20];
  v53[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v23 = v14;
  v24 = [v14 orPredicateWithSubpredicates:v22];
  v54[0] = v24;
  v43 = v11;
  if (v11)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v11];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v25 = ;
  v54[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v27 = [v23 andPredicateWithSubpredicates:v26];
  [v47 setPredicate:v27];

  v28 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v49 = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  [v47 setSortDescriptors:v29];

  [v47 setFetchBatchSize:100];
  v48 = 0;
  v30 = [PLModelMigrationActionUtility updateExtendedAttributesWithAction:selfCopy managedObjectContext:v45 fetchRequest:v47 useObjectIDResumeMarker:1 error:&v48];
  v31 = v48;
  [(PLModelMigrationActionBackground *)selfCopy finalizeProgress];
  v32 = v31;
  v33 = v32;
  if (v30 != 1 && errorCopy)
  {
    v34 = v32;
    *errorCopy = v33;
  }

  return v30;
}

@end