@interface PGWallpaperSuggestionUtilities
+ (BOOL)foundDominantPeopleSceneInAsset:(id)a3 withConfidenceThresholdHelper:(id)a4;
+ (id)assetFetchPropertySetsIncludingGating:(BOOL)a3;
+ (id)peopleSceneConfidenceThresholdHelper;
+ (id)peopleShuffleDescriptorTitleWithCount:(unint64_t)a3;
+ (unint64_t)computeQuantizedPenalty:(double)a3 minScore:(double)a4 cutOff:(double)a5;
@end

@implementation PGWallpaperSuggestionUtilities

+ (unint64_t)computeQuantizedPenalty:(double)a3 minScore:(double)a4 cutOff:(double)a5
{
  v5 = a5 - a4;
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = a5 - a3;
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

+ (id)peopleShuffleDescriptorTitleWithCount:(unint64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PGWallpaperPeopleShuffleWithCount %lu" value:@"PGWallpaperPeopleShuffleWithCount %lu" table:@"Localizable"];
  v7 = [v4 localizedStringWithFormat:v6, a3];

  return v7;
}

+ (BOOL)foundDominantPeopleSceneInAsset:(id)a3 withConfidenceThresholdHelper:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 curationModel];
  v8 = [v6 confidenceThresholdBySceneIdentifierWithCurationModel:v7];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v5 clsSceneClassifications];
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v29 = v6;
    v11 = *v31;
    v12 = *MEMORY[0x277CBF3A8];
    v13 = *(MEMORY[0x277CBF3A8] + 8);
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v9);
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

      v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_18:
    v6 = v29;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)peopleSceneConfidenceThresholdHelper
{
  v2 = [objc_alloc(MEMORY[0x277D3C7B0]) initWithSceneNames:&unk_2844854D8 thresholdType:4];

  return v2;
}

+ (id)assetFetchPropertySetsIncludingGating:(BOOL)a3
{
  v3 = a3;
  v4 = +[PGCurationManager assetPropertySetsForCuration];
  if (v3)
  {
    v5 = +[PGWallpaperSuggestionAssetGater assetFetchPropertySetsForGating];
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v4 = [v7 allObjects];
  }

  return v4;
}

@end