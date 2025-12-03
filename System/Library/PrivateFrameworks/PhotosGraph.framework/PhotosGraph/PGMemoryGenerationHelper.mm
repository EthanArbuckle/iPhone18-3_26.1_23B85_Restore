@interface PGMemoryGenerationHelper
+ (BOOL)dates:(id)dates passSpreadicityWithMinimumCardinal:(unint64_t)cardinal minimumTimeInterval:(double)interval;
+ (BOOL)prepareAssets:(id)assets forMemoriesWithTopTierAestheticScore:(double)score curationContext:(id)context;
+ (id)assetFetchResultForMomentNodes:(id)nodes inLocationOrAreaNode:(id)node requireInteresting:(BOOL)interesting curationManager:(id)manager progressReporter:(id)reporter;
+ (id)assetLocalIdentifiersFromAssets:(id)assets;
+ (id)assetUUIDsFromAssets:(id)assets;
+ (id)feederForMemoriesWithAssetFetchResult:(id)result memoryCurationSession:(id)session graph:(id)graph;
+ (id)feederForMemoriesWithFeeder:(id)feeder topTierAestheticScore:(double)score didFeederChange:(BOOL *)change curationContext:(id)context;
+ (id)scoringContextForMemoriesWithAssets:(id)assets withTopTierAestheticScore:(double)score;
@end

@implementation PGMemoryGenerationHelper

