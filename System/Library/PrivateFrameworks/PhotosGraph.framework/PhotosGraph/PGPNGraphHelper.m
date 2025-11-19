@interface PGPNGraphHelper
+ (id)_createSocialGraphWithPersonClusterManager:(id)a3 persons:(id)a4 moments:(id)a5 inferredMePersonLocalIdentifier:(id *)a6 updateBlock:(id)a7;
+ (id)_socialGroupsLocalIdentifiersInGraph:(id)a3 includeMeNode:(BOOL)a4 includeCouples:(BOOL)a5 includeInvalid:(BOOL)a6;
+ (id)computeFTESocialGroupsWithPhotoLibrary:(id)a3 updateBlock:(id)a4;
+ (id)densityClusteringForObjects:(id)a3 maximumDistance:(double)a4 minimumNumberOfObjects:(unint64_t)a5 withDistanceBlock:(id)a6;
+ (id)multiLevelSocialGroupsWithPersonClusterManager:(id)a3 forPersons:(id)a4 updateBlock:(id)a5;
+ (id)socialGroupsOverTheYearsWithPersonClusterManager:(id)a3 forPersons:(id)a4 updateBlock:(id)a5;
@end

@implementation PGPNGraphHelper

+ (id)densityClusteringForObjects:(id)a3 maximumDistance:(double)a4 minimumNumberOfObjects:(unint64_t)a5 withDistanceBlock:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:v10];
  [v11 setMaximumDistance:a4];
  [v11 setMinimumNumberOfObjects:a5];
  v12 = [v11 performWithDataset:v9 progressBlock:0];
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

        v19 = [*(*(&v22 + 1) + 8 * i) objects];
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)socialGroupsOverTheYearsWithPersonClusterManager:(id)a3 forPersons:(id)a4 updateBlock:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v50 = a4;
  v49 = a5;
  v48 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v51 = v7;
  v8 = [v7 pn_fetchMoments];
  v9 = [v8 fetchedObjects];
  v10 = objc_opt_new();
  v52 = v9;
  v11 = [v9 firstObject];
  v12 = [v11 startDate];

  v13 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v14 = v8;
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
        v20 = [v19 startDate];
        [v20 timeIntervalSinceDate:v12];
        if (v21 > 31556926.0 || ([v52 lastObject], v22 = objc_claimAutoreleasedReturnValue(), v22, v19 == v22))
        {
          v23 = [v13 copy];
          [v10 addObject:v23];

          v24 = v20;
          [v13 removeAllObjects];
          v12 = v24;
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
        v31 = [(__objc2_class *)v27[370] _createSocialGraphWithPersonClusterManager:v51 persons:v50 moments:v29 inferredMePersonLocalIdentifier:0 updateBlock:v49];
        if (!v31)
        {
          objc_autoreleasePoolPop(v30);

          objc_autoreleasePoolPop(context);
          v38 = MEMORY[0x277CBEBF8];
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
          v44 = [v29 firstObject];
          v45 = [v44 startDate];
          v43 = [v29 lastObject];
          v35 = [v43 endDate];
          v36 = [v34 count];
          *buf = 134219010;
          v62 = v42;
          v63 = 2112;
          v64 = v45;
          v65 = 2112;
          v66 = v35;
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
  v38 = [v48 allObjects];
LABEL_23:

  v39 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (id)multiLevelSocialGroupsWithPersonClusterManager:(id)a3 forPersons:(id)a4 updateBlock:(id)a5
{
  v84 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"highlyInteresting == YES"];
  v11 = [v8 filteredSetUsingPredicate:v10];

  if ([v11 count] <= 3)
  {
    v12 = v8;

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

        v19 = [*(*(&v74 + 1) + 8 * i) backingMomentIdentifiers];
        [v13 unionSet:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v16);
  }

  v20 = [v13 allObjects];
  v21 = [v7 pn_fetchMomentsWithLocalIdentifiers:v20];

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

  v22 = v9;
  v23 = [PGPNGraphHelper _createSocialGraphWithPersonClusterManager:v7 persons:v14 moments:v21 inferredMePersonLocalIdentifier:0 updateBlock:v9];
  v24 = v23;
  if (!v23)
  {
    v48 = MEMORY[0x277CBEBF8];
    goto LABEL_44;
  }

  v64 = v8;
  v25 = [v23 meNode];
  v26 = [v25 localIdentifier];

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
    v26 = v26;
    v73 = v26;
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
      v61 = v7;
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
            v38 = [v37 localIdentifier];
            v39 = [v38 isEqualToString:v26];

            if ((v39 & 1) == 0)
            {
              v40 = [v37 backingMomentIdentifiers];
              [v65 unionSet:v40];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v67 objects:v78 count:16];
        }

        while (v34);
      }

      v41 = [v65 allObjects];
      v7 = v61;
      v42 = [v61 pn_fetchMomentsWithLocalIdentifiers:v41];

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

      v66 = v26;
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

      v26 = v56;
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

  v8 = v64;
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

