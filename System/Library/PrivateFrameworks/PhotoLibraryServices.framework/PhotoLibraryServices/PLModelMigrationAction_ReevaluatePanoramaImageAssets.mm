@interface PLModelMigrationAction_ReevaluatePanoramaImageAssets
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_ReevaluatePanoramaImageAssets

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v30[2] = *MEMORY[0x1E69E9840];
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

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  if (v11)
  {
    v16 = MEMORY[0x1E696AB28];
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self >= %@", v11];
    v30[0] = v17;
    v30[1] = v15;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v19 = [v16 andPredicateWithSubpredicates:v18];

    v15 = v19;
  }

  [v14 setPredicate:v15];
  v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v29 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  [v14 setSortDescriptors:v21];

  v28 = @"master.mediaMetadata";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
  [v14 setRelationshipKeyPathsForPrefetching:v22];

  [v14 setFetchBatchSize:100];
  v27 = 0;
  v23 = [PLModelMigrationActionUtility processManagedObjectWithAction:self managedObjectContext:v8 fetchRequest:v14 useObjectIDResumeMarker:1 error:&v27 processingBlock:&__block_literal_global_1153];
  v24 = v27;
  [(PLModelMigrationActionBackground *)self finalizeProgress];
  if (error)
  {
    v25 = v24;
    *error = v24;
  }

  return v23;
}

@end