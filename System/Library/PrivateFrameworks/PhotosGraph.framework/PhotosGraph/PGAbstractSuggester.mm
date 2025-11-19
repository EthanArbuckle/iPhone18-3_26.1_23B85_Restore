@interface PGAbstractSuggester
+ (id)_sharedLibraryPersonIdentifiersInLibrary:(id)a3 withScope:(id)a4;
+ (id)internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:(unint64_t)a3;
+ (id)suggestedPersonLocalIdentifiersFromSharingSuggestionResults:(id)a3 forMomentNodes:(id)a4 containsUnverifiedPersons:(BOOL *)a5;
+ (id)suggesterWithSession:(id)a3;
- (BOOL)assetIsValidForSuggesting:(id)a3;
- (BOOL)hasSuggestableScenesWithAsset:(id)a3;
- (PGAbstractSuggester)initWithSession:(id)a3;
- (PGSuggestionSession)session;
- (double)userFeedbackScoreWithAsset:(id)a3;
- (id)defaultAssetFetchOptionsWithInternalPredicate:(id)a3;
- (id)sharingSuggestionResultsForMomentNodes:(id)a3 withWorkingContext:(id)a4;
- (void)_prefetchSharedLibraryStateIfNeeded;
@end

@implementation PGAbstractSuggester

- (PGSuggestionSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (id)sharingSuggestionResultsForMomentNodes:(id)a3 withWorkingContext:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v33 = [[PGSharingManager alloc] initWithWorkingContext:v7];
    v8 = objc_opt_new();
    [v8 setSharingStream:1];
    v32 = v8;
    [v8 setIncludeUnverified:1];
    v9 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v10 = v6;
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

          v15 = [*(*(&v38 + 1) + 8 * i) localIdentifier];
          [v9 addObject:v15];
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
      v30 = v7;
      v31 = v6;
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
            v26 = [v25 person];
            v27 = [v26 localIdentifier];

            if (!v27 || ![(NSSet *)self->_sharedLibraryPersonIdentifiers containsObject:v27])
            {
              [v19 addObject:v25];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v22);
      }

      v7 = v30;
      v6 = v31;
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
    v10 = [WeakRetained photoLibrary];

    v5 = [v10 librarySpecificFetchOptions];
    [v5 setFetchLimit:1];
    v6 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:v5];
    v7 = [v6 firstObject];

    self->_isSharedLibraryEnabled = v7 != 0;
    if (v7)
    {
      v8 = [PGAbstractSuggester _sharedLibraryPersonIdentifiersInLibrary:v10 withScope:v7];
      sharedLibraryPersonIdentifiers = self->_sharedLibraryPersonIdentifiers;
      self->_sharedLibraryPersonIdentifiers = v8;
    }

    self->_prefetchedSharedLibraryState = 1;
  }
}

