@interface PGPhotosChallengeMetricEventFetchHelper
- (BOOL)_migrationStepNeededForTripTitlingQuestions:(id)a3;
- (NSDictionary)activePersonUUIDByPersonUUID;
- (NSDictionary)assetByAssetIdentifier;
- (NSDictionary)assetByAssetSyndicationIdentifier;
- (NSDictionary)memoryByMemoryIdentifier;
- (NSDictionary)momentUUIDByAssetIdentifier;
- (NSSet)dayHighlightAssetIdentifiers;
- (NSSet)momentUUIDsForExhaustiveMomentLabelingQuestion;
- (NSSet)tripKeyAssetIdentifiers;
- (PGPhotosChallengeMetricEventFetchHelper)initWithGraphManager:(id)a3;
- (id)initForTestingWithQuestions:(id)a3 assetsByAssetId:(id)a4 momentUUIDByAssetIdentifier:(id)a5 activePersonUUIDByPersonUUID:(id)a6 tripKeyAssetIdentifiers:(id)a7 momentUUIDsForExhaustiveMomentLabeling:(id)a8 dayHighlightAssetIdentifiers:(id)a9;
- (void)_buildQuestionsByQuestionTypeByEntityTypeFromQuestions:(id)a3;
- (void)_prefetchActivePersonUUIDByPersonUUID;
- (void)_prefetchAssetByAssetIdentifier;
- (void)_prefetchAssetByAssetSyndicationIdentifier;
- (void)_prefetchDayHighlightAssetIdentifiers;
- (void)_prefetchMemoryByMemoryIdentifier;
- (void)_prefetchMomentUUIDByAssetIdentifier;
- (void)_prefetchMomentUUIDsForExhaustiveMomentLabelingQuestion;
- (void)_prefetchQuestions;
- (void)_prefetchTripKeyAssetIdentifiers;
@end

@implementation PGPhotosChallengeMetricEventFetchHelper

- (void)_prefetchDayHighlightAssetIdentifiers
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!self->_dayHighlightAssetIdentifiers)
  {
    v3 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v21[0] = *MEMORY[0x277CD9AA8];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v3 setFetchPropertySets:v4];

    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"highlightBeingKeyAssetPrivate.kind = %d || highlightBeingKeyAssetShared.kind = %d", 0, 0];
    [v3 setInternalPredicate:v5];

    v6 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v3];
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * v12) uuid];
          [(NSSet *)v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    dayHighlightAssetIdentifiers = self->_dayHighlightAssetIdentifiers;
    self->_dayHighlightAssetIdentifiers = v7;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSSet)dayHighlightAssetIdentifiers
{
  dayHighlightAssetIdentifiers = self->_dayHighlightAssetIdentifiers;
  if (!dayHighlightAssetIdentifiers)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)self _prefetchDayHighlightAssetIdentifiers];
    dayHighlightAssetIdentifiers = self->_dayHighlightAssetIdentifiers;
  }

  return dayHighlightAssetIdentifiers;
}

- (void)_prefetchTripKeyAssetIdentifiers
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!self->_tripKeyAssetIdentifiers)
  {
    v3 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v21[0] = *MEMORY[0x277CD9AA8];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v3 setFetchPropertySets:v4];

    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dayGroupHighlightBeingKeyAssetPrivate.type = %d || dayGroupHighlightBeingKeyAssetPrivate.type = %d", 1, 2];
    [v3 setInternalPredicate:v5];

    v6 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v3];
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * v12) uuid];
          [(NSSet *)v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    tripKeyAssetIdentifiers = self->_tripKeyAssetIdentifiers;
    self->_tripKeyAssetIdentifiers = v7;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSSet)tripKeyAssetIdentifiers
{
  tripKeyAssetIdentifiers = self->_tripKeyAssetIdentifiers;
  if (!tripKeyAssetIdentifiers)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)self _prefetchTripKeyAssetIdentifiers];
    tripKeyAssetIdentifiers = self->_tripKeyAssetIdentifiers;
  }

  return tripKeyAssetIdentifiers;
}

