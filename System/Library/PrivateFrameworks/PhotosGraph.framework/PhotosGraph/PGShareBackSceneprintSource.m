@interface PGShareBackSceneprintSource
- (BOOL)isSimilarSuggesterInput:(id)a3 toMomentNode:(id)a4 inGraph:(id)a5 error:(id *)a6;
- (PGShareBackSceneprintSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4;
- (id)getAssetsInMomentNode:(id)a3 inGraph:(id)a4 error:(id *)a5;
- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6;
- (id)validInputsForSource:(id)a3 givenSuggesterResults:(id)a4;
@end

@implementation PGShareBackSceneprintSource

- (id)suggesterResultsForInputs:(id)a3 momentNodes:(id)a4 inGraph:(id)a5 error:(id *)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v11 count])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v13 = v10;
    v40 = [v13 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v40)
    {
      v14 = *v52;
      v42 = v11;
      v43 = v10;
      v44 = v13;
      v38 = a6;
      v39 = *v52;
      do
      {
        v15 = 0;
        do
        {
          if (*v52 != v14)
          {
            objc_enumerationMutation(v13);
          }

          v41 = v15;
          v16 = *(*(&v51 + 1) + 8 * v15);
          context = objc_autoreleasePoolPush();
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v17 = v11;
          v18 = [v17 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (!v18)
          {
            goto LABEL_20;
          }

          v19 = v18;
          v20 = *v48;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v48 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v47 + 1) + 8 * i);
              v46 = 0;
              v23 = [(PGShareBackSceneprintSource *)self isSimilarSuggesterInput:v16 toMomentNode:v22 inGraph:v12 error:&v46];
              v24 = v46;
              if (v24)
              {
                v25 = 1;
              }

              else
              {
                v25 = !v23;
              }

              if (!v25)
              {
                v29 = [(PGShareBackSource *)self loggingConnection];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  v31 = [v16 asset];
                  v32 = [v31 uuid];
                  v33 = [v22 uuid];
                  *buf = 138412546;
                  v56 = v32;
                  v57 = 2112;
                  v58 = v33;
                  _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[PGShareBackSceneprintSource] Input asset %@ is identified as having a common staging similarity to moment node %@", buf, 0x16u);
                }

                v27 = v44;
                v34 = [[PGShareBackSuggesterResult alloc] initWithInputs:v44 processingValue:0x2000 momentNodes:v17];
                v28 = [MEMORY[0x277CBEA60] arrayWithObject:v34];

                objc_autoreleasePoolPop(context);
                goto LABEL_31;
              }

              v26 = v24;
              if (v24)
              {

                objc_autoreleasePoolPop(context);
                if (v38)
                {
                  v35 = v26;
                  v28 = 0;
                  *v38 = v26;
                }

                else
                {
                  v28 = MEMORY[0x277CBEBF8];
                }

                v27 = v26;
LABEL_31:
                v11 = v42;
                v10 = v43;
                goto LABEL_32;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v47 objects:v59 count:16];
            v11 = v42;
            v10 = v43;
            if (v19)
            {
              continue;
            }

            break;
          }

LABEL_20:

          objc_autoreleasePoolPop(context);
          v15 = v41 + 1;
          v13 = v44;
          v14 = v39;
        }

        while (v41 + 1 != v40);
        v40 = [v44 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v40);
    }

    v27 = 0;
    v28 = MEMORY[0x277CBEBF8];
LABEL_32:
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)isSimilarSuggesterInput:(id)a3 toMomentNode:(id)a4 inGraph:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = [(PGShareBackSceneprintSource *)self getAssetsInMomentNode:a4 inGraph:a5 error:a6];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 mutableCopy];
    v14 = [v10 asset];
    [v13 removeObject:v14];

    if ([v13 count])
    {
      v15 = MEMORY[0x277D3C820];
      v16 = [v10 asset];
      v17 = [v15 isAsset:v16 similarToAnyAssets:v13 withinThresholdType:2];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)getAssetsInMomentNode:(id)a3 inGraph:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  assetsInMomentCache = self->_assetsInMomentCache;
  v11 = [v8 localIdentifier];
  v12 = [(NSCache *)assetsInMomentCache objectForKey:v11];

  if (!v12)
  {
    v13 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v14 = [MEMORY[0x277D3C820] requiredFetchPropertySets];
    [v13 setFetchPropertySets:v14];

    v15 = [v9 momentForMomentNode:v8 inPhotoLibrary:self->_photoLibrary];
    if (v15)
    {
      v16 = v15;
      v17 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:v15 options:v13];
      v18 = objc_alloc(MEMORY[0x277CBEA60]);
      v19 = [v17 fetchedObjects];
      v12 = [v18 initWithArray:v19 copyItems:0];

      v20 = self->_assetsInMomentCache;
      v21 = [v8 localIdentifier];
      [(NSCache *)v20 setObject:v12 forKey:v21];
    }

    else
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = MEMORY[0x277CCACA8];
      v24 = [v8 uuid];
      v25 = [v23 stringWithFormat:@"Error while getting the PHMoment associated to moment node %@", v24];
      v26 = [v22 errorWithDescription:v25];

      if (a5)
      {
        v27 = v26;
        *a5 = v26;
      }

      v28 = [(PGShareBackSource *)self loggingConnection];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v26 description];
        *buf = 138412290;
        v33 = v29;
        _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "[PGShareBackSceneprintSource] %@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  v30 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)validInputsForSource:(id)a3 givenSuggesterResults:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (([v12 processingValue] & 8) != 0)
        {
          v13 = [v12 suggesterInputs];
          [v6 removeObjectsInArray:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (PGShareBackSceneprintSource)initWithLoggingConnection:(id)a3 photoLibrary:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PGShareBackSceneprintSource;
  v8 = [(PGShareBackSource *)&v13 initWithLoggingConnection:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photoLibrary, a4);
    v10 = objc_alloc_init(MEMORY[0x277CBEA78]);
    assetsInMomentCache = v9->_assetsInMomentCache;
    v9->_assetsInMomentCache = v10;

    [(NSCache *)v9->_assetsInMomentCache setCountLimit:50];
  }

  return v9;
}

@end