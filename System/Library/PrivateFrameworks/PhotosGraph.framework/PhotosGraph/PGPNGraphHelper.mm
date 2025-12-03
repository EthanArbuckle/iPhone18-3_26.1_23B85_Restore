@interface PGPNGraphHelper
+ (id)_createSocialGraphWithPersonClusterManager:(id)manager persons:(id)persons moments:(id)moments inferredMePersonLocalIdentifier:(id *)identifier updateBlock:(id)block;
+ (id)_socialGroupsLocalIdentifiersInGraph:(id)graph includeMeNode:(BOOL)node includeCouples:(BOOL)couples includeInvalid:(BOOL)invalid;
+ (id)computeFTESocialGroupsWithPhotoLibrary:(id)library updateBlock:(id)block;
+ (id)densityClusteringForObjects:(id)objects maximumDistance:(double)distance minimumNumberOfObjects:(unint64_t)ofObjects withDistanceBlock:(id)block;
+ (id)multiLevelSocialGroupsWithPersonClusterManager:(id)manager forPersons:(id)persons updateBlock:(id)block;
+ (id)socialGroupsOverTheYearsWithPersonClusterManager:(id)manager forPersons:(id)persons updateBlock:(id)block;
@end

@implementation PGPNGraphHelper

+ (id)densityClusteringForObjects:(id)objects maximumDistance:(double)distance minimumNumberOfObjects:(unint64_t)ofObjects withDistanceBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  blockCopy = block;
  v11 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:blockCopy];
  [v11 setMaximumDistance:distance];
  [v11 setMinimumNumberOfObjects:ofObjects];
  v12 = [v11 performWithDataset:objectsCopy progressBlock:0];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        objects = [*(*(&v22 + 1) + 8 * i) objects];
        [v13 addObject:objects];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)socialGroupsOverTheYearsWithPersonClusterManager:(id)manager forPersons:(id)persons updateBlock:(id)block
{
  v73 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  personsCopy = persons;
  blockCopy = block;
  v48 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v51 = managerCopy;
  pn_fetchMoments = [managerCopy pn_fetchMoments];
  fetchedObjects = [pn_fetchMoments fetchedObjects];
  v10 = objc_opt_new();
  v52 = fetchedObjects;
  firstObject = [fetchedObjects firstObject];
  startDate = [firstObject startDate];

  v13 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v14 = pn_fetchMoments;
  v15 = [v14 countByEnumeratingWithState:&v57 objects:v72 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v58;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v57 + 1) + 8 * i);
        [v13 addObject:v19];
        startDate2 = [v19 startDate];
        [startDate2 timeIntervalSinceDate:startDate];
        if (v21 > 31556926.0 || ([v52 lastObject], v22 = objc_claimAutoreleasedReturnValue(), v22, v19 == v22))
        {
          v23 = [v13 copy];
          [v10 addObject:v23];

          v24 = startDate2;
          [v13 removeAllObjects];
          startDate = v24;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v57 objects:v72 count:16];
    }

    while (v16);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v10;
  v25 = [obj countByEnumeratingWithState:&v53 objects:v71 count:16];
  if (v25)
  {
    v26 = v25;
    v47 = *v54;
    v27 = off_27887B000;
    while (2)
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v54 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v53 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        v31 = [(__objc2_class *)v27[370] _createSocialGraphWithPersonClusterManager:v51 persons:personsCopy moments:v29 inferredMePersonLocalIdentifier:0 updateBlock:blockCopy];
        if (!v31)
        {
          objc_autoreleasePoolPop(v30);

          objc_autoreleasePoolPop(context);
          allObjects = MEMORY[0x277CBEBF8];
          v37 = v48;
          goto LABEL_23;
        }

        v32 = v31;
        v33 = v27;
        v34 = [(__objc2_class *)v27[370] _socialGroupsLocalIdentifiersInGraph:v31 includeMeNode:1 includeCouples:1 includeInvalid:1];
        [v48 addObjectsFromArray:v34];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v42 = [v29 count];
          firstObject2 = [v29 firstObject];
          startDate3 = [firstObject2 startDate];
          lastObject = [v29 lastObject];
          endDate = [lastObject endDate];
          v36 = [v34 count];
          *buf = 134219010;
          v62 = v42;
          v63 = 2112;
          v64 = startDate3;
          v65 = 2112;
          v66 = endDate;
          v67 = 2048;
          v68 = v36;
          v69 = 2112;
          v70 = v34;
          _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Created graph from %lu moments: %@ - %@.\nFound %lu social groups: %@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v30);
        v27 = v33;
      }

      v26 = [obj countByEnumeratingWithState:&v53 objects:v71 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  objc_autoreleasePoolPop(context);
  v37 = v48;
  allObjects = [v48 allObjects];
LABEL_23:

  v39 = *MEMORY[0x277D85DE8];

  return allObjects;
}

