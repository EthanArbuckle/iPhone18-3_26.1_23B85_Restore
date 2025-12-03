@interface PGPhotosChallengeMetricEventFetchHelper
- (BOOL)_migrationStepNeededForTripTitlingQuestions:(id)questions;
- (NSDictionary)activePersonUUIDByPersonUUID;
- (NSDictionary)assetByAssetIdentifier;
- (NSDictionary)assetByAssetSyndicationIdentifier;
- (NSDictionary)memoryByMemoryIdentifier;
- (NSDictionary)momentUUIDByAssetIdentifier;
- (NSSet)dayHighlightAssetIdentifiers;
- (NSSet)momentUUIDsForExhaustiveMomentLabelingQuestion;
- (NSSet)tripKeyAssetIdentifiers;
- (PGPhotosChallengeMetricEventFetchHelper)initWithGraphManager:(id)manager;
- (id)initForTestingWithQuestions:(id)questions assetsByAssetId:(id)id momentUUIDByAssetIdentifier:(id)identifier activePersonUUIDByPersonUUID:(id)d tripKeyAssetIdentifiers:(id)identifiers momentUUIDsForExhaustiveMomentLabeling:(id)labeling dayHighlightAssetIdentifiers:(id)assetIdentifiers;
- (void)_buildQuestionsByQuestionTypeByEntityTypeFromQuestions:(id)questions;
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
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v21[0] = *MEMORY[0x277CD9AA8];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v4];

    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"highlightBeingKeyAssetPrivate.kind = %d || highlightBeingKeyAssetShared.kind = %d", 0, 0];
    [librarySpecificFetchOptions setInternalPredicate:v5];

    v6 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
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

          uuid = [*(*(&v16 + 1) + 8 * v12) uuid];
          [(NSSet *)v7 addObject:uuid];

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
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v21[0] = *MEMORY[0x277CD9AA8];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v4];

    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"dayGroupHighlightBeingKeyAssetPrivate.type = %d || dayGroupHighlightBeingKeyAssetPrivate.type = %d", 1, 2];
    [librarySpecificFetchOptions setInternalPredicate:v5];

    v6 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
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

          uuid = [*(*(&v16 + 1) + 8 * v12) uuid];
          [(NSSet *)v7 addObject:uuid];

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
    selfCopy = self;
    v4 = [(NSDictionary *)self->_questionsByQuestionTypeByEntityType objectForKeyedSubscript:&unk_284483768];
    allValues = [v4 allValues];

    v6 = [allValues countByEnumeratingWithState:&v39 objects:v45 count:16];
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
            objc_enumerationMutation(allValues);
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

                entityIdentifier = [*(*(&v35 + 1) + 8 * j) entityIdentifier];
                [v3 addObject:entityIdentifier];
              }

              v13 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v13);
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v7);
    }

    librarySpecificFetchOptions = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
    v18 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN (%@)", v3];
    [librarySpecificFetchOptions setPredicate:v18];

    v19 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
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
          uuid = [v26 uuid];
          [(NSDictionary *)dictionary setObject:v26 forKeyedSubscript:uuid];
        }

        v23 = [v21 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v23);
    }

    memoryByMemoryIdentifier = selfCopy->_memoryByMemoryIdentifier;
    selfCopy->_memoryByMemoryIdentifier = dictionary;
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
  selfCopy = self;
  v4 = [(NSDictionary *)self->_questionsByQuestionTypeByEntityType objectForKeyedSubscript:&unk_284483750];
  allValues = [v4 allValues];

  v6 = [allValues countByEnumeratingWithState:&v47 objects:v55 count:16];
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
          objc_enumerationMutation(allValues);
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

              entityIdentifier = [*(*(&v43 + 1) + 8 * j) entityIdentifier];
              [v3 addObject:entityIdentifier];
            }

            v13 = [v11 countByEnumeratingWithState:&v43 objects:v54 count:16];
          }

          while (v13);
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v7);
  }

  librarySpecificFetchOptions = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setPersonContext:5];
  v18 = MEMORY[0x277CD9938];
  allObjects = [v3 allObjects];
  v36 = librarySpecificFetchOptions;
  v20 = [v18 fetchPersonsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];

  librarySpecificFetchOptions2 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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
        uuid = [v27 uuid];
        if ([v27 verifiedType] == -2 && (objc_msgSend(MEMORY[0x277CD9938], "fetchFinalMergeTargetPersonsForPersonWithUUID:options:", uuid, librarySpecificFetchOptions2), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "firstObject"), v30 = objc_claimAutoreleasedReturnValue(), v27, v29, (v27 = v30) == 0))
        {
          v32 = +[PGLogging sharedLogging];
          loggingConnection = [v32 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v52 = uuid;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to find final merge target person for person with UUID: '%@'", buf, 0xCu);
          }

          v27 = 0;
        }

        else
        {
          loggingConnection = [v27 uuid];
          [(NSDictionary *)dictionary setObject:loggingConnection forKeyedSubscript:uuid];
        }

        ++v26;
      }

      while (v24 != v26);
      v33 = [v22 countByEnumeratingWithState:&v39 objects:v53 count:16];
      v24 = v33;
    }

    while (v33);
  }

  activePersonUUIDByPersonUUID = selfCopy->_activePersonUUIDByPersonUUID;
  selfCopy->_activePersonUUIDByPersonUUID = dictionary;

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
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = MEMORY[0x277CD98F8];
  assetByAssetIdentifier = [(PGPhotosChallengeMetricEventFetchHelper *)self assetByAssetIdentifier];
  allValues = [assetByAssetIdentifier allValues];
  v6 = [v3 fetchMomentUUIDByAssetUUIDForAssets:allValues options:librarySpecificFetchOptions];
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
    selfCopy = self;
    v4 = [(NSDictionary *)self->_questionsByQuestionTypeByEntityType objectForKeyedSubscript:&unk_284483738];
    allValues = [v4 allValues];

    v6 = [allValues countByEnumeratingWithState:&v52 objects:v61 count:16];
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
            objc_enumerationMutation(allValues);
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
                  entityIdentifier = [v16 entityIdentifier];
                  [v3 addObject:entityIdentifier];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v48 objects:v60 count:16];
            }

            while (v13);
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v52 objects:v61 count:16];
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
      librarySpecificFetchOptions = [v18 librarySpecificFetchOptions];
      v22 = *MEMORY[0x277CD9AD0];
      v57[0] = *MEMORY[0x277CD9B10];
      v57[1] = v22;
      v57[2] = *MEMORY[0x277CD9A80];
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
      [librarySpecificFetchOptions setFetchPropertySets:v23];

      [librarySpecificFetchOptions setIncludeGuestAssets:1];
      v24 = MEMORY[0x277CD97A8];
      allObjects = [v3 allObjects];
      v26 = [v24 fetchAssetsWithSyndicationIdentifiers:allObjects options:librarySpecificFetchOptions];

      dictionary = [MEMORY[0x277CBEB38] dictionary];
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
            curationProperties = [v33 curationProperties];
            syndicationIdentifier = [curationProperties syndicationIdentifier];
            [(NSDictionary *)dictionary setObject:v33 forKeyedSubscript:syndicationIdentifier];
          }

          v30 = [v28 countByEnumeratingWithState:&v43 objects:v56 count:16];
        }

        while (v30);
      }

      assetByAssetSyndicationIdentifier = selfCopy->_assetByAssetSyndicationIdentifier;
      selfCopy->_assetByAssetSyndicationIdentifier = dictionary;

      v20 = v40;
      v18 = v41;
    }

    else
    {
      v37 = +[PGLogging sharedLogging];
      loggingConnection = [v37 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v59 = v20;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "PGPhotosChallengeMetricEventFetchHelper: Failed to open syndicated library: %@", buf, 0xCu);
      }

      librarySpecificFetchOptions = selfCopy->_assetByAssetSyndicationIdentifier;
      selfCopy->_assetByAssetSyndicationIdentifier = MEMORY[0x277CBEC10];
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
    selfCopy = self;
    v4 = [(NSDictionary *)self->_questionsByQuestionTypeByEntityType objectForKeyedSubscript:&unk_284483738];
    allValues = [v4 allValues];

    v6 = [allValues countByEnumeratingWithState:&v44 objects:v50 count:16];
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
            objc_enumerationMutation(allValues);
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
                  entityIdentifier = [v16 entityIdentifier];
                  [v3 addObject:entityIdentifier];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v40 objects:v49 count:16];
            }

            while (v13);
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v7);
    }

    librarySpecificFetchOptions = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
    v19 = MEMORY[0x277CBEB18];
    v20 = +[PGCurationManager assetPropertySetsForCuration];
    v21 = [v19 arrayWithArray:v20];

    [v21 addObject:*MEMORY[0x277CD9AA0]];
    [librarySpecificFetchOptions setFetchPropertySets:v21];
    v22 = MEMORY[0x277CD97A8];
    allObjects = [v3 allObjects];
    v24 = [v22 fetchAssetsWithLocalIdentifiers:allObjects options:librarySpecificFetchOptions];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
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
          uuid = [v31 uuid];
          [(NSDictionary *)dictionary setObject:v31 forKeyedSubscript:uuid];
        }

        v28 = [v26 countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v28);
    }

    assetByAssetIdentifier = selfCopy->_assetByAssetIdentifier;
    selfCopy->_assetByAssetIdentifier = dictionary;
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

          entityIdentifier = [*(*(&v14 + 1) + 8 * v10) entityIdentifier];
          [(NSSet *)v3 addObject:entityIdentifier];

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

