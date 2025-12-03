@interface PLInitialSuggestionsManager
+ (BOOL)_groupIsMePerson:(id)person mePersonUUID:(id)d;
+ (id)_dateTemplateCandidatesFromTemplates:(id)templates assetIdsByDateFilter:(id)filter scopedAssetIds:(__CFArray *)ids minResultCountPerSuggestion:(unint64_t)suggestion suggestionStyleType:(unint64_t)type;
+ (id)_fetchAssetIdsForDateFilters:(id)filters psiDatabase:(id)database;
+ (id)_mePersonUUIDForPhotoLibrary:(id)library;
+ (id)_rankedGroupsFromPSIDatabase:(id)database photoLibrary:(id)library assetIds:(__CFArray *)ids templateProvider:(id)provider mePersonUUID:(id)d minResultCountPerSuggestion:(unint64_t)suggestion;
+ (id)_singleEntitySearchCandidatesFromRankedGroups:(id)groups minAssetResultCountPerSuggestion:(unint64_t)suggestion;
+ (id)_templateCandidatesForFirstRankedGroup:(id)group secondRankedGroup:(id)rankedGroup allTemplates:(id)templates assetIdsByDateFilter:(id)filter scopedAssetIdsCount:(unint64_t)count templateProvider:(id)provider mePersonExists:(BOOL)exists minResultCountPerSuggestion:(unint64_t)self0;
+ (id)_templateCandidatesFromRankedGroups:(id)groups assetIdsByDateFilter:(id)filter scopedAssetIds:(__CFArray *)ids templateProvider:(id)provider mePersonExists:(BOOL)exists minResultCountPerSuggestion:(unint64_t)suggestion suggestionStyleType:(unint64_t)type;
+ (id)_updatedCandidateFromCandidate:(id)candidate firstGroup:(id)group secondGroup:(id)secondGroup firstGroupDisplayString:(id)string secondGroupDisplayString:(id)displayString dateFilter:(id)filter todayDate:(id)date locale:(id)self0 minResultCountPerSuggestion:(unint64_t)self1 suggestionStyleType:(unint64_t)self2;
+ (id)_updatedGroupFromGroup:(id)group psiDatabase:(id)database;
+ (id)rankedGroupCandidatesForInitialSuggestionsForPhotoLibrary:(id)library;
+ (id)sharedManager;
+ (id)validateInitialSuggestions:(id)suggestions minResultCountPerSuggestion:(unint64_t)suggestion psiDatabase:(id)database suggestionStyleType:(unint64_t)type;
+ (unint64_t)recentAssetLimitForInitialSuggestionGenerationForIndexedAssetCount:(unint64_t)count;
+ (unint64_t)scaledMinimumNumberOfResultsPerSuggestion:(unint64_t)suggestion;
+ (void)generateInitialSuggestionsForPhotoLibrary:(id)library;
+ (void)generateInitialSuggestionsForPhotoLibrary:(id)library styleType:(unint64_t)type;
- (id)_preGeneratedInitialSuggestionsForPhotoLibrary:(id)library minResultCountPerSuggestion:(unint64_t)suggestion suggestionLimit:(unint64_t)limit psiDatabase:(id)database suggestionStyleType:(unint64_t)type;
- (id)fetchInitialSuggestionsWithLimit:(unint64_t)limit minimumResultCountPerSuggestion:(unint64_t)suggestion suggestionStyleType:(unint64_t)type photoLibrary:(id)library psiDatabase:(id)database;
- (void)_generateSuggestionsWithLimitOfMostRecentAssets:(unint64_t)assets minimumNumberOfResultsPerSuggestion:(unint64_t)suggestion photoLibrary:(id)library psiDatabase:(id)database minResultCountPerSuggestion:(unint64_t)perSuggestion locale:(id)locale suggestionStyleType:(unint64_t)type;
@end

@implementation PLInitialSuggestionsManager

+ (unint64_t)scaledMinimumNumberOfResultsPerSuggestion:(unint64_t)suggestion
{
  if (!suggestion)
  {
    return 0;
  }

  v3 = vcvtad_u64_f64(sqrt(vcvts_n_f32_u64(suggestion, 2uLL)));
  if (v3 >= 0x1F4)
  {
    v3 = 500;
  }

  if (v3 <= 0x14)
  {
    return 20;
  }

  else
  {
    return v3;
  }
}

+ (id)rankedGroupCandidatesForInitialSuggestionsForPhotoLibrary:(id)library
{
  libraryCopy = library;
  pathManager = [libraryCopy pathManager];
  v6 = [[PSIDatabase alloc] initWithPathManager:pathManager options:1];
  if (v6)
  {
    v7 = objc_alloc_init(PLSearchSuggestionTemplateProvider);
    countOfAssets = [(PSIDatabase *)v6 countOfAssets];
    v9 = [self recentAssetLimitForInitialSuggestionGenerationForIndexedAssetCount:countOfAssets];
    v10 = [self _mePersonUUIDForPhotoLibrary:libraryCopy];
    v11 = [(PSIDatabase *)v6 mostRecentSortedAssetIdsWithLimit:v9];
    v12 = [self _rankedGroupsFromPSIDatabase:v6 photoLibrary:libraryCopy assetIds:v11 templateProvider:v7 mePersonUUID:v10 minResultCountPerSuggestion:{objc_msgSend(self, "scaledMinimumNumberOfResultsPerSuggestion:", countOfAssets)}];
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    v13 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Unexpected nil psiDatabase. No ranked groups will be generated.", v15, 2u);
    }

    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

+ (id)_rankedGroupsFromPSIDatabase:(id)database photoLibrary:(id)library assetIds:(__CFArray *)ids templateProvider:(id)provider mePersonUUID:(id)d minResultCountPerSuggestion:(unint64_t)suggestion
{
  v67[1] = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  libraryCopy = library;
  providerCopy = provider;
  dCopy = d;
  if (databaseCopy)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    nonIdentifierBasedSupportedSearchEntityTypes = [providerCopy nonIdentifierBasedSupportedSearchEntityTypes];
    v41 = [databaseCopy groupsForSearchIndexCategories:nonIdentifierBasedSupportedSearchEntityTypes searchResultTypes:1 dateFilter:0];
    [v15 addObjectsFromArray:v41];
    supportedIdentifiers = [providerCopy supportedIdentifiers];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __140__PLInitialSuggestionsManager__rankedGroupsFromPSIDatabase_photoLibrary_assetIds_templateProvider_mePersonUUID_minResultCountPerSuggestion___block_invoke;
    v64[3] = &unk_1E7572788;
    v65 = databaseCopy;
    v16 = v15;
    v66 = v16;
    [supportedIdentifiers enumerateObjectsUsingBlock:v64];
    if ([v16 count])
    {
      v17 = PLPhotosSearchGetLog();
      spid = os_signpost_id_generate(v17);

      v18 = v17;
      v19 = v18;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PLSearchBackendInitialSuggestionGenerateRankedGroups", "", buf, 2u);
      }

      v36 = v19;

      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 3221225472;
      v62[2] = __140__PLInitialSuggestionsManager__rankedGroupsFromPSIDatabase_photoLibrary_assetIds_templateProvider_mePersonUUID_minResultCountPerSuggestion___block_invoke_62;
      v62[3] = &unk_1E7564120;
      v21 = v20;
      v63 = v21;
      [v16 enumerateObjectsUsingBlock:v62];
      *buf = 0;
      v59 = buf;
      v60 = 0x2020000000;
      v61 = 0;
      if ([v21 count])
      {
        v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __140__PLInitialSuggestionsManager__rankedGroupsFromPSIDatabase_photoLibrary_assetIds_templateProvider_mePersonUUID_minResultCountPerSuggestion___block_invoke_2;
        v52[3] = &unk_1E75780D8;
        v53 = v21;
        v54 = libraryCopy;
        v57 = buf;
        v23 = v22;
        v55 = v23;
        v56 = v16;
        [v54 performBlockAndWait:v52];
      }

      else
      {
        v23 = 0;
      }

      if (v59[24] == 1)
      {
        allValues = [v21 allValues];
        v27 = [allValues count] == 0;

        if (!v27)
        {
          allValues2 = [v21 allValues];
          [v16 removeObjectsInArray:allValues2];
        }
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __140__PLInitialSuggestionsManager__rankedGroupsFromPSIDatabase_photoLibrary_assetIds_templateProvider_mePersonUUID_minResultCountPerSuggestion___block_invoke_74;
      v45[3] = &unk_1E7564148;
      idsCopy = ids;
      suggestionCopy = suggestion;
      selfCopy = self;
      v46 = dCopy;
      v29 = v23;
      v47 = v29;
      v30 = v35;
      v48 = v30;
      [v16 enumerateObjectsUsingBlock:v45];
      v31 = v36;
      v25 = v31;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *v44 = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v25, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchBackendInitialSuggestionGenerateRankedGroups", "", v44, 2u);
      }

      v32 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"rankingScore" ascending:0];
      v67[0] = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
      [v30 sortUsingDescriptors:v33];

      v24 = v30;
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v25 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_INFO, "No entities found for initial suggestion generation, no suggestions will be generated.", buf, 2u);
      }

      v24 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v24 = MEMORY[0x1E695E0F0];
  }

  return v24;
}

