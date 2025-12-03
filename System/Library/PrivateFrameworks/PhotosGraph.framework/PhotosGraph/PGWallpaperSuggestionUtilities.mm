@interface PGWallpaperSuggestionUtilities
+ (BOOL)foundDominantPeopleSceneInAsset:(id)asset withConfidenceThresholdHelper:(id)helper;
+ (id)assetFetchPropertySetsIncludingGating:(BOOL)gating;
+ (id)peopleSceneConfidenceThresholdHelper;
+ (id)peopleShuffleDescriptorTitleWithCount:(unint64_t)count;
+ (unint64_t)computeQuantizedPenalty:(double)penalty minScore:(double)score cutOff:(double)off;
@end

@implementation PGWallpaperSuggestionUtilities

+ (unint64_t)computeQuantizedPenalty:(double)penalty minScore:(double)score cutOff:(double)off
{
  v5 = off - score;
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = off - penalty;
  if (v6 <= 0.0)
  {
    return 0;
  }

  v7 = v6 / v5;
  v8 = vcvtd_n_u64_f64(v7, 2uLL);
  if (v7 < 1.0)
  {
    return v8 + 1;
  }

  else
  {
    return 4;
  }
}

+ (id)peopleShuffleDescriptorTitleWithCount:(unint64_t)count
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PGWallpaperPeopleShuffleWithCount %lu" value:@"PGWallpaperPeopleShuffleWithCount %lu" table:@"Localizable"];
  v7 = [v4 localizedStringWithFormat:v6, count];

  return v7;
}

+ (BOOL)foundDominantPeopleSceneInAsset:(id)asset withConfidenceThresholdHelper:(id)helper
{
  v35 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  helperCopy = helper;
  curationModel = [assetCopy curationModel];
  v8 = [helperCopy confidenceThresholdBySceneIdentifierWithCurationModel:curationModel];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  clsSceneClassifications = [assetCopy clsSceneClassifications];
  v10 = [clsSceneClassifications countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v29 = helperCopy;
    v11 = *v31;
    v12 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(clsSceneClassifications);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "extendedSceneIdentifier")}];
        v17 = [v8 objectForKeyedSubscript:v16];

        if (v17)
        {
          [v15 confidence];
          v19 = v18;
          [v17 doubleValue];
          if (v19 >= v20)
          {
            [v15 boundingBox];
            if (!NSIsEmptyRect(v36))
            {
              [v15 boundingBox];
              if (v12 != v22 || v13 != v21)
              {
                [v15 boundingBox];
                v25 = v24;
                [v15 boundingBox];
                if (v25 * v26 > 0.05)
                {

                  LOBYTE(v10) = 1;
                  goto LABEL_18;
                }
              }
            }
          }
        }
      }

      v10 = [clsSceneClassifications countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_18:
    helperCopy = v29;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)peopleSceneConfidenceThresholdHelper
{
  v2 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_2844854D8 thresholdType:4];

  return v2;
}

+ (id)assetFetchPropertySetsIncludingGating:(BOOL)gating
{
  gatingCopy = gating;
  allObjects = +[PGCurationManager assetPropertySetsForCuration];
  if (gatingCopy)
  {
    v5 = +[PGWallpaperSuggestionAssetGater assetFetchPropertySetsForGating];
    v6 = [allObjects arrayByAddingObjectsFromArray:v5];

    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    allObjects = [v7 allObjects];
  }

  return allObjects;
}

@end