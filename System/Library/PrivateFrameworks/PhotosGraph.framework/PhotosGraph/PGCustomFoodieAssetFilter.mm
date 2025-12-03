@interface PGCustomFoodieAssetFilter
- (BOOL)_passesWithAsset:(id)asset curationContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (PGCustomFoodieAssetFilter)init;
- (id)filteredAssetsFromAssets:(id)assets curationContext:(id)context;
@end

@implementation PGCustomFoodieAssetFilter

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)_passesWithAsset:(id)asset curationContext:(id)context
{
  v55 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  contextCopy = context;
  curationModel = [assetCopy curationModel];
  userFeedbackCalculator = [contextCopy userFeedbackCalculator];
  v10 = [curationModel isUtilityForMemoriesWithAsset:assetCopy userFeedbackCalculator:userFeedbackCalculator blockSocialMediaImportedAssets:PGMemoryGenerationBlockSocialMediaImportedAssets];

  if ((v10 & 1) != 0 || ([assetCopy clsFaceInformationSummary], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "numberOfFaces"), v11, v12) || !objc_msgSend(curationModel, "isShowcasingFoodWithAsset:", assetCopy))
  {
    v38 = 0;
    goto LABEL_33;
  }

  v47 = [(CLSSceneConfidenceThresholdHelper *)self->_foodScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:curationModel];
  v46 = [(CLSSceneConfidenceThresholdHelper *)self->_drinkScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:curationModel];
  v49 = [(CLSSceneConfidenceThresholdHelper *)self->_forbiddenScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:curationModel];
  junkClassificationModel = [curationModel junkClassificationModel];
  foodOrDrinkNode = [junkClassificationModel foodOrDrinkNode];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  clsSceneClassifications = [assetCopy clsSceneClassifications];
  v48 = [clsSceneClassifications countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v48)
  {

    v38 = 0;
    goto LABEL_41;
  }

  v43 = curationModel;
  obj = clsSceneClassifications;
  v41 = assetCopy;
  v42 = contextCopy;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = *v51;
  v19 = 0x277CCA000uLL;
LABEL_6:
  v20 = 0;
  while (1)
  {
    if (*v51 != v18)
    {
      objc_enumerationMutation(obj);
    }

    v21 = *(*(&v50 + 1) + 8 * v20);
    if ([curationModel filterForFoodieWithClassification:v21])
    {
      goto LABEL_38;
    }

    v22 = [*(v19 + 2992) numberWithUnsignedInteger:{objc_msgSend(v21, "extendedSceneIdentifier")}];
    [v21 confidence];
    v24 = v23;
    v25 = [v49 objectForKeyedSubscript:v22];
    v26 = v25;
    if (v25)
    {
      [v25 doubleValue];
      if (v24 >= v27)
      {
        break;
      }
    }

    if (v16)
    {
      v16 = 1;
      if ((v17 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v32 = v18;
      v33 = [v47 objectForKeyedSubscript:v22];
      v34 = v33;
      v16 = 0;
      if (v33)
      {
        [v33 doubleValue];
        if (v24 >= v35)
        {
          v16 = 1;
        }
      }

      v18 = v32;
      curationModel = v43;
      v19 = 0x277CCA000;
      if ((v17 & 1) == 0)
      {
LABEL_14:
        v17 = [foodOrDrinkNode passesHighPrecisionWithSignal:v21];
        if (v15)
        {
          goto LABEL_26;
        }

        goto LABEL_15;
      }
    }

    v17 = 1;
    if (v15)
    {
LABEL_26:
      v36 = 1;
      goto LABEL_27;
    }

LABEL_15:
    v28 = [v46 objectForKeyedSubscript:v22];
    v29 = v28;
    v31 = 0;
    if (v28)
    {
      [v28 doubleValue];
      if (v24 >= v30)
      {
        v31 = 1;
      }
    }

    v36 = v31;
LABEL_27:
    v15 = v36;
    v37 = v16 & v36 & v17;

    if (v37)
    {

      v15 = 1;
      v16 = 1;
      goto LABEL_36;
    }

    if (v48 == ++v20)
    {
      v48 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      if (v48)
      {
        goto LABEL_6;
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_36:
      v38 = v16 | v15 ^ 1;
      goto LABEL_40;
    }
  }

LABEL_38:
LABEL_39:
  v38 = 0;
LABEL_40:
  assetCopy = v41;
  contextCopy = v42;
LABEL_41:

LABEL_33:
  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)filteredAssetsFromAssets:(id)assets curationContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = assetsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([(PGCustomFoodieAssetFilter *)self _passesWithAsset:v14 curationContext:contextCopy, v17])
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (PGCustomFoodieAssetFilter)init
{
  v10.receiver = self;
  v10.super_class = PGCustomFoodieAssetFilter;
  v2 = [(PGCustomFoodieAssetFilter *)&v10 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_2844862E8 thresholdType:1];
    foodScenesHelper = v2->_foodScenesHelper;
    v2->_foodScenesHelper = v3;

    v5 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_284486300 thresholdType:1];
    drinkScenesHelper = v2->_drinkScenesHelper;
    v2->_drinkScenesHelper = v5;

    v7 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_284486318 thresholdType:5];
    forbiddenScenesHelper = v2->_forbiddenScenesHelper;
    v2->_forbiddenScenesHelper = v7;
  }

  return v2;
}

@end