void __140__PLInitialSuggestionsManager__rankedGroupsFromPSIDatabase_photoLibrary_assetIds_templateProvider_mePersonUUID_minResultCountPerSuggestion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) groupForLookupIdentifier:a2 searchResultTypes:1];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

void __140__PLInitialSuggestionsManager__rankedGroupsFromPSIDatabase_photoLibrary_assetIds_templateProvider_mePersonUUID_minResultCountPerSuggestion___block_invoke_62(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 category] == 1300 || objc_msgSend(v5, "category") == 1301 || objc_msgSend(v5, "category") == 1330 || objc_msgSend(v5, "category") == 1331)
  {
    v3 = *(a1 + 32);
    v4 = [v5 lookupIdentifier];
    [v3 setObject:v5 forKeyedSubscript:v4];
  }
}

void __140__PLInitialSuggestionsManager__rankedGroupsFromPSIDatabase_photoLibrary_assetIds_templateProvider_mePersonUUID_minResultCountPerSuggestion___block_invoke_2(uint64_t a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v2 = +[PLPerson fetchRequest];
  [v2 setResultType:0];
  v3 = MEMORY[0x1E696AE18];
  v4 = [*(a1 + 32) allKeys];
  v5 = [v3 predicateWithFormat:@"%K IN %@", @"personUUID", v4];
  [v2 setPredicate:v5];

  v49[0] = @"userFeedbacks";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  [v2 setRelationshipKeyPathsForPrefetching:v6];

  v7 = [*(a1 + 40) managedObjectContext];
  v44 = 0;
  v8 = [v7 executeFetchRequest:v2 error:&v44];
  v9 = v44;
  if (v9 || ![v8 count])
  {
    v10 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v48 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Encountered error fetching persons for candidate groups: %@.", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v30 = v7;
    v31 = v2;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v29 = v8;
    obj = v8;
    v34 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v34)
    {
      v33 = *v41;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          v13 = [v12 displayName];
          v14 = [v13 length];
          if (v14)
          {
            v15 = [v12 displayName];
            v35 = v15;
          }

          else
          {
            v15 = 0;
          }

          v16 = *(a1 + 48);
          v17 = [v12 personUUID];
          [v16 setObject:v15 forKeyedSubscript:v17];

          if (v14)
          {
          }

          v18 = [v12 userFeedbacks];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v19 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v37;
            do
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v37 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v36 + 1) + 8 * j);
                if ([v23 type] == 2 || objc_msgSend(v23, "type") == 3)
                {
                  v24 = [v12 personUUID];
                  v25 = [v24 length];

                  if (v25)
                  {
                    v26 = *(a1 + 32);
                    v27 = [v12 personUUID];
                    v28 = [v26 objectForKeyedSubscript:v27];

                    if (v28)
                    {
                      [*(a1 + 56) removeObject:v28];
                    }
                  }
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v20);
          }
        }

        v34 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v34);
    }

    v7 = v30;
    v2 = v31;
    v8 = v29;
    v9 = 0;
  }
}

void __140__PLInitialSuggestionsManager__rankedGroupsFromPSIDatabase_photoLibrary_assetIds_templateProvider_mePersonUUID_minResultCountPerSuggestion___block_invoke_74(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 category] == 1103)
  {
    [v3 score];
    v5 = v4 != 0.0;
  }

  else
  {
    v5 = 1;
  }

  if (PLSearchIndexCategoryIsEligibleForSuggestion([v3 category]))
  {
    v6 = [v3 contentString];
    v7 = [v6 length] != 0 && v5;

    if (v7 == 1)
    {
      if ([v3 assetIds])
      {
        theArray = CFArrayCreateCopy(0, [v3 assetIds]);
        if (theArray)
        {
          [PLScopedSearchUtilities intersectSortedArray:&theArray withOtherSortedArray:*(a1 + 56) intersectionLimit:*(a1 + 64)];
          if (theArray)
          {
            if (CFArrayGetCount(theArray))
            {
              v8 = [objc_opt_class() _groupIsMePerson:v3 mePersonUUID:*(a1 + 32)];
              v9 = [v3 lookupIdentifier];
              if ([v9 length])
              {
                v10 = *(a1 + 40);
                v11 = [v3 lookupIdentifier];
                v12 = [v10 objectForKeyedSubscript:v11];
              }

              else
              {
                v12 = 0;
              }

              v13 = [[PSIRankedGroupV2 alloc] initWithGroup:v3 displayString:v12 isMePerson:v8];
              if (v13)
              {
                [*(a1 + 48) addObject:v13];
              }
            }

            if (theArray)
            {
              CFRelease(theArray);
            }
          }
        }
      }
    }
  }
}

