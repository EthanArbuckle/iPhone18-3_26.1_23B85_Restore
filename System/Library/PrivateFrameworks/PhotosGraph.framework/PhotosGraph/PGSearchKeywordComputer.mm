@interface PGSearchKeywordComputer
- (PGSearchKeywordComputer)initWithGraph:(id)a3 searchComputationCache:(id)a4;
- (id)_holidayNodesForTimedEvent:(id)a3;
- (id)_personLocalIdentifiersBySocialGroupUUIDWithPhotoLibrary:(id)a3 graph:(id)a4;
- (id)_personUUIDsInSocialGroupNode:(id)a3 photoLibrary:(id)a4;
- (id)assetSearchKeywordsByMomentUUIDWithEventUUIDs:(id)a3 ofType:(unint64_t)a4 searchEntityAccumulator:(id)a5 progressBlock:(id)a6;
- (id)searchKeywordsByEventWithEventUUIDs:(id)a3 ofType:(unint64_t)a4 photoLibrary:(id)a5 progressBlock:(id)a6;
- (void)_aggregatePublicEventsWithoutBusinessForMomentNode:(id)a3 searchEntityAccumuator:(id)a4;
- (void)_enumerateBusinessAndPublicEventKeywordsForEvent:(id)a3 usingBlock:(id)a4;
- (void)_enumerateEventNodesForUUIDs:(id)a3 ofType:(unint64_t)a4 usingBlock:(id)a5;
@end

@implementation PGSearchKeywordComputer

- (id)_holidayNodesForTimedEvent:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 celebratedHolidayNodes];
  v40 = [v5 mutableCopy];

  v6 = [v4 holidayNodes];
  v43 = [(NSLocale *)self->_userLocale countryCode];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v51;
    v34 = v7;
    v35 = self;
    v33 = *v51;
    do
    {
      v11 = 0;
      v36 = v9;
      do
      {
        if (*v51 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v50 + 1) + 8 * v11);
        if (([v40 containsObject:v12] & 1) == 0)
        {
          v38 = [v12 name];
          v13 = [(CLSHolidayCalendarEventService *)self->_holidayService eventRuleForHolidayName:?];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 commonCelebratedCountryCodes];
            v16 = [v15 objectForKeyedSubscript:v43];

            if (v16)
            {
              v39 = v12;
              v37 = v11;
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              obj = [v4 dateNodes];
              v17 = v14;
              v44 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
              if (v44)
              {
                v18 = *v47;
                v41 = *v47;
                do
                {
                  for (i = 0; i != v44; ++i)
                  {
                    if (*v47 != v18)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v20 = *(*(&v46 + 1) + 8 * i);
                    v21 = objc_alloc_init(MEMORY[0x277CBEAB8]);
                    [v21 setYear:{objc_msgSend(v20, "year")}];
                    [v21 setMonth:{objc_msgSend(v20, "month")}];
                    [v21 setDay:{objc_msgSend(v20, "day")}];
                    v45 = [MEMORY[0x277D27690] dateFromComponents:v21 inTimeZone:0];
                    v22 = [v17 localDateByEvaluatingRuleForDate:? countryCode:?];
                    v23 = [MEMORY[0x277D27690] startOfDayForDate:v22];
                    v24 = [MEMORY[0x277D27690] endOfDayForDate:v22];
                    v25 = [v4 localStartDate];
                    if ([v25 compare:v23] == 1)
                    {
                      [v4 localEndDate];
                      v27 = v26 = v17;
                      v28 = v4;
                      v29 = [v27 compare:v24];

                      v17 = v26;
                      v18 = v41;

                      v30 = v29 == -1;
                      v4 = v28;
                      if (v30)
                      {
                        [v40 addObject:v39];
                      }
                    }

                    else
                    {
                    }
                  }

                  v44 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
                }

                while (v44);
              }

              v14 = v17;
              v7 = v34;
              self = v35;
              v10 = v33;
              v9 = v36;
              v11 = v37;
            }
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [v7 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v9);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)_personUUIDsInSocialGroupNode:(id)a3 photoLibrary:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 graph];
  v9 = [(PGSearchKeywordComputer *)self _personLocalIdentifiersBySocialGroupUUIDWithPhotoLibrary:v7 graph:v8];
  v10 = [v6 UUID];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:{*(*(&v21 + 1) + 8 * i), v21}];
        if (v18)
        {
          [v12 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_aggregatePublicEventsWithoutBusinessForMomentNode:(id)a3 searchEntityAccumuator:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  v6 = a4;
  v7 = a3;
  v8 = [v5 array];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __101__PGSearchKeywordComputer__aggregatePublicEventsWithoutBusinessForMomentNode_searchEntityAccumuator___block_invoke;
  v29[3] = &unk_278883E60;
  v11 = v8;
  v30 = v11;
  v12 = v10;
  v31 = v12;
  v13 = v9;
  v32 = v13;
  [v7 enumeratePublicEventNodesUsingBlock:v29];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  [v14 setObject:v11 forKeyedSubscript:&unk_284483CF0];
  v15 = [v12 allObjects];
  [v14 setObject:v15 forKeyedSubscript:&unk_284483D08];

  v16 = [v13 allObjects];
  [v14 setObject:v16 forKeyedSubscript:&unk_284483C78];

  v17 = objc_alloc(MEMORY[0x277CCA970]);
  v18 = [MEMORY[0x277CBEAA8] distantPast];
  v19 = [MEMORY[0x277CBEAA8] distantFuture];
  v20 = [v17 initWithStartDate:v18 endDate:v19];

  v21 = MEMORY[0x277CD9918];
  v22 = [v7 localIdentifier];

  v23 = [v21 uuidFromLocalIdentifier:v22];

  v28 = 0;
  [v6 accumulatePublicEventsInPublicEventKeywords:v14 forMomentUUID:v23 dateInterval:v20 error:&v28];

  v24 = v28;
  if (v24)
  {
    v25 = +[PGLogging sharedLogging];
    v26 = [v25 loggingConnection];

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v24;
      _os_log_error_impl(&dword_22F0FC000, v26, OS_LOG_TYPE_ERROR, "Error returned by accumulatePublicEventsInPublicEventKeywords(): (%@)", buf, 0xCu);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __101__PGSearchKeywordComputer__aggregatePublicEventsWithoutBusinessForMomentNode_searchEntityAccumuator___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  if ([v9 canUseWithoutBusiness])
  {
    v3 = a1[4];
    v4 = [v9 name];
    [v3 addObject:v4];

    v5 = a1[5];
    v6 = [v9 performers];
    [v5 unionSet:v6];

    v7 = a1[6];
    v8 = [v9 localizedCategories];
    [v7 unionSet:v8];
  }
}

- (void)_enumerateBusinessAndPublicEventKeywordsForEvent:(id)a3 usingBlock:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CBEB38];
  v7 = a3;
  v8 = [v6 dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __87__PGSearchKeywordComputer__enumerateBusinessAndPublicEventKeywordsForEvent_usingBlock___block_invoke;
  v16[3] = &unk_278883E10;
  v17 = v8;
  v9 = v8;
  [v7 enumerateBusinessesUsingBlock:v16];
  v10 = [v7 publicEventNodes];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__PGSearchKeywordComputer__enumerateBusinessAndPublicEventKeywordsForEvent_usingBlock___block_invoke_2;
  v13[3] = &unk_278883E38;
  v14 = v10;
  v15 = v5;
  v11 = v5;
  v12 = v10;
  [v9 enumerateKeysAndObjectsUsingBlock:v13];
}

void __87__PGSearchKeywordComputer__enumerateBusinessAndPublicEventKeywordsForEvent_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 universalStartDate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v6 = v5;

  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }

  [v7 addObject:v8];
}

