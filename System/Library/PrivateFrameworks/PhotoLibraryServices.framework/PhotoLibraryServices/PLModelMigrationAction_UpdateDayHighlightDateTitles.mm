@interface PLModelMigrationAction_UpdateDayHighlightDateTitles
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateDayHighlightDateTitles

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
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
  v13 = +[PLPhotosHighlight entityName];
  v14 = [v12 fetchRequestWithEntityName:v13];

  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v36[0] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [v14 setSortDescriptors:v16];

  v17 = MEMORY[0x1E696AB28];
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %u", @"kind", 0];
  v35[0] = v18;
  if (v11)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v11];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v19 = ;
  v35[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v21 = [v17 andPredicateWithSubpredicates:v20];
  [v14 setPredicate:v21];

  v34[0] = @"assets";
  v34[1] = @"extendedAssets";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
  [v14 setRelationshipKeyPathsForPrefetching:v22];

  v23 = objc_alloc_init(PLDateRangeTitleGenerator);
  v33 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __99__PLModelMigrationAction_UpdateDayHighlightDateTitles_performActionWithManagedObjectContext_error___block_invoke;
  v31[3] = &unk_1E7564B60;
  v24 = v23;
  v32 = v24;
  v25 = [PLModelMigrationActionUtility processManagedObjectWithAction:self managedObjectContext:v8 fetchRequest:v14 useObjectIDResumeMarker:1 error:&v33 processingBlock:v31];
  v26 = v33;
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  v27 = v26;
  v28 = v27;
  if (v25 != 1 && error)
  {
    v29 = v27;
    *error = v28;
  }

  return v25;
}

@end