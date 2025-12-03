@interface PHASuggestionController
+ (unint64_t)_retirementDelayInDaysForSuggestionType:(unsigned __int16)type andSubtype:(unsigned __int16)subtype;
- (BOOL)existingSuggestion:(id)suggestion matchesSuggestion:(id)matchesSuggestion;
- (BOOL)shouldDeleteSuggestion:(id)suggestion atDate:(id)date;
- (BOOL)shouldRetireSuggestion:(id)suggestion atDate:(id)date;
- (PHASuggestionController)initWithGraphManager:(id)manager;
- (id)_createSuggestionSessionWithProfile:(unsigned __int8)profile;
- (id)_existingSuggestionsForProfile:(unsigned __int8)profile;
- (id)_forbiddenAssetUUIDs;
- (id)_suggestionsToReuseWithSuggestionSession:(id)session numberOfSuggestionsToReuse:(unint64_t)reuse;
- (id)collidableMemoriesWithReferenceDate:(id)date andDelay:(double)delay;
- (id)collidableSuggestionsWithOptions:(id)options;
- (id)commitSuggestions:(id)suggestions retiringSuggestions:(id)retiringSuggestions deletingSuggestions:(id)deletingSuggestions withOptions:(id)options error:(id *)error;
- (id)deniedSuggestionsForProfile:(unsigned __int8)profile;
- (id)existingSuggestionByKeyAssetUUIDWithType:(unsigned __int16)type subtypes:(id)subtypes;
- (id)generateSuggestionsWithProfile:(unsigned __int8)profile options:(id)options progress:(id)progress;
- (id)pendingOnThisDayMemories;
- (id)suggestionInfosWithOptions:(id)options;
- (void)cacheWidgetSuggestionsWithCurrentlyFeaturedState;
- (void)ingestExistingSuggestionsWithOptions:(id)options;
- (void)ingestSuggestions:(id)suggestions atDate:(id)date;
- (void)processSuggestions:(id)suggestions forRecyclingWithExistingSuggestionByKeyAssetUUID:(id)d resultBlock:(id)block;
- (void)recordCreatedSuggestions:(id)suggestions duringSession:(id)session;
- (void)recordDeletedSuggestions:(id)suggestions;
- (void)recordRetiredSuggestions:(id)suggestions;
@end

@implementation PHASuggestionController

- (id)suggestionInfosWithOptions:(id)options
{
  optionsCopy = options;
  workingContextForSuggestions = [(PGManager *)self->_graphManager workingContextForSuggestions];
  v6 = [objc_alloc(MEMORY[0x277D3BBF8]) initWithProfile:0 workingContext:workingContextForSuggestions];
  v7 = objc_alloc_init(MEMORY[0x277D3BBF0]);
  v8 = MEMORY[0x277CCAA78];
  v9 = [optionsCopy objectForKeyedSubscript:@"type"];
  v10 = [v8 indexSetWithIndex:{objc_msgSend(v9, "unsignedIntegerValue")}];
  [v7 setSuggestionTypeWhitelist:v10];

  v11 = MEMORY[0x277CCAA78];
  v12 = [optionsCopy objectForKeyedSubscript:@"subtype"];
  v13 = [v11 indexSetWithIndex:{objc_msgSend(v12, "unsignedIntegerValue")}];
  [v7 setSuggestionSubtypeWhitelist:v13];

  [v7 setGenerateInvalidSuggestions:1];
  [v7 setComputeReasons:1];
  [v7 setIgnoreCollisionsWithExistingSuggestions:1];
  [v7 setIgnoreCollisionsWithSameBatchSuggestions:1];
  [v7 setShouldProcessExistingSuggestions:0];
  [v7 setDiscardGeneratedSuggestions:1];
  [v7 setAllowNotification:0];
  v14 = [optionsCopy objectForKeyedSubscript:@"localDate"];
  if (v14)
  {
    [v7 setLocalToday:v14];
  }

  v15 = [optionsCopy objectForKeyedSubscript:@"universalStartDate"];
  if (v15)
  {
    [v7 setUniversalStartDate:v15];
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"universalEndDate"];
  if (v16)
  {
    [v7 setUniversalEndDate:v16];
  }

  [v7 setDefaultStartAndEndDatesIfNeeded];
  [(PHASuggestionController *)self ingestExistingSuggestionsWithOptions:v7];
  [v6 setExistingSuggestions:self->_existingSuggestions];
  v17 = [v6 suggestionsWithOptions:v7 progress:&__block_literal_global_2582];
  v18 = [v6 infosWithSuggestions:v17];

  return v18;
}

- (void)cacheWidgetSuggestionsWithCurrentlyFeaturedState
{
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  v3 = [MEMORY[0x277CD99E0] fetchWidgetSuggestionsWithFeaturedState:1 withOptions:librarySpecificFetchOptions];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v4}];
    v6 = [v3 objectsAtIndexes:v5];
    cachedFeaturedSuggestions = self->_cachedFeaturedSuggestions;
    self->_cachedFeaturedSuggestions = v6;
  }
}