void __87__PGSearchKeywordComputer__enumerateBusinessAndPublicEventKeywordsForEvent_usingBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = [MEMORY[0x277CBEB58] set];
  v43 = [*(a1 + 32) count];
  v41 = a1;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v11 = v4;
  v44 = [v11 countByEnumeratingWithState:&v53 objects:v58 count:16];
  v40 = v11;
  if (!v44)
  {

    [v5 setObject:v6 forKeyedSubscript:&unk_284483CC0];
LABEL_26:
    v32 = [v7 allObjects];
    [v5 setObject:v32 forKeyedSubscript:&unk_284483CD8];

    goto LABEL_27;
  }

  v12 = v6;
  v38 = v5;
  v39 = v8;
  v13 = v5;
  v42 = *v54;
  v14 = 1;
  v15 = v11;
  v36 = v7;
  v37 = v6;
  v48 = v10;
  do
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v54 != v42)
      {
        objc_enumerationMutation(v15);
      }

      v17 = [*(*(&v53 + 1) + 8 * i) targetNode];
      v18 = [v17 name];
      if ([v18 length])
      {
        [v12 addObject:v18];
      }

      v47 = v18;
      v19 = [v17 businessCategories];
      if ([v7 count])
      {
        v14 &= [v7 intersectsSet:v19];
      }

      v46 = v19;
      [v7 unionSet:v19];
      if (v43)
      {
        v45 = i;
        v20 = v9;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v21 = *(v41 + 32);
        v22 = [v21 countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v50;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v50 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v49 + 1) + 8 * j);
              v27 = [v26 businessNode];
              v28 = [v27 isSameNodeAsNode:v17];

              if (v28)
              {
                v29 = [v26 name];
                [v39 addObject:v29];

                v30 = [v26 performers];
                [v48 unionSet:v30];

                v31 = [v26 localizedCategories];
                [v20 unionSet:v31];
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v49 objects:v57 count:16];
          }

          while (v23);
        }

        v12 = v37;
        v13 = v38;
        v7 = v36;
        v15 = v40;
        v9 = v20;
        v10 = v48;
        i = v45;
      }
    }

    v44 = [v15 countByEnumeratingWithState:&v53 objects:v58 count:16];
  }

  while (v44);

  v5 = v13;
  v6 = v12;
  [v13 setObject:v12 forKeyedSubscript:&unk_284483CC0];
  v8 = v39;
  if (v14)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v43)
  {
    [v5 setObject:v8 forKeyedSubscript:&unk_284483CF0];
    v33 = [v10 allObjects];
    [v5 setObject:v33 forKeyedSubscript:&unk_284483D08];

    v34 = [v9 allObjects];
    [v5 setObject:v34 forKeyedSubscript:&unk_284483C78];
  }

  (*(*(v41 + 40) + 16))();

  v35 = *MEMORY[0x277D85DE8];
}

- (id)_personLocalIdentifiersBySocialGroupUUIDWithPhotoLibrary:(id)a3 graph:(id)a4
{
  personLocalIdentifiersBySocialGroupUUID = self->_personLocalIdentifiersBySocialGroupUUID;
  if (!personLocalIdentifiersBySocialGroupUUID)
  {
    graph = self->_graph;
    v8 = a4;
    v9 = a3;
    v10 = [(PGGraphNodeCollection *)PGGraphSocialGroupNodeCollection nodesInGraph:graph];
    v11 = [v8 fetchMemberNodesBySocialGroupNodeForSocialGroups:v10];
    v12 = [(PGGraph *)self->_graph memberLocalIdentifiersBySocialGroupUUIDWithMemberNodesBySocialGroupNode:v11 shouldIncludeMeNode:1 simulateMeNodeNotSet:0];
    v13 = self->_personLocalIdentifiersBySocialGroupUUID;
    self->_personLocalIdentifiersBySocialGroupUUID = v12;

    v14 = [PGPeopleUtilities validateKeyedSocialGroups:self->_personLocalIdentifiersBySocialGroupUUID withPhotoLibrary:v9 graph:v8];

    v15 = self->_personLocalIdentifiersBySocialGroupUUID;
    self->_personLocalIdentifiersBySocialGroupUUID = v14;

    personLocalIdentifiersBySocialGroupUUID = self->_personLocalIdentifiersBySocialGroupUUID;
  }

  return personLocalIdentifiersBySocialGroupUUID;
}

- (void)_enumerateEventNodesForUUIDs:(id)a3 ofType:(unint64_t)a4 usingBlock:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4 == 1)
  {
    v10 = [PGGraphHighlightNodeCollection highlightNodesForUUIDs:v8 inGraph:self->_graph];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __74__PGSearchKeywordComputer__enumerateEventNodesForUUIDs_ofType_usingBlock___block_invoke_2;
    v14[3] = &unk_278883DE8;
    v15 = v9;
    [v10 enumerateNodesUsingBlock:v14];
    v11 = v15;
    goto LABEL_5;
  }

  if (!a4)
  {
    v10 = [PGGraphMomentNodeCollection momentNodesForUUIDs:v8 inGraph:self->_graph];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__PGSearchKeywordComputer__enumerateEventNodesForUUIDs_ofType_usingBlock___block_invoke;
    v16[3] = &unk_278883DC0;
    v17 = v9;
    [v10 enumerateNodesUsingBlock:v16];
    v11 = v17;
LABEL_5:

    goto LABEL_8;
  }

  v12 = +[PGLogging sharedLogging];
  v10 = [v12 loggingConnection];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v19 = a4;
    _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Cannot get graph node for uuid of unsupported asset collection type %ld", buf, 0xCu);
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

void __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventCollection];
  v6 = [v5 eventMomentNodes];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_2;
  v9[3] = &unk_278889050;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [v6 enumerateNodesUsingBlock:v9];

  objc_autoreleasePoolPop(v4);
}

