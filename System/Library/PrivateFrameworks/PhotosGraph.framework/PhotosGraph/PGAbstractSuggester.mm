@interface PGAbstractSuggester
+ (id)_sharedLibraryPersonIdentifiersInLibrary:(id)library withScope:(id)scope;
+ (id)internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:(unint64_t)version;
+ (id)suggestedPersonLocalIdentifiersFromSharingSuggestionResults:(id)results forMomentNodes:(id)nodes containsUnverifiedPersons:(BOOL *)persons;
+ (id)suggesterWithSession:(id)session;
- (BOOL)assetIsValidForSuggesting:(id)suggesting;
- (BOOL)hasSuggestableScenesWithAsset:(id)asset;
- (PGAbstractSuggester)initWithSession:(id)session;
- (PGSuggestionSession)session;
- (double)userFeedbackScoreWithAsset:(id)asset;
- (id)defaultAssetFetchOptionsWithInternalPredicate:(id)predicate;
- (id)sharingSuggestionResultsForMomentNodes:(id)nodes withWorkingContext:(id)context;
- (void)_prefetchSharedLibraryStateIfNeeded;
@end

@implementation PGAbstractSuggester

- (PGSuggestionSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (id)sharingSuggestionResultsForMomentNodes:(id)nodes withWorkingContext:(id)context
{
  v44 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  contextCopy = context;
  if ([nodesCopy count])
  {
    v33 = [[PGSharingManager alloc] initWithWorkingContext:contextCopy];
    v8 = objc_opt_new();
    [v8 setSharingStream:1];
    v32 = v8;
    [v8 setIncludeUnverified:1];
    v9 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = nodesCopy;
    v11 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v39;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v39 != v13)
          {
            objc_enumerationMutation(v10);
          }

          localIdentifier = [*(*(&v38 + 1) + 8 * i) localIdentifier];
          [v9 addObject:localIdentifier];
        }

        v12 = [v10 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v12);
    }

    v17 = v32;
    v16 = v33;
    v18 = [(PGSharingManager *)v33 suggestionResultsForAssetLocalIdentifiers:0 momentLocalIdentifiers:v9 options:v32];
    [(PGAbstractSuggester *)self _prefetchSharedLibraryStateIfNeeded];
    if (self->_isSharedLibraryEnabled)
    {
      v30 = contextCopy;
      v31 = nodesCopy;
      v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v18, "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v35;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v34 + 1) + 8 * j);
            person = [v25 person];
            localIdentifier2 = [person localIdentifier];

            if (!localIdentifier2 || ![(NSSet *)self->_sharedLibraryPersonIdentifiers containsObject:localIdentifier2])
            {
              [v19 addObject:v25];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v22);
      }

      contextCopy = v30;
      nodesCopy = v31;
      v17 = v32;
      v16 = v33;
    }

    else
    {
      v19 = v18;
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_prefetchSharedLibraryStateIfNeeded
{
  if (!self->_prefetchedSharedLibraryState)
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    photoLibrary = [WeakRetained photoLibrary];

    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    [librarySpecificFetchOptions setFetchLimit:1];
    v6 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
    firstObject = [v6 firstObject];

    self->_isSharedLibraryEnabled = firstObject != 0;
    if (firstObject)
    {
      v8 = [PGAbstractSuggester _sharedLibraryPersonIdentifiersInLibrary:photoLibrary withScope:firstObject];
      sharedLibraryPersonIdentifiers = self->_sharedLibraryPersonIdentifiers;
      self->_sharedLibraryPersonIdentifiers = v8;
    }

    self->_prefetchedSharedLibraryState = 1;
  }
}

- (BOOL)hasSuggestableScenesWithAsset:(id)asset
{
  v25 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  suggestableScenesHelper = self->_suggestableScenesHelper;
  curationModel = [assetCopy curationModel];
  v7 = [(CLSSceneConfidenceThresholdHelper *)suggestableScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:curationModel];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  sceneClassifications = [assetCopy sceneClassifications];
  v9 = [sceneClassifications countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(sceneClassifications);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "extendedSceneIdentifier")}];
        v14 = [v7 objectForKeyedSubscript:v13];

        if (v14)
        {
          [v12 confidence];
          v16 = v15;
          [v14 doubleValue];
          if (v16 >= v17)
          {

            LOBYTE(v9) = 1;
            goto LABEL_12;
          }
        }
      }

      v9 = [sceneClassifications countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)defaultAssetFetchOptionsWithInternalPredicate:(id)predicate
{
  v15[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setIncludeGuestAssets:0];
  v8 = [MEMORY[0x277D3B248] predicateForExcludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
  v9 = v8;
  if (predicateCopy)
  {
    v10 = MEMORY[0x277CCA920];
    v15[0] = predicateCopy;
    v15[1] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];
    [librarySpecificFetchOptions setInternalPredicate:v12];
  }

  else
  {
    [librarySpecificFetchOptions setInternalPredicate:v8];
  }

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];

  v13 = *MEMORY[0x277D85DE8];

  return librarySpecificFetchOptions;
}