- (void)_prefetchMemoryByMemoryIdentifier
{
  v46 = *MEMORY[0x277D85DE8];
  if (!self->_memoryByMemoryIdentifier)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v30 = self;
    v4 = [(NSDictionary *)self->_questionsByQuestionTypeByEntityType objectForKeyedSubscript:&unk_284483768];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v40;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v40 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v39 + 1) + 8 * i);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v36;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v36 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v35 + 1) + 8 * j) entityIdentifier];
                [v3 addObject:v16];
              }

              v13 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v7);
    }

    v17 = [(PHPhotoLibrary *)v30->_photoLibrary librarySpecificFetchOptions];
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN (%@)", v3];
    [v17 setPredicate:v18];

    v19 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v17];
    v20 = [MEMORY[0x277CBEB38] dictionary];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v31 + 1) + 8 * k);
          v27 = [v26 uuid];
          [(NSDictionary *)v20 setObject:v26 forKeyedSubscript:v27];
        }

        v23 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v23);
    }

    memoryByMemoryIdentifier = v30->_memoryByMemoryIdentifier;
    v30->_memoryByMemoryIdentifier = v20;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)memoryByMemoryIdentifier
{
  memoryByMemoryIdentifier = self->_memoryByMemoryIdentifier;
  if (!memoryByMemoryIdentifier)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)self _prefetchMemoryByMemoryIdentifier];
    memoryByMemoryIdentifier = self->_memoryByMemoryIdentifier;
  }

  return memoryByMemoryIdentifier;
}

- (void)_prefetchActivePersonUUIDByPersonUUID
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v37 = self;
  v4 = [(NSDictionary *)self->_questionsByQuestionTypeByEntityType objectForKeyedSubscript:&unk_284483750];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v43 objects:v54 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v44;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v44 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v43 + 1) + 8 * j) entityIdentifier];
              [v3 addObject:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v43 objects:v54 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v7);
  }

  v17 = [(PHPhotoLibrary *)v37->_photoLibrary librarySpecificFetchOptions];
  [v17 setPersonContext:5];
  v18 = MEMORY[0x277CD9938];
  v19 = [v3 allObjects];
  v36 = v17;
  v20 = [v18 fetchPersonsWithLocalIdentifiers:v19 options:v17];

  v38 = [(PHPhotoLibrary *)v37->_photoLibrary librarySpecificFetchOptions];
  v21 = [MEMORY[0x277CBEB38] dictionary];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      v26 = 0;
      do
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v39 + 1) + 8 * v26);
        v28 = [v27 uuid];
        if ([v27 verifiedType] == -2 && (objc_msgSend(MEMORY[0x277CD9938], "fetchFinalMergeTargetPersonsForPersonWithUUID:options:", v28, v38), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "firstObject"), v30 = objc_claimAutoreleasedReturnValue(), v27, v29, (v27 = v30) == 0))
        {
          v32 = +[PGLogging sharedLogging];
          v31 = [v32 loggingConnection];

          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v52 = v28;
            _os_log_error_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_ERROR, "Failed to find final merge target person for person with UUID: '%@'", buf, 0xCu);
          }

          v27 = 0;
        }

        else
        {
          v31 = [v27 uuid];
          [(NSDictionary *)v21 setObject:v31 forKeyedSubscript:v28];
        }

        ++v26;
      }

      while (v24 != v26);
      v33 = [v22 countByEnumeratingWithState:&v39 objects:v53 count:16];
      v24 = v33;
    }

    while (v33);
  }

  activePersonUUIDByPersonUUID = v37->_activePersonUUIDByPersonUUID;
  v37->_activePersonUUIDByPersonUUID = v21;

  v35 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)activePersonUUIDByPersonUUID
{
  activePersonUUIDByPersonUUID = self->_activePersonUUIDByPersonUUID;
  if (!activePersonUUIDByPersonUUID)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)self _prefetchActivePersonUUIDByPersonUUID];
    activePersonUUIDByPersonUUID = self->_activePersonUUIDByPersonUUID;
  }

  return activePersonUUIDByPersonUUID;
}

- (void)_prefetchMomentUUIDByAssetIdentifier
{
  v8 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = MEMORY[0x277CD98F8];
  v4 = [(PGPhotosChallengeMetricEventFetchHelper *)self assetByAssetIdentifier];
  v5 = [v4 allValues];
  v6 = [v3 fetchMomentUUIDByAssetUUIDForAssets:v5 options:v8];
  momentUUIDByAssetIdentifier = self->_momentUUIDByAssetIdentifier;
  self->_momentUUIDByAssetIdentifier = v6;
}