void __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_317(uint64_t a1, void *a2, _BYTE *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*(a1 + 80) && (Current = CFAbsoluteTimeGetCurrent(), v7 = *(*(a1 + 88) + 8), Current - *(v7 + 24) >= *(a1 + 120)) && (*(v7 + 24) = Current, v35 = 0, (*(*(a1 + 80) + 16))(*(*(*(a1 + 96) + 8) + 24)), *(*(*(a1 + 104) + 8) + 24) = *(*(*(a1 + 104) + 8) + 24), *(*(*(a1 + 104) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    *(*(*(a1 + 96) + 8) + 24) = (*(*(*(a1 + 96) + 8) + 24) + 1.0) * 0.5;
    v8 = [*(a1 + 32) _personUUIDsInSocialGroupNode:v5 photoLibrary:*(a1 + 40)];
    v9 = [v8 count];
    if (v9 >= 2)
    {
      v10 = v9 > 3 ? (v9 >> 1) + 1 : v9;
      if (v10 < v9 && *(*(*(a1 + 112) + 8) + 24) >= v10)
      {
        if (*(a1 + 128) == 1)
        {
          [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count >= %lu AND SUBQUERY(%K, $f, $f.%K IN %@ AND $f.%K IN %@).@count >= %lu", @"detectedFaces", v10, @"detectedFaces", @"personForFace.verifiedType", *(a1 + 56), @"personForFace.personUUID", v8, v10, v26, v27];
        }

        else
        {
          [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@ AND %K.@count >= %lu AND SUBQUERY(%K, $f, $f.%K IN %@ AND $f.%K IN %@).@count >= %lu", @"moment.uuid", *(a1 + 64), @"detectedFaces", v10, @"detectedFaces", @"personForFace.verifiedType", *(a1 + 56), @"personForFace.personUUID", v8, v10];
        }
        v11 = ;
        [*(a1 + 48) setInternalPredicate:v11];

        v12 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:*(a1 + 48)];
        v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v14 = v12;
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v32;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [*(*(&v31 + 1) + 8 * i) uuid];
              [v13 addObject:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
          }

          while (v16);
        }

        v20 = [*(a1 + 40) librarySpecificFetchOptions];
        [v20 setIncludedDetectionTypes:&unk_284485C10];
        v21 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"personForFace.personUUID", v8];
        [v20 setInternalPredicate:v21];

        v22 = [MEMORY[0x277CD9938] fetchVerifiedPersonUUIDsGroupedByAssetUUIDForAssetUUIDs:v13 options:v20];
        v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_350;
        v28[3] = &unk_278883D70;
        v29 = v23;
        v30 = v10;
        v24 = v23;
        [v22 enumerateKeysAndObjectsUsingBlock:v28];
        [*(a1 + 72) setObject:v24 forKeyedSubscript:v8];
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_350(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 count] >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __126__PGSearchKeywordComputer_searchableAssetUUIDsBySocialGroupWithEventUUIDs_ofType_inPhotoLibrary_isFullAnalysis_progressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 uuid];
  [v3 addObject:v5];

  v6 = *(*(*(a1 + 40) + 8) + 24);
  v7 = [v4 personNodes];

  v8 = [v7 count];
  if (v6 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (id)assetSearchKeywordsByMomentUUIDWithEventUUIDs:(id)a3 ofType:(unint64_t)a4 searchEntityAccumulator:(id)a5 progressBlock:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v30 = a5;
  aBlock = a6;
  v10 = CreateSearchLog();
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "assetSearchKeywordsByMomentUUIDWithEventUUIDs", "", &buf, 2u);
  }

  v14 = _Block_copy(aBlock);
  buf = 0;
  p_buf = &buf;
  v51 = 0x2020000000;
  v52 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  if (v14 && (v15 = CFAbsoluteTimeGetCurrent(), v15 - v46[3] >= 0.01) && (v46[3] = v15, LOBYTE(v53[0]) = 0, (*(v14 + 2))(v14, v53, 0.0), v16 = *(p_buf + 24) | LOBYTE(v53[0]), *(p_buf + 24) = v16, (v16 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v56 = 0x16E04000202;
      LOWORD(v57) = 2080;
      *(&v57 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v56, 0x12u);
    }

    v17 = MEMORY[0x277CBEC10];
  }

  else
  {
    v18 = objc_alloc_init(PGSearchKeywordComputerKeywordAggregator);
    v19 = [(PGGraph *)self->_graph meNodeCollection];
    v56 = 0;
    *&v57 = &v56;
    *(&v57 + 1) = 0x2020000000;
    v58 = 0;
    v20 = 1.0 / [v32 count];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke;
    v34[3] = &unk_278883D20;
    v21 = v14;
    v39 = &v45;
    v40 = &v56;
    v41 = &buf;
    v42 = 0x3F847AE147AE147BLL;
    v43 = v20;
    v38 = v21;
    v34[4] = self;
    v22 = v18;
    v35 = v22;
    v36 = v30;
    v44 = a4;
    v23 = v19;
    v37 = v23;
    [(PGSearchKeywordComputer *)self _enumerateEventNodesForUUIDs:v32 ofType:a4 usingBlock:v34];
    if (v14 && (Current = CFAbsoluteTimeGetCurrent(), Current - v46[3] >= 0.01) && (v46[3] = Current, v33 = 0, (*(v21 + 2))(v21, &v33, 1.0), v25 = *(p_buf + 24) | v33, *(p_buf + 24) = v25, (v25 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v53[0] = 67109378;
        v53[1] = 647;
        v54 = 2080;
        v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v53, 0x12u);
      }

      v17 = MEMORY[0x277CBEC10];
    }

    else
    {
      v26 = v13;
      v27 = v26;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        LOWORD(v53[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_END, v11, "assetSearchKeywordsByMomentUUIDWithEventUUIDs", "", v53, 2u);
      }

      v17 = [(PGSearchKeywordComputerKeywordAggregator *)v22 aggregatedKeywords];
    }

    _Block_object_dispose(&v56, 8);
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&buf, 8);

  v28 = *MEMORY[0x277D85DE8];

  return v17;
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v114[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  if (*(a1 + 64) && (Current = CFAbsoluteTimeGetCurrent(), v8 = *(*(a1 + 72) + 8), Current - *(v8 + 24) >= *(a1 + 96)) && (*(v8 + 24) = Current, v105 = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 80) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = *(a1 + 104) + *(*(*(a1 + 80) + 8) + 24);
    v9 = *(a1 + 32);
    v10 = [v5 businessedEvent];
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2;
    v102[3] = &unk_278883C70;
    v103 = *(a1 + 40);
    v104 = *(a1 + 48);
    [v9 _enumerateBusinessAndPublicEventKeywordsForEvent:v10 usingBlock:v102];

    if (_os_feature_enabled_impl() && !*(a1 + 112))
    {
      [*(a1 + 32) _aggregatePublicEventsWithoutBusinessForMomentNode:v5 searchEntityAccumuator:*(a1 + 48)];
    }

    if (!*(a1 + 112) && [v5 isPartOfTrip])
    {
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"PGHighlightTripSearchableText" value:@"PGHighlightTripSearchableText" table:@"Localizable"];

      v114[0] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:1];
      v112 = &unk_284483B70;
      v113 = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
      v16 = [v5 eventCollection];
      v17 = [v16 eventMomentNodes];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_292;
      v97[3] = &unk_278883C98;
      v98 = *(a1 + 40);
      v99 = v15;
      v100 = *(a1 + 48);
      v101 = v13;
      v18 = v13;
      v19 = v15;
      [v17 enumerateNodesUsingBlock:v97];
    }

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = [v5 meaningfulEvent];
    v22 = [v21 meaningNodes];

    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_293;
    v94[3] = &unk_278883BA8;
    v23 = v20;
    v24 = *(a1 + 32);
    v95 = v23;
    v96 = v24;
    v66 = v22;
    [v22 enumerateNodesUsingBlock:v94];
    if ([v23 count])
    {
      v110 = &unk_284483B88;
      v111 = v23;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      v26 = [v5 eventCollection];
      v27 = [v26 eventMomentNodes];
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_295;
      v89[3] = &unk_278883C98;
      v90 = *(a1 + 40);
      v91 = v25;
      v92 = *(a1 + 48);
      v93 = v23;
      v28 = v25;
      [v27 enumerateNodesUsingBlock:v89];
    }

    v29 = *(a1 + 32);
    v30 = [v5 timedEvent];
    v31 = [v29 _holidayNodesForTimedEvent:v30];

    if ([v31 count])
    {
      v64 = v6;
      v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v31, "count")}];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v63 = v31;
      v33 = v31;
      v34 = [v33 countByEnumeratingWithState:&v85 objects:v109 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v86;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v86 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = [*(*(&v85 + 1) + 8 * i) name];
            if ([v38 length])
            {
              v39 = [MEMORY[0x277D276C8] localizedNameForName:v38];
              [v32 addObject:v39];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v85 objects:v109 count:16];
        }

        while (v35);
      }

      v107 = &unk_284483BA0;
      v108 = v32;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v41 = [v5 eventCollection];
      v42 = [v41 eventMomentNodes];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_296;
      v80[3] = &unk_278883C98;
      v81 = *(a1 + 40);
      v82 = v40;
      v83 = *(a1 + 48);
      v84 = v32;
      v43 = v32;
      v44 = v40;
      [v42 enumerateNodesUsingBlock:v80];

      v6 = v64;
      v31 = v63;
    }

    v45 = [v5 locatedEvent];
    v46 = [v45 happensPartiallyAtHomeOrWorkOfPersonNodes:*(a1 + 56)];

    if (v46)
    {
      v47 = [v5 eventCollection];
      v48 = [v47 eventMomentNodes];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_297;
      v77[3] = &unk_278883C98;
      v49 = *(a1 + 56);
      v65 = *(a1 + 32);
      v50 = v65.i64[1];
      v51.i64[0] = *(a1 + 48);
      v51.i64[1] = v49;
      v78 = vextq_s8(v51, v65, 8uLL);
      v79 = vextq_s8(v65, v51, 8uLL);
      [v48 enumerateNodesUsingBlock:v77];
    }

    v52 = [v5 eventCollection];
    v53 = [v52 eventMomentNodes];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_302;
    v74[3] = &unk_278888B78;
    v75 = *(a1 + 40);
    v76 = *(a1 + 48);
    [v53 enumerateNodesUsingBlock:v74];

    v54 = [v5 eventCollection];
    v55 = [v54 eventMomentNodes];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_307;
    v71[3] = &unk_278888B78;
    v72 = *(a1 + 40);
    v73 = *(a1 + 48);
    [v55 enumerateNodesUsingBlock:v71];

    v56 = objc_alloc(MEMORY[0x277CBEB98]);
    v106[0] = @"Museum";
    v106[1] = @"AmusementPark";
    v106[2] = @"Park";
    v106[3] = @"Stadium";
    v106[4] = @"Restaurant";
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v106 count:5];
    v58 = [v56 initWithArray:v57];

    v59 = [v5 eventCollection];
    v60 = [v59 eventMomentNodes];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_312;
    v67[3] = &unk_278883CF8;
    v68 = v58;
    v69 = *(a1 + 40);
    v70 = *(a1 + 48);
    v61 = v58;
    [v60 enumerateNodesUsingBlock:v67];
  }

  objc_autoreleasePoolPop(v6);

  v62 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 anyObject];
  v7 = [v6 sourceNode];
  v8 = MEMORY[0x277CD9918];
  v9 = [v7 localIdentifier];
  v10 = [v8 uuidFromLocalIdentifier:v9];

  if ([v6 hasRoutineInfo])
  {
    v11 = [v6 universalStartDate];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v14 = v13;

    v16 = [v6 universalEndDate];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v15 = v18;
  }

  else
  {
    v14 = [MEMORY[0x277CBEAA8] distantPast];
    v15 = [MEMORY[0x277CBEAA8] distantFuture];
  }

  [*(a1 + 32) aggregateKeywordArraysByCategoryMask:v5 forMomentUUID:v10 fromUniversalStartDate:v14 toEndDate:v15];
  v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
  v20 = *(a1 + 40);
  v25 = 0;
  [v20 accumulatePublicEventsInPublicEventKeywords:v5 forMomentUUID:v10 dateInterval:v19 error:&v25];

  v21 = v25;
  if (v21)
  {
    v22 = +[PGLogging sharedLogging];
    v23 = [v22 loggingConnection];

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v21;
      _os_log_error_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_ERROR, "Error returned by accumulatePublicEventsInPublicEventKeywords(): (%@)", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_292(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 aggregateKeywordsByCategoryMask:v4 forMomentNode:v5];
  v6 = MEMORY[0x277CD9918];
  v7 = [v5 localIdentifier];

  v8 = [v6 uuidFromLocalIdentifier:v7];

  v9 = a1[6];
  v10 = a1[7];
  v15 = 0;
  [v9 accumulateTrip:v10 forMomentUUID:v8 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = +[PGLogging sharedLogging];
    v13 = [v12 loggingConnection];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Error returned by accumulateTrip(): (%@)", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_293(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 label];
  if (([v4 isEqualToString:@"Gathering"] & 1) == 0)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v4];

    if (!v5)
    {
      v6 = localizationKeyForMeaningLabel(v4);
      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:v6 value:v6 table:@"Localizable"];

        [*(a1 + 32) setValue:v9 forKey:v4];
      }

      else
      {
        v10 = +[PGLogging sharedLogging];
        v11 = [v10 loggingConnection];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v4;
          _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "No localization key for meaning label: (%@)", buf, 0xCu);
        }
      }
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_294;
    v15[3] = &unk_278883BA8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = v12;
    v17 = v13;
    [v3 traverseParentMeaningHierarchyUsingBlock:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_295(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 aggregateKeywordsByCategoryMask:v4 forMomentNode:v5];
  v6 = MEMORY[0x277CD9918];
  v7 = [v5 localIdentifier];

  v8 = [v6 uuidFromLocalIdentifier:v7];

  v9 = a1[6];
  v10 = a1[7];
  v15 = 0;
  [v9 accumulateMeanings:v10 forMomentUUID:v8 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = +[PGLogging sharedLogging];
    v13 = [v12 loggingConnection];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Error returned by accumulateMeanings(): (%@)", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_296(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v3 aggregateKeywordsByCategoryMask:v4 forMomentNode:v5];
  v6 = MEMORY[0x277CD9918];
  v7 = [v5 localIdentifier];

  v8 = [v6 uuidFromLocalIdentifier:v7];

  v9 = a1[6];
  v10 = a1[7];
  v15 = 0;
  [v9 accumulateHolidays:v10 forMomentUUID:v8 error:&v15];
  v11 = v15;
  if (v11)
  {
    v12 = +[PGLogging sharedLogging];
    v13 = [v12 loggingConnection];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Error returned by accumulateHolidays(): (%@)", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_297(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 happensPartiallyAtHomeOrWorkOfPersonNodes:*(a1 + 32)])
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_298;
    v4[3] = &unk_278883CC0;
    v4[4] = *(a1 + 40);
    v5 = v3;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    [v5 enumeratePreciseAddressEdgesAndNodesUsingBlock:v4];
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_302(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_303;
  v5[3] = &unk_278885270;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  [v4 enumeratePreciseAddressEdgesAndNodesUsingBlock:v5];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_307(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_308;
  v5[3] = &unk_278885270;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  [v4 enumeratePreciseAddressEdgesAndNodesUsingBlock:v5];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_312(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 collection];
  v5 = [v4 poiNodesWithNonzeroConfidence];
  v6 = [v5 nodesMatchingPOILabels:*(a1 + 32)];

  if ([v6 count])
  {
    v7 = [v6 localizedNames];
    v8 = [v7 allObjects];

    v21 = &unk_284483C60;
    v22[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v10 = MEMORY[0x277CD98F8];
    v11 = [v3 localIdentifier];
    v12 = [v10 uuidFromLocalIdentifier:v11];

    [*(a1 + 40) aggregateKeywordsByCategoryMask:v9 forMomentNode:v3];
    v13 = *(a1 + 48);
    v18 = 0;
    [v13 accumulateLocationPOIWithPOIKeywords:v8 forMomentUUID:v12 error:&v18];
    v14 = v18;
    if (v14)
    {
      v15 = +[PGLogging sharedLogging];
      v16 = [v15 loggingConnection];

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v14;
        _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "Error returned by accumulateLocationPOI(): (%@)", buf, 0xCu);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_308(uint64_t a1, void *a2, void *a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 collection];
  v7 = [v6 continentNodes];

  if ([v7 count])
  {
    v8 = [v7 names];
    v33 = &unk_284483C48;
    v34[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v10 = MEMORY[0x277CD98F8];
    v11 = [*(a1 + 32) localIdentifier];
    v12 = [v10 uuidFromLocalIdentifier:v11];

    v13 = [v5 universalStartDate];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v16 = v15;

    v17 = [v5 universalEndDate];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v20 = v19;

    v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v20];
    [*(a1 + 40) aggregateKeywordsByCategoryMask:v9 forMomentUUID:v12 duringDateInterval:v21];
    v22 = *(a1 + 48);
    v30 = 0;
    [v22 accumulateLocationContinentsWithContinentKeywords:v8 forMomentUUID:v12 dateInterval:v21 error:&v30];
    v23 = v30;
    if (v23)
    {
      v29 = v16;
      v24 = v8;
      v25 = v9;
      v26 = +[PGLogging sharedLogging];
      v27 = [v26 loggingConnection];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v23;
        _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "Error returned by accumulateLocationContinents(): (%@)", buf, 0xCu);
      }

      v9 = v25;
      v8 = v24;
      v16 = v29;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_303(uint64_t a1, void *a2, void *a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 collection];
  v7 = [v6 subcontinentNodes];

  if ([v7 count])
  {
    v8 = [v7 names];
    v33 = &unk_284483C30;
    v34[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v10 = MEMORY[0x277CD98F8];
    v11 = [*(a1 + 32) localIdentifier];
    v12 = [v10 uuidFromLocalIdentifier:v11];

    v13 = [v5 universalStartDate];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v16 = v15;

    v17 = [v5 universalEndDate];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v20 = v19;

    v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v20];
    [*(a1 + 40) aggregateKeywordsByCategoryMask:v9 forMomentUUID:v12 duringDateInterval:v21];
    v22 = *(a1 + 48);
    v30 = 0;
    [v22 accumulateLocationSubcontinentsWithContinentKeywords:v8 forMomentUUID:v12 dateInterval:v21 error:&v30];
    v23 = v30;
    if (v23)
    {
      v29 = v16;
      v24 = v8;
      v25 = v9;
      v26 = +[PGLogging sharedLogging];
      v27 = [v26 loggingConnection];

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v23;
        _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "Error returned by accumulateLocationSubcontinents(): (%@)", buf, 0xCu);
      }

      v9 = v25;
      v8 = v24;
      v16 = v29;
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_2_298(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v8 = [v6 collection];
  v9 = [v8 homeWorkNodes];

  if ([v9 count])
  {
    v10 = [v6 graph];
    v11 = [(PGGraphNodeCollection *)PGGraphMeNodeCollection nodesInGraph:v10];

    v12 = [v11 homeOrWorkNodes];
    v13 = [v9 collectionByIntersecting:v12];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_3;
    v36[3] = &unk_278887CF8;
    v14 = v7;
    v15 = *(a1 + 32);
    v37 = v14;
    v38 = v15;
    [v13 enumerateNodesUsingBlock:v36];
    if ([v14 count])
    {
      v16 = MEMORY[0x277CD9918];
      v17 = [*(a1 + 40) localIdentifier];
      v18 = [v16 uuidFromLocalIdentifier:v17];

      v19 = [v5 universalStartDate];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = [MEMORY[0x277CBEAA8] distantPast];
      }

      v22 = v21;
      v34 = v11;

      v23 = [v5 universalEndDate];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [MEMORY[0x277CBEAA8] distantFuture];
      }

      v26 = v25;

      v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v22 endDate:v26];
      [*(a1 + 48) aggregateKeywordsByCategoryMask:v14 forMomentUUID:v18 duringDateInterval:v27];
      v28 = *(a1 + 56);
      v35 = 0;
      [v28 accumulateHomeAndWorkWithHomeAndWorkKeywords:v14 forMomentUUID:v18 dateInterval:v27 error:&v35];
      v29 = v35;
      if (v29)
      {
        v33 = v22;
        v30 = +[PGLogging sharedLogging];
        v31 = [v30 loggingConnection];

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v40 = v29;
          _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "Error returned by accumulateHomeAndWorkWithomeAndWorkKeywords(): (%@)", buf, 0xCu);
        }

        v22 = v33;
      }

      v11 = v34;
    }

    v9 = v13;
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = [a2 label];
  if ([v6 isEqualToString:@"Home"])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:&unk_284483BD0];
  }

  else if ([v6 isEqualToString:@"Work"])
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"PGWorkSearchableText" value:@"PGWorkSearchableText" table:@"Localizable"];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:&unk_284483BE8];
  }
}