+ (id)_updatedCandidateFromCandidate:(id)candidate firstGroup:(id)group secondGroup:(id)secondGroup firstGroupDisplayString:(id)string secondGroupDisplayString:(id)displayString dateFilter:(id)filter todayDate:(id)date locale:(id)self0 minResultCountPerSuggestion:(unint64_t)self1 suggestionStyleType:(unint64_t)self2
{
  candidateCopy = candidate;
  groupCopy = group;
  secondGroupCopy = secondGroup;
  stringCopy = string;
  displayStringCopy = displayString;
  filterCopy = filter;
  dateCopy = date;
  localeCopy = locale;
  if (!candidateCopy)
  {
    v27 = 0;
    goto LABEL_18;
  }

  v52 = localeCopy;
  if (groupCopy)
  {
    contentString = [groupCopy contentString];
    v26 = [contentString length] == 0;
  }

  else
  {
    v26 = 0;
  }

  v53 = filterCopy;
  if (secondGroupCopy)
  {
    contentString2 = [secondGroupCopy contentString];
    v29 = [contentString2 length] == 0;
  }

  else
  {
    v29 = 0;
  }

  if (!v26 && !v29)
  {
    v48 = dateCopy;
    v49 = stringCopy;
    v50 = secondGroupCopy;
    v51 = displayStringCopy;
    suggestionTemplate = [candidateCopy suggestionTemplate];
    v47 = [PLSearchSuggestionTemplate alloc];
    suggestionTemplateKey = [suggestionTemplate suggestionTemplateKey];
    firstIndexCategory = [suggestionTemplate firstIndexCategory];
    secondIndexCategory = [suggestionTemplate secondIndexCategory];
    v34 = groupCopy;
    templateType = [suggestionTemplate templateType];
    templateContentType = [suggestionTemplate templateContentType];
    templateDateType = [suggestionTemplate templateDateType];
    identifier = [suggestionTemplate identifier];
    v39 = templateType;
    groupCopy = v34;
    v54 = [(PLSearchSuggestionTemplate *)v47 initWithSuggestionTemplateKey:suggestionTemplateKey firstIndexCategory:firstIndexCategory secondIndexCategory:secondIndexCategory templateType:v39 templateContentType:templateContentType templateDateType:templateDateType styleType:type identifier:identifier];

    if (v34)
    {
      v40 = [PSIRankedGroupV2 alloc];
      firstRankedGroup = [candidateCopy firstRankedGroup];
      stringCopy = v49;
      v42 = -[PSIRankedGroupV2 initWithGroup:displayString:isMePerson:](v40, "initWithGroup:displayString:isMePerson:", v34, v49, [firstRankedGroup isMePerson]);

      secondGroupCopy = v50;
      if (v50)
      {
LABEL_13:
        v43 = [PSIRankedGroupV2 alloc];
        secondRankedGroup = [candidateCopy secondRankedGroup];
        v45 = -[PSIRankedGroupV2 initWithGroup:displayString:isMePerson:](v43, "initWithGroup:displayString:isMePerson:", secondGroupCopy, v51, [secondRankedGroup isMePerson]);

LABEL_16:
        filterCopy = v53;
        v27 = -[PLSearchSuggestionCandidate initWithSearchSuggestionTemplate:firstGroup:secondGroup:assetIdsForDateFilter:minAssetResultCountPerSuggestion:]([PLSearchSuggestionCandidate alloc], "initWithSearchSuggestionTemplate:firstGroup:secondGroup:assetIdsForDateFilter:minAssetResultCountPerSuggestion:", v54, v42, v45, [v53 assetIds], suggestion);
        [candidateCopy dateLastUsed];
        [(PLSearchSuggestionCandidate *)v27 setDateLastUsed:?];

        displayStringCopy = v51;
        dateCopy = v48;
        goto LABEL_17;
      }
    }

    else
    {
      v42 = 0;
      stringCopy = v49;
      secondGroupCopy = v50;
      if (v50)
      {
        goto LABEL_13;
      }
    }

    v45 = 0;
    goto LABEL_16;
  }

  v27 = 0;
  filterCopy = v53;
LABEL_17:
  localeCopy = v52;
LABEL_18:

  return v27;
}

+ (id)_updatedGroupFromGroup:(id)group psiDatabase:(id)database
{
  v28 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  databaseCopy = database;
  v7 = databaseCopy;
  if (groupCopy && databaseCopy)
  {
    group = [groupCopy group];
    if ([group category])
    {
      displayString = [groupCopy displayString];
      v10 = [displayString length];

      if (v10)
      {
        group2 = [groupCopy group];
        category = [group2 category];

        group3 = [groupCopy group];
        contentString = [group3 contentString];

        group4 = [groupCopy group];
        lookupIdentifier = [group4 lookupIdentifier];

        if ([groupCopy isMePerson])
        {
          v17 = 0;
        }

        else
        {
          v17 = contentString;
        }

        v18 = [v7 groupForText:v17 identifier:lookupIdentifier category:category resultTypes:1];
        contentString2 = [v18 contentString];
        v20 = [contentString2 length];

        if (v20)
        {
          v21 = v18;
        }

        else
        {
          v23 = PLSearchBackendInitialSuggestionsGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = 138412546;
            v25 = v18;
            v26 = 2112;
            v27 = groupCopy;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Invalid PSI group detected: %@ from ranked group: %@", &v24, 0x16u);
          }

          v21 = 0;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  contentString = PLSearchBackendInitialSuggestionsGetLog();
  if (os_log_type_enabled(contentString, OS_LOG_TYPE_ERROR))
  {
    v24 = 138412546;
    v25 = groupCopy;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_19BF1F000, contentString, OS_LOG_TYPE_ERROR, "Invalid ranked group detected: %@ or nil psidatabase: %@", &v24, 0x16u);
  }

  v21 = 0;
LABEL_14:

  return v21;
}

+ (id)validateInitialSuggestions:(id)suggestions minResultCountPerSuggestion:(unint64_t)suggestion psiDatabase:(id)database suggestionStyleType:(unint64_t)type
{
  v84 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  databaseCopy = database;
  date = [MEMORY[0x1E695DF00] date];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v9 = objc_alloc_init(PLSearchSuggestionTemplateProvider);
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v10 = suggestionsCopy;
  v11 = [v10 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v75;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v75 != v13)
        {
          objc_enumerationMutation(v10);
        }

        suggestionTemplate = [*(*(&v74 + 1) + 8 * i) suggestionTemplate];
        v16 = -[PLSearchSuggestionTemplateProvider dateFilterForSearchSuggestionTemplateDateType:](v9, "dateFilterForSearchSuggestionTemplateDateType:", [suggestionTemplate templateDateType]);

        if (v16)
        {
          [v63 addObject:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v12);
  }

  v61 = [objc_opt_class() _fetchAssetIdsForDateFilters:v63 psiDatabase:databaseCopy];
  v53 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v17 = v10;
  v18 = [v17 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v71;
    typeCopy = type;
    v60 = v9;
    v57 = *v71;
    v58 = v17;
    do
    {
      v21 = 0;
      v62 = v19;
      do
      {
        if (*v71 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v70 + 1) + 8 * v21);
        suggestionTemplate2 = [v22 suggestionTemplate];
        templateStyleType = [suggestionTemplate2 templateStyleType];

        if (templateStyleType == type)
        {
          suggestionTemplate3 = [v22 suggestionTemplate];
          templateDateType = [suggestionTemplate3 templateDateType];

          suggestionTemplate4 = [v22 suggestionTemplate];
          isDateOnlyTemplate = [suggestionTemplate4 isDateOnlyTemplate];

          firstRankedGroup = [v22 firstRankedGroup];

          secondRankedGroup = [v22 secondRankedGroup];

          if (firstRankedGroup)
          {
            firstRankedGroup2 = [v22 firstRankedGroup];
            v68 = [self _updatedGroupFromGroup:firstRankedGroup2 psiDatabase:databaseCopy];

            if (secondRankedGroup)
            {
              goto LABEL_18;
            }

LABEL_20:
            v33 = 0;
          }

          else
          {
            v68 = 0;
            if (!secondRankedGroup)
            {
              goto LABEL_20;
            }

LABEL_18:
            secondRankedGroup2 = [v22 secondRankedGroup];
            v33 = [self _updatedGroupFromGroup:secondRankedGroup2 psiDatabase:databaseCopy];
          }

          firstRankedGroup3 = [v22 firstRankedGroup];
          displayString = [firstRankedGroup3 displayString];

          secondRankedGroup3 = [v22 secondRankedGroup];
          displayString2 = [secondRankedGroup3 displayString];

          v36 = MEMORY[0x1E696AD98];
          suggestionTemplate5 = [v22 suggestionTemplate];
          v38 = [v36 numberWithUnsignedInteger:{objc_msgSend(suggestionTemplate5, "templateDateType")}];
          v39 = [v61 objectForKeyedSubscript:v38];

          if ([v39 assetIds])
          {
            v40 = CFArrayGetCount([v39 assetIds]) == 0;
          }

          else
          {
            v40 = 1;
          }

          type = typeCopy;
          v41 = v33;
          if (typeCopy && ((templateDateType != 0) | isDateOnlyTemplate & 1 || v39 || secondRankedGroup || !firstRankedGroup))
          {
            goto LABEL_41;
          }

          if (firstRankedGroup && !v68)
          {
            v42 = PLSearchBackendInitialSuggestionsGetLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              goto LABEL_39;
            }

LABEL_40:

LABEL_41:
            v9 = v60;
            v20 = v57;
            v17 = v58;
            v19 = v62;
            goto LABEL_42;
          }

          if (secondRankedGroup && !v33)
          {
            v42 = PLSearchBackendInitialSuggestionsGetLog();
            if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          }

          if (templateDateType != 0 && v40)
          {
            v42 = PLSearchBackendInitialSuggestionsGetLog();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              goto LABEL_39;
            }

            goto LABEL_40;
          }

          if (v68 && v33)
          {
            if ([v68 assetIds])
            {
              theArray = CFArrayCreateCopy(0, [v68 assetIds]);
              if (theArray)
              {
                if ([v33 assetIds])
                {
                  +[PLScopedSearchUtilities intersectSortedArray:withOtherSortedArray:intersectionLimit:](PLScopedSearchUtilities, "intersectSortedArray:withOtherSortedArray:intersectionLimit:", &theArray, [v33 assetIds], suggestion);
                  Count = CFArrayGetCount(theArray);
                }

                else
                {
                  Count = 0;
                }

                if (theArray)
                {
                  CFRelease(theArray);
                }

                v41 = v33;
              }

              else
              {
                Count = 0;
              }
            }

            else
            {
              Count = 0;
              theArray = 0;
            }

            if (Count < suggestion)
            {
              v42 = PLSearchBackendInitialSuggestionsGetLog();
              if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          else if (v68 && v39)
          {
            if ([v68 assetIds])
            {
              theArray = CFArrayCreateCopy(0, [v68 assetIds]);
              if (theArray)
              {
                if ([v39 assetIds])
                {
                  v41 = v33;
                  +[PLScopedSearchUtilities intersectSortedArray:withOtherSortedArray:intersectionLimit:](PLScopedSearchUtilities, "intersectSortedArray:withOtherSortedArray:intersectionLimit:", &theArray, [v39 assetIds], suggestion);
                  v44 = CFArrayGetCount(theArray);
                }

                else
                {
                  v44 = 0;
                }

                if (theArray)
                {
                  CFRelease(theArray);
                }
              }

              else
              {
                v44 = 0;
              }
            }

            else
            {
              v44 = 0;
              theArray = 0;
            }

            if (v44 < suggestion)
            {
              v42 = PLSearchBackendInitialSuggestionsGetLog();
              if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                goto LABEL_40;
              }

LABEL_39:
              *buf = 138412290;
              v79 = v22;
              _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_INFO, "Stored initial suggestion is no longer valid: %@", buf, 0xCu);
              goto LABEL_40;
            }
          }

          else if (v68)
          {
            assetIds = [v68 assetIds];
            if (assetIds)
            {
              assetIds = CFArrayGetCount([v68 assetIds]);
            }

            if (assetIds < suggestion)
            {
              v42 = PLSearchBackendInitialSuggestionsGetLog();
              if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          else if (isDateOnlyTemplate)
          {
            assetIds2 = [v39 assetIds];
            if (assetIds2)
            {
              assetIds2 = CFArrayGetCount([v39 assetIds]);
            }

            if (assetIds2 < suggestion)
            {
              v42 = PLSearchBackendInitialSuggestionsGetLog();
              if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          v42 = [self _updatedCandidateFromCandidate:v22 firstGroup:v68 secondGroup:v41 firstGroupDisplayString:displayString secondGroupDisplayString:displayString2 dateFilter:v39 todayDate:date locale:currentLocale minResultCountPerSuggestion:suggestion suggestionStyleType:typeCopy];
          if (v42)
          {
            [v53 addObject:v42];
          }

          else
          {
            v47 = PLSearchBackendInitialSuggestionsGetLog();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v79 = v22;
              _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "Unable to validate candidate: %@", buf, 0xCu);
            }
          }

          goto LABEL_40;
        }

LABEL_42:
        ++v21;
      }

      while (v19 != v21);
      v48 = [v17 countByEnumeratingWithState:&v70 objects:v82 count:16];
      v19 = v48;
    }

    while (v48);
  }

  v49 = PLSearchBackendInitialSuggestionsGetLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = [v53 count];
    v51 = [v17 count];
    *buf = 134218240;
    v79 = v50;
    v80 = 2048;
    v81 = v51;
    _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_DEFAULT, "Validated %tu initial suggestions out of %tu retrieved from disk", buf, 0x16u);
  }

  return v53;
}

