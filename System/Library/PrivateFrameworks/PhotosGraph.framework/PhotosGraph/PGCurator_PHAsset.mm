@interface PGCurator_PHAsset
- (id)bestAssetsForFeeder:(id)feeder options:(id)options debugInfo:(id)info progressBlock:(id)block;
- (id)newSemanticalDeduperWithOptions:(id)options;
- (void)addMoviesToAssets:(id)assets fromFeeder:(id)feeder maximumNumberOfAssets:(unint64_t)ofAssets debugInfo:(id)info;
- (void)lastPassToCompleteItems:(id)items fromFeeder:(id)feeder options:(id)options maximumNumberOfItems:(unint64_t)ofItems debugInfo:(id)info;
@end

@implementation PGCurator_PHAsset

- (void)addMoviesToAssets:(id)assets fromFeeder:(id)feeder maximumNumberOfAssets:(unint64_t)ofAssets debugInfo:(id)info
{
  v69 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  feederCopy = feeder;
  infoCopy = info;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = [assetsCopy countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = feederCopy;
    v16 = 0;
    v17 = *v58;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(assetsCopy);
        }

        if ([*(*(&v57 + 1) + 8 * i) mediaType] == 2)
        {
          ++v16;
        }
      }

      v14 = [assetsCopy countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v14);
    v19 = v16;
    feederCopy = v15;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = [assetsCopy count];
  v21 = (ofAssets - v20) & ~((ofAssets - v20) >> 63);
  v22 = -(v19 - ofAssets * 0.1);
  v23 = v22 & ~(v22 >> 63);
  if (v23 <= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22 & ~(v22 >> 63);
  }

  if (v24)
  {
    selfCopy = self;
    mEMORY[0x277D267F0] = [MEMORY[0x277D267F0] sharedMediaAnalyzer];
    assetCollection = [feederCopy assetCollection];
    v27 = [mEMORY[0x277D267F0] curateMovieAssetsForCollection:assetCollection withAlreadyCuratedAssets:assetsCopy andDesiredCount:v24 allowOnDemand:0];

    v28 = *MEMORY[0x277D3C778];
    v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore > %f", *MEMORY[0x277D3C778]];
    v30 = [v27 filteredArrayUsingPredicate:v29];

    if (v30 && [v30 count])
    {
      [infoCopy setAgent:@"PGManager"];
      [infoCopy setStage:@"Last Pass to Add Movies"];
      v50 = mEMORY[0x277D267F0];
      if ([v30 count] > v24)
      {
        v31 = [v30 subarrayWithRange:{0, v24}];

        v30 = v31;
      }

      v32 = MEMORY[0x277CBEB98];
      v51 = feederCopy;
      allItems = [feederCopy allItems];
      v34 = [v32 setWithArray:allItems];

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v30 = v30;
      v35 = [v30 countByEnumeratingWithState:&v53 objects:v67 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v54;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v54 != v37)
            {
              objc_enumerationMutation(v30);
            }

            v39 = [v34 member:*(*(&v53 + 1) + 8 * j)];
            v40 = v39;
            if (v39)
            {
              [v39 clsContentScore];
              if (v41 > v28)
              {
                [assetsCopy addObject:v40];
              }
            }
          }

          v36 = [v30 countByEnumeratingWithState:&v53 objects:v67 count:16];
        }

        while (v36);
      }

      loggingConnection = [(PGCurator *)selfCopy loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v30 count];
        *buf = 134218496;
        v62 = v21;
        v63 = 2048;
        v64 = v23;
        v65 = 2048;
        v66 = v43;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "Curated Assets: %lu slots left, minimum number of videos to add %lu, got %lu extra movie assets from MediaAnalysis", buf, 0x20u);
      }

      if (infoCopy)
      {
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
        stringValue = [v44 stringValue];
        v46 = [@"Adding " stringByAppendingString:stringValue];
        v47 = [v46 stringByAppendingString:@" movies curated by MediaAnalyzer"];

        v48 = [MEMORY[0x277CBEB98] setWithArray:v30];
        [infoCopy setState:3 ofItems:v48 withReason:v47];
      }

      mEMORY[0x277D267F0] = v50;
      feederCopy = v51;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)lastPassToCompleteItems:(id)items fromFeeder:(id)feeder options:(id)options maximumNumberOfItems:(unint64_t)ofItems debugInfo:(id)info
{
  itemsCopy = items;
  feederCopy = feeder;
  infoCopy = info;
  if ([options lastPassMovieAdditionIsEnabled])
  {
    [(PGCurator_PHAsset *)self addMoviesToAssets:itemsCopy fromFeeder:feederCopy maximumNumberOfAssets:ofItems debugInfo:infoCopy];
  }
}

- (id)newSemanticalDeduperWithOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc_init(PGSemanticalDeduper_PHAsset);
  semanticalDedupingUsesAdaptiveSimilarStacking = [optionsCopy semanticalDedupingUsesAdaptiveSimilarStacking];

  [(PGSemanticalDeduper *)v4 setUsesAdaptiveSimilarStacking:semanticalDedupingUsesAdaptiveSimilarStacking];
  return v4;
}

- (id)bestAssetsForFeeder:(id)feeder options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v8.receiver = self;
  v8.super_class = PGCurator_PHAsset;
  v6 = [(PGCurator *)&v8 bestItemsForFeeder:feeder options:options debugInfo:info progressBlock:block];

  return v6;
}

@end