- (NSDictionary)momentUUIDByAssetIdentifier
{
  momentUUIDByAssetIdentifier = self->_momentUUIDByAssetIdentifier;
  if (!momentUUIDByAssetIdentifier)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)self _prefetchMomentUUIDByAssetIdentifier];
    momentUUIDByAssetIdentifier = self->_momentUUIDByAssetIdentifier;
  }

  return momentUUIDByAssetIdentifier;
}

- (void)_prefetchAssetByAssetSyndicationIdentifier
{
  v62 = *MEMORY[0x277D85DE8];
  if (!self->_assetByAssetSyndicationIdentifier)
  {
    if (!self->_questionsByQuestionTypeByEntityType)
    {
      [(PGPhotosChallengeMetricEventFetchHelper *)self _prefetchQuestions];
    }

    v3 = [MEMORY[0x277CBEB58] set];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = self;
    v4 = [(NSDictionary *)self->_questionsByQuestionTypeByEntityType objectForKeyedSubscript:&unk_284483738];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v53;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v53 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v52 + 1) + 8 * i);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v49;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v49 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v48 + 1) + 8 * j);
                if (![v16 entityType] && objc_msgSend(v16, "type") == 18)
                {
                  v17 = [v16 entityIdentifier];
                  [v3 addObject:v17];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v48 objects:v60 count:16];
            }

            while (v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v7);
    }

    v47 = 0;
    v18 = [MEMORY[0x277CD9948] openPhotoLibraryWithWellKnownIdentifier:3 error:&v47];
    v19 = v47;
    v20 = v19;
    if (v18)
    {
      v40 = v19;
      v41 = v18;
      v21 = [v18 librarySpecificFetchOptions];
      v22 = *MEMORY[0x277CD9AD0];
      v57[0] = *MEMORY[0x277CD9B10];
      v57[1] = v22;
      v57[2] = *MEMORY[0x277CD9A80];
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
      [v21 setFetchPropertySets:v23];

      [v21 setIncludeGuestAssets:1];
      v24 = MEMORY[0x277CD97A8];
      v25 = [v3 allObjects];
      v26 = [v24 fetchAssetsWithSyndicationIdentifiers:v25 options:v21];

      v27 = [MEMORY[0x277CBEB38] dictionary];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v28 = v26;
      v29 = [v28 countByEnumeratingWithState:&v43 objects:v56 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v44;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v44 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v43 + 1) + 8 * k);
            v34 = [v33 curationProperties];
            v35 = [v34 syndicationIdentifier];
            [(NSDictionary *)v27 setObject:v33 forKeyedSubscript:v35];
          }

          v30 = [v28 countByEnumeratingWithState:&v43 objects:v56 count:16];
        }

        while (v30);
      }

      assetByAssetSyndicationIdentifier = v42->_assetByAssetSyndicationIdentifier;
      v42->_assetByAssetSyndicationIdentifier = v27;

      v20 = v40;
      v18 = v41;
    }

    else
    {
      v37 = +[PGLogging sharedLogging];
      v38 = [v37 loggingConnection];

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v20;
        _os_log_error_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_ERROR, "PGPhotosChallengeMetricEventFetchHelper: Failed to open syndicated library: %@", buf, 0xCu);
      }

      v21 = v42->_assetByAssetSyndicationIdentifier;
      v42->_assetByAssetSyndicationIdentifier = MEMORY[0x277CBEC10];
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)assetByAssetSyndicationIdentifier
{
  assetByAssetSyndicationIdentifier = self->_assetByAssetSyndicationIdentifier;
  if (!assetByAssetSyndicationIdentifier)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)self _prefetchAssetByAssetSyndicationIdentifier];
    assetByAssetSyndicationIdentifier = self->_assetByAssetSyndicationIdentifier;
  }

  return assetByAssetSyndicationIdentifier;
}