- (void)processSuggestions:(id)suggestions forRecyclingWithExistingSuggestionByKeyAssetUUID:(id)d resultBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  dCopy = d;
  blockCopy = block;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc(MEMORY[0x277CBEB58]);
  allValues = [dCopy allValues];
  v24 = [v10 initWithArray:allValues];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = suggestionsCopy;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        keyAssets = [v17 keyAssets];
        firstObject = [keyAssets firstObject];
        uuid = [firstObject uuid];

        v21 = [dCopy objectForKeyedSubscript:uuid];
        if (v21 && [(PHASuggestionController *)self existingSuggestion:v21 matchesSuggestion:v17])
        {
          [v24 removeObject:v21];
        }

        else
        {
          [v9 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  allObjects = [v24 allObjects];
  blockCopy[2](blockCopy, v9, allObjects);
}

- (BOOL)existingSuggestion:(id)suggestion matchesSuggestion:(id)matchesSuggestion
{
  suggestionCopy = suggestion;
  matchesSuggestionCopy = matchesSuggestion;
  type = [suggestionCopy type];
  if (type == [matchesSuggestionCopy type] && (v8 = objc_msgSend(suggestionCopy, "subtype"), v8 == objc_msgSend(matchesSuggestionCopy, "subtype")) && (v9 = objc_msgSend(suggestionCopy, "version"), v9 == objc_msgSend(matchesSuggestionCopy, "version")))
  {
    features = [suggestionCopy features];
    v11 = features;
    if (features)
    {
      v12 = features;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB98] set];
    }

    v15 = v12;

    features2 = [matchesSuggestionCopy features];
    v17 = features2;
    if (features2)
    {
      v18 = features2;
    }

    else
    {
      v18 = [MEMORY[0x277CBEB98] set];
    }

    v19 = v18;

    v20 = [v15 isEqualToSet:v19];
    suggestedPersonLocalIdentifiers = [suggestionCopy suggestedPersonLocalIdentifiers];
    v22 = suggestedPersonLocalIdentifiers;
    v23 = MEMORY[0x277CBEBF8];
    if (suggestedPersonLocalIdentifiers)
    {
      v24 = suggestedPersonLocalIdentifiers;
    }

    else
    {
      v24 = MEMORY[0x277CBEBF8];
    }

    v25 = v24;

    suggestedPersonLocalIdentifiers2 = [matchesSuggestionCopy suggestedPersonLocalIdentifiers];
    v27 = suggestedPersonLocalIdentifiers2;
    if (suggestedPersonLocalIdentifiers2)
    {
      v28 = suggestedPersonLocalIdentifiers2;
    }

    else
    {
      v28 = v23;
    }

    v29 = v28;

    if (v20)
    {
      if ([v25 isEqualToArray:v29])
      {
        recipe = [suggestionCopy recipe];
        recipe2 = [matchesSuggestionCopy recipe];
        if (recipe == recipe2)
        {
          v20 = 1;
        }

        else
        {
          recipe3 = [suggestionCopy recipe];
          [matchesSuggestionCopy recipe];
          v33 = v38 = recipe;
          v20 = [recipe3 isEqual:v33];

          recipe = v38;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    allTopWallpaperSuggestionSubtypes = [MEMORY[0x277CD99E0] allTopWallpaperSuggestionSubtypes];
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(matchesSuggestionCopy, "subtype")}];
    v36 = [allTopWallpaperSuggestionSubtypes containsObject:v35];

    v13 = (v36 ^ 1) & v20;
    if (((v36 ^ 1) & 1) == 0 && v20)
    {
      availableFeatures = [suggestionCopy availableFeatures];
      v13 = availableFeatures == [matchesSuggestionCopy availableFeatures];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)existingSuggestionByKeyAssetUUIDWithType:(unsigned __int16)type subtypes:(id)subtypes
{
  typeCopy = type;
  v58[2] = *MEMORY[0x277D85DE8];
  subtypesCopy = subtypes;
  selfCopy = self;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v8 = MEMORY[0x277CCA920];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"state", 4];
  v58[0] = v9;
  typeCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"type == %d", typeCopy];
  v58[1] = typeCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];

  if (subtypesCopy)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __77__PHASuggestionController_existingSuggestionByKeyAssetUUIDWithType_subtypes___block_invoke;
    v47[3] = &unk_2788B1F40;
    v48 = v13;
    v14 = v13;
    [subtypesCopy enumerateIndexesUsingBlock:v47];
    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"subtype IN %@", v14];
    v16 = MEMORY[0x277CCA920];
    v57[0] = v12;
    v57[1] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
    v18 = [v16 andPredicateWithSubpredicates:v17];

    v12 = v18;
  }

  [librarySpecificFetchOptions setPredicate:v12];
  v19 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  if ([v19 count])
  {
    v38 = v12;
    v39 = librarySpecificFetchOptions;
    v40 = subtypesCopy;
    librarySpecificFetchOptions2 = [(PHPhotoLibrary *)selfCopy->_photoLibrary librarySpecificFetchOptions];
    v56 = *MEMORY[0x277CD9AA8];
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    [librarySpecificFetchOptions2 setFetchPropertySets:v21];

    v36 = librarySpecificFetchOptions2;
    v22 = [MEMORY[0x277CD97A8] fetchKeyAssetBySuggestionUUIDForSuggestions:v19 options:librarySpecificFetchOptions2];
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v37 = v19;
    obj = v19;
    v24 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v44;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v43 + 1) + 8 * i);
          uuid = [v28 uuid];
          v30 = [v22 objectForKeyedSubscript:uuid];

          if (v30)
          {
            uuid2 = [v30 uuid];
            v32 = [v23 objectForKeyedSubscript:uuid2];
            if (v32)
            {
              loggingConnection = selfCopy->_loggingConnection;
              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v50 = v32;
                v51 = 2112;
                v52 = v28;
                v53 = 2112;
                v54 = v30;
                _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "Two suggestions (%@, %@) using the same asset (%@)", buf, 0x20u);
              }
            }

            else
            {
              [v23 setObject:v28 forKeyedSubscript:uuid2];
            }
          }

          else
          {
            v34 = selfCopy->_loggingConnection;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v28;
              _os_log_error_impl(&dword_22FA28000, v34, OS_LOG_TYPE_ERROR, "Could not find key asset for suggestion %@", buf, 0xCu);
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v25);
    }

    librarySpecificFetchOptions = v39;
    subtypesCopy = v40;
    v19 = v37;
    v12 = v38;
  }

  else
  {
    v23 = MEMORY[0x277CBEC10];
  }

  return v23;
}

void __77__PHASuggestionController_existingSuggestionByKeyAssetUUIDWithType_subtypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

- (id)pendingOnThisDayMemories
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_existingMemories;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 pendingState] == 1)
        {
          category = [v9 category];
          if ((category - 202) <= 0xB && ((1 << (category + 54)) & 0xC01) != 0)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_createSuggestionSessionWithProfile:(unsigned __int8)profile
{
  profileCopy = profile;
  workingContextForSuggestions = [(PGManager *)self->_graphManager workingContextForSuggestions];
  v5 = [objc_alloc(MEMORY[0x277D3BBF8]) initWithProfile:profileCopy workingContext:workingContextForSuggestions];

  return v5;
}

- (id)_suggestionsToReuseWithSuggestionSession:(id)session numberOfSuggestionsToReuse:(unint64_t)reuse
{
  sessionCopy = session;
  v6 = [sessionCopy existingSuggestionsWithState:0 count:reuse];
  if ([v6 count] == reuse)
  {
    v7 = v6;
  }

  else
  {
    v8 = [sessionCopy existingSuggestionsWithState:1 count:{reuse - objc_msgSend(v6, "count")}];
    if ([v8 count])
    {
      v9 = [v6 arrayByAddingObjectsFromArray:v8];
    }

    else
    {
      v9 = v6;
    }

    v7 = v9;
  }

  return v7;
}

- (id)collidableSuggestionsWithOptions:(id)options
{
  v4 = MEMORY[0x277D27690];
  localToday = [options localToday];
  v6 = [v4 universalDateFromLocalDate:localToday];

  v7 = [(PHASuggestionController *)self _existingSuggestionsForProfile:1];
  v8 = MEMORY[0x277CCAC30];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__PHASuggestionController_collidableSuggestionsWithOptions___block_invoke;
  v13[3] = &unk_2788B1F18;
  v14 = v6;
  v9 = v6;
  v10 = [v8 predicateWithBlock:v13];
  v11 = [v7 filteredArrayUsingPredicate:v10];

  return v11;
}

BOOL __60__PHASuggestionController_collidableSuggestionsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 creationDate];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  return v5 <= 604800.0 && v5 >= 0.0;
}