- (BOOL)hasSuggestableScenesWithAsset:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  suggestableScenesHelper = self->_suggestableScenesHelper;
  v6 = [v4 curationModel];
  v7 = [(CLSSceneConfidenceThresholdHelper *)suggestableScenesHelper confidenceThresholdBySceneIdentifierWithCurationModel:v6];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v4 sceneClassifications];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
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

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (id)defaultAssetFetchOptionsWithInternalPredicate:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self session];
  v6 = [v5 photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  [v7 setIncludeGuestAssets:0];
  v8 = [MEMORY[0x277D3B248] predicateForExcludeMask:objc_msgSend(MEMORY[0x277D3B248] useIndex:{"maskForGuestAsset"), 1}];
  v9 = v8;
  if (v4)
  {
    v10 = MEMORY[0x277CCA920];
    v15[0] = v4;
    v15[1] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];
    [v7 setInternalPredicate:v12];
  }

  else
  {
    [v7 setInternalPredicate:v8];
  }

  [v7 setWantsIncrementalChangeDetails:0];

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (double)userFeedbackScoreWithAsset:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v4 clsPersonAndPetLocalIdentifiers];
  v7 = [v6 count];
  if (v7)
  {
    v22 = self;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v7];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v6;
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

    self = v22;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_session);
  v16 = [WeakRetained curationContext];
  v17 = [v16 userFeedbackCalculator];
  [v17 scoreForKeyAssetUUID:v5 personsUUIDsInKeyAsset:v8 memoryFeatures:0];
  v19 = v18;

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)assetIsValidForSuggesting:(id)a3
{
  v4 = a3;
  v5 = [v4 sceneAnalysisProperties];
  v6 = [v5 sceneAnalysisVersion];
  v7 = *MEMORY[0x277D3ADE8];
  v9 = v6 > v7 && ([v4 faceAdjustmentVersion], v8 = ;
  return v9;
}

- (PGAbstractSuggester)initWithSession:(id)a3
{
  v4 = a3;
  v5 = [(PGAbstractSuggester *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_session, v4);
    v6->_lastSuggestionWasColliding = 0;
    v7 = objc_alloc(MEMORY[0x277D3C7B0]);
    v8 = +[PGGraphSceneNode suggestableSceneNames];
    v9 = [v8 allObjects];
    v10 = [v7 initWithSceneNames:v9 thresholdType:1];
    suggestableScenesHelper = v6->_suggestableScenesHelper;
    v6->_suggestableScenesHelper = v10;

    *&v6->_prefetchedSharedLibraryState = 0;
    sharedLibraryPersonIdentifiers = v6->_sharedLibraryPersonIdentifiers;
    v6->_sharedLibraryPersonIdentifiers = 0;
  }

  return v6;
}

+ (id)suggestedPersonLocalIdentifiersFromSharingSuggestionResults:(id)a3 forMomentNodes:(id)a4 containsUnverifiedPersons:(BOOL *)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v31 = v8;
    v32 = a5;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = v8;
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

    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = v7;
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
          v24 = [v23 person];
          if ([v24 isVerified] && (objc_msgSend(v23, "sourceWeight"), v25 >= 1.0) && (v15 || (objc_msgSend(v23, "weight"), v26 > 1.0)))
          {
            v27 = [v24 localIdentifier];
            [v16 addObject:v27];
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

    v8 = v31;
    *v32 = v20 & 1;
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_sharedLibraryPersonIdentifiersInLibrary:(id)a3 withScope:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v39 = v5;
  v37 = [v5 librarySpecificFetchOptions];
  v38 = v6;
  [MEMORY[0x277CD98C0] fetchLibraryScopeRulesForLibraryScope:v6 options:?];
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
        v14 = [v12 personCondition];
        v15 = v14;
        if (v14 && [v14 criteria] == 1)
        {
          v16 = [v15 personUUIDs];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v48 objects:v57 count:16];
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
                  objc_enumerationMutation(v16);
                }

                v21 = [MEMORY[0x277CD9938] localIdentifierWithUUID:*(*(&v48 + 1) + 8 * i)];
                [v7 addObject:v21];
              }

              v18 = [v16 countByEnumeratingWithState:&v48 objects:v57 count:16];
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
  v22 = [MEMORY[0x277CD99C8] fetchParticipantsInShare:v38 options:v37];
  v23 = [v39 librarySpecificFetchOptions];
  [v23 setFetchLimit:1];
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
        v31 = [MEMORY[0x277CD9938] fetchPersonForShareParticipant:v29 options:v23];
        v32 = [v31 firstObject];

        if (v32)
        {
          v33 = [v32 localIdentifier];
          [v43 addObject:v33];
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

+ (id)internalPredicateForProcessedAssetsWithMinimumSceneAnalysisVersion:(unint64_t)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA920];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != nil", @"faceAdjustmentVersion"];
  v13[0] = v5;
  v6 = MEMORY[0x277D3ACE0];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [v6 predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToSceneVersion:v7];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v10 = [v4 andPredicateWithSubpredicates:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)suggesterWithSession:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSession:v4];

  return v5;
}

@end