+ (id)_mePersonUUIDForPhotoLibrary:(id)library
{
  libraryCopy = library;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__PLInitialSuggestionsManager__mePersonUUIDForPhotoLibrary___block_invoke;
  v9[3] = &unk_1E7578910;
  v4 = libraryCopy;
  v10 = v4;
  v11 = &v12;
  [v4 performBlockAndWait:v9];
  if (![v13[5] length])
  {
    v5 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Unable to fetch Me person from photolibrary. Initial suggestions will not include Me templates", v8, 2u);
    }
  }

  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __60__PLInitialSuggestionsManager__mePersonUUIDForPhotoLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v6 = [PLPerson fetchMePersonInManagedObjectContext:v2];

  v3 = [v6 personUUID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (BOOL)_groupIsMePerson:(id)person mePersonUUID:(id)d
{
  personCopy = person;
  dCopy = d;
  if (![dCopy length] || (v7 = objc_msgSend(personCopy, "category"), (v7 - 1302) != 65534 && (v7 - 1302) != 0xFFFF))
  {
    v9 = 0;
  }

  else
  {
    lookupIdentifier = [personCopy lookupIdentifier];
    v9 = [lookupIdentifier isEqualToString:dCopy];
  }

  return v9;
}

+ (id)_fetchAssetIdsForDateFilters:(id)filters psiDatabase:(id)database
{
  v23 = *MEMORY[0x1E69E9840];
  filtersCopy = filters;
  databaseCopy = database;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = filtersCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        psiDateFilter = [v13 psiDateFilter];
        [v13 setAssetIds:{objc_msgSend(databaseCopy, "assetIdsWithDateFilter:", psiDateFilter)}];

        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "templateDateType")}];
        [v7 setObject:v13 forKeyedSubscript:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = [v7 copy];

  return v16;
}

+ (id)_dateTemplateCandidatesFromTemplates:(id)templates assetIdsByDateFilter:(id)filter scopedAssetIds:(__CFArray *)ids minResultCountPerSuggestion:(unint64_t)suggestion suggestionStyleType:(unint64_t)type
{
  v41 = *MEMORY[0x1E69E9840];
  templatesCopy = templates;
  filterCopy = filter;
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = templatesCopy;
  v10 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    v13 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        dateFilter = [v15 dateFilter];
        if (dateFilter)
        {
          v17 = [*(v13 + 3480) numberWithUnsignedInteger:{objc_msgSend(v15, "templateDateType")}];
          v18 = [filterCopy objectForKeyedSubscript:v17];
          if ([v18 assetIds])
          {
            v19 = [*(v13 + 3480) numberWithUnsignedInteger:{objc_msgSend(v15, "templateDateType")}];
            [filterCopy objectForKeyedSubscript:v19];
            v33 = dateFilter;
            v20 = v11;
            v21 = v12;
            v23 = v22 = filterCopy;
            Copy = CFArrayCreateCopy(0, [v23 assetIds]);

            filterCopy = v22;
            v12 = v21;
            v11 = v20;
            dateFilter = v33;

            v13 = 0x1E696A000;
            if (Copy)
            {
              if (CFArrayGetCount(Copy))
              {
                v25 = [[PLSearchSuggestionCandidate alloc] initWithSearchSuggestionTemplate:v15 firstGroup:0 secondGroup:0 assetIdsForDateFilter:Copy minAssetResultCountPerSuggestion:suggestion];
                if (v25)
                {
                  [v30 addObject:v25];
                }
              }

              CFRelease(Copy);
            }
          }

          else
          {
          }
        }

        else
        {
          v26 = PLSearchBackendInitialSuggestionsGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v39 = v15;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Unable to generate date filter for date based template: %@.", buf, 0xCu);
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v11);
  }

  v27 = filterCopy;
  v28 = [v30 copy];

  return v28;
}