- (id)_forbiddenAssetUUIDs
{
  v19[1] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v19[0] = *MEMORY[0x277CD9AA8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v3];

  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K CONTAINS %d", @"suggestionsBeingKeyAssets", @"state", 4];
  [librarySpecificFetchOptions setInternalPredicate:v4];

  v5 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        uuid = [*(*(&v14 + 1) + 8 * i) uuid];
        [v6 addObject:uuid];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)generateSuggestionsWithProfile:(unsigned __int8)profile options:(id)options progress:(id)progress
{
  profileCopy = profile;
  v132 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v9 = self->_loggingConnection;
  spid = os_signpost_id_generate(v9);
  info = 0;
  mach_timebase_info(&info);
  v10 = v9;
  v11 = v10;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SuggestionGeneration", "", &buf, 2u);
  }

  v85 = v11;

  v84 = mach_absolute_time();
  v117 = 0;
  progressCopy[2](progressCopy, &v117, 0.0);
  if ((v117 & 1) == 0)
  {
    v87 = [(PHASuggestionController *)self _createSuggestionSessionWithProfile:profileCopy];
    v13 = [(PHASuggestionController *)self _existingSuggestionsForProfile:profileCopy];
    [v87 setExistingSuggestions:v13];

    v14 = [(PHASuggestionController *)self deniedSuggestionsForProfile:profileCopy];
    [v87 setDeniedSuggestions:v14];

    progressCopy[2](progressCopy, &v117, 0.1);
    if (v117)
    {
      v12 = MEMORY[0x277CBEBF8];
LABEL_129:

      goto LABEL_130;
    }

    if (profileCopy > 3)
    {
      if ((profileCopy - 6) >= 2)
      {
        if (profileCopy == 4)
        {
          pendingOnThisDayMemories = [(PHASuggestionController *)self pendingOnThisDayMemories];
          [v87 setCollidableMemories:pendingOnThisDayMemories];

LABEL_22:
          v15 = v113;
          v113[0] = MEMORY[0x277D85DD0];
          v113[1] = 3221225472;
          v113[2] = __75__PHASuggestionController_generateSuggestionsWithProfile_options_progress___block_invoke_4;
          v113[3] = &unk_2788B1EC8;
          v113[4] = progressCopy;
          v82 = [v87 suggestionsWithOptions:optionsCopy progress:v113];
          goto LABEL_24;
        }

        v82 = 0;
        if (profileCopy != 5)
        {
          goto LABEL_25;
        }

LABEL_16:
        if ([optionsCopy maximumNumberOfSuggestions] == 1)
        {
          v15 = v116;
          v116[0] = MEMORY[0x277D85DD0];
          v116[1] = 3221225472;
          v116[2] = __75__PHASuggestionController_generateSuggestionsWithProfile_options_progress___block_invoke;
          v116[3] = &unk_2788B1EC8;
          v116[4] = progressCopy;
          v82 = [v87 coordinatedSuggestionsWithOptions:optionsCopy progress:v116];
        }

        else
        {
          v15 = v115;
          v115[0] = MEMORY[0x277D85DD0];
          v115[1] = 3221225472;
          v115[2] = __75__PHASuggestionController_generateSuggestionsWithProfile_options_progress___block_invoke_2;
          v115[3] = &unk_2788B1EC8;
          v115[4] = progressCopy;
          v82 = [v87 uncoordinatedSuggestionsWithOptions:optionsCopy progress:v115];
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (profileCopy <= 1)
      {
        v82 = 0;
        if (profileCopy)
        {
          if (profileCopy != 1)
          {
LABEL_25:
            progressCopy[2](progressCopy, &v117, 0.6);
            if (v117)
            {
              v12 = MEMORY[0x277CBEBF8];
              v18 = v82;
LABEL_128:

              goto LABEL_129;
            }

            v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if ([optionsCopy shouldProcessExistingSuggestions])
            {
              v19 = [MEMORY[0x277D3BBF8] suggestionTypesWithProfile:profileCopy];
              v20 = [MEMORY[0x277D3BBF8] suggestionSubtypesWithProfile:profileCopy];
              v110 = 0u;
              v111 = 0u;
              v108 = 0u;
              v109 = 0u;
              v21 = self->_suggestionsToRetire;
              v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v108 objects:v131 count:16];
              if (v22)
              {
                v23 = *v109;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v109 != v23)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v25 = *(*(&v108 + 1) + 8 * i);
                    if ([v19 containsIndex:{objc_msgSend(v25, "type")}] && objc_msgSend(v20, "containsIndex:", objc_msgSend(v25, "subtype")))
                    {
                      [v90 addObject:v25];
                    }
                  }

                  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v108 objects:v131 count:16];
                }

                while (v22);
              }

              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              v26 = self->_suggestionsToDelete;
              v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v104 objects:v130 count:16];
              if (v27)
              {
                v28 = *v105;
                do
                {
                  for (j = 0; j != v27; ++j)
                  {
                    if (*v105 != v28)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v30 = *(*(&v104 + 1) + 8 * j);
                    if ([v19 containsIndex:{objc_msgSend(v30, "type")}] && objc_msgSend(v20, "containsIndex:", objc_msgSend(v30, "subtype")))
                    {
                      [v91 addObject:v30];
                    }
                  }

                  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v104 objects:v130 count:16];
                }

                while (v27);
              }

              if (profileCopy == 3 && (v31 = [optionsCopy maximumNumberOfSuggestions], v31 > objc_msgSend(v82, "count")))
              {
                v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v102 = 0u;
                v103 = 0u;
                v100 = 0u;
                v101 = 0u;
                existingSuggestions = [v87 existingSuggestions];
                v34 = [existingSuggestions countByEnumeratingWithState:&v100 objects:v129 count:16];
                if (v34)
                {
                  v35 = *v101;
                  do
                  {
                    for (k = 0; k != v34; ++k)
                    {
                      if (*v101 != v35)
                      {
                        objc_enumerationMutation(existingSuggestions);
                      }

                      v5 = *(*(&v100 + 1) + 8 * k);
                      if (-[NSObject state](v5, "state") != 4 && [v19 containsIndex:{-[NSObject type](v5, "type")}] && objc_msgSend(v20, "containsIndex:", -[NSObject subtype](v5, "subtype")))
                      {
                        [v32 addObject:v5];
                      }
                    }

                    v34 = [existingSuggestions countByEnumeratingWithState:&v100 objects:v129 count:16];
                  }

                  while (v34);
                }

                if ([v32 count])
                {
                  [v32 pha_shuffle];
                  v37 = [v82 mutableCopy];
                  maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
                  v39 = [v82 count];
                  v40 = [v32 count];
                  if (v40 >= maximumNumberOfSuggestions - v39)
                  {
                    v41 = maximumNumberOfSuggestions - v39;
                  }

                  else
                  {
                    v41 = v40;
                  }

                  if (v41 - 1 >= 0)
                  {
                    do
                    {
                      v42 = [v32 objectAtIndexedSubscript:--v41];
                      v5 = self->_loggingConnection;
                      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
                      {
                        localIdentifier = [v42 localIdentifier];
                        LODWORD(buf) = 138412290;
                        *(&buf + 4) = localIdentifier;
                        _os_log_impl(&dword_22FA28000, v5, OS_LOG_TYPE_DEFAULT, "Reusing widget suggestion: %@", &buf, 0xCu);
                      }

                      [v37 addObject:v42];
                      [v91 addObject:v42];
                    }

                    while (v41 > 0);
                  }

                  v81 = v37;
                }

                else
                {
                  v81 = v82;
                }
              }

              else
              {
                v81 = v82;
              }
            }

            else
            {
              v81 = v82;
            }

            progressCopy[2](progressCopy, &v117, 0.7);
            v12 = MEMORY[0x277CBEBF8];
            if (v117)
            {
LABEL_127:

              v18 = v81;
              goto LABEL_128;
            }

            *&buf = 0;
            *(&buf + 1) = &buf;
            v125 = 0x3032000000;
            v126 = __Block_byref_object_copy__2616;
            v127 = __Block_byref_object_dispose__2617;
            discardGeneratedSuggestions = [optionsCopy discardGeneratedSuggestions];
            v45 = v81;
            if (discardGeneratedSuggestions)
            {
              v45 = v12;
            }

            v128 = v45;
            if ([objc_opt_class() _shouldCheckSuggestionRecylingForProfile:profileCopy])
            {
              switch(profileCopy)
              {
                case 2:
                  v77 = 6;
                  break;
                case 6:
                  v77 = 8;
                  break;
                case 7:
                  v77 = 11;
                  break;
                default:
                  result = _PFAssertFailHandler();
                  __break(1u);
                  return result;
              }

              suggestionSubtypeWhitelist = [optionsCopy suggestionSubtypeWhitelist];
              v79 = [(PHASuggestionController *)self existingSuggestionByKeyAssetUUIDWithType:v77 subtypes:suggestionSubtypeWhitelist];

              if ([v79 count])
              {
                v80 = *(*(&buf + 1) + 40);
                v97[0] = MEMORY[0x277D85DD0];
                v97[1] = 3221225472;
                v97[2] = __75__PHASuggestionController_generateSuggestionsWithProfile_options_progress___block_invoke_292;
                v97[3] = &unk_2788B1EF0;
                v97[4] = self;
                p_buf = &buf;
                v98 = v91;
                [(PHASuggestionController *)self processSuggestions:v80 forRecyclingWithExistingSuggestionByKeyAssetUUID:v79 resultBlock:v97];
              }
            }

            if ([*(*(&buf + 1) + 40) count] || objc_msgSend(v90, "count") || objc_msgSend(v91, "count"))
            {
              v46 = *(*(&buf + 1) + 40);
              v96 = 0;
              v47 = [(PHASuggestionController *)self commitSuggestions:v46 retiringSuggestions:v90 deletingSuggestions:v91 withOptions:optionsCopy error:&v96];
              v48 = v96;
              progressCopy[2](progressCopy, &v117, 0.8);
              if (v117)
              {

LABEL_126:
                _Block_object_dispose(&buf, 8);

                goto LABEL_127;
              }

              if (v47)
              {
                if ([v47 count])
                {
                  v49 = self->_loggingConnection;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = [v47 count];
                    *v122 = 67109378;
                    *v123 = v50;
                    *&v123[4] = 2112;
                    *&v123[6] = v47;
                    _os_log_impl(&dword_22FA28000, v49, OS_LOG_TYPE_DEFAULT, "Successfully committed %d suggestions: %@", v122, 0x12u);
                  }

                  [(NSMutableArray *)self->_existingSuggestions addObjectsFromArray:*(*(&buf + 1) + 40)];
                  [(PHASuggestionController *)self recordCreatedSuggestions:*(*(&buf + 1) + 40) duringSession:v87];
                }

                if ([v90 count])
                {
                  v51 = self->_loggingConnection;
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                  {
                    v52 = [v90 count];
                    *v122 = 67109120;
                    *v123 = v52;
                    _os_log_impl(&dword_22FA28000, v51, OS_LOG_TYPE_DEFAULT, "Successfully retired %d suggestions", v122, 8u);
                  }

                  [(NSMutableArray *)self->_suggestionsToRetire removeObjectsInArray:v90];
                  [(PHASuggestionController *)self recordRetiredSuggestions:v90];
                }

                if ([v91 count])
                {
                  v53 = self->_loggingConnection;
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    v54 = [v91 count];
                    *v122 = 67109120;
                    *v123 = v54;
                    _os_log_impl(&dword_22FA28000, v53, OS_LOG_TYPE_DEFAULT, "Successfully deleted %d suggestions", v122, 8u);
                  }

                  [(NSMutableArray *)self->_suggestionsToDelete removeObjectsInArray:v91];
                  [(PHASuggestionController *)self recordDeletedSuggestions:v91];
                }
              }

              else
              {
                loggingConnection = self->_loggingConnection;
                if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
                {
                  *v122 = 136315394;
                  *v123 = "[PHASuggestionController generateSuggestionsWithProfile:options:progress:]";
                  *&v123[8] = 2112;
                  *&v123[10] = v48;
                  _os_log_error_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_ERROR, "%s: Failed to commit changes due to error: %@", v122, 0x16u);
                }

                v47 = MEMORY[0x277CBEBF8];
              }
            }

            else
            {
              v47 = MEMORY[0x277CBEBF8];
            }

            progressCopy[2](progressCopy, &v117, 0.9);
            if ((v117 & 1) == 0)
            {
              if ([optionsCopy discardGeneratedSuggestions] && objc_msgSend(v81, "count"))
              {
                v83 = v47;
                v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v94 = 0u;
                v95 = 0u;
                v92 = 0u;
                v93 = 0u;
                v57 = v81;
                v58 = [v57 countByEnumeratingWithState:&v92 objects:v121 count:16];
                if (v58)
                {
                  v59 = *v93;
                  do
                  {
                    for (m = 0; m != v58; ++m)
                    {
                      if (*v93 != v59)
                      {
                        objc_enumerationMutation(v57);
                      }

                      v61 = *(*(&v92 + 1) + 8 * m);
                      keyAssets = [v61 keyAssets];
                      firstObject = [keyAssets firstObject];
                      localIdentifier2 = [firstObject localIdentifier];

                      if (localIdentifier2)
                      {
                        v120[0] = localIdentifier2;
                        v119[0] = @"assetLocalIdentifier";
                        v119[1] = @"score";
                        v65 = MEMORY[0x277CCABB0];
                        [v61 score];
                        v66 = [v65 numberWithDouble:?];
                        v120[1] = v66;
                        v119[2] = @"reasons";
                        reasons = [v61 reasons];
                        v68 = reasons;
                        if (!reasons)
                        {
                          v5 = [MEMORY[0x277CBEB98] set];
                          v68 = v5;
                        }

                        v120[2] = v68;
                        v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:3];
                        if (!reasons)
                        {
                        }

                        [v56 addObject:v69];
                      }
                    }

                    v58 = [v57 countByEnumeratingWithState:&v92 objects:v121 count:16];
                  }

                  while (v58);
                }

                v47 = v56;
              }

              v70 = mach_absolute_time();
              numer = info.numer;
              denom = info.denom;
              v73 = v85;
              v74 = v73;
              if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
              {
                *v122 = 0;
                _os_signpost_emit_with_name_impl(&dword_22FA28000, v74, OS_SIGNPOST_INTERVAL_END, spid, "SuggestionGeneration", "", v122, 2u);
              }

              v75 = v74;
              if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
              {
                *v122 = 136315394;
                *v123 = "SuggestionGeneration";
                *&v123[8] = 2048;
                *&v123[10] = ((((v70 - v84) * numer) / denom) / 1000000.0);
                _os_log_impl(&dword_22FA28000, v75, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v122, 0x16u);
              }

              progressCopy[2](progressCopy, &v117, 1.0);
              if (v117)
              {
                v12 = MEMORY[0x277CBEBF8];
              }

              else
              {
                v47 = v47;
                v12 = v47;
              }
            }

            goto LABEL_126;
          }

          goto LABEL_22;
        }

        goto LABEL_16;
      }

      if (profileCopy != 2)
      {
        v15 = v112;
        v112[0] = MEMORY[0x277D85DD0];
        v112[1] = 3221225472;
        v112[2] = __75__PHASuggestionController_generateSuggestionsWithProfile_options_progress___block_invoke_5;
        v112[3] = &unk_2788B1EC8;
        v112[4] = progressCopy;
        v82 = [v87 uncoordinatedSuggestionsWithOptions:optionsCopy progress:v112];
LABEL_24:

        goto LABEL_25;
      }
    }

    _forbiddenAssetUUIDs = [(PHASuggestionController *)self _forbiddenAssetUUIDs];
    [v87 setForbiddenAssetUUIDs:_forbiddenAssetUUIDs];

    v15 = v114;
    v114[0] = MEMORY[0x277D85DD0];
    v114[1] = 3221225472;
    v114[2] = __75__PHASuggestionController_generateSuggestionsWithProfile_options_progress___block_invoke_3;
    v114[3] = &unk_2788B1EC8;
    v114[4] = progressCopy;
    v82 = [v87 suggestionsWithOptions:optionsCopy progress:v114];
    goto LABEL_24;
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_130:

  return v12;
}

