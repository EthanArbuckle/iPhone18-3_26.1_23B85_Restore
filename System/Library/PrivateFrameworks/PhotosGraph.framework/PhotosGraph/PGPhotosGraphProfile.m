@interface PGPhotosGraphProfile
+ (id)_computeBlockedTaxonomyNodeNamesWithSceneTaxonomy:(id)a3;
+ (id)informantDependenciesIdentifiers;
- (PGPhotosGraphProfile)init;
- (PGPhotosGraphProfile)initWithSceneTaxonomy:(id)a3;
- (void)_insertEntityNetScenesForClueCollection:(id)a3;
- (void)_insertEventCluesForClueCollection:(id)a3 serviceManager:(id)a4 locationCache:(id)a5;
- (void)_insertPlacesForClueCollection:(id)a3;
- (void)_insertScenesForClueCollection:(id)a3;
- (void)processResultsSynchronouslyForInvestigation:(id)a3 withProgressBlock:(id)a4;
@end

@implementation PGPhotosGraphProfile

- (void)processResultsSynchronouslyForInvestigation:(id)a3 withProgressBlock:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v9 = [v6 clueCollection];
  if ((CLSDeviceIs2GBOrLess() & 1) == 0)
  {
    v10 = [v6 helper];
    v11 = [v10 serviceManager];
    v12 = [v6 helper];
    v13 = [v12 locationCache];
    [(PGPhotosGraphProfile *)self _insertEventCluesForClueCollection:v9 serviceManager:v11 locationCache:v13];
  }

  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v42[3] >= 0.01)
    {
      v42[3] = Current;
      v40 = 0;
      v8[2](v8, &v40, 0.1);
      v15 = *(v46 + 24) | v40;
      *(v46 + 24) = v15;
      if (v15)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v50 = 223;
          v51 = 2080;
          v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
          v16 = MEMORY[0x277D86220];
LABEL_23:
          _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_39;
        }

        goto LABEL_39;
      }
    }
  }

  [(PGPhotosGraphProfile *)self _insertPlacesForClueCollection:v9];
  if (!v8 || (v17 = CFAbsoluteTimeGetCurrent(), v17 - v42[3] < 0.01) || (v42[3] = v17, v40 = 0, v8[2](v8, &v40, 0.2), v18 = *(v46 + 24) | v40, *(v46 + 24) = v18, (v18 & 1) == 0))
  {
    [(PGPhotosGraphProfile *)self _insertScenesForClueCollection:v9];
    if (v8)
    {
      v19 = CFAbsoluteTimeGetCurrent();
      if (v19 - v42[3] >= 0.01)
      {
        v42[3] = v19;
        v40 = 0;
        v8[2](v8, &v40, 0.3);
        v20 = *(v46 + 24) | v40;
        *(v46 + 24) = v20;
        if (v20)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v50 = 229;
            v51 = 2080;
            v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
            v16 = MEMORY[0x277D86220];
            goto LABEL_23;
          }

          goto LABEL_39;
        }
      }
    }

    [(PGPhotosGraphProfile *)self _insertEntityNetScenesForClueCollection:v9];
    if (v8)
    {
      v21 = CFAbsoluteTimeGetCurrent();
      if (v21 - v42[3] >= 0.01)
      {
        v42[3] = v21;
        v40 = 0;
        v8[2](v8, &v40, 0.4);
        v22 = *(v46 + 24) | v40;
        *(v46 + 24) = v22;
        if (v22)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v50 = 232;
            v51 = 2080;
            v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
            v16 = MEMORY[0x277D86220];
            goto LABEL_23;
          }

          goto LABEL_39;
        }
      }
    }

    if (![v9 numberOfLocations])
    {
      goto LABEL_39;
    }

    v23 = [v6 helper];
    v24 = [v23 locationCache];

    v25 = [v9 mePerson];
    v26 = v25;
    if (v25)
    {
      [v25 prefetchPersonAddressesIfNeededWithLocationCache:v24];
      if (!v8)
      {
        goto LABEL_38;
      }

      v27 = CFAbsoluteTimeGetCurrent();
      if (v27 - v42[3] >= 0.01)
      {
        v42[3] = v27;
        v40 = 0;
        v8[2](v8, &v40, 0.5);
        v28 = *(v46 + 24) | v40;
        *(v46 + 24) = v28;
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v50 = 241;
            v51 = 2080;
            v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
            v29 = MEMORY[0x277D86220];
LABEL_36:
            _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_37;
          }

          goto LABEL_37;
        }
      }
    }

    else if (!v8)
    {
      goto LABEL_38;
    }

    v30 = CFAbsoluteTimeGetCurrent();
    if (v30 - v42[3] >= 0.01)
    {
      v42[3] = v30;
      v40 = 0;
      v8[2](v8, &v40, 0.6);
      v31 = *(v46 + 24) | v40;
      *(v46 + 24) = v31;
      if (v31)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v50 = 244;
          v51 = 2080;
          v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
          v29 = MEMORY[0x277D86220];
          goto LABEL_36;
        }