+ (id)_singleEntitySearchCandidatesFromRankedGroups:(id)groups minAssetResultCountPerSuggestion:(unint64_t)suggestion
{
  v22 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = groupsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [PLSearchSuggestionTemplateProvider templateForRankedGroup:v12, v17];
        if (v13)
        {
          v14 = [[PLSearchSuggestionCandidate alloc] initWithSearchSuggestionTemplate:v13 firstGroup:v12 secondGroup:0 assetIdsForDateFilter:0 minAssetResultCountPerSuggestion:suggestion];
          if (v14)
          {
            [v6 addObject:v14];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];

  return v15;
}

+ (id)_templateCandidatesForFirstRankedGroup:(id)group secondRankedGroup:(id)rankedGroup allTemplates:(id)templates assetIdsByDateFilter:(id)filter scopedAssetIdsCount:(unint64_t)count templateProvider:(id)provider mePersonExists:(BOOL)exists minResultCountPerSuggestion:(unint64_t)self0
{
  v99 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  rankedGroupCopy = rankedGroup;
  filterCopy = filter;
  providerCopy = provider;
  if (count)
  {
    v87 = filterCopy;
    group = [groupCopy group];
    category = [group category];
    group2 = [rankedGroupCopy group];
    v82 = providerCopy;
    v21 = [providerCopy templatesForSearchIndexCategory:category secondIndexCategory:{objc_msgSend(group2, "category")}];

    v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v22 = v21;
    v91 = [v22 countByEnumeratingWithState:&v92 objects:v98 count:16];
    if (!v91)
    {
      goto LABEL_72;
    }

    v90 = *v93;
    v23 = 0x1E696A000uLL;
    v83 = groupCopy;
    v88 = rankedGroupCopy;
    obj = v22;
    while (1)
    {
      for (i = 0; i != v91; ++i)
      {
        if (*v93 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v92 + 1) + 8 * i);
        if (exists)
        {
          if ((([groupCopy isMePerson] & 1) != 0 || objc_msgSend(rankedGroupCopy, "isMePerson")) && (objc_msgSend(v25, "isMeTemplate") & 1) == 0)
          {
            continue;
          }
        }

        else if ([v25 isMeTemplate])
        {
          continue;
        }

        templateType = [v25 templateType];
        dateFilter = [v25 dateFilter];
        if (dateFilter)
        {
          v28 = [*(v23 + 3480) numberWithUnsignedInteger:{objc_msgSend(v25, "templateDateType")}];
          v29 = [v87 objectForKeyedSubscript:v28];
          if ([v29 assetIds])
          {
            v30 = [*(v23 + 3480) numberWithUnsignedInteger:{objc_msgSend(v25, "templateDateType")}];
            v31 = [v87 objectForKeyedSubscript:v30];
            Copy = CFArrayCreateCopy(0, [v31 assetIds]);
          }

          else
          {
            Copy = 0;
          }

          rankedGroupCopy = v88;
        }

        else
        {
          Copy = 0;
        }

        if ((~templateType & 3) != 0)
        {
          if ((templateType & 1) == 0)
          {
            p_super = PLSearchBackendInitialSuggestionsGetLog();
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v97 = v25;
              _os_log_impl(&dword_19BF1F000, p_super, OS_LOG_TYPE_ERROR, "Encountered invalid template during initial suggestion generation: %@.", buf, 0xCu);
            }

            goto LABEL_66;
          }

          group3 = [groupCopy group];
          category2 = [group3 category];
          firstIndexCategory = [v25 firstIndexCategory];

          if (firstIndexCategory == category2)
          {
            identifier = [v25 identifier];

            if (identifier)
            {
              group4 = [groupCopy group];
              lookupIdentifier = [group4 lookupIdentifier];
              identifier2 = [v25 identifier];
              v59 = [lookupIdentifier isEqualToString:identifier2];

              if ((v59 & 1) == 0)
              {
                goto LABEL_67;
              }
            }

            else if ([v25 isMeTemplate] && (objc_msgSend(groupCopy, "isMePerson") & 1) == 0)
            {
              goto LABEL_67;
            }

            v60 = [[PLSearchSuggestionCandidate alloc] initWithSearchSuggestionTemplate:v25 firstGroup:groupCopy secondGroup:0 assetIdsForDateFilter:Copy minAssetResultCountPerSuggestion:suggestion];
            if ([(PLSearchSuggestionCandidate *)v60 intersectionCount])
            {
              [v86 addObject:v60];
            }
          }

          group5 = [rankedGroupCopy group];
          category3 = [group5 category];
          firstIndexCategory2 = [v25 firstIndexCategory];

          if (firstIndexCategory2 == category3)
          {
            identifier3 = [v25 identifier];

            if (identifier3)
            {
              group6 = [rankedGroupCopy group];
              lookupIdentifier2 = [group6 lookupIdentifier];
              identifier4 = [v25 identifier];
              v68 = [lookupIdentifier2 isEqualToString:identifier4];

              if ((v68 & 1) == 0)
              {
                goto LABEL_67;
              }
            }

            else if ([v25 isMeTemplate] && (objc_msgSend(rankedGroupCopy, "isMePerson") & 1) == 0)
            {
              goto LABEL_67;
            }

            v76 = [[PLSearchSuggestionCandidate alloc] initWithSearchSuggestionTemplate:v25 firstGroup:rankedGroupCopy secondGroup:0 assetIdsForDateFilter:Copy minAssetResultCountPerSuggestion:suggestion];
            p_super = &v76->super;
            goto LABEL_64;
          }
        }

        else
        {
          group7 = [groupCopy group];
          category4 = [group7 category];
          if ([v25 firstIndexCategory] != category4)
          {

LABEL_29:
            group8 = [groupCopy group];
            category5 = [group8 category];
            if ([v25 secondIndexCategory] != category5)
            {

LABEL_39:
              p_super = 0;
              goto LABEL_63;
            }

            group9 = [rankedGroupCopy group];
            category6 = [group9 category];
            firstIndexCategory3 = [v25 firstIndexCategory];

            if (firstIndexCategory3 != category6)
            {
              goto LABEL_39;
            }

            identifier5 = [v25 identifier];

            if (!identifier5)
            {
              if ([v25 isMeTemplate] && (objc_msgSend(rankedGroupCopy, "isMePerson") & 1) == 0)
              {
                goto LABEL_67;
              }

LABEL_61:
              v72 = [PLSearchSuggestionCandidate alloc];
              v73 = v25;
              v74 = rankedGroupCopy;
              v75 = groupCopy;
LABEL_62:
              p_super = [(PLSearchSuggestionCandidate *)v72 initWithSearchSuggestionTemplate:v73 firstGroup:v74 secondGroup:v75 assetIdsForDateFilter:Copy minAssetResultCountPerSuggestion:suggestion];
LABEL_63:
              v76 = p_super;
LABEL_64:
              if ([(PLSearchSuggestionCandidate *)v76 intersectionCount])
              {
                [v86 addObject:p_super];
              }

LABEL_66:

              goto LABEL_67;
            }

            group10 = [rankedGroupCopy group];
            lookupIdentifier3 = [group10 lookupIdentifier];
            identifier6 = [v25 identifier];
            if ([lookupIdentifier3 isEqualToString:identifier6])
            {

              rankedGroupCopy = v88;
              goto LABEL_61;
            }

            group11 = [groupCopy group];
            lookupIdentifier4 = [group11 lookupIdentifier];
            identifier7 = [v25 identifier];
            v85 = [lookupIdentifier4 isEqualToString:identifier7];

            groupCopy = v83;
            rankedGroupCopy = v88;
            if (v85)
            {
              goto LABEL_61;
            }

            goto LABEL_67;
          }

          group12 = [rankedGroupCopy group];
          category7 = [group12 category];
          secondIndexCategory = [v25 secondIndexCategory];

          if (secondIndexCategory != category7)
          {
            goto LABEL_29;
          }

          identifier8 = [v25 identifier];

          if (!identifier8)
          {
            if ([v25 isMeTemplate] && (objc_msgSend(groupCopy, "isMePerson") & 1) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_53;
          }

          group13 = [groupCopy group];
          lookupIdentifier5 = [group13 lookupIdentifier];
          identifier9 = [v25 identifier];
          if ([lookupIdentifier5 isEqualToString:identifier9])
          {

            rankedGroupCopy = v88;
LABEL_53:
            v72 = [PLSearchSuggestionCandidate alloc];
            v73 = v25;
            v74 = groupCopy;
            v75 = rankedGroupCopy;
            goto LABEL_62;
          }

          group14 = [v88 group];
          lookupIdentifier6 = [group14 lookupIdentifier];
          identifier10 = [v25 identifier];
          v84 = [lookupIdentifier6 isEqualToString:identifier10];

          groupCopy = v83;
          rankedGroupCopy = v88;

          if (v84)
          {
            goto LABEL_53;
          }
        }

LABEL_67:
        if (Copy)
        {
          CFRelease(Copy);
        }

        v23 = 0x1E696A000;
      }

      v22 = obj;
      v91 = [obj countByEnumeratingWithState:&v92 objects:v98 count:16];
      if (!v91)
      {
LABEL_72:

        v80 = [v86 copy];
        filterCopy = v87;
        providerCopy = v82;
        goto LABEL_76;
      }
    }
  }

  v22 = PLSearchBackendInitialSuggestionsGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "No scoped asset Ids provided for template generation, aborting initial suggestion generation", buf, 2u);
  }

  v80 = MEMORY[0x1E695E0F0];