void __75__PHASuggestionController_generateSuggestionsWithProfile_options_progress___block_invoke_292(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(*(a1 + 48) + 8) + 40);
    v9 = v7;
    LODWORD(v8) = [v8 count];
    v10 = [*(*(*(a1 + 48) + 8) + 40) count];
    v14[0] = 67109888;
    v14[1] = v8;
    v15 = 1024;
    v16 = v10 - [v5 count];
    v17 = 1024;
    v18 = [v5 count];
    v19 = 1024;
    v20 = [v6 count];
    _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "Generated %d wallpaper suggestions, %d already existing, about to commit %d new PHSuggestions, delete %d old PHSuggestions", v14, 0x1Au);
  }

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
  v13 = v5;

  [*(a1 + 40) addObjectsFromArray:v6];
}

- (id)collidableMemoriesWithReferenceDate:(id)date andDelay:(double)delay
{
  dateCopy = date;
  v7 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndex:201];
  [v7 addIndex:302];
  [v7 addIndex:211];
  [v7 addIndex:215];
  [v7 addIndex:216];
  [v7 addIndex:217];
  [v7 addIndex:218];
  [v7 addIndex:220];
  [v7 addIndex:221];
  [v7 addIndex:301];
  [v7 addIndex:302];
  existingMemories = self->_existingMemories;
  v9 = MEMORY[0x277CCAC30];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__PHASuggestionController_collidableMemoriesWithReferenceDate_andDelay___block_invoke;
  v15[3] = &unk_2788B1EA0;
  v16 = v7;
  v17 = dateCopy;
  delayCopy = delay;
  v10 = dateCopy;
  v11 = v7;
  v12 = [v9 predicateWithBlock:v15];
  v13 = [(NSArray *)existingMemories filteredArrayUsingPredicate:v12];

  return v13;
}