LABEL_37:

        goto LABEL_39;
      }
    }

LABEL_38:
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __86__PGPhotosGraphProfile_processResultsSynchronouslyForInvestigation_withProgressBlock___block_invoke;
    v34[3] = &unk_27887EF10;
    v32 = v24;
    v35 = v32;
    v36 = v8;
    v37 = &v41;
    v38 = &v45;
    v39 = 0x3F847AE147AE147BLL;
    [v9 enumeratePeopleClues:v34];

    goto LABEL_39;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v50 = 226;
    v51 = 2080;
    v52 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Profile/PGPhotosGraphProfile.m";
    v16 = MEMORY[0x277D86220];
    goto LABEL_23;
  }

LABEL_39:

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  v33 = *MEMORY[0x277D85DE8];
}

void __86__PGPhotosGraphProfile_processResultsSynchronouslyForInvestigation_withProgressBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 person];
  v7 = v6;
  if (v6)
  {
    [v6 prefetchPersonAddressesIfNeededWithLocationCache:*(a1 + 32)];
    if (*(a1 + 40))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v9 = *(*(a1 + 48) + 8);
      if (Current - *(v9 + 24) >= *(a1 + 64))
      {
        *(v9 + 24) = Current;
        (*(*(a1 + 40) + 16))(0.7);
        *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24);
        if (*(*(*(a1 + 56) + 8) + 24) == 1)
        {
          *a4 = 1;
        }
      }
    }
  }
}

- (void)_insertEntityNetScenesForClueCollection:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 outputCluesForKey:*MEMORY[0x277D277D8]];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__PGPhotosGraphProfile__insertEntityNetScenesForClueCollection___block_invoke;
  v8[3] = &unk_27887EEE8;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
  [v4 mergeClues:v7];
}

void __64__PGPhotosGraphProfile__insertEntityNetScenesForClueCollection___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 value];
  if (v3)
  {
    v4 = MEMORY[0x277D27730];
    [v10 confidence];
    v6 = v5;
    [v10 relevance];
    v8 = [v4 clueWithValue:v3 forKey:@"EntityNetScene" confidence:v6 relevance:v7];
    v9 = [v10 extraParameters];
    [v8 setExtraParameters:v9];

    [*(a1 + 32) addObject:v8];
  }
}

- (void)_insertScenesForClueCollection:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v5 outputCluesForKey:*MEMORY[0x277D277E0]];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __55__PGPhotosGraphProfile__insertScenesForClueCollection___block_invoke;
  v12 = &unk_27887EEC0;
  v13 = self;
  v14 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:&v9];
  [v5 mergeClues:{v8, v9, v10, v11, v12, v13}];
}

void __55__PGPhotosGraphProfile__insertScenesForClueCollection___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 value];
  if (v3 && ([*(a1 + 32) isBlockedTaxonomyNodeWithName:v3] & 1) == 0)
  {
    v4 = MEMORY[0x277D27730];
    [v10 confidence];
    v6 = v5;
    [v10 relevance];
    v8 = [v4 clueWithValue:v3 forKey:@"Scene" confidence:v6 relevance:v7];
    v9 = [v10 extraParameters];
    [v8 setExtraParameters:v9];

    [*(a1 + 40) addObject:v8];
  }
}

- (void)_insertPlacesForClueCollection:(id)a3
{
  v3 = MEMORY[0x277CBEB58];
  v4 = a3;
  v5 = [v3 set];
  v6 = [v4 outputCluesForKey:*MEMORY[0x277D27578]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__PGPhotosGraphProfile__insertPlacesForClueCollection___block_invoke;
  v16[3] = &unk_27887EE98;
  v7 = v5;
  v17 = v7;
  [v6 enumerateObjectsUsingBlock:v16];
  v8 = [v4 outputCluesForKey:*MEMORY[0x277D274F0]];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__PGPhotosGraphProfile__insertPlacesForClueCollection___block_invoke_2;
  v14 = &unk_27887EE98;
  v15 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:&v11];
  v10 = [v9 allObjects];
  [v4 mergeClues:v10];
}

void __55__PGPhotosGraphProfile__insertPlacesForClueCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D27730];
  v4 = a2;
  v5 = [v4 value];
  [v4 confidence];
  v7 = v6;
  [v4 relevance];
  v11 = [v3 clueWithValue:v5 forKey:@"ROI" confidence:v7 relevance:v8];

  v9 = [v4 relatedInputLocationClues];

  v10 = [v9 firstObject];
  [v11 setRelatedData:v10];

  [*(a1 + 32) addObject:v11];
}

