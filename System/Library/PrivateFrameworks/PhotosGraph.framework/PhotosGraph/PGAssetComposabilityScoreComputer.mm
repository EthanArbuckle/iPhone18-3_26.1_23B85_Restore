@interface PGAssetComposabilityScoreComputer
- (PGAssetComposabilityScoreComputer)initWithPhotoLibrary:(id)library options:(id)options;
- (double)bestDistanceWithSimilarityModelVersion:(unint64_t)version;
- (double)composabilityScoreWithAssetDistance:(double)distance andDistance:(double)andDistance andDistance:(double)a5 similarityModelVersion:(unint64_t)version;
- (double)composabilityScoreWithAssetDistance:(double)distance similarityModelVersion:(unint64_t)version;
- (id)composabilityScoresOfAssetsForLocalIdentifiers:(id)identifiers;
- (id)initForTesting;
@end

@implementation PGAssetComposabilityScoreComputer

- (id)composabilityScoresOfAssetsForLocalIdentifiers:(id)identifiers
{
  v76[4] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  if (self->_computeDiptychScores)
  {
    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v56 = 0;
  }

  if (self->_computeTriptychScores)
  {
    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v55 = 0;
  }

  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v6 = *MEMORY[0x277CD9B18];
  v76[0] = *MEMORY[0x277CD9AA8];
  v76[1] = v6;
  v7 = *MEMORY[0x277CD9AD0];
  v76[2] = *MEMORY[0x277CD9B10];
  v76[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:4];
  [librarySpecificFetchOptions setFetchPropertySets:v8];

  v53 = librarySpecificFetchOptions;
  v9 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];
  v10 = objc_alloc_init(MEMORY[0x277D3C7A0]);
  fetchedObjects = [v9 fetchedObjects];
  v52 = v10;
  [v10 prepareAssets:fetchedObjects];

  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v64 objects:v75 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v65;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v65 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v64 + 1) + 8 * i);
        localIdentifier = [v18 localIdentifier];
        [v12 setObject:v18 forKeyedSubscript:localIdentifier];
      }

      v15 = [v13 countByEnumeratingWithState:&v64 objects:v75 count:16];
    }

    while (v15);
  }

  v51 = v13;

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = identifiersCopy;
  v20 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = *v61;
    v26 = 1.79769313e308;
    do
    {
      v27 = 0;
      v54 = v22;
      v28 = v26;
      v29 = v23;
      do
      {
        if (*v61 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v60 + 1) + 8 * v27);
        context = objc_autoreleasePoolPush();
        v31 = [v12 objectForKeyedSubscript:v30];
        v23 = v31;
        if (v22)
        {
          clsSimilarityModelVersion = [v31 clsSimilarityModelVersion];
          [(CLSSimilarStacker *)self->_similarStacker distanceBetweenItem:v23 andItem:v29];
          v26 = v33;
          if (self->_computeDiptychScores)
          {
            [(PGAssetComposabilityScoreComputer *)self composabilityScoreWithAssetDistance:clsSimilarityModelVersion similarityModelVersion:v33];
            [MEMORY[0x277CCABB0] numberWithDouble:?];
            v58 = v23;
            v34 = clsSimilarityModelVersion;
            v35 = v21;
            selfCopy = self;
            v37 = v25;
            v38 = v24;
            v40 = v39 = v12;
            [v56 addObject:v40];

            v12 = v39;
            v24 = v38;
            v25 = v37;
            self = selfCopy;
            v21 = v35;
            clsSimilarityModelVersion = v34;
            v23 = v58;
          }

          if (self->_computeTriptychScores && v22 != 1)
          {
            [(CLSSimilarStacker *)self->_similarStacker distanceBetweenItem:v23 andItem:v24];
            [(PGAssetComposabilityScoreComputer *)self composabilityScoreWithAssetDistance:clsSimilarityModelVersion andDistance:v28 andDistance:v26 similarityModelVersion:v41];
            v42 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            [v55 addObject:v42];
          }

          v43 = v29;

          v24 = v43;
          v28 = v26;
        }

        else
        {
          v26 = v28;
        }

        ++v22;
        objc_autoreleasePoolPop(context);
        ++v27;
        v29 = v23;
      }

      while (v21 != v27);
      v22 = v54 + v21;
      v21 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
    }

    while (v21);
  }

  else
  {
    v24 = 0;
  }

  v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v45 = v44;
  if (self->_computeDiptychScores)
  {
    [v44 setObject:v56 forKeyedSubscript:*MEMORY[0x277CD9A38]];
  }

  if (self->_computeTriptychScores)
  {
    [v45 setObject:v55 forKeyedSubscript:*MEMORY[0x277CD9A40]];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v46 = [v56 count];
    v47 = [v55 count];
    v48 = [obj count];
    *buf = 67109632;
    v69 = v46;
    v70 = 1024;
    v71 = v47;
    v72 = 1024;
    v73 = v48;
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "composabilityScoresOfAssetsForLocalIdentifiers returning %d diptych scores and %d triptych scores for %d input assets", buf, 0x14u);
  }

  v49 = *MEMORY[0x277D85DE8];

  return v45;
}