BOOL __72__PHASuggestionController_collidableMemoriesWithReferenceDate_andDelay___block_invoke(uint64_t a1, void *a2)
{
  v8 = ([*(a1 + 32) containsIndex:{objc_msgSend(v3, "category")}] & 1) == 0 && (v4 = *(a1 + 40), objc_msgSend(v3, "creationDate"), v5 = v3 = a2;

  return v8;
}

- (id)commitSuggestions:(id)suggestions retiringSuggestions:(id)retiringSuggestions deletingSuggestions:(id)deletingSuggestions withOptions:(id)options error:(id *)error
{
  v81 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  retiringSuggestionsCopy = retiringSuggestions;
  deletingSuggestionsCopy = deletingSuggestions;
  optionsCopy = options;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v16 = loggingConnection;
    *buf.sysname = 67109120;
    *&buf.sysname[4] = [suggestionsCopy count];
    _os_log_impl(&dword_22FA28000, v16, OS_LOG_TYPE_DEFAULT, "Committing %d new suggestions", &buf, 8u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v17 = loggingConnection;
    v18 = [retiringSuggestionsCopy count];
    *buf.sysname = 67109120;
    *&buf.sysname[4] = v18;
    _os_log_impl(&dword_22FA28000, v17, OS_LOG_TYPE_DEFAULT, "Retiring %d suggestions", &buf, 8u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v19 = loggingConnection;
    v20 = [deletingSuggestionsCopy count];
    *buf.sysname = 67109120;
    *&buf.sysname[4] = v20;
    _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_DEFAULT, "Deleting %d suggestions", &buf, 8u);
  }

  v54 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(suggestionsCopy, "count")}];
  v53 = objc_opt_new();
  memset(&buf, 0, 512);
  uname(&buf);
  v52 = [MEMORY[0x277CCACA8] stringWithCString:buf.machine encoding:4];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];

  localToday = [optionsCopy localToday];
  v59 = retiringSuggestionsCopy;
  v55 = localToday;
  v56 = suggestionsCopy;
  if (localToday)
  {
    [MEMORY[0x277D27690] universalDateFromLocalDate:localToday];
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v50 = ;
  v58 = optionsCopy;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v23 = deletingSuggestionsCopy;
  v24 = [v23 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v74;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v74 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v73 + 1) + 8 * i);
        v29 = self->_loggingConnection;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v29;
          localIdentifier = [v28 localIdentifier];
          *v77 = 138412290;
          *v78 = localIdentifier;
          _os_log_impl(&dword_22FA28000, v30, OS_LOG_TYPE_DEFAULT, "Delete suggestion: %@", v77, 0xCu);
        }

        deletedSuggestionLocalIdentifiers = self->_deletedSuggestionLocalIdentifiers;
        localIdentifier2 = [v28 localIdentifier];
        [(NSMutableSet *)deletedSuggestionLocalIdentifiers addObject:localIdentifier2];
      }

      v25 = [v23 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v25);
  }

  photoLibrary = self->_photoLibrary;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __103__PHASuggestionController_commitSuggestions_retiringSuggestions_deletingSuggestions_withOptions_error___block_invoke;
  v62[3] = &unk_2788B1E78;
  v63 = v56;
  selfCopy = self;
  v35 = v50;
  v65 = v35;
  v57 = v52;
  v66 = v57;
  v36 = operatingSystemVersionString;
  v67 = v36;
  v37 = v53;
  v68 = v37;
  v38 = v54;
  v69 = v38;
  v39 = v58;
  v70 = v39;
  v40 = v59;
  v71 = v40;
  v41 = v23;
  v72 = v41;
  v61 = v63;
  if (![(PHPhotoLibrary *)photoLibrary performChangesAndWait:v62 error:error])
  {
    v45 = v38;
    v38 = 0;
LABEL_25:
    v46 = v57;

    goto LABEL_26;
  }

  if ([v37 count])
  {
    v42 = self->_loggingConnection;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      v44 = [v37 count];
      *v77 = 67109378;
      *v78 = v44;
      *&v78[4] = 2112;
      *&v78[6] = v37;
      _os_log_impl(&dword_22FA28000, v43, OS_LOG_TYPE_DEFAULT, "Firing notification for %d suggestions: %@", v77, 0x12u);
    }

    v45 = [[PHANotificationController alloc] initWithGraphManager:self->_graphManager];
    [(PHANotificationController *)v45 fireNotificationForSuggestionIdentifiers:v37];
    goto LABEL_25;
  }

  v46 = v57;
LABEL_26:
  v47 = v72;
  v48 = v38;

  return v48;
}