+ (id)computeFTESocialGroupsWithPhotoLibrary:(id)a3 updateBlock:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc(MEMORY[0x277D3C7F0]);
  v8 = [v7 initWithPhotoLibrary:v5 rawClusters:MEMORY[0x277CBEC10] includesPets:1];
  v9 = [objc_alloc(MEMORY[0x277D3C7E0]) initWithPhotoLibrary:v8];
  v10 = [v9 pn_fetchPersonsWithType:1];
  v11 = MEMORY[0x277CBEB58];
  v39 = v10;
  v12 = [v10 fetchedObjects];
  v13 = [v11 setWithArray:v12];

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

        v20 = [*(*(&v45 + 1) + 8 * i) backingMomentIdentifiers];
        [v14 unionSet:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v17);
  }

  v21 = [v14 allObjects];
  v22 = [v9 pn_fetchMomentsWithLocalIdentifiers:v21];

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
  v23 = v6;
  v44 = v23;
  v40 = v9;
  v24 = [PGPNGraphHelper _createSocialGraphWithPersonClusterManager:v9 persons:v15 moments:v22 inferredMePersonLocalIdentifier:0 updateBlock:v43];
  if (v24)
  {
    v36 = [[PGManager alloc] initWithGraph:v24 photoLibrary:v5];
    v25 = [[PGGraphBuilder alloc] initWithGraph:v24 manager:v36];
    v26 = [[PGGraphIngestSocialGroupsProcessor alloc] initWithGraphBuilder:v25];
    v37 = v5;
    v38 = v8;
    v27 = [[PGGraphUpdate alloc] initWithPhotoLibrary:v5 updateType:3];
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
    v5 = v37;
    v8 = v38;
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)_socialGroupsLocalIdentifiersInGraph:(id)a3 includeMeNode:(BOOL)a4 includeCouples:(BOOL)a5 includeInvalid:(BOOL)a6
{
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [v9 meNode];
  v12 = [v11 localIdentifier];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__PGPNGraphHelper__socialGroupsLocalIdentifiersInGraph_includeMeNode_includeCouples_includeInvalid___block_invoke;
  aBlock[3] = &unk_278884498;
  v28 = a5;
  v29 = a4;
  v26 = v12;
  v13 = v10;
  v27 = v13;
  v14 = v12;
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
  v22 = a6;
  v21 = v24;
  v16 = v24;
  [v9 enumerateSocialGroupsIncludingMeNode:0 validGroupsBlock:v23 invalidGroupsBlock:v20 averageWeight:0];

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

+ (id)_createSocialGraphWithPersonClusterManager:(id)a3 persons:(id)a4 moments:(id)a5 inferredMePersonLocalIdentifier:(id *)a6 updateBlock:(id)a7
{
  v111 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v76 = a4;
  v12 = a5;
  v77 = a7;
  if (!v12)
  {
    v12 = [v11 pn_fetchMoments];
  }

  v13 = objc_alloc_init(PGMutableGraph);
  v72 = v11;
  if (a6)
  {
    v81 = *a6;
  }

  else
  {
    v81 = 0;
  }

  v99 = 0;
  v14 = [v12 count];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v15 = v12;
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
        v77[2](v77, &v99, v16);
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
        v22 = [v18 endDate];
        [v22 timeIntervalSince1970];
        v23 = [v21 numberWithDouble:?];
        v109[1] = v23;
        v108[2] = @"tzs";
        v24 = MEMORY[0x277CCABB0];
        v25 = [v18 startDate];
        [v25 timeIntervalSince1970];
        v26 = [v24 numberWithDouble:?];
        v109[2] = v26;
        v108[3] = @"tze";
        v27 = MEMORY[0x277CCABB0];
        v28 = [v18 endDate];
        [v28 timeIntervalSince1970];
        v29 = [v27 numberWithDouble:?];
        v109[3] = v29;
        v108[4] = @"cnt";
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "estimatedAssetCount")}];
        v109[4] = v30;
        v108[5] = @"lclid";
        v31 = [v18 localIdentifier];
        v109[5] = v31;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:6];

        v13 = v82;
        v78 = v32;
        v83 = [(PGMutableGraph *)v82 addUniqueNodeWithLabel:@"Moment" domain:100 properties:v32 didCreate:0];
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        obj = v76;
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
              v39 = [v37 backingMomentIdentifiers];
              v40 = [v18 localIdentifier];
              v41 = [v39 containsObject:v40];

              if (v41)
              {
                v42 = v18;
                v43 = [v37 anonymizedName];
                v44 = v43;
                v45 = &stru_2843F5C58;
                if (v43)
                {
                  v45 = v43;
                }

                v46 = v45;

                v47 = [v37 localIdentifier];
                v105[0] = @"name";
                v105[1] = @"id";
                v106[0] = v46;
                v106[1] = v47;
                v105[2] = @"usercreated";
                v48 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v37, "isVerified")}];
                v106[2] = v48;
                v105[3] = @"fav";
                v49 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v37, "favorite")}];
                v106[3] = v49;
                v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:4];

                if (v81)
                {
                  v51 = [v37 localIdentifier];
                  v52 = [v81 isEqualToString:v51];

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
    v56 = [(PGGraph *)v13 inferMeNodeFromSocialGroups];
    if (v56)
    {
      v57 = v56;
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
      if (![v76 count])
      {
        goto LABEL_42;
      }

      v59 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceCount" ascending:0];
      v104 = v59;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
      v61 = [v76 sortedArrayUsingDescriptors:v60];

      v62 = [v61 firstObject];
      v63 = [v62 localIdentifier];
      v57 = [(PGGraph *)v13 personNodeForPersonLocalIdentifier:v63];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v101 = v57;
        v102 = 2112;
        v103 = v62;
        _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "inferredMeNode fallback found %@ - backing person: %@", buf, 0x16u);
      }

      if (!v57)
      {
        goto LABEL_42;
      }
    }

    v64 = [v57 propertyDictionary];
    v65 = [(PGMutableGraph *)v13 addUniqueNodeWithLabel:@"Me" domain:300 properties:v64 didCreate:0];

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