- (void)_prefetchAssetByAssetIdentifier
{
  v51 = *MEMORY[0x277D85DE8];
  if (!self->_assetByAssetIdentifier)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v35 = self;
    v4 = [(NSDictionary *)self->_questionsByQuestionTypeByEntityType objectForKeyedSubscript:&unk_284483738];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v45;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v45 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v44 + 1) + 8 * i);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v41;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v41 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v40 + 1) + 8 * j);
                if (![v16 entityType] && objc_msgSend(v16, "type") != 18)
                {
                  v17 = [v16 entityIdentifier];
                  [v3 addObject:v17];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v40 objects:v49 count:16];
            }

            while (v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v7);
    }

    v18 = [(PHPhotoLibrary *)v35->_photoLibrary librarySpecificFetchOptions];
    v19 = MEMORY[0x277CBEB18];
    v20 = +[PGCurationManager assetPropertySetsForCuration];
    v21 = [v19 arrayWithArray:v20];

    [v21 addObject:*MEMORY[0x277CD9AA0]];
    [v18 setFetchPropertySets:v21];
    v22 = MEMORY[0x277CD97A8];
    v23 = [v3 allObjects];
    v24 = [v22 fetchAssetsWithLocalIdentifiers:v23 options:v18];

    v25 = [MEMORY[0x277CBEB38] dictionary];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = v24;
    v27 = [v26 countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v36 + 1) + 8 * k);
          v32 = [v31 uuid];
          [(NSDictionary *)v25 setObject:v31 forKeyedSubscript:v32];
        }

        v28 = [v26 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v28);
    }

    assetByAssetIdentifier = v35->_assetByAssetIdentifier;
    v35->_assetByAssetIdentifier = v25;
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)assetByAssetIdentifier
{
  assetByAssetIdentifier = self->_assetByAssetIdentifier;
  if (!assetByAssetIdentifier)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)self _prefetchAssetByAssetIdentifier];
    assetByAssetIdentifier = self->_assetByAssetIdentifier;
  }

  return assetByAssetIdentifier;
}

- (void)_prefetchMomentUUIDsForExhaustiveMomentLabelingQuestion
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self->_momentUUIDsForExhaustiveMomentLabelingQuestion)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    v4 = [(NSDictionary *)self->_questionsByQuestionTypeByEntityType objectForKeyedSubscript:&unk_284483708];
    v5 = [v4 objectForKeyedSubscript:&unk_284483720];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * v10) entityIdentifier];
          [(NSSet *)v3 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    momentUUIDsForExhaustiveMomentLabelingQuestion = self->_momentUUIDsForExhaustiveMomentLabelingQuestion;
    self->_momentUUIDsForExhaustiveMomentLabelingQuestion = v3;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSSet)momentUUIDsForExhaustiveMomentLabelingQuestion
{
  momentUUIDsForExhaustiveMomentLabelingQuestion = self->_momentUUIDsForExhaustiveMomentLabelingQuestion;
  if (!momentUUIDsForExhaustiveMomentLabelingQuestion)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)self _prefetchMomentUUIDsForExhaustiveMomentLabelingQuestion];
    momentUUIDsForExhaustiveMomentLabelingQuestion = self->_momentUUIDsForExhaustiveMomentLabelingQuestion;
  }

  return momentUUIDsForExhaustiveMomentLabelingQuestion;
}