uint64_t __103__PHASuggestionController_commitSuggestions_retiringSuggestions_deletingSuggestions_withOptions_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v107 = *MEMORY[0x277D85DE8];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
  v80 = v1;
  if (v2)
  {
    v3 = v2;
    v73 = *v96;
    v4 = 0.0;
    do
    {
      v5 = 0;
      v72 = v3;
      do
      {
        if (*v96 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v95 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 keyAssets];
        v9 = [v6 representativeAssets];
        if (![v8 count])
        {
          v12 = *(*(v1 + 40) + 8);
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 138412290;
          v102 = v6;
          v13 = v12;
          v14 = "Trying to persist a suggestion without key assets: %@";
LABEL_44:
          _os_log_error_impl(&dword_22FA28000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
          goto LABEL_57;
        }

        if ([v6 type] == 1 && !objc_msgSend(v9, "count"))
        {
          v36 = *(*(v1 + 40) + 8);
          if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 138412290;
          v102 = v6;
          v13 = v36;
          v14 = "Trying to persist a cmm suggestion without representative assets: %@";
          goto LABEL_44;
        }

        v10 = [v6 relevanceDurationInDays];
        if (v10)
        {
          v11 = [MEMORY[0x277D27690] dateByAddingDays:v10 toDate:*(v1 + 48)];
        }

        else
        {
          v11 = 0;
        }

        [*(v1 + 48) dateByAddingTimeInterval:v4];
        v76 = v11;
        v75 = v77 = v9;
        v15 = [MEMORY[0x277CD99E8] creationRequestForSuggestionWithType:objc_msgSend(v6 subtype:"type") keyAssets:objc_msgSend(v6 representativeAssets:"subtype") creationDate:v8 relevantUntilDate:v9 version:{v75, v11, objc_msgSend(v6, "version")}];
        v16 = [v6 recipe];
        if (v16)
        {
          [v15 setActionProperties:v16];
        }

        v74 = v16;
        v1 = v80;
        if ([*(v80 + 40) _canFeatureSuggestion:v6])
        {
          v17 = *(*(v80 + 40) + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = v17;
            v19 = [v15 uuid];
            *buf = 138412290;
            v102 = v19;
            _os_log_impl(&dword_22FA28000, v18, OS_LOG_TYPE_INFO, "Set currentlyFeatured state on suggestion: %@", buf, 0xCu);
          }

          [v15 setFeaturedState:1];
          ++*(*(v80 + 40) + 56);
        }

        v78 = v8;
        v79 = v7;
        v20 = objc_opt_new();
        v81 = [v6 features];
        v82 = v20;
        if ([v81 count])
        {
          v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v81, "count")}];
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v22 = v81;
          v23 = [v22 countByEnumeratingWithState:&v91 objects:v105 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v92;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v92 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:*(*(&v91 + 1) + 8 * i) requiringSecureCoding:1 error:0];
                if (v27)
                {
                  [v21 addObject:v27];
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v91 objects:v105 count:16];
            }

            while (v24);
          }

          v20 = v82;
          [v82 setObject:v21 forKeyedSubscript:@"features"];

          v1 = v80;
        }

        if ([v6 type] == 1)
        {
          v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v6, "containsUnverifiedPersons")}];
          [v20 setObject:v28 forKeyedSubscript:@"containsUnverifiedPersons"];
        }

        v29 = [v6 suggestedPersonLocalIdentifiers];
        if ([v29 count])
        {
          [v20 setObject:v29 forKeyedSubscript:@"suggestedPersonLocalIdentifiers"];
        }

        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", *(v1 + 56), *(v1 + 64)];
        [v20 setObject:v30 forKeyedSubscript:@"deviceInformation"];

        [v15 setFeaturesProperties:v20];
        v31 = [v6 title];
        if (v31)
        {
          [v15 setTitle:v31];
        }

        v32 = [v6 subtitle];
        if (v32)
        {
          [v15 setSubtitle:v32];
        }

        v33 = [v6 subtype];
        if ([MEMORY[0x277CD99E0] hasPersonLocalIdentifierInContextForSuggestionSubype:v33])
        {
          v34 = [v6 suggestedPersonLocalIdentifiers];
          if ([v34 count])
          {
            v35 = [MEMORY[0x277D3C810] suggestionContextFromPersonLocalIdentifiers:v34];
            [v15 setContext:v35];
          }

          else
          {
            v37 = *(*(v1 + 40) + 8);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v102 = v6;
              _os_log_error_impl(&dword_22FA28000, v37, OS_LOG_TYPE_ERROR, "Unexpected to not have personLocalIdentifiers for People/Pet Wallpaper Suggestion %@", buf, 0xCu);
            }
          }
        }

        v38 = [v6 availableFeatures];
        if (v38)
        {
          [v15 setAvailableFeatures:v38];
        }

        v39 = [v15 placeholderForCreatedSuggestion];
        v40 = [v39 localIdentifier];

        if (v40)
        {
          v41 = v76;
          if ([v6 notificationState] == 1)
          {
            [v15 setNotificationState:1];
            [*(v1 + 72) addObject:v40];
          }

          [*(v1 + 80) addObject:v40];
        }

        else
        {
          v42 = *(*(v1 + 40) + 8);
          v41 = v76;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v102 = "[PHASuggestionController commitSuggestions:retiringSuggestions:deletingSuggestions:withOptions:error:]_block_invoke";
            v103 = 2112;
            v104 = v15;
            _os_log_error_impl(&dword_22FA28000, v42, OS_LOG_TYPE_ERROR, "%s: Getting a nil placeholder for created suggestion: %@", buf, 0x16u);
          }
        }

        v4 = v4 + 1.0;

        v3 = v72;
        v8 = v78;
        v7 = v79;
        v9 = v77;
LABEL_57:

        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v3);
  }

  if ([*(v1 + 88) clearFeaturedSuggestions] && objc_msgSend(*(*(v1 + 40) + 48), "count"))
  {
    v43 = *(v1 + 40);
    v44 = *(v43 + 8);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(v43 + 48);
      v46 = v44;
      v47 = [v45 count];
      *buf = 134217984;
      v102 = v47;
      _os_log_impl(&dword_22FA28000, v46, OS_LOG_TYPE_DEFAULT, "Clearing featured state for %lu suggestions", buf, 0xCu);

      v43 = *(v1 + 40);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v48 = *(v43 + 48);
    v49 = [v48 countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v88;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v88 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v87 + 1) + 8 * j);
          v54 = *(*(v80 + 40) + 64);
          v55 = [v53 localIdentifier];
          v56 = [v54 containsObject:v55];

          v57 = *(*(v80 + 40) + 8);
          if (v56)
          {
            if (!os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              continue;
            }

            v58 = v57;
            v59 = [v53 localIdentifier];
            *buf = 138412290;
            v102 = v59;
            _os_log_impl(&dword_22FA28000, v58, OS_LOG_TYPE_INFO, "Skip unfeaturing deleted suggestion: %@", buf, 0xCu);
          }

          else
          {
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v60 = v57;
              v61 = [v53 localIdentifier];
              *buf = 138412290;
              v102 = v61;
              _os_log_impl(&dword_22FA28000, v60, OS_LOG_TYPE_DEFAULT, "Unfeature suggestion: %@", buf, 0xCu);
            }

            v58 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:v53];
            [v58 setFeaturedState:0];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v50);
    }

    v1 = v80;
    v62 = *(v80 + 40);
    v63 = *(v62 + 48);
    *(v62 + 48) = 0;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v64 = *(v1 + 96);
  v65 = [v64 countByEnumeratingWithState:&v83 objects:v99 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v84;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v84 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:*(*(&v83 + 1) + 8 * k)];
        [v69 markRetired];
      }

      v66 = [v64 countByEnumeratingWithState:&v83 objects:v99 count:16];
    }

    while (v66);
  }

  result = [*(v80 + 104) count];
  if (result)
  {
    return [MEMORY[0x277CD99E8] deleteSuggestions:*(v80 + 104)];
  }

  return result;
}

- (void)ingestSuggestions:(id)suggestions atDate:(id)date
{
  v38 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  dateCopy = date;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = suggestionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if (![(PHASuggestionController *)self _filterExistingSuggestion:v16])
        {
          state = [v16 state];
          if (state <= 2)
          {
            if (state)
            {
              if (state != 1)
              {
                if (state != 2)
                {
                  continue;
                }

                if ([(PHASuggestionController *)self shouldDeleteSuggestion:v16 atDate:dateCopy])
                {
                  v18 = v9;
                }

                else
                {
                  v18 = v8;
                }

                goto LABEL_18;
              }

LABEL_15:
              v19 = [(PHASuggestionController *)self shouldRetireSuggestion:v16 atDate:dateCopy];
              v18 = v8;
              if (v19)
              {
                [(NSMutableArray *)v10 addObject:v16];
                v18 = v8;
              }
            }

            else
            {
              [(NSMutableArray *)v9 addObject:v16];
              v18 = v28;
            }

LABEL_18:
            [(NSMutableArray *)v18 addObject:v16];
            continue;
          }

          if ((state - 3) >= 2)
          {
            continue;
          }

          goto LABEL_15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v13);
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v21 = loggingConnection;
    v22 = [(NSMutableArray *)v28 count];
    *buf = 134218242;
    v34 = v22;
    v35 = 2112;
    v36 = v28;
    _os_log_impl(&dword_22FA28000, v21, OS_LOG_TYPE_DEFAULT, "Found %lu existing pending suggestions: %@", buf, 0x16u);
  }

  existingSuggestions = self->_existingSuggestions;
  self->_existingSuggestions = v8;
  v24 = v8;

  suggestionsToRetire = self->_suggestionsToRetire;
  self->_suggestionsToRetire = v10;
  v26 = v10;

  suggestionsToDelete = self->_suggestionsToDelete;
  self->_suggestionsToDelete = v9;
}

