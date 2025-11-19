@interface PLModelMigrationAction_MoveVersionsToMediaAnalysisAttributes
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
- (void)moveVersionsToMediaAnalysisAttributes:(id)a3;
- (void)processAsset:(id)a3 withContext:(id)a4;
@end

@implementation PLModelMigrationAction_MoveVersionsToMediaAnalysisAttributes

- (void)moveVersionsToMediaAnalysisAttributes:(id)a3
{
  v8 = a3;
  v3 = [v8 characterRecognitionAttributes];
  if (v3)
  {
    v4 = +[PLCharacterRecognitionAttributes algorithmVersionKey];
    [v8 setCharacterRecognitionVersion:{objc_msgSend(v3, "pl_int16ValueForKey:", v4)}];
  }

  else
  {
    [v8 setCharacterRecognitionVersion:0];
  }

  v5 = [v8 visualSearchAttributes];
  if (v5)
  {
    v6 = +[PLVisualSearchAttributes algorithmVersionKey];
    [v8 setVisualSearchVersion:{objc_msgSend(v5, "pl_int16ValueForKey:", v6)}];

    v7 = +[PLVisualSearchAttributes stickerConfidenceAlgorithmVersionKey];
    [v8 setVisualSearchStickerConfidenceVersion:{objc_msgSend(v5, "pl_int16ValueForKey:", v7)}];
  }

  else
  {
    [v8 setVisualSearchVersion:0];
    [v8 setVisualSearchStickerConfidenceVersion:0];
  }
}

- (void)processAsset:(id)a3 withContext:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [v6 mediaAnalysisAttributes];
  if (v7)
  {
    v8 = v7;
    [(PLModelMigrationAction_MoveVersionsToMediaAnalysisAttributes *)self moveVersionsToMediaAnalysisAttributes:v7];
  }

  else
  {
    v8 = [(PLManagedObject *)PLMediaAnalysisAssetAttributes insertInManagedObjectContext:v10];
    [v6 setMediaAnalysisAttributes:v8];
  }

  v9 = [v6 dateCreated];

  [v8 setAssetDateCreated:v9];
}

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v21[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v21[0] = @"mediaAnalysisAttributes";
  v21[1] = @"mediaAnalysisAttributes.characterRecognitionAttributes";
  v21[2] = @"mediaAnalysisAttributes.visualSearchAttributes";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  [v9 setRelationshipKeyPathsForPrefetching:v10];

  v20 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __108__PLModelMigrationAction_MoveVersionsToMediaAnalysisAttributes_performActionWithManagedObjectContext_error___block_invoke;
  v18[3] = &unk_1E756C8C8;
  v18[4] = self;
  v11 = v6;
  v19 = v11;
  v12 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v11 fetchRequest:v9 pendingParentUnitCount:0 error:&v20 processingBlock:v18];
  v13 = v20;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v14 = v13;
  v15 = v14;
  if (v12 != 1 && a4)
  {
    v16 = v14;
    *a4 = v15;
  }

  return v12;
}

@end