- (double)userFeedbackScoreWithAsset:(id)asset
{
  v28 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  uuid = [assetCopy uuid];
  clsPersonAndPetLocalIdentifiers = [assetCopy clsPersonAndPetLocalIdentifiers];
  v7 = [clsPersonAndPetLocalIdentifiers count];
  if (v7)
  {
    selfCopy = self;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = clsPersonAndPetLocalIdentifiers;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:*(*(&v23 + 1) + 8 * v13)];
          if (v14)
          {
            [v8 addObject:v14];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    self = selfCopy;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  curationContext = [WeakRetained curationContext];
  userFeedbackCalculator = [curationContext userFeedbackCalculator];
  [userFeedbackCalculator scoreForKeyAssetUUID:uuid personsUUIDsInKeyAsset:v8 memoryFeatures:0];
  v19 = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)assetIsValidForSuggesting:(id)suggesting
{
  suggestingCopy = suggesting;
  sceneAnalysisProperties = [suggestingCopy sceneAnalysisProperties];
  sceneAnalysisVersion = [sceneAnalysisProperties sceneAnalysisVersion];
  v7 = *MEMORY[0x277D3ADE8];
  v9 = sceneAnalysisVersion > v7 && ([suggestingCopy faceAdjustmentVersion], v8 = ;
  return v9;
}

- (PGAbstractSuggester)initWithSession:(id)session
{
  sessionCopy = session;
  v5 = [(PGAbstractSuggester *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, sessionCopy);
    v6->_lastSuggestionWasColliding = 0;
    v7 = objc_alloc(MEMORY[0x277D3C7B0]);
    v8 = +[PGGraphSceneNode suggestableSceneNames];
    allObjects = [v8 allObjects];
    v10 = [v7 initWithSceneNames:allObjects thresholdType:1];
    suggestableScenesHelper = v6->_suggestableScenesHelper;
    v6->_suggestableScenesHelper = v10;

    *&v6->_prefetchedSharedLibraryState = 0;
    sharedLibraryPersonIdentifiers = v6->_sharedLibraryPersonIdentifiers;
    v6->_sharedLibraryPersonIdentifiers = 0;
  }

  return v6;
}

+ (id)suggestedPersonLocalIdentifiersFromSharingSuggestionResults:(id)results forMomentNodes:(id)nodes containsUnverifiedPersons:(BOOL *)persons
{
  v43 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  nodesCopy = nodes;
  if ([resultsCopy count])
  {
    v31 = nodesCopy;
    personsCopy = persons;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = nodesCopy;
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v38;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v12 += [*(*(&v37 + 1) + 8 * i) numberOfAssetsWithPersons];
        }

        v11 = [v9 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v11);
      v15 = v12 < 0xA;
    }

    else
    {
      v15 = 1;
    }

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(resultsCopy, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = resultsCopy;
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v34;
      do
      {
        v22 = 0;
        do
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(*(&v33 + 1) + 8 * v22);
          person = [v23 person];
          if ([person isVerified] && (objc_msgSend(v23, "sourceWeight"), v25 >= 1.0) && (v15 || (objc_msgSend(v23, "weight"), v26 > 1.0)))
          {
            localIdentifier = [person localIdentifier];
            [v16 addObject:localIdentifier];
          }

          else
          {
            v20 = 1;
          }

          ++v22;
        }

        while (v19 != v22);
        v28 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
        v19 = v28;
      }

      while (v28);
    }

    else
    {
      v20 = 0;
    }

    nodesCopy = v31;
    *personsCopy = v20 & 1;
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_sharedLibraryPersonIdentifiersInLibrary:(id)library withScope:(id)scope
{
  v59 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  scopeCopy = scope;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v39 = libraryCopy;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  v38 = scopeCopy;
  [MEMORY[0x277CD98C0] fetchLibraryScopeRulesForLibraryScope:scopeCopy options:?];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v55 = 0u;
  v8 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    v40 = *v53;
    do
    {
      v11 = 0;
      v42 = v9;
      do
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v52 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        personCondition = [v12 personCondition];
        v15 = personCondition;
        if (personCondition && [personCondition criteria] == 1)
        {
          personUUIDs = [v15 personUUIDs];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v17 = [personUUIDs countByEnumeratingWithState:&v48 objects:v57 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v49;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v49 != v19)
                {
                  objc_enumerationMutation(personUUIDs);
                }

                v21 = [MEMORY[0x277CD9938] localIdentifierWithUUID:*(*(&v48 + 1) + 8 * i)];
                [v7 addObject:v21];
              }

              v18 = [personUUIDs countByEnumeratingWithState:&v48 objects:v57 count:16];
            }

            while (v18);
          }

          v10 = v40;
          v9 = v42;
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v9);
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22 = [MEMORY[0x277CD99C8] fetchParticipantsInShare:v38 options:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [v39 librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setFetchLimit:1];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = v22;
  v25 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v45;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v44 + 1) + 8 * j);
        v30 = objc_autoreleasePoolPush();
        v31 = [MEMORY[0x277CD9938] fetchPersonForShareParticipant:v29 options:librarySpecificFetchOptions2];
        firstObject = [v31 firstObject];

        if (firstObject)
        {
          localIdentifier = [firstObject localIdentifier];
          [v43 addObject:localIdentifier];
        }

        objc_autoreleasePoolPop(v30);
      }

      v26 = [v24 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v26);
  }

  v34 = [v43 setByAddingObjectsFromSet:v7];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:(unint64_t)version
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
  v13[0] = v5;
  v6 = MEMORY[0x277D3ACE0];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:version];
  v8 = [v6 predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToSceneVersion:v7];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v4 andPredicateWithSubpredicates:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)suggesterWithSession:(id)session
{
  sessionCopy = session;
  v5 = [[self alloc] initWithSession:sessionCopy];

  return v5;
}

@end