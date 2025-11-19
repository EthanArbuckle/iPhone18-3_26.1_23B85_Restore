@interface PGCurator_PHAsset
- (id)bestAssetsForFeeder:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6;
- (id)newSemanticalDeduperWithOptions:(id)a3;
- (void)addMoviesToAssets:(id)a3 fromFeeder:(id)a4 maximumNumberOfAssets:(unint64_t)a5 debugInfo:(id)a6;
- (void)lastPassToCompleteItems:(id)a3 fromFeeder:(id)a4 options:(id)a5 maximumNumberOfItems:(unint64_t)a6 debugInfo:(id)a7;
@end

@implementation PGCurator_PHAsset

- (void)addMoviesToAssets:(id)a3 fromFeeder:(id)a4 maximumNumberOfAssets:(unint64_t)a5 debugInfo:(id)a6
{
  v69 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = v11;
    v16 = 0;
    v17 = *v58;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v57 + 1) + 8 * i) mediaType] == 2)
        {
          ++v16;
        }
      }

      v14 = [v10 countByEnumeratingWithState:&v57 objects:v68 count:16];
    }

    while (v14);
    v19 = v16;
    v11 = v15;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = [v10 count];
  v21 = (a5 - v20) & ~((a5 - v20) >> 63);
  v22 = -(v19 - a5 * 0.1);
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
    v52 = self;
    v25 = [MEMORY[0x277D267F0] sharedMediaAnalyzer];
    v26 = [v11 assetCollection];
    v27 = [v25 curateMovieAssetsForCollection:v26 withAlreadyCuratedAssets:v10 andDesiredCount:v24 allowOnDemand:0];

    v28 = *MEMORY[0x277D3C778];
    v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"curationScore > %f", *MEMORY[0x277D3C778]];
    v30 = [v27 filteredArrayUsingPredicate:v29];

    if (v30 && [v30 count])
    {
      [v12 setAgent:@"PGManager"];
      [v12 setStage:@"Last Pass to Add Movies"];
      v50 = v25;
      if ([v30 count] > v24)
      {
        v31 = [v30 subarrayWithRange:{0, v24}];

        v30 = v31;
      }

      v32 = MEMORY[0x277CBEB98];
      v51 = v11;
      v33 = [v11 allItems];
      v34 = [v32 setWithArray:v33];

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
                [v10 addObject:v40];
              }
            }
          }

          v36 = [v30 countByEnumeratingWithState:&v53 objects:v67 count:16];
        }

        while (v36);
      }

      v42 = [(PGCurator *)v52 loggingConnection];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v30 count];
        *buf = 134218496;
        v62 = v21;
        v63 = 2048;
        v64 = v23;
        v65 = 2048;
        v66 = v43;
        _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_DEFAULT, "Curated Assets: %lu slots left, minimum number of videos to add %lu, got %lu extra movie assets from MediaAnalysis", buf, 0x20u);
      }

      if (v12)
      {
        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
        v45 = [v44 stringValue];
        v46 = [@"Adding " stringByAppendingString:v45];
        v47 = [v46 stringByAppendingString:@" movies curated by MediaAnalyzer"];

        v48 = [MEMORY[0x277CBEB98] setWithArray:v30];
        [v12 setState:3 ofItems:v48 withReason:v47];
      }

      v25 = v50;
      v11 = v51;
    }
  }

  v49 = *MEMORY[0x277D85DE8];
}

- (void)lastPassToCompleteItems:(id)a3 fromFeeder:(id)a4 options:(id)a5 maximumNumberOfItems:(unint64_t)a6 debugInfo:(id)a7
{
  v14 = a3;
  v12 = a4;
  v13 = a7;
  if ([a5 lastPassMovieAdditionIsEnabled])
  {
    [(PGCurator_PHAsset *)self addMoviesToAssets:v14 fromFeeder:v12 maximumNumberOfAssets:a6 debugInfo:v13];
  }
}

- (id)newSemanticalDeduperWithOptions:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PGSemanticalDeduper_PHAsset);
  v5 = [v3 semanticalDedupingUsesAdaptiveSimilarStacking];

  [(PGSemanticalDeduper *)v4 setUsesAdaptiveSimilarStacking:v5];
  return v4;
}

- (id)bestAssetsForFeeder:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v8.receiver = self;
  v8.super_class = PGCurator_PHAsset;
  v6 = [(PGCurator *)&v8 bestItemsForFeeder:a3 options:a4 debugInfo:a5 progressBlock:a6];

  return v6;
}

@end