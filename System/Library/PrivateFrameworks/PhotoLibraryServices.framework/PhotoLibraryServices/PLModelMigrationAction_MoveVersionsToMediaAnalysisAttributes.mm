@interface PLModelMigrationAction_MoveVersionsToMediaAnalysisAttributes
- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error;
- (void)moveVersionsToMediaAnalysisAttributes:(id)attributes;
- (void)processAsset:(id)asset withContext:(id)context;
@end

@implementation PLModelMigrationAction_MoveVersionsToMediaAnalysisAttributes

- (void)moveVersionsToMediaAnalysisAttributes:(id)attributes
{
  attributesCopy = attributes;
  characterRecognitionAttributes = [attributesCopy characterRecognitionAttributes];
  if (characterRecognitionAttributes)
  {
    v4 = +[PLCharacterRecognitionAttributes algorithmVersionKey];
    [attributesCopy setCharacterRecognitionVersion:{objc_msgSend(characterRecognitionAttributes, "pl_int16ValueForKey:", v4)}];
  }

  else
  {
    [attributesCopy setCharacterRecognitionVersion:0];
  }

  visualSearchAttributes = [attributesCopy visualSearchAttributes];
  if (visualSearchAttributes)
  {
    v6 = +[PLVisualSearchAttributes algorithmVersionKey];
    [attributesCopy setVisualSearchVersion:{objc_msgSend(visualSearchAttributes, "pl_int16ValueForKey:", v6)}];

    v7 = +[PLVisualSearchAttributes stickerConfidenceAlgorithmVersionKey];
    [attributesCopy setVisualSearchStickerConfidenceVersion:{objc_msgSend(visualSearchAttributes, "pl_int16ValueForKey:", v7)}];
  }

  else
  {
    [attributesCopy setVisualSearchVersion:0];
    [attributesCopy setVisualSearchStickerConfidenceVersion:0];
  }
}

- (void)processAsset:(id)asset withContext:(id)context
{
  contextCopy = context;
  assetCopy = asset;
  mediaAnalysisAttributes = [assetCopy mediaAnalysisAttributes];
  if (mediaAnalysisAttributes)
  {
    v8 = mediaAnalysisAttributes;
    [(PLModelMigrationAction_MoveVersionsToMediaAnalysisAttributes *)self moveVersionsToMediaAnalysisAttributes:mediaAnalysisAttributes];
  }

  else
  {
    v8 = [(PLManagedObject *)PLMediaAnalysisAssetAttributes insertInManagedObjectContext:contextCopy];
    [assetCopy setMediaAnalysisAttributes:v8];
  }

  dateCreated = [assetCopy dateCreated];

  [v8 setAssetDateCreated:dateCreated];
}

- (int64_t)performActionWithManagedObjectContext:(id)context error:(id *)error
{
  v21[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
  v11 = contextCopy;
  v19 = v11;
  v12 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v11 fetchRequest:v9 pendingParentUnitCount:0 error:&v20 processingBlock:v18];
  v13 = v20;
  [(PLModelMigrationActionCore *)self finalizeProgress];
  v14 = v13;
  v15 = v14;
  if (v12 != 1 && error)
  {
    v16 = v14;
    *error = v15;
  }

  return v12;
}

@end