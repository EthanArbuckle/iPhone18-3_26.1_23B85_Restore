@interface PGMoodSourceVideo
- (id)_assetsByMomentIDs;
- (id)_plistMoodIdentifiersWithGraph:(id)a3;
@end

@implementation PGMoodSourceVideo

- (id)_assetsByMomentIDs
{
  v60[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(PGMoodSource *)self photoLibrary];
  v5 = [(PGMoodSource *)self assetCollection];
  v6 = [(PGMoodSource *)self options];
  v7 = [v6 prefetchedAssets];

  if (!v7)
  {
    v8 = [v4 librarySpecificFetchOptions];
    v9 = *MEMORY[0x277CD9AD0];
    v60[0] = *MEMORY[0x277CD9B10];
    v60[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    [v8 setFetchPropertySets:v10];

    v11 = +[PGCurationManager defaultAssetSortDescriptors];
    [v8 setSortDescriptors:v11];

    v12 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v5 options:v8];
    v13 = objc_alloc(MEMORY[0x277D3C790]);
    v14 = [(PGMoodSource *)self photoLibrary];
    v15 = [v13 initWithPhotoLibrary:v14];

    v7 = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:v12 prefetchOptions:9 curationContext:v15];
    v16 = [(PGMoodSource *)self options];
    [v16 setPrefetchedAssets:v7];
  }

  if ([v7 count])
  {
    v17 = [v4 librarySpecificFetchOptions];
    v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v57 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    [v17 setSortDescriptors:v19];

    v51 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAssets:v7 withType:3 options:v17];
    v20 = [v51 fetchedObjects];
    v21 = [v20 objectEnumerator];

    v22 = [v21 nextObject];
    v23 = [v22 endDate];
    [v23 timeIntervalSinceReferenceDate];
    v25 = v24;

    if (v22)
    {
      v47 = v17;
      v48 = v7;
      v49 = v5;
      v50 = v4;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v26 = v7;
      v27 = [v26 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v53;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v53 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v52 + 1) + 8 * i);
            v32 = [v31 creationDate];
            [v32 timeIntervalSinceReferenceDate];
            v34 = v33;

            if (v34 > v25)
            {
              v35 = [v21 nextObject];

              v36 = [v35 endDate];
              [v36 timeIntervalSinceReferenceDate];
              v25 = v37;

              if (!v35)
              {
                v43 = +[PGLogging sharedLogging];
                v44 = [v43 loggingConnection];

                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v59 = v31;
                  _os_log_error_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_ERROR, "Error: No Moments contain Asset %@", buf, 0xCu);
                }

                v22 = 0;
                goto LABEL_27;
              }

              v22 = v35;
            }

            v38 = [v22 uuid];
            v39 = [v3 objectForKeyedSubscript:v38];
            if (!v39)
            {
              v39 = [MEMORY[0x277CBEB18] array];
              [v3 setObject:v39 forKeyedSubscript:v38];
            }

            [v39 addObject:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

      v41 = v3;
      v5 = v49;
      v4 = v50;
      v17 = v47;
      v7 = v48;
    }

    else
    {
      v42 = +[PGLogging sharedLogging];
      v22 = [v42 loggingConnection];

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v7;
        _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "Error: No moments contain assets: %@", buf, 0xCu);
      }

      v41 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v40 = +[PGLogging sharedLogging];
    v17 = [v40 loggingConnection];

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = v5;
      _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Error: No assets in assetCollection: %@", buf, 0xCu);
    }

    v41 = MEMORY[0x277CBEC10];
  }

  v45 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)_plistMoodIdentifiersWithGraph:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v25 = a3;
  [(PGMoodSourceVideo *)self _assetsByMomentIDs];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v34 = 0u;
  obj = [v24 objectEnumerator];
  v4 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (!v4)
  {
LABEL_31:

    goto LABEL_32;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v32;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v32 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v31 + 1) + 8 * i);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (!v11)
      {

LABEL_22:
        v20 = 0;
        goto LABEL_23;
      }

      v12 = v11;
      v13 = 0;
      v14 = *v28;
      v15 = 0.0;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v17 = *(*(&v27 + 1) + 8 * j);
          if ([v17 isVideo])
          {
            ++v13;
            [v17 clsActivityScore];
            v15 = v15 + v18;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v12);

      if (!v13)
      {
        goto LABEL_22;
      }

      v19 = v15 / v13;
      v20 = @"Extreme";
      if (v19 < 0.800000012)
      {
        v20 = @"Fast";
        if (v19 < 0.600000024)
        {
          v20 = @"Medium";
          if (v19 < 0.400000006)
          {
            v20 = @"Slowly";
          }
        }
      }

LABEL_23:
      if (v6)
      {
        if (v6 != v20)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v6 = v20;
      }
    }

    v5 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  }

  while (v5);

  if (v6)
  {
    v35 = v6;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    goto LABEL_33;
  }

LABEL_32:
  v21 = MEMORY[0x277CBEBF8];
LABEL_33:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end