+ (id)multiLevelSocialGroupsWithPersonClusterManager:(id)manager forPersons:(id)persons updateBlock:(id)block
{
  v84 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  personsCopy = persons;
  blockCopy = block;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"highlyInteresting == YES"];
  v11 = [personsCopy filteredSetUsingPredicate:v10];

  if ([v11 count] <= 3)
  {
    v12 = personsCopy;

    v11 = v12;
  }

  v13 = objc_opt_new();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v75;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v75 != v17)
        {
          objc_enumerationMutation(v14);
        }

        backingMomentIdentifiers = [*(*(&v74 + 1) + 8 * i) backingMomentIdentifiers];
        [v13 unionSet:backingMomentIdentifiers];
      }

      v16 = [v14 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v16);
  }

  allObjects = [v13 allObjects];
  v21 = [managerCopy pn_fetchMomentsWithLocalIdentifiers:allObjects];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v49 = [v14 count];
    v50 = [v21 count];
    *buf = 134218240;
    v80 = v49;
    v81 = 2048;
    v82 = v50;
    _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Generating graph with %lu persons, %lu moments", buf, 0x16u);
  }

  v22 = blockCopy;
  v23 = [PGPNGraphHelper _createSocialGraphWithPersonClusterManager:managerCopy persons:v14 moments:v21 inferredMePersonLocalIdentifier:0 updateBlock:blockCopy];
  v24 = v23;
  if (!v23)
  {
    v48 = MEMORY[0x277CBEBF8];
    goto LABEL_44;
  }

  v64 = personsCopy;
  meNode = [v23 meNode];
  localIdentifier = [meNode localIdentifier];

  v27 = [PGPNGraphHelper _socialGroupsLocalIdentifiersInGraph:v24 includeMeNode:1 includeCouples:1 includeInvalid:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = [v27 count];
    *buf = 134218242;
    v80 = v28;
    v81 = 2112;
    v82 = v27;
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Found %lu social groups, %@", buf, 0x16u);
  }

  if ([v27 count])
  {
    v29 = MEMORY[0x277CCAC30];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __89__PGPNGraphHelper_multiLevelSocialGroupsWithPersonClusterManager_forPersons_updateBlock___block_invoke;
    v71[3] = &unk_2788844E8;
    v63 = v27;
    v72 = v63;
    localIdentifier = localIdentifier;
    v73 = localIdentifier;
    v30 = [v29 predicateWithBlock:v71];
    v31 = [v64 filteredSetUsingPredicate:v30];

    if ([v31 count] < 3)
    {
      v44 = 1;
    }

    else
    {
      v58 = v24;
      v59 = v21;
      v60 = v22;
      v61 = managerCopy;
      v65 = objc_opt_new();
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v62 = v31;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v67 objects:v78 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v68;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v68 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v67 + 1) + 8 * j);
            localIdentifier2 = [v37 localIdentifier];
            v39 = [localIdentifier2 isEqualToString:localIdentifier];

            if ((v39 & 1) == 0)
            {
              backingMomentIdentifiers2 = [v37 backingMomentIdentifiers];
              [v65 unionSet:backingMomentIdentifiers2];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v67 objects:v78 count:16];
        }

        while (v34);
      }

      allObjects2 = [v65 allObjects];
      managerCopy = v61;
      v42 = [v61 pn_fetchMomentsWithLocalIdentifiers:allObjects2];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v54 = [v32 count];
        v55 = [v42 count];
        *buf = 134218240;
        v80 = v54;
        v81 = 2048;
        v82 = v55;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Generating extra graph with %lu persons, %lu moments", buf, 0x16u);
      }

      v66 = localIdentifier;
      v57 = v42;
      v22 = v60;
      v43 = [PGPNGraphHelper _createSocialGraphWithPersonClusterManager:v61 persons:v32 moments:v42 inferredMePersonLocalIdentifier:&v66 updateBlock:v60];
      v56 = v66;

      v44 = v43 != 0;
      v31 = v62;
      if (v43)
      {
        v45 = [PGPNGraphHelper _socialGroupsLocalIdentifiersInGraph:v43 includeMeNode:1 includeCouples:0 includeInvalid:0];
        if ([v45 count])
        {
          v46 = [v63 arrayByAddingObjectsFromArray:v45];

          v24 = v58;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v47 = [v45 count];
            *buf = 134218242;
            v80 = v47;
            v81 = 2112;
            v82 = v45;
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Adding %lu extra social groups, %@", buf, 0x16u);
          }

          v31 = v62;
        }

        else
        {
          v46 = v63;
          v24 = v58;
        }

        v63 = v46;
      }

      else
      {
        v24 = v58;
      }

      localIdentifier = v56;
      v21 = v59;
    }

    if (!v44)
    {
      v48 = MEMORY[0x277CBEBF8];
      v51 = v63;
      goto LABEL_43;
    }

    v27 = v63;
  }

  v51 = v27;
  v48 = v51;
