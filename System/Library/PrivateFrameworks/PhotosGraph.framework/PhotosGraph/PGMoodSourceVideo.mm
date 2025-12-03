@interface PGMoodSourceVideo
- (id)_assetsByMomentIDs;
- (id)_plistMoodIdentifiersWithGraph:(id)graph;
@end

@implementation PGMoodSourceVideo

- (id)_assetsByMomentIDs
{
  v60[2] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  photoLibrary = [(PGMoodSource *)self photoLibrary];
  assetCollection = [(PGMoodSource *)self assetCollection];
  options = [(PGMoodSource *)self options];
  prefetchedAssets = [options prefetchedAssets];

  if (!prefetchedAssets)
  {
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v9 = *MEMORY[0x277CD9AD0];
    v60[0] = *MEMORY[0x277CD9B10];
    v60[1] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    [librarySpecificFetchOptions setFetchPropertySets:v10];

    v11 = +[PGCurationManager defaultAssetSortDescriptors];
    [librarySpecificFetchOptions setSortDescriptors:v11];

    v12 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:assetCollection options:librarySpecificFetchOptions];
    v13 = objc_alloc(MEMORY[0x277D3C790]);
    photoLibrary2 = [(PGMoodSource *)self photoLibrary];
    v15 = [v13 initWithPhotoLibrary:photoLibrary2];

    prefetchedAssets = [MEMORY[0x277CD97A8] clsAllAssetsFromFetchResult:v12 prefetchOptions:9 curationContext:v15];
    options2 = [(PGMoodSource *)self options];
    [options2 setPrefetchedAssets:prefetchedAssets];
  }

  if ([prefetchedAssets count])
  {
    librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
    v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v57 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    [librarySpecificFetchOptions2 setSortDescriptors:v19];

    v51 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAssets:prefetchedAssets withType:3 options:librarySpecificFetchOptions2];
    fetchedObjects = [v51 fetchedObjects];
    objectEnumerator = [fetchedObjects objectEnumerator];

    nextObject = [objectEnumerator nextObject];
    endDate = [nextObject endDate];
    [endDate timeIntervalSinceReferenceDate];
    v25 = v24;

    if (nextObject)
    {
      v47 = librarySpecificFetchOptions2;
      v48 = prefetchedAssets;
      v49 = assetCollection;
      v50 = photoLibrary;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v26 = prefetchedAssets;
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
            creationDate = [v31 creationDate];
            [creationDate timeIntervalSinceReferenceDate];
            v34 = v33;

            if (v34 > v25)
            {
              nextObject2 = [objectEnumerator nextObject];

              endDate2 = [nextObject2 endDate];
              [endDate2 timeIntervalSinceReferenceDate];
              v25 = v37;

              if (!nextObject2)
              {
                v43 = +[PGLogging sharedLogging];
                loggingConnection = [v43 loggingConnection];

                if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v59 = v31;
                  _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error: No Moments contain Asset %@", buf, 0xCu);
                }

                nextObject = 0;
                goto LABEL_27;
              }

              nextObject = nextObject2;
            }

            uuid = [nextObject uuid];
            array = [dictionary objectForKeyedSubscript:uuid];
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
              [dictionary setObject:array forKeyedSubscript:uuid];
            }

            [array addObject:v31];
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

      v41 = dictionary;
      assetCollection = v49;
      photoLibrary = v50;
      librarySpecificFetchOptions2 = v47;
      prefetchedAssets = v48;
    }

    else
    {
      v42 = +[PGLogging sharedLogging];
      nextObject = [v42 loggingConnection];

      if (os_log_type_enabled(nextObject, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = prefetchedAssets;
        _os_log_error_impl(&dword_22F0FC000, nextObject, OS_LOG_TYPE_ERROR, "Error: No moments contain assets: %@", buf, 0xCu);
      }

      v41 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v40 = +[PGLogging sharedLogging];
    librarySpecificFetchOptions2 = [v40 loggingConnection];

    if (os_log_type_enabled(librarySpecificFetchOptions2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = assetCollection;
      _os_log_error_impl(&dword_22F0FC000, librarySpecificFetchOptions2, OS_LOG_TYPE_ERROR, "Error: No assets in assetCollection: %@", buf, 0xCu);
    }

    v41 = MEMORY[0x277CBEC10];
  }

  v45 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)_plistMoodIdentifiersWithGraph:(id)graph
{
  v38 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
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