LABEL_76:

  return v80;
}

+ (id)_templateCandidatesFromRankedGroups:(id)groups assetIdsByDateFilter:(id)filter scopedAssetIds:(__CFArray *)ids templateProvider:(id)provider mePersonExists:(BOOL)exists minResultCountPerSuggestion:(unint64_t)suggestion suggestionStyleType:(unint64_t)type
{
  v66[1] = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  filterCopy = filter;
  providerCopy = provider;
  v54 = groupsCopy;
  if ([groupsCopy count])
  {
    theArray = ids;
    v53 = [groupsCopy mutableCopy];
    v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"rankingScore" ascending:0];
    v66[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
    v17 = [v53 sortedArrayUsingDescriptors:v16];

    if ([groupsCopy count] <= 0x1F3)
    {
      v18 = v53;
    }

    else
    {
      v18 = [v53 subarrayWithRange:{0, 500}];
    }

    v20 = v18;
    allTemplates = [providerCopy allTemplates];
    if ([allTemplates count])
    {
      v55 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (type)
      {
        v21 = [self _singleEntitySearchCandidatesFromRankedGroups:groupsCopy minAssetResultCountPerSuggestion:suggestion];
        [v55 addObjectsFromArray:v21];
      }

      else
      {
        v23 = PLPhotosSearchGetLog();
        spid = os_signpost_id_generate(v23);

        v24 = v23;
        v25 = v24;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v25, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PLSearchBackendInitialSuggestionPopulateNonDateRankedTemplates", "", buf, 2u);
        }

        v50 = v25;

        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
        }

        else
        {
          Count = 0;
        }

        for (i = 0; i < [v20 count] - 1; ++i)
        {
          for (j = i + 1; j < [v20 count]; ++j)
          {
            v29 = objc_autoreleasePoolPush();
            v30 = [v20 objectAtIndexedSubscript:i];
            v31 = [v20 objectAtIndexedSubscript:j];
            if (([v30 isEqual:v31] & 1) == 0)
            {
              LOBYTE(v49) = exists;
              v32 = [self _templateCandidatesForFirstRankedGroup:v30 secondRankedGroup:v31 allTemplates:allTemplates assetIdsByDateFilter:filterCopy scopedAssetIdsCount:Count templateProvider:providerCopy mePersonExists:v49 minResultCountPerSuggestion:suggestion];
              [v55 addObjectsFromArray:v32];
            }

            objc_autoreleasePoolPop(v29);
          }
        }

        v33 = v50;
        v21 = v33;
        if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v21, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchBackendInitialSuggestionPopulateNonDateRankedTemplates", "", buf, 2u);
        }

        v34 = PLPhotosSearchGetLog();
        v35 = os_signpost_id_generate(v34);

        v36 = v34;
        v37 = v36;
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v35, "PLSearchBackendInitialSuggestionPopulateDateOnlyRankedTemplates", "", buf, 2u);
        }

        dateOnlyTemplates = [providerCopy dateOnlyTemplates];
        v39 = [self _dateTemplateCandidatesFromTemplates:dateOnlyTemplates assetIdsByDateFilter:filterCopy scopedAssetIds:theArray minResultCountPerSuggestion:suggestion suggestionStyleType:0];
        [v55 addObjectsFromArray:v39];
        v40 = v37;
        v41 = v40;
        if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v41, OS_SIGNPOST_INTERVAL_END, v35, "PLSearchBackendInitialSuggestionPopulateDateOnlyRankedTemplates", "", buf, 2u);
        }
      }

      v42 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v22 = v55;
      v43 = [v22 countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v43)
      {
        v44 = *v61;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v61 != v44)
            {
              objc_enumerationMutation(v22);
            }

            v46 = *(*(&v60 + 1) + 8 * k);
            if ([v46 intersectionCount] >= suggestion)
            {
              [v42 addObject:v46];
            }
          }

          v43 = [v22 countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v43);
      }

      allObjects = [v42 allObjects];
      v19 = [allObjects copy];
    }

    else
    {
      v22 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Could not locate any templates for initial suggestions, no initial suggestions will be generated.", buf, 2u);
      }

      v19 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

+ (unint64_t)recentAssetLimitForInitialSuggestionGenerationForIndexedAssetCount:(unint64_t)count
{
  if (count)
  {
    v5 = vcvtmd_u64_f64(vcvtd_n_f64_u64(count, 2uLL));
    result = 7500;
    if (v5 <= 0x1D4C)
    {
      countCopy = 2500;
      if (count < 0x9C4)
      {
        countCopy = count;
      }

      if (v5 >= 0x9C4)
      {
        return v5;
      }

      else
      {
        return countCopy;
      }
    }
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v8 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Obtained count of 0 assets available for search, no initial suggestions will be generated", v9, 2u);
    }

    return 0;
  }

  return result;
}