+ (BOOL)dates:(id)dates passSpreadicityWithMinimumCardinal:(unint64_t)cardinal minimumTimeInterval:(double)interval
{
  v94 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  if ([datesCopy count] >= cardinal)
  {
    v9 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_284485BB0];
    [v9 setK:cardinal];
    allObjects = [datesCopy allObjects];
    v11 = [v9 performWithDataset:allObjects progressBlock:&__block_literal_global_36129];

    if ([v11 count] >= cardinal)
    {
      cardinalCopy = cardinal;
      v56 = v9;
      v57 = datesCopy;
      v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v55 = v11;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v75 objects:v93 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v76;
        v16 = 1.79769313e308;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v76 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v75 + 1) + 8 * i);
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            objects = [v18 objects];
            v20 = [objects countByEnumeratingWithState:&v71 objects:v92 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = 0;
              v23 = *v72;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v72 != v23)
                  {
                    objc_enumerationMutation(objects);
                  }

                  v25 = *(*(&v71 + 1) + 8 * j);
                  if (v22)
                  {
                    v26 = [v22 earlierDate:v25];

                    v22 = v26;
                  }

                  else
                  {
                    v22 = v25;
                  }
                }

                v21 = [objects countByEnumeratingWithState:&v71 objects:v92 count:16];
              }

              while (v21);
            }

            else
            {
              v22 = 0;
            }

            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v27 = v58;
            v28 = [v27 countByEnumeratingWithState:&v67 objects:v91 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v68;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v68 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  [v22 timeIntervalSinceDate:*(*(&v67 + 1) + 8 * k)];
                  v33 = fabs(v32);
                  if (v16 >= v33)
                  {
                    v16 = v33;
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v67 objects:v91 count:16];
              }

              while (v29);
            }

            if (v22)
            {
              [v27 addObject:v22];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v75 objects:v93 count:16];
        }

        while (v14);
      }

      else
      {
        v16 = 1.79769313e308;
      }

      v34 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v34 setTimeStyle:0];
      [v34 setDateStyle:1];
      v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v36 = [v58 sortedArrayUsingSelector:sel_compare_];
      v37 = [v36 countByEnumeratingWithState:&v63 objects:v90 count:16];
      datesCopy = v57;
      if (v37)
      {
        v38 = v37;
        v39 = *v64;
        do
        {
          for (m = 0; m != v38; ++m)
          {
            if (*v64 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = [v34 stringFromDate:*(*(&v63 + 1) + 8 * m)];
            [v35 addObject:v41];
          }

          v38 = [v36 countByEnumeratingWithState:&v63 objects:v90 count:16];
        }

        while (v38);
      }

      v42 = [v35 componentsJoinedByString:{@", "}];
      v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      allObjects2 = [v57 allObjects];
      v45 = [allObjects2 sortedArrayUsingSelector:sel_compare_];

      v46 = [v45 countByEnumeratingWithState:&v59 objects:v89 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v60;
        do
        {
          for (n = 0; n != v47; ++n)
          {
            if (*v60 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = [v34 stringFromDate:*(*(&v59 + 1) + 8 * n)];
            [v43 addObject:v50];
          }

          v47 = [v45 countByEnumeratingWithState:&v59 objects:v89 count:16];
        }

        while (v47);
      }

      v51 = [v43 componentsJoinedByString:{@", "}];
      v8 = v16 >= interval;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 67110146;
        v80 = v16 >= interval;
        v81 = 1024;
        v82 = cardinalCopy;
        v83 = 1024;
        v84 = (interval / 86400.0);
        v85 = 2112;
        v86 = v42;
        v87 = 2112;
        v88 = v51;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "passesSpreadicity %d for cardinal %d, interval %d days, with consolidated dates %@\n\toriginal dates %@", buf, 0x28u);
      }

      v11 = v55;
      v9 = v56;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v52 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)assetFetchResultForMomentNodes:(id)nodes inLocationOrAreaNode:(id)node requireInteresting:(BOOL)interesting curationManager:(id)manager progressReporter:(id)reporter
{
  interestingCopy = interesting;
  v48 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  nodeCopy = node;
  managerCopy = manager;
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v47 = 130;
      *&v47[4] = 2080;
      *&v47[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/PGMemoryGenerationHelper.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v15 = 0;
    goto LABEL_23;
  }

  label = [nodeCopy label];
  v17 = [label isEqualToString:@"City"];
  v18 = [label isEqualToString:@"Area"];
  v19 = [label isEqualToString:@"State"];
  defaultAssetFetchOptionsForMemories = [managerCopy defaultAssetFetchOptionsForMemories];
  v45 = nodesCopy;
  v21 = nodesCopy;
  v22 = v21;
  v44 = managerCopy;
  if (interestingCopy)
  {
    interestingSubset = [v21 interestingSubset];

    v22 = interestingSubset;
  }

  v24 = MEMORY[0x277CCAC30];
  uuids = [v22 uuids];
  v26 = [v24 predicateWithFormat:@"%K IN %@", @"moment.uuid", uuids];
  [defaultAssetFetchOptionsForMemories setInternalPredicate:v26];

  v27 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:defaultAssetFetchOptionsForMemories];
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = v27;
  v43 = label;
  if (v17)
  {
    fetchedObjects = [v27 fetchedObjects];
    collection = [nodeCopy collection];
    v31 = [PGCurationManager filterAssets:fetchedObjects inMomentNodes:v22 forCityNodes:collection withMaximumDistance:5000.0];
  }

  else if (v18)
  {
    fetchedObjects = [v27 fetchedObjects];
    collection = [nodeCopy collection];
    v31 = [PGCurationManager filterAssets:fetchedObjects inMomentNodes:v22 forAreaNodes:collection withMaximumDistance:20000.0];
  }

  else
  {
    if (!v19)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *v47 = "+[PGMemoryGenerationHelper assetFetchResultForMomentNodes:inLocationOrAreaNode:requireInteresting:curationManager:progressReporter:]";
        *&v47[8] = 2112;
        *&v47[10] = label;
        _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s called for location node %@, see rdar://75269533", buf, 0x16u);
      }

      fetchedObjects2 = [v27 fetchedObjects];
      goto LABEL_14;
    }

    fetchedObjects = [v27 fetchedObjects];
    collection = [nodeCopy collection];
    v31 = [PGCurationManager filterAssets:fetchedObjects inMomentNodes:v22 forStateNodes:collection withMaximumDistance:5000.0];
  }

  fetchedObjects2 = v31;