- (BOOL)shouldDeleteSuggestion:(id)suggestion atDate:(id)date
{
  dateCopy = date;
  suggestionCopy = suggestion;
  activationDate = [suggestionCopy activationDate];
  [dateCopy timeIntervalSinceDate:activationDate];
  v9 = v8;

  v10 = objc_opt_class();
  type = [suggestionCopy type];
  subtype = [suggestionCopy subtype];

  [v10 _maximumDurationBeforeDeletionForSuggestionType:type andSubtype:subtype];
  LOBYTE(suggestionCopy) = v9 > v13;

  return suggestionCopy;
}

- (BOOL)shouldRetireSuggestion:(id)suggestion atDate:(id)date
{
  suggestionCopy = suggestion;
  dateCopy = date;
  relevantUntilDate = [suggestionCopy relevantUntilDate];
  activationDate = [suggestionCopy activationDate];
  [dateCopy timeIntervalSinceDate:activationDate];
  v10 = v9;
  if ([suggestionCopy state] != 4)
  {
    if ([dateCopy compare:relevantUntilDate] == 1)
    {
      v11 = 1;
      goto LABEL_7;
    }

    if (activationDate)
    {
      v11 = v10 > [objc_opt_class() _retirementDelayInDaysForSuggestionType:objc_msgSend(suggestionCopy andSubtype:{"type"), objc_msgSend(suggestionCopy, "subtype")}] * 86400.0;
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)deniedSuggestionsForProfile:(unsigned __int8)profile
{
  profileCopy = profile;
  v42 = *MEMORY[0x277D85DE8];
  if (profile <= 7u && ((1 << profile) & 0xC4) != 0)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = self->_existingSuggestions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          if ([v12 state] == 4)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (profileCopy <= 4 && ((1 << profileCopy) & 0x19) != 0)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v13 = v6;
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v32;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v31 + 1) + 8 * j);
              if ([(PHASuggestionController *)self _canFeatureSuggestion:v18])
              {
                [v5 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v15);
        }
      }

      else
      {
        v13 = [MEMORY[0x277D3BBF8] suggestionTypesWithProfile:profileCopy];
        v19 = [MEMORY[0x277D3BBF8] suggestionSubtypesWithProfile:profileCopy];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v20 = v6;
        v21 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v28;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v28 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v27 + 1) + 8 * k);
              if ([v13 containsIndex:{objc_msgSend(v25, "type", v27)}] && objc_msgSend(v19, "containsIndex:", objc_msgSend(v25, "subtype")))
              {
                [v5 addObject:v25];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v22);
        }
      }
    }

    else
    {
      v5 = v6;
    }
  }

  return v5;
}

- (id)_existingSuggestionsForProfile:(unsigned __int8)profile
{
  v18 = *MEMORY[0x277D85DE8];
  if ((profile - 3) < 3)
  {
    goto LABEL_4;
  }

  if (profile == 1)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3BBF8] suggestionTypesWithProfile:1];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = self->_existingSuggestions;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([v6 containsIndex:{objc_msgSend(v12, "type", v13)}])
          {
            [(NSMutableArray *)array addObject:v12];
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  else
  {
    if (!profile)
    {
LABEL_4:
      array = self->_existingSuggestions;
      goto LABEL_5;
    }

    array = MEMORY[0x277CBEBF8];
  }

LABEL_5:

  return array;
}

- (void)ingestExistingSuggestionsWithOptions:(id)options
{
  v14[3] = *MEMORY[0x277D85DE8];
  localToday = [options localToday];
  if (localToday)
  {
    [MEMORY[0x277D27690] universalDateFromLocalDate:localToday];
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v5 = ;
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"activationDate" ascending:0];
  v14[0] = v7;
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v14[1] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v14[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
  [librarySpecificFetchOptions setSortDescriptors:v10];

  if (localToday)
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"creationDate < %@", v5];
    [librarySpecificFetchOptions setPredicate:v11];
  }

  v12 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  fetchedObjects = [v12 fetchedObjects];
  [(PHASuggestionController *)self ingestSuggestions:fetchedObjects atDate:v5];
}

- (PHASuggestionController)initWithGraphManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PHASuggestionController;
  v6 = [(PHASuggestionController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graphManager, manager);
    photoLibrary = [managerCopy photoLibrary];
    photoLibrary = v7->_photoLibrary;
    v7->_photoLibrary = photoLibrary;

    v10 = os_log_create("com.apple.photoanalysisd", "suggestions");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v10;

    v7->_newFeaturedSuggestionsCount = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    deletedSuggestionLocalIdentifiers = v7->_deletedSuggestionLocalIdentifiers;
    v7->_deletedSuggestionLocalIdentifiers = v12;
  }

  return v7;
}

+ (unint64_t)_retirementDelayInDaysForSuggestionType:(unsigned __int16)type andSubtype:(unsigned __int16)subtype
{
  if (subtype == 502)
  {
    return 15;
  }

  if ((type - 1) > 0xC)
  {
    return 0;
  }

  return qword_22FCDE5B8[(type - 1)];
}

- (void)recordCreatedSuggestions:(id)suggestions duringSession:(id)session
{
  v100 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  sessionCopy = session;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v8 = [suggestionsCopy countByEnumeratingWithState:&v85 objects:v99 count:16];
  v81 = suggestionsCopy;
  if (v8)
  {
    selfCopy = self;
    v55 = sessionCopy;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v56 = 0;
    v57 = 0;
    v9 = 0;
    v76 = 0;
    v79 = 0;
    v67 = 0;
    v70 = 0;
    v73 = 0;
    v65 = 0;
    v66 = 0;
    v82 = 0;
    v10 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v11 = *v86;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v86 != v11)
        {
          objc_enumerationMutation(suggestionsCopy);
        }

        v13 = *(*(&v85 + 1) + 8 * i);
        type = [v13 type];
        subtype = [v13 subtype];
        v16 = subtype;
        if (type <= 2)
        {
          if (type == 1)
          {
            features = [v13 features];
            v18 = [features count];

            suggestedPersonLocalIdentifiers = [v13 suggestedPersonLocalIdentifiers];
            v20 = [suggestedPersonLocalIdentifiers count];

            if ([v13 notificationState])
            {
              ++v9;
            }

            if (v16 == 101)
            {
              ++v73;
              v66 += v18;
LABEL_38:
              v82 += v20;
            }

            else if (v16 == 102)
            {
              v67 += v18;
              ++v70;
              goto LABEL_38;
            }

            suggestionsCopy = v81;
            continue;
          }

          if (type == 2)
          {
            if (subtype > 202)
            {
              if (subtype == 203)
              {
                ++v64;
              }

              else if (subtype == 204)
              {
                ++v65;
              }
            }

            else if (subtype == 201)
            {
              ++v62;
            }

            else if (subtype == 202)
            {
              ++v63;
            }
          }
        }

        else
        {
          switch(type)
          {
            case 3:
              if (subtype > 303)
              {
                switch(subtype)
                {
                  case 304:
                    ++v60;
                    break;
                  case 305:
                    ++v61;
                    break;
                  case 306:
                    ++v56;
                    break;
                }
              }

              else
              {
                switch(subtype)
                {
                  case 301:
                    ++v57;
                    break;
                  case 302:
                    ++v58;
                    break;
                  case 303:
                    ++v59;
                    break;
                }
              }

              break;
            case 4:
              ++v10;
              break;
            case 5:
              if (subtype == 502)
              {
                ++v79;
              }

              else if (subtype == 501)
              {
                ++v76;
              }

              break;
          }
        }
      }

      v8 = [suggestionsCopy countByEnumeratingWithState:&v85 objects:v99 count:16];
      if (!v8)
      {
        v21 = v82;
        v22 = v66;
        v23 = v67;
        self = selfCopy;
        sessionCopy = v55;
        v8 = v70;
        goto LABEL_51;
      }
    }
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v56 = 0;
  v57 = 0;
  v9 = 0;
  v76 = 0;
  v79 = 0;
  v73 = 0;
  v10 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v23 = 0.0;
  v22 = 0.0;
  v21 = 0.0;