+ (void)generateInitialSuggestionsForPhotoLibrary:(id)library styleType:(unint64_t)type
{
  v29 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (PLIsAssetsd())
  {
    v7 = PLPhotosSearchGetLog();
    v8 = os_signpost_id_generate(v7);

    v9 = v7;
    v10 = v9;
    spid = v8;
    v11 = v8 - 1;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLSearchBackendInitialSuggestionGenerate", "", buf, 2u);
    }

    pathManager = [libraryCopy pathManager];
    v13 = [[PSIDatabase alloc] initWithPathManager:pathManager options:1];
    if (v13)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      countOfAssets = [(PSIDatabase *)v13 countOfAssets];
      v16 = [self recentAssetLimitForInitialSuggestionGenerationForIndexedAssetCount:countOfAssets];
      v17 = [self scaledMinimumNumberOfResultsPerSuggestion:countOfAssets];
      v18 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v28 = v17;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Fetching initial suggestions with a required minimum of %tu results per suggestion.", buf, 0xCu);
      }

      v19 = +[PLInitialSuggestionsManager sharedManager];
      [v19 _generateSuggestionsWithLimitOfMostRecentAssets:v16 minimumNumberOfResultsPerSuggestion:v17 photoLibrary:libraryCopy psiDatabase:v13 minResultCountPerSuggestion:v17 locale:currentLocale suggestionStyleType:type];
      v20 = v10;
      v21 = v20;
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v21, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchBackendInitialSuggestionGenerate", "", buf, 2u);
      }
    }

    else
    {
      currentLocale = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(currentLocale, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, currentLocale, OS_LOG_TYPE_ERROR, "Unexpected nil psiDatabase. No initial suggestions will be generated.", buf, 2u);
      }
    }

LABEL_18:
    goto LABEL_19;
  }

  assetsdClient = [libraryCopy assetsdClient];
  libraryInternalClient = [assetsdClient libraryInternalClient];
  v26 = 0;
  v24 = [libraryInternalClient generateInitialSuggestionsWithStyleType:type error:&v26];
  v10 = v26;

  if ((v24 & 1) == 0)
  {
    pathManager = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(pathManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v10;
      _os_log_impl(&dword_19BF1F000, pathManager, OS_LOG_TYPE_ERROR, "Failed to generate initial suggestions. Error: %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (id)_preGeneratedInitialSuggestionsForPhotoLibrary:(id)library minResultCountPerSuggestion:(unint64_t)suggestion suggestionLimit:(unint64_t)limit psiDatabase:(id)database suggestionStyleType:(unint64_t)type
{
  v23[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  databaseCopy = database;
  cachedInitialSuggestions = [(PLInitialSuggestionsManager *)self cachedInitialSuggestions];

  if (!cachedInitialSuggestions)
  {
    v22 = 0;
    v15 = [PLInitialSuggestionsStorageManager initialSearchSuggestionsForPhotoLibrary:libraryCopy psiDatabase:databaseCopy error:&v22];
    if (![v15 count])
    {
      v18 = MEMORY[0x1E695E0F0];
      goto LABEL_8;
    }

    v16 = [objc_opt_class() validateInitialSuggestions:v15 minResultCountPerSuggestion:suggestion psiDatabase:databaseCopy suggestionStyleType:type];
    v17 = [v16 copy];
    [(PLInitialSuggestionsManager *)self setCachedInitialSuggestions:v17];
  }

  [(PLInitialSuggestionsManager *)self cachedInitialSuggestions];
  if (limit == -1)
    v19 = {;
    v18 = [v19 mutableCopy];

    v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"rankingScore" ascending:0];
    v23[0] = v15;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [v18 sortUsingDescriptors:v20];
  }

  else
    v15 = {;
    v18 = [PLInitialSuggestionRanker rankSearchSuggestionCandidates:v15 suggestionLimit:limit maxNumberOfSuggestionsPerContentType:25];
  }

LABEL_8:

  return v18;
}

- (void)_generateSuggestionsWithLimitOfMostRecentAssets:(unint64_t)assets minimumNumberOfResultsPerSuggestion:(unint64_t)suggestion photoLibrary:(id)library psiDatabase:(id)database minResultCountPerSuggestion:(unint64_t)perSuggestion locale:(id)locale suggestionStyleType:(unint64_t)type
{
  v61 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  databaseCopy = database;
  localeCopy = locale;
  v16 = PLPhotosSearchGetLog();
  v17 = os_signpost_id_generate(v16);

  v18 = v16;
  v19 = v18;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PLSearchBackendInitialSuggestionIndexIdsFromUUIDs", "", buf, 2u);
  }

  v20 = [databaseCopy mostRecentSortedAssetIdsWithLimit:assets];
  v21 = v20;
  if (v20 && CFArrayGetCount(v20))
  {
    v22 = v19;
    v23 = v22;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_END, v17, "PLSearchBackendInitialSuggestionIndexIdsFromUUIDs", "", buf, 2u);
    }

    v52 = objc_alloc_init(PLSearchSuggestionTemplateProvider);
    v51 = [objc_opt_class() _mePersonUUIDForPhotoLibrary:libraryCopy];
    allDateFilters = [(PLSearchSuggestionTemplateProvider *)v52 allDateFilters];
    v49 = [objc_opt_class() _fetchAssetIdsForDateFilters:allDateFilters psiDatabase:databaseCopy];
    v48 = [objc_opt_class() _rankedGroupsFromPSIDatabase:databaseCopy photoLibrary:libraryCopy assetIds:v21 templateProvider:v52 mePersonUUID:v51 minResultCountPerSuggestion:perSuggestion];
    v24 = PLPhotosSearchGetLog();
    v25 = os_signpost_id_generate(v24);

    v26 = v24;
    v27 = v26;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PLSearchBackendInitialSuggestionGenerateRankedTemplates", "", buf, 2u);
    }

    v47 = [objc_opt_class() _templateCandidatesFromRankedGroups:v48 assetIdsByDateFilter:v49 scopedAssetIds:v21 templateProvider:v52 mePersonExists:objc_msgSend(v51 minResultCountPerSuggestion:"length") != 0 suggestionStyleType:{perSuggestion, type}];
    v28 = v27;
    v29 = v28;
    log = v28;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v30 = os_signpost_enabled(v28);
      v29 = log;
      if (v30)
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, log, OS_SIGNPOST_INTERVAL_END, v25, "PLSearchBackendInitialSuggestionGenerateRankedTemplates", "", buf, 2u);
        v29 = log;
      }
    }

    CFRelease(v21);
    v45 = [PLInitialSuggestionRanker trimmedListCandidatesOfCandidatesFromCandidates:v47 maxNumberOfSuggestionsPerContentType:25];
    v56 = 0;
    v31 = [PLInitialSuggestionsStorageManager initialSearchSuggestionsForPhotoLibrary:libraryCopy psiDatabase:databaseCopy error:&v56];
    v32 = v56;
    if (v32)
    {
      v33 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v58 = libraryCopy;
        v59 = 2112;
        v60 = v32;
        _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Error retrieving initial suggestions for photoLibrary: %@, %@", buf, 0x16u);
      }
    }

    v34 = [PLSearchSuggestionCandidate updateCandidates:v45 withTimestampsFromPreviouslyStoredCandidates:v31];
    [(PLInitialSuggestionsManager *)self setCachedInitialSuggestions:v34];
    v55 = 0;
    v35 = [PLInitialSuggestionsStorageManager deleteInitialSuggestionsForPhotoLibrary:libraryCopy error:&v55];
    v36 = v55;
    if (!v35)
    {
      v37 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v36;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "Failed to delete initial suggestions. Error: %@", buf, 0xCu);
      }
    }

    cachedInitialSuggestions = [(PLInitialSuggestionsManager *)self cachedInitialSuggestions];
    v54 = 0;
    v39 = [PLInitialSuggestionsStorageManager saveInitialSuggestions:cachedInitialSuggestions photoLibrary:libraryCopy error:&v54];
    v40 = v54;

    if (!v39)
    {
      v41 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = v40;
        _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Failed to save suggestions. Error: %@", buf, 0xCu);
      }
    }

    v42 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v34 count];
      *buf = 134218242;
      v58 = v43;
      v59 = 2112;
      v60 = libraryCopy;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEFAULT, "Generated %tu initial suggestions for photolibrary %@.", buf, 0x16u);
    }
  }

  else
  {
    v44 = PLSearchBackendInitialSuggestionsGetLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_ERROR, "Error generating recent assetIds for initial suggestions. No initial suggestions will be generated.", buf, 2u);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }
}