LABEL_14:
  v33 = nodeCopy;
  [v28 addObjectsFromArray:fetchedObjects2];
  if ([v28 count])
  {
    v34 = objc_alloc(MEMORY[0x277CD98D0]);
    photoLibrary = [defaultAssetFetchOptionsForMemories photoLibrary];
    v36 = MEMORY[0x277CBEB98];
    fetchPropertySets = [defaultAssetFetchOptionsForMemories fetchPropertySets];
    v38 = [v36 setWithArray:fetchPropertySets];
    v39 = [v34 initWithObjects:v28 photoLibrary:photoLibrary fetchType:0 fetchPropertySets:v38 identifier:0 registerIfNeeded:0];
  }

  else
  {
    v39 = 0;
  }

  managerCopy = v44;
  if ([reporterCopy isCancelledWithProgress:1.0])
  {
    nodeCopy = v33;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v47 = 168;
      *&v47[4] = 2080;
      *&v47[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Memories/Memory Generators/PGMemoryGenerationHelper.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v15 = 0;
  }

  else
  {
    v15 = v39;
    nodeCopy = v33;
  }

  nodesCopy = v45;
LABEL_23:

  v40 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)assetLocalIdentifiersFromAssets:(id)assets
{
  v18 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        localIdentifier = [*(*(&v13 + 1) + 8 * i) localIdentifier];
        [v4 addObject:localIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetUUIDsFromAssets:(id)assets
{
  v18 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uuid = [*(*(&v13 + 1) + 8 * i) uuid];
        [v4 addObject:uuid];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (BOOL)prepareAssets:(id)assets forMemoriesWithTopTierAestheticScore:(double)score curationContext:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  contextCopy = context;
  v10 = [self scoringContextForMemoriesWithAssets:assetsCopy withTopTierAestheticScore:score];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = assetsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v14 |= [*(*(&v19 + 1) + 8 * i) prepareWithAlternateJunkingHeuristics:1 withContext:v10 curationContext:contextCopy blockSocialMediaImportedAssets:{PGMemoryGenerationBlockSocialMediaImportedAssets, v19}];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

+ (id)scoringContextForMemoriesWithAssets:(id)assets withTopTierAestheticScore:(double)score
{
  v4 = [MEMORY[0x277D3C7A0] scoringContextWithAssets:assets aestheticScoreThresholdToBeAwesome:score];
  [v4 setShouldEmphasizePanorama:0];

  return v4;
}

+ (id)feederForMemoriesWithFeeder:(id)feeder topTierAestheticScore:(double)score didFeederChange:(BOOL *)change curationContext:(id)context
{
  feederCopy = feeder;
  contextCopy = context;
  allItems = [feederCopy allItems];
  v13 = [self prepareAssets:allItems forMemoriesWithTopTierAestheticScore:contextCopy curationContext:score];

  if (change)
  {
    *change = v13;
  }

  return feederCopy;
}

+ (id)feederForMemoriesWithAssetFetchResult:(id)result memoryCurationSession:(id)session graph:(id)graph
{
  resultCopy = result;
  sessionCopy = session;
  graphCopy = graph;
  if ([resultCopy count])
  {
    fetchPropertySets = [resultCopy fetchPropertySets];
    v12 = MEMORY[0x277CD97A8];
    curationContext = [sessionCopy curationContext];
    v14 = [v12 clsAllAssetsFromFetchResult:resultCopy prefetchOptions:31 curationContext:curationContext];

    infoNode = [graphCopy infoNode];
    [infoNode topTierAestheticScore];
    v17 = v16;
    curationContext2 = [sessionCopy curationContext];
    [self prepareAssets:v14 forMemoriesWithTopTierAestheticScore:curationContext2 curationContext:v17];

    v19 = objc_alloc(MEMORY[0x277CD98D0]);
    photoLibrary = [resultCopy photoLibrary];
    fetchType = [resultCopy fetchType];
    v22 = [v19 initWithObjects:v14 photoLibrary:photoLibrary fetchType:fetchType fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

    v23 = objc_alloc(MEMORY[0x277D27710]);
    curationContext3 = [sessionCopy curationContext];
    v25 = [v23 initWithAssetFetchResult:v22 curationContext:curationContext3];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end