LABEL_43:

  personsCopy = v64;
LABEL_44:

  v52 = *MEMORY[0x277D85DE8];

  return v48;
}

uint64_t __89__PGPNGraphHelper_multiLevelSocialGroupsWithPersonClusterManager_forPersons_updateBlock___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 localIdentifier];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v12 + 1) + 8 * v8) containsObject:{v3, v12}] && !objc_msgSend(v3, "isEqualToString:", *(a1 + 40)))
        {
          v9 = 0;
          goto LABEL_12;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)computeFTESocialGroupsWithPhotoLibrary:(id)library updateBlock:(id)block
{
  v54 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  blockCopy = block;
  v7 = objc_alloc(MEMORY[0x277D3C7F0]);
  v8 = [v7 initWithPhotoLibrary:libraryCopy rawClusters:MEMORY[0x277CBEC10] includesPets:1];
  v9 = [objc_alloc(MEMORY[0x277D3C7E0]) initWithPhotoLibrary:v8];
  v10 = [v9 pn_fetchPersonsWithType:1];
  v11 = MEMORY[0x277CBEB58];
  v39 = v10;
  fetchedObjects = [v10 fetchedObjects];
  v13 = [v11 setWithArray:fetchedObjects];

  v14 = objc_opt_new();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(v15);
        }

        backingMomentIdentifiers = [*(*(&v45 + 1) + 8 * i) backingMomentIdentifiers];
        [v14 unionSet:backingMomentIdentifiers];
      }

      v17 = [v15 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v17);
  }

  allObjects = [v14 allObjects];
  v22 = [v9 pn_fetchMomentsWithLocalIdentifiers:allObjects];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v34 = [v15 count];
    v35 = [v22 count];
    *buf = 134218240;
    v50 = v34;
    v51 = 2048;
    v52 = v35;
    _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Generating graph with %lu persons, %lu moments", buf, 0x16u);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __70__PGPNGraphHelper_computeFTESocialGroupsWithPhotoLibrary_updateBlock___block_invoke;
  v43[3] = &unk_2788844C0;
  v23 = blockCopy;
  v44 = v23;
  v40 = v9;
  v24 = [PGPNGraphHelper _createSocialGraphWithPersonClusterManager:v9 persons:v15 moments:v22 inferredMePersonLocalIdentifier:0 updateBlock:v43];
  if (v24)
  {
    v36 = [[PGManager alloc] initWithGraph:v24 photoLibrary:libraryCopy];
    v25 = [[PGGraphBuilder alloc] initWithGraph:v24 manager:v36];
    v26 = [[PGGraphIngestSocialGroupsProcessor alloc] initWithGraphBuilder:v25];
    v37 = libraryCopy;
    v38 = v8;
    v27 = [[PGGraphUpdate alloc] initWithPhotoLibrary:libraryCopy updateType:3];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __70__PGPNGraphHelper_computeFTESocialGroupsWithPhotoLibrary_updateBlock___block_invoke_2;
    v41[3] = &unk_27888A280;
    v42 = v23;
    [(PGGraphIngestSocialGroupsProcessor *)v26 runWithGraphUpdate:v27 progressBlock:v41];
    [(PGGraphIngestSocialGroupsProcessor *)v26 persistenceActions];
    v29 = v28 = v22;
    if (v29)
    {
      v30 = v24;
    }

    else
    {
      v30 = 0;
    }

    v31 = v30;

    v22 = v28;
    libraryCopy = v37;
    v8 = v38;
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)_socialGroupsLocalIdentifiersInGraph:(id)graph includeMeNode:(BOOL)node includeCouples:(BOOL)couples includeInvalid:(BOOL)invalid
{
  graphCopy = graph;
  v10 = objc_opt_new();
  meNode = [graphCopy meNode];
  localIdentifier = [meNode localIdentifier];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke;
  aBlock[3] = &unk_278884498;
  couplesCopy = couples;
  nodeCopy = node;
  v26 = localIdentifier;
  v13 = v10;
  v27 = v13;
  v14 = localIdentifier;
  v15 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke_2;
  v23[3] = &unk_2788861E0;
  v24 = v15;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke_3;
  v20[3] = &unk_278886208;
  invalidCopy = invalid;
  v21 = v24;
  v16 = v24;
  [graphCopy enumerateSocialGroupsIncludingMeNode:0 validGroupsBlock:v23 invalidGroupsBlock:v20 averageWeight:0];

  v17 = v21;
  v18 = v13;

  return v13;
}