- (id)fetchInitialSuggestionsWithLimit:(unint64_t)limit minimumResultCountPerSuggestion:(unint64_t)suggestion suggestionStyleType:(unint64_t)type photoLibrary:(id)library psiDatabase:(id)database
{
  v72 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  databaseCopy = database;
  v56 = libraryCopy;
  if (!libraryCopy)
  {
    v50 = databaseCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLInitialSuggestionsManager.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    databaseCopy = v50;
  }

  v55 = databaseCopy;
  if (databaseCopy)
  {
    v15 = PLPhotosSearchGetLog();
    v16 = os_signpost_id_generate(v15);

    v17 = v15;
    v18 = v17;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PLSearchBackendInitialSuggestionGetAssetCount", "", buf, 2u);
    }

    if ([(PLInitialSuggestionsManager *)self cachedTotalNumberOfIndexedAssets])
    {
      countOfAssets = 1;
    }

    else
    {
      countOfAssets = [v55 countOfAssets];
    }

    [(PLInitialSuggestionsManager *)self setCachedTotalNumberOfIndexedAssets:countOfAssets];
    v22 = v18;
    v23 = v22;
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v23, OS_SIGNPOST_INTERVAL_END, v16, "PLSearchBackendInitialSuggestionGetAssetCount", "", buf, 2u);
    }

    v54 = v23;

    if (countOfAssets)
    {
      if ([objc_opt_class() recentAssetLimitForInitialSuggestionGenerationForIndexedAssetCount:countOfAssets])
      {
        v24 = [objc_opt_class() scaledMinimumNumberOfResultsPerSuggestion:countOfAssets];
        if (v24 <= suggestion)
        {
          suggestionCopy = suggestion;
        }

        else
        {
          suggestionCopy = v24;
        }

        if (suggestion)
        {
          v26 = suggestionCopy;
        }

        else
        {
          v26 = v24;
        }

        v27 = PLSearchBackendInitialSuggestionsGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v68 = v26;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "Fetching initial suggestions with a required minimum of %tu results per suggestion.", buf, 0xCu);
        }

        v28 = [(PLInitialSuggestionsManager *)self _preGeneratedInitialSuggestionsForPhotoLibrary:v56 minResultCountPerSuggestion:v26 suggestionLimit:limit psiDatabase:v55 suggestionStyleType:type];
        v29 = PLSearchBackendInitialSuggestionsGetLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v28 count];
          *buf = 134217984;
          v68 = v30;
          _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "Found %tu pre-generated initial suggestions.", buf, 0xCu);
        }

        date = [MEMORY[0x1E695DF00] date];
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v32 = v28;
        v33 = [v32 countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v33)
        {
          v34 = *v63;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v63 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v36 = *(*(&v62 + 1) + 8 * i);
              [date timeIntervalSinceReferenceDate];
              [v36 setDateLastUsed:?];
            }

            v33 = [v32 countByEnumeratingWithState:&v62 objects:v71 count:16];
          }

          while (v33);
        }

        [v32 _pl_map:&__block_literal_global];
        v53 = v61 = 0;
        v37 = [PLInitialSuggestionsStorageManager updateInitialSuggestionsWithIdentifiers:"updateInitialSuggestionsWithIdentifiers:dateLastUsed:photoLibrary:error:" dateLastUsed:? photoLibrary:? error:?];
        v52 = 0;
        if (!v37)
        {
          v38 = PLSearchBackendInitialSuggestionsGetLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v68 = v53;
            v69 = 2112;
            v70 = v52;
            _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_ERROR, "Failed to update initial suggestions with identifiers %@. Error: %@", buf, 0x16u);
          }
        }

        v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v39 = v32;
        v40 = [v39 countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v40)
        {
          v41 = *v58;
          do
          {
            for (j = 0; j != v40; ++j)
            {
              if (*v58 != v41)
              {
                objc_enumerationMutation(v39);
              }

              v43 = *(*(&v57 + 1) + 8 * j);
              populatedTemplateQueryString = [v43 populatedTemplateQueryString];
              if ([populatedTemplateQueryString length])
              {
                [v21 addObject:populatedTemplateQueryString];
              }

              else
              {
                v45 = PLSearchBackendInitialSuggestionsGetLog();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v68 = v43;
                  _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "Unable to populate suggestion candidate: %@", buf, 0xCu);
                }
              }
            }

            v40 = [v39 countByEnumeratingWithState:&v57 objects:v66 count:16];
          }

          while (v40);
        }

        v46 = PLSearchBackendInitialSuggestionsGetLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = [v21 count];
          *buf = 134217984;
          v68 = v47;
          _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_DEFAULT, "Found %tu pre-generated initial suggestions.", buf, 0xCu);
        }

        goto LABEL_60;
      }

      v39 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v48 = "No available assets for generating initial suggestions. No initial suggestions will be generated.";
        goto LABEL_58;
      }
    }

    else
    {
      v39 = PLSearchBackendInitialSuggestionsGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v48 = "0 assets available for search, no initial suggestions will be generated";
LABEL_58:
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, v48, buf, 2u);
      }
    }

    v21 = MEMORY[0x1E695E0F0];
LABEL_60:

    v20 = v54;
    goto LABEL_61;
  }

  v20 = PLSearchBackendInitialSuggestionsGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Unexpected nil psiDatabase. No initial suggestions will be generated.", buf, 2u);
  }

  v21 = MEMORY[0x1E695E0F0];
LABEL_61:

  return v21;
}

id __141__PLInitialSuggestionsManager_fetchInitialSuggestionsWithLimit_minimumResultCountPerSuggestion_suggestionStyleType_photoLibrary_psiDatabase___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 suggestionTemplate];
  v4 = [v3 suggestionTemplateKey];
  v5 = v4;
  v6 = &stru_1F0F06D80;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [v2 firstRankedGroup];

  if (v8)
  {
    v9 = [v2 firstRankedGroup];
    v10 = [v9 group];
    v8 = [v10 groupId];
  }

  v11 = [v2 secondRankedGroup];

  if (v11)
  {
    v12 = [v2 secondRankedGroup];
    v13 = [v12 group];
    v11 = [v13 groupId];
  }

  v14 = [[PSIInitialSuggestionIdentifier alloc] initWithSuggestionTemplateKey:v7 firstGroupId:v8 secondGroupId:v11];

  v15 = [(PSIInitialSuggestionIdentifier *)v14 dictionary];

  return v15;
}

+ (void)generateInitialSuggestionsForPhotoLibrary:(id)library
{
  v4 = MEMORY[0x1E695DF58];
  libraryCopy = library;
  currentLocale = [v4 currentLocale];
  languageCode = [currentLocale languageCode];
  v7 = [&unk_1F0FBFE80 containsObject:languageCode];

  [self generateInitialSuggestionsForPhotoLibrary:libraryCopy styleType:v7 ^ 1u];
}

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__PLInitialSuggestionsManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedInstance;

  return v2;
}

void __44__PLInitialSuggestionsManager_sharedManager__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___PLInitialSuggestionsManager;
  v1 = [objc_msgSendSuper2(&v3 alloc)];
  v2 = sharedManager_sharedInstance;
  sharedManager_sharedInstance = v1;
}

@end