@interface PLModelMigrationAction_FixExtendedAttributeDateCreated
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_FixExtendedAttributeDateCreated

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v40[2] = *MEMORY[0x1E69E9840];
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
  v35 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v9];

  v33 = v8;
  v11 = MEMORY[0x1E695D5E0];
  v12 = +[PLManagedAsset entityName];
  v13 = [v11 fetchRequestWithEntityName:v12];

  v14 = MEMORY[0x1E696AB28];
  v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"additionalAttributes.dateCreatedSource", &unk_1F0FBF1C0];
  v39[0] = v31;
  v15 = MEMORY[0x1E696AB28];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", @"extendedAttributes.dateCreated"];
  v38[0] = v16;
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"additionalAttributes.dateCreatedSource", &unk_1F0FBF1D8];
  v38[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v19 = [v15 andPredicateWithSubpredicates:v18];
  v39[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v21 = [v14 orPredicateWithSubpredicates:v20];
  v40[0] = v21;
  if (v35)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v35];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v22 = ;
  v40[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v24 = [v14 andPredicateWithSubpredicates:v23];
  [v13 setPredicate:v24];

  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v37 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  [v13 setSortDescriptors:v26];

  v36 = 0;
  v27 = [PLModelMigrationActionUtility updateExtendedAttributesWithAction:selfCopy managedObjectContext:v33 fetchRequest:v13 useObjectIDResumeMarker:1 error:&v36];
  v28 = v36;
  [(PLModelMigrationActionBackground *)selfCopy finalizeProgress];
  if (errorCopy)
  {
    v29 = v28;
    *errorCopy = v28;
  }

  return v27;
}

@end