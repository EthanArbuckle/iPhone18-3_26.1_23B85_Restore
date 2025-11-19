@interface PLUtilityAsset
+ (id)utilityAssetFromManagedAsset:(id)a3 usingPool:(id)a4;
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

+ (id)utilityAssetFromManagedAsset:(id)a3 usingPool:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PLUtilityAsset.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v9)
    {
LABEL_3:
      v10 = [v9 _dequeueRecylableAsset];
      if (v10)
      {
        goto LABEL_5;
      }
    }
  }

  v10 = objc_alloc_init(PLUtilityAsset);
LABEL_5:
  v11 = [v7 mediaAnalysisAttributes];
  v12 = [v11 characterRecognitionAttributes];
  v13 = [v12 machineReadableCodeData];
  [(PLUtilityAsset *)v10 setHasQRCodeData:v13 != 0];

  v14 = [v7 extendedAttributes];
  v15 = [v14 generativeAIType];
  -[PLUtilityAsset setIsAIImageFromGenerativePlayground:](v10, "setIsAIImageFromGenerativePlayground:", [v15 intValue] == 1);

  v16 = [v7 additionalAttributes];
  -[PLUtilityAsset setSceneAnalysisVersion:](v10, "setSceneAnalysisVersion:", [v16 sceneAnalysisVersion]);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = [v7 additionalAttributes];
  v18 = [v17 sceneClassifications];

  v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v18);
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
        v25 = [(PLUtilityAsset *)v10 sceneClassifications];
        [v25 addObject:v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v20);
  }

  return v10;
}

@end