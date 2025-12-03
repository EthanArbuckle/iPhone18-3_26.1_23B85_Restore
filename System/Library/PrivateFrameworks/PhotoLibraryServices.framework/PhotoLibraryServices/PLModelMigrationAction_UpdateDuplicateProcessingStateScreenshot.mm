@interface PLModelMigrationAction_UpdateDuplicateProcessingStateScreenshot
- (id)fetchRequestForScreenshot;
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
@end

@implementation PLModelMigrationAction_UpdateDuplicateProcessingStateScreenshot

- (id)fetchRequestForScreenshot
{
  v13[2] = *MEMORY[0x1E69E9840];
  v2 = +[PLSceneClassification fetchRequest];
  v3 = MEMORY[0x1E696AB28];
  v4 = MEMORY[0x1E696AE18];
  v5 = [PLSceneClassification PLJunkSceneClassificationIDForLabel:@"screenshot"];
  v6 = [v4 predicateWithFormat:@"%K == %@", @"sceneIdentifier", v5];
  v13[0] = v6;
  0x3FE28F5C28F5C28FLL = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %lf", @"confidence", 0x3FE28F5C28F5C28FLL];
  v13[1] = 0x3FE28F5C28F5C28FLL;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v3 andPredicateWithSubpredicates:v8];
  [v2 setPredicate:v9];

  v12 = @"assetAttributes.asset";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  [v2 setRelationshipKeyPathsForPrefetching:v10];

  [v2 setFetchBatchSize:100];

  return v2;
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  contextCopy = context;
  progress = [(PLModelMigrationActionCore *)self progress];
  v8 = [progress totalUnitCount] / 7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  fetchRequestForScreenshot = [(PLModelMigrationAction_UpdateDuplicateProcessingStateScreenshot *)self fetchRequestForScreenshot];
  v21 = 0;
  v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self updateSceneClassificationDuplicateProcessingStateWithProcessingState:64 pendingParentUnitCount:v8 assetProcessingStateMap:v9 context:contextCopy request:fetchRequestForScreenshot error:&v21];
  v12 = v21;

  if (v11 == 1)
  {
    if ([v9 count])
    {
      v13 = objc_autoreleasePoolPush();
      v20 = v12;
      v11 = [(PLModelMigrationAction_UpdateDuplicateProcessingState *)self processAssetStateMap:v9 pendingParentUnitCount:v8 context:contextCopy error:&v20];
      v14 = v20;

      objc_autoreleasePoolPop(v13);
      v12 = v14;
    }

    else
    {
      v11 = 1;
    }
  }

  [(PLModelMigrationActionCore *)self finalizeProgress];
  v15 = v12;
  v16 = v15;
  if (v11 != 1 && error != 0)
  {
    v18 = v15;
    *error = v16;
  }

  return v11;
}

@end