void __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) localIdentifier];
        [v4 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if ((*(a1 + 48) & 1) != 0 || [v4 count] >= 2)
  {
    if (*(a1 + 49) == 1 && [*(a1 + 32) length])
    {
      [v4 addObject:*(a1 + 32)];
    }

    [*(a1 + 40) addObject:{v4, v12}];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke_3(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

+ (id)_createSocialGraphWithPersonClusterManager:(id)manager persons:(id)persons moments:(id)moments inferredMePersonLocalIdentifier:(id *)identifier updateBlock:(id)block
{
  v111 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  personsCopy = persons;
  momentsCopy = moments;
  blockCopy = block;
  if (!momentsCopy)
  {
    momentsCopy = [managerCopy pn_fetchMoments];
  }

  v13 = objc_alloc_init(PGMutableGraph);
  v72 = managerCopy;
  if (identifier)
  {
    v81 = *identifier;
  }

  else
  {
    v81 = 0;
  }

  v99 = 0;
  v14 = [momentsCopy count];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v15 = momentsCopy;
  v75 = [v15 countByEnumeratingWithState:&v95 objects:v110 count:16];
  if (v75)
  {
    v74 = *v96;
    v16 = 0.0 / v14;
    v82 = v13;
    v73 = v15;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v96 != v74)
        {
          objc_enumerationMutation(v15);
        }

        v18 = *(*(&v95 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, &v99, v16);
        if (v99)
        {
          objc_autoreleasePoolPop(v19);

          v58 = 0;
          v55 = v72;
          goto LABEL_43;
        }

        context = v19;
        v80 = v17;
        v108[0] = @"utcs";
        v20 = MEMORY[0x277CCABB0];
        obja = [v18 startDate];
        [obja timeIntervalSince1970];
        v84 = [v20 numberWithDouble:?];
        v109[0] = v84;
        v108[1] = @"utce";
        v21 = MEMORY[0x277CCABB0];
        endDate = [v18 endDate];
        [endDate timeIntervalSince1970];
        v23 = [v21 numberWithDouble:?];
        v109[1] = v23;
        v108[2] = @"tzs";
        v24 = MEMORY[0x277CCABB0];
        startDate = [v18 startDate];
        [startDate timeIntervalSince1970];
        v26 = [v24 numberWithDouble:?];
        v109[2] = v26;
        v108[3] = @"tze";
        v27 = MEMORY[0x277CCABB0];
        endDate2 = [v18 endDate];
        [endDate2 timeIntervalSince1970];
        v29 = [v27 numberWithDouble:?];
        v109[3] = v29;
        v108[4] = @"cnt";
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "estimatedAssetCount")}];
        v109[4] = v30;
        v108[5] = @"lclid";
        localIdentifier = [v18 localIdentifier];
        v109[5] = localIdentifier;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:6];

        v13 = v82;
        v78 = v32;
        v83 = [(PGMutableGraph *)v82 addUniqueNodeWithLabel:@"Moment" domain:100 properties:v32 didCreate:0];
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        obj = personsCopy;
        v33 = [obj countByEnumeratingWithState:&v91 objects:v107 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v92;
          do
          {
            v36 = 0;
            v85 = v34;
            do
            {
              if (*v92 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v91 + 1) + 8 * v36);
              v38 = objc_autoreleasePoolPush();
              backingMomentIdentifiers = [v37 backingMomentIdentifiers];
              localIdentifier2 = [v18 localIdentifier];
              v41 = [backingMomentIdentifiers containsObject:localIdentifier2];

              if (v41)
              {
                v42 = v18;
                anonymizedName = [v37 anonymizedName];
                v44 = anonymizedName;
                v45 = &stru_2843F5C58;
                if (anonymizedName)
                {
                  v45 = anonymizedName;
                }

                v46 = v45;

                localIdentifier3 = [v37 localIdentifier];
                v105[0] = @"name";
                v105[1] = @"id";
                v106[0] = v46;
                v106[1] = localIdentifier3;
                v105[2] = @"usercreated";
                v48 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v37, "isVerified")}];
                v106[2] = v48;
                v105[3] = @"fav";
                v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v37, "favorite")}];
                v106[3] = v49;
                v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:4];

                if (v81)
                {
                  localIdentifier4 = [v37 localIdentifier];
                  v52 = [v81 isEqualToString:localIdentifier4];

                  if (v52)
                  {
                    v53 = @"Me";
                  }

                  else
                  {
                    v53 = @"People";
                  }
                }

                else
                {
                  v53 = @"People";
                }

                v13 = v82;
                v54 = [(PGMutableGraph *)v82 addUniqueNodeWithLabel:v53 domain:300 properties:v50 didCreate:0];
                [(PGMutableGraph *)v82 addUniqueEdgeWithLabel:@"PRESENT" sourceNode:v54 targetNode:v83 domain:300 properties:0];

                v18 = v42;
                v34 = v85;
              }

              objc_autoreleasePoolPop(v38);
              ++v36;
            }

            while (v34 != v36);
            v34 = [obj countByEnumeratingWithState:&v91 objects:v107 count:16];
          }

          while (v34);
        }

        objc_autoreleasePoolPop(context);
        v17 = v80 + 1;
        v15 = v73;
      }

      while (v80 + 1 != v75);
      v75 = [v73 countByEnumeratingWithState:&v95 objects:v110 count:16];
      if (v75)
      {
        continue;
      }

      break;
    }
  }

  v55 = v72;
  if (!v81)
  {
    inferMeNodeFromSocialGroups = [(PGGraph *)v13 inferMeNodeFromSocialGroups];
    if (inferMeNodeFromSocialGroups)
    {
      v57 = inferMeNodeFromSocialGroups;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v101 = v57;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "inferredMeNode found %@", buf, 0xCu);
      }

      if (v71)
      {
        *v71 = [v57 localIdentifier];
      }
    }

    else
    {
      if (![personsCopy count])
      {
        goto LABEL_42;
      }

      v59 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceCount" ascending:0];
      v104 = v59;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
      v61 = [personsCopy sortedArrayUsingDescriptors:v60];

      firstObject = [v61 firstObject];
      localIdentifier5 = [firstObject localIdentifier];
      v57 = [(PGGraph *)v13 personNodeForPersonLocalIdentifier:localIdentifier5];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v101 = v57;
        v102 = 2112;
        v103 = firstObject;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "inferredMeNode fallback found %@ - backing person: %@", buf, 0x16u);
      }

      if (!v57)
      {
        goto LABEL_42;
      }
    }

    propertyDictionary = [v57 propertyDictionary];
    v65 = [(PGMutableGraph *)v13 addUniqueNodeWithLabel:@"Me" domain:300 properties:propertyDictionary didCreate:0];

    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __122__PGPNGraphHelper__createSocialGraphWithPersonClusterManager_persons_moments_inferredMePersonLocalIdentifier_updateBlock___block_invoke;
    v88[3] = &unk_278885D60;
    v66 = v13;
    v89 = v66;
    v90 = v65;
    v67 = v65;
    [v57 enumerateEdgesWithLabel:@"PRESENT" domain:300 usingBlock:v88];
    v68 = objc_alloc_init(MEMORY[0x277D22C50]);
    [v68 removeNode:v57];
    [(MAGraph *)v66 executeGraphChangeRequest:v68];
  }

LABEL_42:
  v58 = v13;
LABEL_43:

  v69 = *MEMORY[0x277D85DE8];

  return v58;
}

void __122__PGPNGraphHelper__createSocialGraphWithPersonClusterManager_persons_moments_inferredMePersonLocalIdentifier_updateBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 targetNode];
  v5 = [v2 addUniqueEdgeWithLabel:@"PRESENT" sourceNode:v3 targetNode:v4 domain:300 properties:0];
}

@end