LABEL_51:
  profile = [sessionCopy profile];
  if (profile > 2)
  {
    switch(profile)
    {
      case 3:
        graphManager = [(PHASuggestionController *)self graphManager];
        analytics = [graphManager analytics];
        v91 = @"longtailCreated";
        graphManager3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v79];
        v92 = graphManager3;
        analytics2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
        v47 = @"com.apple.Photos.suggestion.widget";
        break;
      case 4:
        graphManager = [(PHASuggestionController *)self graphManager];
        analytics = [graphManager analytics];
        v93 = @"onThisDayCreated";
        graphManager3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v94 = graphManager3;
        analytics2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        v47 = @"com.apple.Photos.suggestion.onThisDay";
        break;
      case 5:
        v83 = MEMORY[0x277CF6EC0];
        v89[0] = @"numberOfSingleAssetSuggestionCreated";
        graphManager = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(suggestionsCopy, "count")}];
        v90[0] = graphManager;
        v89[1] = @"editLoopCreated";
        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62];
        v90[1] = v74;
        v89[2] = @"editLongExposureCreated";
        graphManager3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v63];
        v90[2] = graphManager3;
        v89[3] = @"editBounceCreated";
        analytics2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v64];
        v90[3] = analytics2;
        v89[4] = @"editPortraitStudioLightCreated";
        v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
        v90[4] = v71;
        v89[5] = @"outstanderCreated";
        v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v76];
        v90[5] = v77;
        v89[6] = @"recentFavoriteCreated";
        v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
        v90[6] = v68;
        v89[7] = @"recentEditCreated";
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v58];
        v90[7] = v28;
        v89[8] = @"recentAestheticsCreated";
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59];
        v90[8] = v29;
        v89[9] = @"recentPersonCentricCreated";
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
        v90[9] = v30;
        v89[10] = @"recentSocialGroupCentricCreated";
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v61];
        v90[10] = v31;
        v89[11] = @"longtailCreated";
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v79];
        v90[11] = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:12];
        [v83 sendEvent:@"com.apple.Photos.suggestion.singleAsset" withPayload:v33];

        suggestionsCopy = v81;
        analytics = v74;

        v35 = v71;
LABEL_69:

        goto LABEL_70;
      default:
        goto LABEL_71;
    }

    [analytics sendEvent:v47 withPayload:analytics2];
LABEL_70:

    goto LABEL_71;
  }

  if (!profile)
  {
    graphManager2 = [(PHASuggestionController *)self graphManager];
    analytics = [graphManager2 analytics];
    v95[0] = @"numberOfSingleAssetSuggestionCreated";
    graphManager3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(suggestionsCopy, "count")}];
    v96[0] = graphManager3;
    v95[1] = @"editLoopCreated";
    analytics2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v62];
    v96[1] = analytics2;
    v95[2] = @"editLongExposureCreated";
    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v63];
    v96[2] = v80;
    v95[3] = @"editBounceCreated";
    v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v64];
    v96[3] = v75;
    v95[4] = @"editPortraitStudioLightCreated";
    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
    v96[4] = v72;
    v95[5] = @"outstanderCreated";
    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v76];
    v96[5] = v78;
    v95[6] = @"recentFavoriteCreated";
    v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
    v96[6] = v69;
    v95[7] = @"recentEditCreated";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v58];
    v96[7] = v48;
    v95[8] = @"recentAestheticsCreated";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59];
    v96[8] = v49;
    v95[9] = @"recentPersonCentricCreated";
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
    v96[9] = v50;
    v95[10] = @"recentSocialGroupCentricCreated";
    v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v61];
    v96[10] = v51;
    v95[11] = @"recentSyndicatedAssetCreated";
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v56];
    v96[11] = v52;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:v95 count:12];
    [analytics sendEvent:@"com.apple.Photos.suggestion.singleAsset" withPayload:v53];

    suggestionsCopy = v81;
    graphManager = graphManager2;

    v35 = v80;
    goto LABEL_69;
  }

  if (profile == 1)
  {
    v36 = MEMORY[0x277CBEB38];
    v97[0] = @"sentNotifications";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    v98[0] = v37;
    v97[1] = @"numberOfPersonsSuggested";
    v38 = v8;
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:v21 / (v73 + v8)];
    v98[1] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
    graphManager = [v36 dictionaryWithDictionary:v40];

    notificationProfile = [sessionCopy notificationProfile];
    analytics = notificationProfile;
    if (notificationProfile)
    {
      [notificationProfile userType];
      v42 = PGStringFromSuggestionNotificationUserType();
      [graphManager setObject:v42 forKeyedSubscript:@"notificationProfile"];
    }

    if (v73)
    {
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v73];
      [graphManager setObject:v43 forKeyedSubscript:@"momentShareCreated"];

      v44 = [MEMORY[0x277CCABB0] numberWithDouble:v22 / v73];
      [graphManager setObject:v44 forKeyedSubscript:@"numberOfTextFeaturesPerMoment"];
    }

    if (v38)
    {
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v38];
      [graphManager setObject:v45 forKeyedSubscript:@"collectionShareCreated"];

      v46 = [MEMORY[0x277CCABB0] numberWithDouble:v23 / v38];
      [graphManager setObject:v46 forKeyedSubscript:@"numberOfTextFeaturesPerCollection"];
    }

    graphManager3 = [(PHASuggestionController *)self graphManager];
    analytics2 = [graphManager3 analytics];
    [analytics2 sendEvent:@"com.apple.Photos.suggestion.sharing" withPayload:graphManager];
    goto LABEL_70;
  }

LABEL_71:
}

- (void)recordDeletedSuggestions:(id)suggestions
{
  v22 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [suggestionsCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(suggestionsCopy);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 type] != 1 && !objc_msgSend(v10, "state"))
        {
          ++v7;
        }
      }

      v6 = [suggestionsCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
    if (v7)
    {
      graphManager = [(PHASuggestionController *)self graphManager];
      analytics = [graphManager analytics];
      v19 = @"singleAssetSuggestionNotConsumed";
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      v20 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      [analytics sendEvent:@"com.apple.Photos.suggestion.singleAssetSuggestionNotConsumed" withPayload:v14];
    }
  }
}

- (void)recordRetiredSuggestions:(id)suggestions
{
  v30 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [suggestionsCopy countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(suggestionsCopy);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        type = [v12 type];
        state = [v12 state];
        if (type == 1 && state == 1)
        {
          notificationState = [v12 notificationState];
          if (notificationState == 2)
          {
            ++v8;
          }

          else if (notificationState == 1)
          {
            ++v9;
          }

          else
          {
            ++v7;
          }
        }
      }

      v6 = [suggestionsCopy countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
    if (v9)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  if (v8 || v7)
  {
LABEL_23:
    graphManager = [(PHASuggestionController *)self graphManager];
    analytics = [graphManager analytics];
    v27[0] = @"ignoredNotifications";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    v28[0] = v19;
    v27[1] = @"ignoredNotifiedSuggestion";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
    v28[1] = v20;
    v27[2] = @"sharingSuggestionIgnored";
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
    v28[2] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
    [analytics sendEvent:@"com.apple.Photos.suggestion.retired" withPayload:v22];
  }
}

@end