- (void)_buildQuestionsByQuestionTypeByEntityTypeFromQuestions:(id)a3
{
  v20 = self;
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 entityType];
        v11 = [v9 type];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v10];
        v13 = [(NSDictionary *)v4 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v13 = [MEMORY[0x277CBEB38] dictionary];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v10];
          [(NSDictionary *)v4 setObject:v13 forKeyedSubscript:v14];
        }

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
        v16 = [v13 objectForKeyedSubscript:v15];

        if (!v16)
        {
          v16 = [MEMORY[0x277CBEB18] array];
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
          [v13 setObject:v16 forKeyedSubscript:v17];
        }

        [v16 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  questionsByQuestionTypeByEntityType = v20->_questionsByQuestionTypeByEntityType;
  v20->_questionsByQuestionTypeByEntityType = v4;

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_migrationStepNeededForTripTitlingQuestions:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = *MEMORY[0x277D3CA00];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        if ([v12 type] == 26 && v10 > objc_msgSend(v12, "questionVersion"))
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v13 = [v5 count];
  if (v13)
  {
    photoLibrary = self->_photoLibrary;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __87__PGPhotosChallengeMetricEventFetchHelper__migrationStepNeededForTripTitlingQuestions___block_invoke;
    v23[3] = &unk_27888A660;
    v24 = v5;
    v22 = 0;
    v15 = [(PHPhotoLibrary *)photoLibrary performChangesAndWait:v23 error:&v22];
    v16 = v22;
    if (v15)
    {
      v17 = +[PGLogging sharedLogging];
      v18 = [v17 loggingConnection];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[Questions] Succeeded performing changes on Trip Titling Questions with duplicate titles", v21, 2u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

void __87__PGPhotosChallengeMetricEventFetchHelper__migrationStepNeededForTripTitlingQuestions___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v25 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v25)
  {
    v24 = *v29;
    v1 = *MEMORY[0x277D3CA08];
    v27 = *MEMORY[0x277D3C9F8];
    v21 = *MEMORY[0x277D3C8B8];
    v2 = *MEMORY[0x277D3C9E0];
    v3 = *MEMORY[0x277D3C8B0];
    v22 = *MEMORY[0x277D3CA00];
    v23 = *MEMORY[0x277D3CA08];
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v28 + 1) + 8 * i);
        v5 = [v26 additionalInfo];
        v6 = MEMORY[0x277D3C7E8];
        v7 = [v5 objectForKeyedSubscript:v1];
        v8 = [v6 titleWithoutFormattingForTitle:v7];

        v9 = MEMORY[0x277D3C7E8];
        v10 = [v5 objectForKeyedSubscript:v27];
        v11 = [v9 titleWithoutFormattingForTitle:v10];

        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v13 = [v8 isEqualToString:v11];
        if ((v13 & 1) == 0)
        {
          v14 = [v5 objectForKeyedSubscript:v21];

          if (v14)
          {
            v15 = [v5 objectForKeyedSubscript:v21];
            [v12 setObject:v15 forKeyedSubscript:v21];
          }
        }

        v16 = [MEMORY[0x277CCABB0] numberWithBool:v13];
        [v12 setObject:v16 forKeyedSubscript:v2];

        v1 = v23;
        [v12 setObject:v8 forKeyedSubscript:v23];
        [v12 setObject:v11 forKeyedSubscript:v27];
        v17 = [v5 objectForKeyedSubscript:v3];
        [v12 setObject:v17 forKeyedSubscript:v3];

        v18 = [MEMORY[0x277CD9978] changeRequestForQuestion:v26];
        [v18 setAdditionalInfo:v12];
        [v18 setQuestionVersion:v22];
      }

      v25 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v25);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_prefetchQuestions
{
  v5 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x277CD9970] fetchAnsweredYesOrNoQuestionsWithOptions:? validQuestionsOnly:?];
  if ([(PGPhotosChallengeMetricEventFetchHelper *)self _migrationStepNeededForTripTitlingQuestions:v3])
  {
    v4 = [MEMORY[0x277CD9970] fetchAnsweredYesOrNoQuestionsWithOptions:v5 validQuestionsOnly:1];

    v3 = v4;
  }

  [(PGPhotosChallengeMetricEventFetchHelper *)self _buildQuestionsByQuestionTypeByEntityTypeFromQuestions:v3];
}

- (id)initForTestingWithQuestions:(id)a3 assetsByAssetId:(id)a4 momentUUIDByAssetIdentifier:(id)a5 activePersonUUIDByPersonUUID:(id)a6 tripKeyAssetIdentifiers:(id)a7 momentUUIDsForExhaustiveMomentLabeling:(id)a8 dayHighlightAssetIdentifiers:(id)a9
{
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = PGPhotosChallengeMetricEventFetchHelper;
  v18 = [(PGPhotosChallengeMetricEventFetchHelper *)&v25 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)v18 _buildQuestionsByQuestionTypeByEntityTypeFromQuestions:v24, v21, v22, v23];
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 8, a5);
    objc_storeStrong(p_isa + 9, a6);
    objc_storeStrong(p_isa + 11, a7);
    objc_storeStrong(p_isa + 6, a8);
    objc_storeStrong(p_isa + 12, a9);
  }

  return p_isa;
}

- (PGPhotosChallengeMetricEventFetchHelper)initWithGraphManager:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PGPhotosChallengeMetricEventFetchHelper;
  v6 = [(PGPhotosChallengeMetricEventFetchHelper *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
    v8 = [v5 photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = v8;

    v10 = [v5 workingContextForSuggestions];
    v11 = [[PGSuggestionSession alloc] initWithProfile:5 workingContext:v10];
    featuredPhotosSuggestionSession = v7->_featuredPhotosSuggestionSession;
    v7->_featuredPhotosSuggestionSession = v11;
  }

  return v7;
}

@end