- (double)composabilityScoreWithAssetDistance:(double)distance andDistance:(double)andDistance andDistance:(double)a5 similarityModelVersion:(unint64_t)version
{
  [(PGAssetComposabilityScoreComputer *)self composabilityScoreWithAssetDistance:distance similarityModelVersion:?];
  v11 = v10;
  [(PGAssetComposabilityScoreComputer *)self composabilityScoreWithAssetDistance:version similarityModelVersion:andDistance];
  v13 = v12;
  [(PGAssetComposabilityScoreComputer *)self composabilityScoreWithAssetDistance:version similarityModelVersion:a5];
  return (v11 + v13 + v14) / 3.0;
}

- (double)composabilityScoreWithAssetDistance:(double)distance similarityModelVersion:(unint64_t)version
{
  [(PGAssetComposabilityScoreComputer *)self identicalSimilarityThresholdWithSimilarityModelVersion:?];
  v8 = v7;
  [(PGAssetComposabilityScoreComputer *)self semanticalSimilarityThresholdWithSimilarityModelVersion:version];
  v10 = (v9 - v8) * 0.1;
  v11 = v8 + v10;
  v12 = v8 - v10 >= distance || v11 <= distance;
  if (!v12)
  {
    return (distance - v8 + v10) / (v10 + v10);
  }

  v13 = v9 - v10;
  v17 = 1.0;
  if (v11 > distance || v13 < distance)
  {
    v17 = 0.0;
    if (v13 < distance)
    {
      v15 = v9 + v10;
      v12 = v15 <= distance;
      v16 = (v15 - distance) / (v10 + v10);
      if (!v12)
      {
        return v16;
      }
    }
  }

  return v17;
}

- (double)bestDistanceWithSimilarityModelVersion:(unint64_t)version
{
  [(PGAssetComposabilityScoreComputer *)self identicalSimilarityThresholdWithSimilarityModelVersion:?];
  v6 = v5;
  [(PGAssetComposabilityScoreComputer *)self semanticalSimilarityThresholdWithSimilarityModelVersion:version];
  return (v6 + v7) * 0.5;
}

- (id)initForTesting
{
  result = [(PGAssetComposabilityScoreComputer *)self initWithPhotoLibrary:0 options:MEMORY[0x277CBEC10]];
  if (result)
  {
    *(result + 12) = 257;
  }

  return result;
}

- (PGAssetComposabilityScoreComputer)initWithPhotoLibrary:(id)library options:(id)options
{
  libraryCopy = library;
  optionsCopy = options;
  v26.receiver = self;
  v26.super_class = PGAssetComposabilityScoreComputer;
  v9 = [(PGAssetComposabilityScoreComputer *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    v11 = [objc_alloc(MEMORY[0x277D277B8]) initWithSimilarityModelClass:objc_opt_class()];
    similarStacker = v10->_similarStacker;
    v10->_similarStacker = v11;

    v13 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CD9A18]];
    v10->_computeDiptychScores = [v13 BOOLValue];

    v14 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CD9A20]];
    v10->_computeTriptychScores = [v14 BOOLValue];

    v15 = *MEMORY[0x277CD9A28];
    v16 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CD9A28]];

    if (v16)
    {
      v17 = [optionsCopy objectForKeyedSubscript:v15];
      [v17 doubleValue];
      v19 = v18;

      [(CLSSimilarStacker *)v10->_similarStacker overrideDistanceThreshold:0 forSimilarity:v19];
      [(CLSSimilarStacker *)v10->_similarStacker overrideDistanceThreshold:1 forSimilarity:v19];
    }

    v20 = *MEMORY[0x277CD9A30];
    v21 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CD9A30]];

    if (v21)
    {
      v22 = [optionsCopy objectForKeyedSubscript:v20];
      [v22 doubleValue];
      v24 = v23;

      [(CLSSimilarStacker *)v10->_similarStacker overrideDistanceThreshold:2 forSimilarity:v24];
      [(CLSSimilarStacker *)v10->_similarStacker overrideDistanceThreshold:3 forSimilarity:v24];
      [(CLSSimilarStacker *)v10->_similarStacker overrideDistanceThreshold:4 forSimilarity:v24];
    }
  }

  return v10;
}

@end