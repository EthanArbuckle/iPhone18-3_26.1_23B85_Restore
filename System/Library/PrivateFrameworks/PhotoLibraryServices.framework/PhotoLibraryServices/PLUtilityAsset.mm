@interface PLUtilityAsset
+ (id)utilityAssetFromManagedAsset:(id)asset usingPool:(id)pool;
- (PLUtilityAsset)init;
- (void)_prepareForRecycle;
@end

@implementation PLUtilityAsset

- (PLUtilityAsset)init
{
  v7.receiver = self;
  v7.super_class = PLUtilityAsset;
  v2 = [(PLUtilityAsset *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_sceneAnalysisVersion = 0;
    v4 = [MEMORY[0x1E695DFA8] set];
    sceneClassifications = v3->_sceneClassifications;
    v3->_sceneClassifications = v4;

    *&v3->_isAIImageFromGenerativePlayground = 0;
  }

  return v3;
}

- (void)_prepareForRecycle
{
  v13 = *MEMORY[0x1E69E9840];
  self->_sceneAnalysisVersion = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_sceneClassifications;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) _prepareForRecycle];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_sceneClassifications removeAllObjects];
}

+ (id)utilityAssetFromManagedAsset:(id)asset usingPool:(id)pool
{
  v33 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  poolCopy = pool;
  v9 = poolCopy;
  if (assetCopy)
  {
    if (poolCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLUtilityAsset.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v9)
    {
LABEL_3:
      _dequeueRecylableAsset = [v9 _dequeueRecylableAsset];
      if (_dequeueRecylableAsset)
      {
        goto LABEL_5;
      }
    }
  }

  _dequeueRecylableAsset = objc_alloc_init(PLUtilityAsset);
LABEL_5:
  mediaAnalysisAttributes = [assetCopy mediaAnalysisAttributes];
  characterRecognitionAttributes = [mediaAnalysisAttributes characterRecognitionAttributes];
  machineReadableCodeData = [characterRecognitionAttributes machineReadableCodeData];
  [(PLUtilityAsset *)_dequeueRecylableAsset setHasQRCodeData:machineReadableCodeData != 0];

  extendedAttributes = [assetCopy extendedAttributes];
  generativeAIType = [extendedAttributes generativeAIType];
  -[PLUtilityAsset setIsAIImageFromGenerativePlayground:](_dequeueRecylableAsset, "setIsAIImageFromGenerativePlayground:", [generativeAIType intValue] == 1);

  additionalAttributes = [assetCopy additionalAttributes];
  -[PLUtilityAsset setSceneAnalysisVersion:](_dequeueRecylableAsset, "setSceneAnalysisVersion:", [additionalAttributes sceneAnalysisVersion]);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  additionalAttributes2 = [assetCopy additionalAttributes];
  sceneClassifications = [additionalAttributes2 sceneClassifications];

  v19 = [sceneClassifications countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(sceneClassifications);
        }

        v23 = *(*(&v28 + 1) + 8 * i);
        if (!v9 || ([v9 _dequeueRecylableClassification], (v24 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v24 = objc_alloc_init(PLUtilityAssetClassification);
        }

        -[PLUtilityAssetClassification setExtendedSceneIdentifier:](v24, "setExtendedSceneIdentifier:", [v23 sceneIdentifier]);
        [v23 confidence];
        [(PLUtilityAssetClassification *)v24 setConfidence:?];
        -[PLUtilityAssetClassification setPackedBoundingBox:](v24, "setPackedBoundingBox:", [v23 packedBoundingBoxRect]);
        -[PLUtilityAssetClassification setClassificationType:](v24, "setClassificationType:", [v23 classificationType]);
        sceneClassifications2 = [(PLUtilityAsset *)_dequeueRecylableAsset sceneClassifications];
        [sceneClassifications2 addObject:v24];
      }

      v20 = [sceneClassifications countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }

  return _dequeueRecylableAsset;
}

@end