void __118__PGSearchKeywordComputer_assetSearchKeywordsByMomentUUIDWithEventUUIDs_ofType_searchEntityAccumulator_progressBlock___block_invoke_294(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [a2 label];
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = localizationKeyForMeaningLabel(v3);
    if (v5)
    {
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:v5 value:v5 table:@"Localizable"];

      [*(a1 + 32) setValue:v8 forKey:v3];
    }

    else
    {
      v9 = +[PGLogging sharedLogging];
      v10 = [v9 loggingConnection];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v3;
        _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "No localization key for meaning label: (%@)", &v12, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)searchKeywordsByEventWithEventUUIDs:(id)a3 ofType:(unint64_t)a4 photoLibrary:(id)a5 progressBlock:(id)a6
{
  v53 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = _Block_copy(v12);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (v13 && (v14 = CFAbsoluteTimeGetCurrent(), v14 - v40[3] >= 0.01) && (v40[3] = v14, LOBYTE(v47[0]) = 0, (*(v13 + 2))(v13, v47, 0.0), v15 = *(v44 + 24) | LOBYTE(v47[0]), *(v44 + 24) = v15, (v15 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x4D04000202;
      LOWORD(v51) = 2080;
      *(&v51 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }

    v16 = MEMORY[0x277CBEC10];
  }

  else
  {
    v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
    v18 = [(PGGraph *)self->_graph meNodeCollection];
    buf = 0;
    *&v51 = &buf;
    *(&v51 + 1) = 0x2020000000;
    v52 = 0;
    v19 = [v10 count];
    v28[1] = 3221225472;
    v28[0] = MEMORY[0x277D85DD0];
    v28[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke;
    v28[3] = &unk_278883D20;
    p_buf = &buf;
    v36 = 1.0 / v19;
    v20 = v13;
    v37 = 0x3F847AE147AE147BLL;
    v34 = &v39;
    v35 = &v43;
    v32 = v20;
    v28[4] = self;
    v29 = v11;
    v38 = a4;
    v21 = v18;
    v30 = v21;
    v22 = v17;
    v31 = v22;
    [(PGSearchKeywordComputer *)self _enumerateEventNodesForUUIDs:v10 ofType:a4 usingBlock:v28];
    if (v13 && (Current = CFAbsoluteTimeGetCurrent(), Current - v40[3] >= 0.01) && (v40[3] = Current, v27 = 0, (*(v20 + 2))(v20, &v27, 1.0), v24 = *(v44 + 24) | v27, *(v44 + 24) = v24, (v24 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v47[0] = 67109378;
        v47[1] = 349;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Search/PGSearchKeywordComputer.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v47, 0x12u);
      }

      v16 = MEMORY[0x277CBEC10];
    }

    else
    {
      v16 = v22;
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v204 = *MEMORY[0x277D85DE8];
  v146 = a2;
  context = objc_autoreleasePoolPush();
  *(*(*(a1 + 72) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 72) + 8) + 24);
  v145 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [v146 peopledEvent];
  v144 = [v4 personNodes];

  if ([v144 count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v6 = v144;
    v7 = [v6 countByEnumeratingWithState:&v192 objects:v203 count:16];
    if (v7)
    {
      v8 = *v193;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v193 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = MEMORY[0x277CD9918];
          v11 = [*(*(&v192 + 1) + 8 * i) localIdentifier];
          v12 = [v10 uuidFromLocalIdentifier:v11];

          if (v12)
          {
            [v5 addObject:v12];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v192 objects:v203 count:16];
      }

      while (v7);
    }

    [v145 setObject:v5 forKeyedSubscript:&unk_284483AF8];
  }

  if (*(a1 + 64) && (v13 = CFAbsoluteTimeGetCurrent(), v14 = *(*(a1 + 80) + 8), v13 - *(v14 + 24) >= *(a1 + 104)) && (*(v14 + 24) = v13, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
  {
    *a3 = 1;
  }

  else
  {
    v15 = [v146 peopledEvent];
    v143 = [v15 petNodes];

    if ([v143 count])
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v17 = v143;
      v18 = [v17 countByEnumeratingWithState:&v188 objects:v202 count:16];
      if (v18)
      {
        v19 = *v189;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v189 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = MEMORY[0x277CD9918];
            v22 = [*(*(&v188 + 1) + 8 * j) localIdentifier];
            v23 = [v21 uuidFromLocalIdentifier:v22];

            if (v23)
            {
              [v16 addObject:v23];
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v188 objects:v202 count:16];
        }

        while (v18);
      }

      [v145 setObject:v16 forKeyedSubscript:&unk_284483B10];
    }

    if (*(a1 + 64) && (v24 = CFAbsoluteTimeGetCurrent(), v25 = *(*(a1 + 80) + 8), v24 - *(v25 + 24) >= *(a1 + 104)) && (*(v25 + 24) = v24, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
    {
      *a3 = 1;
    }

    else
    {
      v26 = [v146 peopledEvent];
      v142 = [v26 socialGroupNodes];

      if ([v142 count])
      {
        v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v28 = +[PGGraphSocialGroupNode importanceSortDescriptors];
        v29 = [v142 sortedArrayUsingDescriptors:v28];

        v186 = 0u;
        v187 = 0u;
        v184 = 0u;
        v185 = 0u;
        v30 = v29;
        v31 = [v30 countByEnumeratingWithState:&v184 objects:v201 count:16];
        if (v31)
        {
          v32 = *v185;
          do
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v185 != v32)
              {
                objc_enumerationMutation(v30);
              }

              v34 = [*(a1 + 32) _personUUIDsInSocialGroupNode:*(*(&v184 + 1) + 8 * k) photoLibrary:*(a1 + 40)];
              if ([v34 count] >= 2)
              {
                [v27 addObject:v34];
              }
            }

            v31 = [v30 countByEnumeratingWithState:&v184 objects:v201 count:16];
          }

          while (v31);
        }

        if ([v27 count])
        {
          [v145 setObject:v27 forKeyedSubscript:&unk_284483B28];
        }
      }

      if (*(a1 + 64) && (v35 = CFAbsoluteTimeGetCurrent(), v36 = *(*(a1 + 80) + 8), v35 - *(v36 + 24) >= *(a1 + 104)) && (*(v36 + 24) = v35, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
      {
        *a3 = 1;
      }

      else
      {
        v37 = [v146 locatedEvent];
        v141 = [v37 addressNodes];

        if ([v141 count])
        {
          v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v141, "count")}];
          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v39 = v141;
          v40 = [v39 countByEnumeratingWithState:&v180 objects:v200 count:16];
          if (v40)
          {
            v41 = *v181;
            do
            {
              for (m = 0; m != v40; ++m)
              {
                if (*v181 != v41)
                {
                  objc_enumerationMutation(v39);
                }

                v43 = locationNamesByCategoryForAddress(*(*(&v180 + 1) + 8 * m));
                [v38 addObject:v43];
              }

              v40 = [v39 countByEnumeratingWithState:&v180 objects:v200 count:16];
            }

            while (v40);
          }

          [v145 setObject:v38 forKeyedSubscript:&unk_284483B40];
        }

        if (*(a1 + 64) && (v44 = CFAbsoluteTimeGetCurrent(), v45 = *(*(a1 + 80) + 8), v44 - *(v45 + 24) >= *(a1 + 104)) && (*(v45 + 24) = v44, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
        {
          *a3 = 1;
        }

        else
        {
          v46 = [v146 timedEvent];
          v140 = [v46 dateNodes];

          if ([v140 count])
          {
            v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v140, "count")}];
            v178 = 0u;
            v179 = 0u;
            v176 = 0u;
            v177 = 0u;
            v48 = v140;
            v49 = [v48 countByEnumeratingWithState:&v176 objects:v199 count:16];
            if (v49)
            {
              v50 = *v177;
              do
              {
                for (n = 0; n != v49; ++n)
                {
                  if (*v177 != v50)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v52 = [*(*(&v176 + 1) + 8 * n) localDate];
                  if (v52)
                  {
                    [v47 addObject:v52];
                  }
                }

                v49 = [v48 countByEnumeratingWithState:&v176 objects:v199 count:16];
              }

              while (v49);
            }

            [v145 setObject:v47 forKeyedSubscript:&unk_284483B58];
          }

          if (*(a1 + 64))
          {
            Current = CFAbsoluteTimeGetCurrent();
            v54 = *(*(a1 + 80) + 8);
            if (Current - *(v54 + 24) >= *(a1 + 104))
            {
              *(v54 + 24) = Current;
              LOBYTE(v154) = 0;
              (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24));
              *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
              v55 = *(*(*(a1 + 88) + 8) + 24);
              if (v55 == 1)
              {
                goto LABEL_81;
              }
            }
          }

          if (*(a1 + 112) && [v146 isTrip])
          {
            v56 = *(a1 + 32);
            v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v58 = [v57 localizedStringForKey:@"PGHighlightTripSearchableText" value:@"PGHighlightTripSearchableText" table:@"Localizable"];
            [v145 setObject:v58 forKeyedSubscript:&unk_284483B70];
          }

          if (*(a1 + 64) && (v59 = CFAbsoluteTimeGetCurrent(), v60 = *(*(a1 + 80) + 8), v59 - *(v60 + 24) >= *(a1 + 104)) && (*(v60 + 24) = v59, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), v55 = *(*(*(a1 + 88) + 8) + 24), v55 == 1))
          {
LABEL_81:
            *a3 = v55;
          }

          else
          {
            v61 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v62 = [v146 meaningfulEvent];
            v63 = [v62 meaningNodes];

            if (!v63)
            {
              if ([v146 isTrip])
              {
                v63 = 0;
              }

              else
              {
                v64 = [v146 eventCollection];
                v65 = [v64 eventMomentNodes];
                v63 = [v65 meaningNodes];
              }
            }

            v174[0] = MEMORY[0x277D85DD0];
            v174[1] = 3221225472;
            v174[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_251;
            v174[3] = &unk_278883BA8;
            v174[4] = *(a1 + 32);
            v137 = v61;
            v175 = v137;
            v134 = v63;
            [v63 enumerateNodesUsingBlock:v174];
            if ([v137 count])
            {
              v66 = [v137 allObjects];
              [v145 setObject:v66 forKeyedSubscript:&unk_284483B88];
            }

            if (*(a1 + 64) && (v67 = CFAbsoluteTimeGetCurrent(), v68 = *(*(a1 + 80) + 8), v67 - *(v68 + 24) >= *(a1 + 104)) && (*(v68 + 24) = v67, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
            {
              *a3 = 1;
            }

            else
            {
              v69 = *(a1 + 32);
              v70 = [v146 timedEvent];
              v136 = [v69 _holidayNodesForTimedEvent:v70];

              if ([v136 count])
              {
                v71 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v136, "count")}];
                v172 = 0u;
                v173 = 0u;
                v170 = 0u;
                v171 = 0u;
                v72 = v136;
                v73 = [v72 countByEnumeratingWithState:&v170 objects:v198 count:16];
                if (v73)
                {
                  v74 = *v171;
                  do
                  {
                    for (ii = 0; ii != v73; ++ii)
                    {
                      if (*v171 != v74)
                      {
                        objc_enumerationMutation(v72);
                      }

                      v76 = [*(*(&v170 + 1) + 8 * ii) name];
                      if ([v76 length])
                      {
                        v77 = [MEMORY[0x277D276C8] localizedNameForName:v76];
                        [v71 addObject:v77];
                      }
                    }

                    v73 = [v72 countByEnumeratingWithState:&v170 objects:v198 count:16];
                  }

                  while (v73);
                }

                [v145 setObject:v71 forKeyedSubscript:&unk_284483BA0];
              }

              if (*(a1 + 64) && (v78 = CFAbsoluteTimeGetCurrent(), v79 = *(*(a1 + 80) + 8), v78 - *(v79 + 24) >= *(a1 + 104)) && (*(v79 + 24) = v78, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
              {
                *a3 = 1;
              }

              else
              {
                v80 = [v146 locatedEvent];
                v135 = [v80 roiNodes];

                if ([v135 count])
                {
                  v81 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v135, "count")}];
                  v168 = 0u;
                  v169 = 0u;
                  v166 = 0u;
                  v167 = 0u;
                  v82 = v135;
                  v83 = [v82 countByEnumeratingWithState:&v166 objects:v197 count:16];
                  if (v83)
                  {
                    v84 = *v167;
                    do
                    {
                      for (jj = 0; jj != v83; ++jj)
                      {
                        if (*v167 != v84)
                        {
                          objc_enumerationMutation(v82);
                        }

                        v86 = *(*(&v166 + 1) + 8 * jj);
                        v87 = [v86 label];
                        v88 = [v87 isEqualToString:@"Urban"];

                        if ((v88 & 1) == 0)
                        {
                          v89 = [v86 localizedName];
                          if ([v89 length])
                          {
                            [v81 addObject:v89];
                          }
                        }
                      }

                      v83 = [v82 countByEnumeratingWithState:&v166 objects:v197 count:16];
                    }

                    while (v83);
                  }

                  if ([v81 count])
                  {
                    v90 = v81;
                  }

                  else
                  {
                    v90 = 0;
                  }

                  [v145 setObject:v90 forKeyedSubscript:&unk_284483BB8];
                }

                if (*(a1 + 64))
                {
                  v91 = CFAbsoluteTimeGetCurrent();
                  v92 = *(*(a1 + 80) + 8);
                  if (v91 - *(v92 + 24) >= *(a1 + 104))
                  {
                    *(v92 + 24) = v91;
                    LOBYTE(v154) = 0;
                    (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24));
                    *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24);
                    v93 = *(*(*(a1 + 88) + 8) + 24);
                    if (v93 == 1)
                    {
                      goto LABEL_134;
                    }
                  }
                }

                v94 = [v146 locatedEvent];
                if ([v94 happensPartiallyAtHomeOfPersonNodes:*(a1 + 48)])
                {
                  v95 = MEMORY[0x277CBEC38];
                }

                else
                {
                  v95 = 0;
                }

                [v145 setObject:v95 forKeyedSubscript:&unk_284483BD0];

                v96 = [v146 locatedEvent];
                v97 = [v96 happensPartiallyAtWorkOfPersonNodes:*(a1 + 48)];

                if (v97)
                {
                  v98 = *(a1 + 32);
                  v99 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v100 = [v99 localizedStringForKey:@"PGWorkSearchableText" value:@"PGWorkSearchableText" table:@"Localizable"];
                  [v145 setObject:v100 forKeyedSubscript:&unk_284483BE8];
                }

                if (*(a1 + 64) && (v101 = CFAbsoluteTimeGetCurrent(), v102 = *(*(a1 + 80) + 8), v101 - *(v102 + 24) >= *(a1 + 104)) && (*(v102 + 24) = v101, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), v93 = *(*(*(a1 + 88) + 8) + 24), v93 == 1))
                {
LABEL_134:
                  *a3 = v93;
                }

                else
                {
                  v103 = [MEMORY[0x277CBEB38] dictionary];
                  v104 = *(a1 + 32);
                  v105 = [v146 businessedEvent];
                  v164[0] = MEMORY[0x277D85DD0];
                  v164[1] = 3221225472;
                  v164[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_269;
                  v164[3] = &unk_278883BD0;
                  v106 = v103;
                  v165 = v106;
                  [v104 _enumerateBusinessAndPublicEventKeywordsForEvent:v105 usingBlock:v164];

                  v162[0] = MEMORY[0x277D85DD0];
                  v162[1] = 3221225472;
                  v162[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_3;
                  v162[3] = &unk_278883BF8;
                  v107 = v145;
                  v163 = v107;
                  [v106 enumerateKeysAndObjectsUsingBlock:v162];
                  if (*(a1 + 64) && (v108 = CFAbsoluteTimeGetCurrent(), v109 = *(*(a1 + 80) + 8), v108 - *(v109 + 24) >= *(a1 + 104)) && (*(v109 + 24) = v108, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
                  {
                    *a3 = 1;
                  }

                  else
                  {
                    v110 = [v146 timedEvent];
                    v111 = [v110 seasonNodes];

                    v112 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v111, "count")}];
                    v160 = 0u;
                    v161 = 0u;
                    v158 = 0u;
                    v159 = 0u;
                    v113 = v111;
                    v114 = [v113 countByEnumeratingWithState:&v158 objects:v196 count:16];
                    if (v114)
                    {
                      v115 = *v159;
                      do
                      {
                        for (kk = 0; kk != v114; ++kk)
                        {
                          if (*v159 != v115)
                          {
                            objc_enumerationMutation(v113);
                          }

                          v117 = [*(*(&v158 + 1) + 8 * kk) localizedName];
                          [v112 addObject:v117];
                        }

                        v114 = [v113 countByEnumeratingWithState:&v158 objects:v196 count:16];
                      }

                      while (v114);
                    }

                    [v107 setObject:v112 forKeyedSubscript:&unk_284483C00];
                    if (*(a1 + 64) && (v118 = CFAbsoluteTimeGetCurrent(), v119 = *(*(a1 + 80) + 8), v118 - *(v119 + 24) >= *(a1 + 104)) && (*(v119 + 24) = v118, LOBYTE(v154) = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
                    {
                      *a3 = 1;
                    }

                    else
                    {
                      v120 = [MEMORY[0x277CBEB38] dictionary];
                      v154 = 0;
                      v155 = &v154;
                      v156 = 0x2020000000;
                      v157 = 0;
                      v121 = [v146 eventCollection];
                      v122 = [v121 eventMomentNodes];
                      v151[0] = MEMORY[0x277D85DD0];
                      v151[1] = 3221225472;
                      v151[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_275;
                      v151[3] = &unk_278889050;
                      v153 = &v154;
                      v123 = v120;
                      v152 = v123;
                      [v122 enumerateNodesUsingBlock:v151];

                      if (*(a1 + 64) && (v124 = CFAbsoluteTimeGetCurrent(), v125 = *(*(a1 + 80) + 8), v124 - *(v125 + 24) >= *(a1 + 104)) && (*(v125 + 24) = v124, v150 = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) == 1))
                      {
                        *a3 = 1;
                      }

                      else
                      {
                        v126 = v155[3];
                        v127 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v123, "count")}];
                        v147[0] = MEMORY[0x277D85DD0];
                        v147[1] = 3221225472;
                        v147[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_3_280;
                        v147[3] = &unk_278883C48;
                        v149 = v126 * 0.3;
                        v128 = v127;
                        v148 = v128;
                        [v123 enumerateKeysAndObjectsUsingBlock:v147];
                        [v107 setObject:v128 forKeyedSubscript:&unk_284483C18];
                        if (*(a1 + 64) && (v129 = CFAbsoluteTimeGetCurrent(), v130 = *(*(a1 + 80) + 8), v129 - *(v130 + 24) >= *(a1 + 104)) && (*(v130 + 24) = v129, v150 = 0, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) |= v150, *(*(*(a1 + 88) + 8) + 24) == 1))
                        {
                          *a3 = 1;
                        }

                        else
                        {
                          v131 = *(a1 + 56);
                          v132 = [v146 UUID];
                          [v131 setObject:v107 forKeyedSubscript:v132];
                        }
                      }

                      _Block_object_dispose(&v154, 8);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(context);
  v133 = *MEMORY[0x277D85DE8];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_251(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 label];
  if (([v4 isEqualToString:@"Gathering"] & 1) == 0)
  {
    v5 = localizationKeyForMeaningLabel(v4);
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:v5 value:v5 table:@"Localizable"];

      [*(a1 + 40) addObject:v8];
    }

    else
    {
      v9 = +[PGLogging sharedLogging];
      v10 = [v9 loggingConnection];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "No localization key for meaning label: (%@)", buf, 0xCu);
      }
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_253;
    v13[3] = &unk_278883BA8;
    v11 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v11;
    [v3 traverseParentMeaningHierarchyUsingBlock:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_269(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_2;
  v4[3] = &unk_278885788;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 allObjects];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_275(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 numberOfAssets];
  *(*(*(a1 + 40) + 8) + 24) += v4;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_2_276;
  v5[3] = &unk_278883C20;
  v6 = *(a1 + 32);
  v7 = v4;
  [v3 enumerateSceneEdgesAndNodesUsingBlock:v5];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_3_280(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  [a3 doubleValue];
  if (v5 >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_2_276(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  if ([a2 isSearchableForEvent])
  {
    if ([v10 isIndexed])
    {
      v5 = [v10 sceneIdentifier];
      if (v5)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v5];
        v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
        v8 = [v7 unsignedIntegerValue];

        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40) + v8];
        [*(a1 + 32) setObject:v9 forKeyedSubscript:v6];
      }
    }
  }
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }

  [v6 addObjectsFromArray:v5];
}

void __97__PGSearchKeywordComputer_searchKeywordsByEventWithEventUUIDs_ofType_photoLibrary_progressBlock___block_invoke_253(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [a2 label];
  v4 = localizationKeyForMeaningLabel(v3);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:v4 value:v4 table:@"Localizable"];

    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v8 = +[PGLogging sharedLogging];
    v9 = [v8 loggingConnection];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_error_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_ERROR, "No localization key for meaning label: (%@)", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (PGSearchKeywordComputer)initWithGraph:(id)a3 searchComputationCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PGSearchKeywordComputer;
  v9 = [(PGSearchKeywordComputer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, a3);
    objc_storeStrong(&v10->_searchComputationCache, a4);
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    userLocale = v10->_userLocale;
    v10->_userLocale = v11;

    v13 = [objc_alloc(MEMORY[0x277D276D8]) initWithLocale:v10->_userLocale];
    holidayService = v10->_holidayService;
    v10->_holidayService = v13;
  }

  return v10;
}

@end