- (void)_buildQuestionsByQuestionTypeByEntityTypeFromQuestions:(id)questions
{
  selfCopy = self;
  v27 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = questionsCopy;
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
        entityType = [v9 entityType];
        type = [v9 type];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:entityType];
        dictionary2 = [(NSDictionary *)dictionary objectForKeyedSubscript:v12];

        if (!dictionary2)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:entityType];
          [(NSDictionary *)dictionary setObject:dictionary2 forKeyedSubscript:v14];
        }

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:type];
        array = [dictionary2 objectForKeyedSubscript:v15];

        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:type];
          [dictionary2 setObject:array forKeyedSubscript:v17];
        }

        [array addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  questionsByQuestionTypeByEntityType = selfCopy->_questionsByQuestionTypeByEntityType;
  selfCopy->_questionsByQuestionTypeByEntityType = dictionary;

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_migrationStepNeededForTripTitlingQuestions:(id)questions
{
  v30 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = questionsCopy;
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
      loggingConnection = [v17 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[Questions] Succeeded performing changes on Trip Titling Questions with duplicate titles", v21, 2u);
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
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v3 = [MEMORY[0x277CD9970] fetchAnsweredYesOrNoQuestionsWithOptions:? validQuestionsOnly:?];
  if ([(PGPhotosChallengeMetricEventFetchHelper *)self _migrationStepNeededForTripTitlingQuestions:v3])
  {
    v4 = [MEMORY[0x277CD9970] fetchAnsweredYesOrNoQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:1];

    v3 = v4;
  }

  [(PGPhotosChallengeMetricEventFetchHelper *)self _buildQuestionsByQuestionTypeByEntityTypeFromQuestions:v3];
}

- (id)initForTestingWithQuestions:(id)questions assetsByAssetId:(id)id momentUUIDByAssetIdentifier:(id)identifier activePersonUUIDByPersonUUID:(id)d tripKeyAssetIdentifiers:(id)identifiers momentUUIDsForExhaustiveMomentLabeling:(id)labeling dayHighlightAssetIdentifiers:(id)assetIdentifiers
{
  questionsCopy = questions;
  idCopy = id;
  identifierCopy = identifier;
  dCopy = d;
  identifiersCopy = identifiers;
  labelingCopy = labeling;
  assetIdentifiersCopy = assetIdentifiers;
  v25.receiver = self;
  v25.super_class = PGPhotosChallengeMetricEventFetchHelper;
  v18 = [(PGPhotosChallengeMetricEventFetchHelper *)&v25 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    [(PGPhotosChallengeMetricEventFetchHelper *)v18 _buildQuestionsByQuestionTypeByEntityTypeFromQuestions:questionsCopy, dCopy, identifierCopy, idCopy];
    objc_storeStrong(p_isa + 5, id);
    objc_storeStrong(p_isa + 8, identifier);
    objc_storeStrong(p_isa + 9, d);
    objc_storeStrong(p_isa + 11, identifiers);
    objc_storeStrong(p_isa + 6, labeling);
    objc_storeStrong(p_isa + 12, assetIdentifiers);
  }

  return p_isa;
}

- (PGPhotosChallengeMetricEventFetchHelper)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = PGPhotosChallengeMetricEventFetchHelper;
  v6 = [(PGPhotosChallengeMetricEventFetchHelper *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
    photoLibrary = [managerCopy photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = photoLibrary;

    workingContextForSuggestions = [managerCopy workingContextForSuggestions];
    v11 = [[PGSuggestionSession alloc] initWithProfile:5 workingContext:workingContextForSuggestions];
    featuredPhotosSuggestionSession = v7->_featuredPhotosSuggestionSession;
    v7->_featuredPhotosSuggestionSession = v11;
  }

  return v7;
}

@end