void __55__PGPhotosGraphProfile__insertPlacesForClueCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D27730];
  v4 = a2;
  v5 = [v4 value];
  [v4 confidence];
  v7 = v6;
  [v4 relevance];
  v11 = [v3 clueWithValue:v5 forKey:@"POI" confidence:v7 relevance:v8];

  v9 = [v4 relatedInputLocationClues];

  v10 = [v9 firstObject];
  [v11 setRelatedData:v10];

  [*(a1 + 32) addObject:v11];
}

- (void)_insertEventCluesForClueCollection:(id)a3 serviceManager:(id)a4 locationCache:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 eventsForClueCollection:v7];
  v11 = [MEMORY[0x277CBEB18] array];
  [v10 count];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __88__PGPhotosGraphProfile__insertEventCluesForClueCollection_serviceManager_locationCache___block_invoke;
  v19 = &unk_27887EE70;
  v20 = v7;
  v21 = v9;
  v22 = v8;
  v23 = v11;
  v12 = v11;
  v13 = v8;
  v14 = v9;
  v15 = v7;
  [v10 enumerateObjectsUsingBlock:&v16];
  [v15 mergeClues:{v12, v16, v17, v18, v19}];
}

void __88__PGPhotosGraphProfile__insertEventCluesForClueCollection_serviceManager_locationCache___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 location];
  v33 = v3;
  if (v4)
  {
    v5 = [v3 location];
    [v5 coordinate];
    v7 = v6;
    v9 = v8;
    v44 = v6;
    v45 = v8;

    if ([MEMORY[0x277D3ACD0] canUseCoordinate:{v7, v9}])
    {
      [*(a1 + 32) locations];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v10 = v43 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
      v12 = v10;
      if (v11)
      {
        v13 = v11;
        v14 = *v41;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v40 + 1) + 8 * i);
            if (([MEMORY[0x277D3ACD0] locationIsCoarse:v16] & 1) == 0)
            {
              [v16 coordinate];
              v38 = v17;
              v39 = v18;
              CLLocationCoordinate2DGetDistanceFrom();
              if (v19 < 1500.0)
              {

                v12 = [MEMORY[0x277D276E0] clueWithLocation:v4 locationCache:*(a1 + 40)];
                v20 = MEMORY[0x277D276F0];
                v21 = [v3 startDate];
                v47[0] = v21;
                v22 = [v3 endDate];
                v47[1] = v22;
                v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
                v24 = [v20 clueWithDates:v23 serviceManager:*(a1 + 48)];

                v3 = v33;
                [*(a1 + 56) addObject:v12];
                [*(a1 + 56) addObject:v24];

                goto LABEL_14;
              }
            }
          }

          v13 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v12 = v10;
      }

LABEL_14:
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v25 = [v3 attendees];
  v26 = [v25 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v35;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v34 + 1) + 8 * j) objectForKeyedSubscript:@"name"];
        if (v30)
        {
          v31 = [MEMORY[0x277D276E8] clueWithPeople:v30 serviceManager:*(a1 + 48)];
          [*(a1 + 56) addObject:v31];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v27);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (PGPhotosGraphProfile)initWithSceneTaxonomy:(id)a3
{
  v4 = a3;
  v5 = [(PGPhotosGraphProfile *)self init];
  if (v5)
  {
    v6 = [objc_opt_class() _computeBlockedTaxonomyNodeNamesWithSceneTaxonomy:v4];
    blockedTaxonomyNodeNames = v5->_blockedTaxonomyNodeNames;
    v5->_blockedTaxonomyNodeNames = v6;
  }

  return v5;
}

- (PGPhotosGraphProfile)init
{
  v7.receiver = self;
  v7.super_class = PGPhotosGraphProfile;
  v2 = [(CLSProfile *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3C800]);
    v4 = [v3 sceneNames];
    personalTraitsSceneNames = v2->_personalTraitsSceneNames;
    v2->_personalTraitsSceneNames = v4;
  }

  return v2;
}

+ (id)_computeBlockedTaxonomyNodeNamesWithSceneTaxonomy:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = a1;
  v6 = [a1 _blockedNamesToTraverse];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v4 nodeForName:*(*(&v18 + 1) + 8 * i)];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __74__PGPhotosGraphProfile__computeBlockedTaxonomyNodeNamesWithSceneTaxonomy___block_invoke;
        v16[3] = &unk_2788884F0;
        v17 = v5;
        [v11 traverseChildrenUsingNameBlock:v16];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [v15 _blockedNames];
  [v5 addObjectsFromArray:v12];

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)informantDependenciesIdentifiers
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D27608];
  v6[0] = *MEMORY[0x277D27610];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end