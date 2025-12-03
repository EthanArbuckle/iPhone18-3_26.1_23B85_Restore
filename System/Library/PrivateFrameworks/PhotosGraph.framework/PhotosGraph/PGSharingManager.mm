@interface PGSharingManager
+ (id)_defaultOptions;
- (BOOL)_canIncludeUnverified;
- (BOOL)canProvideSuggestionsWithOptions:(id)options forGraph:(id)graph;
- (PGSharingManager)initWithWorkingContext:(id)context;
- (id)_filteredSuggestionResults:(id)results withOptions:(id)options graph:(id)graph;
- (id)_sortedSuggestionResults:(id)results withOptions:(id)options;
- (id)contextualStream;
- (id)presenceStream;
- (id)suggestionResultsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers options:(id)options;
- (id)suggestionSourcesForSharingStream:(unint64_t)stream;
- (void)_mergeSuggestionResultByPersonIdentifer:(id)identifer withSourceSuggestionResults:(id)results;
@end

@implementation PGSharingManager

- (id)_sortedSuggestionResults:(id)results withOptions:(id)options
{
  optionsCopy = options;
  v6 = [results sortedArrayUsingComparator:&__block_literal_global_3408];
  if ([optionsCopy fetchLimit])
  {
    fetchLimit = [optionsCopy fetchLimit];
    v8 = [v6 count];
    if (fetchLimit >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = fetchLimit;
    }

    v10 = [v6 subarrayWithRange:{0, v9}];

    v6 = v10;
  }

  return v6;
}

uint64_t __57__PGSharingManager__sortedSuggestionResults_withOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 score];
  v7 = v6;
  [v5 score];
  if (v7 <= v8)
  {
    [v4 score];
    v11 = v10;
    [v5 score];
    if (v11 >= v12)
    {
      v13 = [v4 person];
      v14 = [v5 person];
      v9 = [v13 compareToPerson:v14];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)_filteredSuggestionResults:(id)results withOptions:(id)options graph:(id)graph
{
  v49 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  optionsCopy = options;
  graphCopy = graph;
  serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  filterLowWeightResults = [optionsCopy filterLowWeightResults];
  v14 = filterLowWeightResults;
  if (filterLowWeightResults)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = resultsCopy;
    v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v45;
      v19 = 2.22507386e-308;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v45 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v44 + 1) + 8 * i) sourceWeight];
          v19 = fmax(v19, v21);
        }

        v17 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v17);
    }

    else
    {
      v19 = 2.22507386e-308;
    }
  }

  else
  {
    v19 = 2.22507386e-308;
  }

  mePerson = [serviceManager mePerson];
  fullName = [mePerson fullName];
  children = [graphCopy children];
  v25 = MEMORY[0x277CCAC30];
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __65__PGSharingManager__filteredSuggestionResults_withOptions_graph___block_invoke;
  v37 = &unk_27887F3F0;
  v38 = children;
  v39 = serviceManager;
  v43 = v14;
  v42 = v19;
  v40 = fullName;
  v41 = loggingConnection;
  v26 = loggingConnection;
  v27 = fullName;
  v28 = serviceManager;
  v29 = children;
  v30 = [v25 predicateWithBlock:&v34];
  v31 = [resultsCopy filteredArrayUsingPredicate:{v30, v34, v35, v36, v37}];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

BOOL __65__PGSharingManager__filteredSuggestionResults_withOptions_graph___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 person];
  v5 = [v4 contactIdentifier];
  if ([v5 length] || (objc_msgSend(*(a1 + 32), "containsObject:", v4) & 1) == 0)
  {
    v7 = [v4 birthdayDate];
    if ([v5 length])
    {
      if (v7)
      {
        v8 = [MEMORY[0x277CBEAA8] date];
        [v8 timeIntervalSinceDate:v7];
        v10 = v9;

        if (v10 < 189345600.0)
        {
          goto LABEL_19;
        }
      }
    }

    if ([v4 isInferredChild])
    {
      if (![v5 length])
      {
        goto LABEL_19;
      }

      v11 = [*(a1 + 40) personForIdentifier:v5];
      v12 = [v11 emailAddresses];
      if ([v12 count])
      {
      }

      else
      {
        v13 = [v11 phoneNumbers];
        v14 = [v13 count];

        if (!v14)
        {
          goto LABEL_19;
        }
      }
    }

    if (*(a1 + 72) == 1 && *(a1 + 64) > 0.25)
    {
      [v3 sourceWeight];
      v6 = v15 > 0.25;
LABEL_21:

      goto LABEL_22;
    }

    if (![*(a1 + 48) length] || (v16 = *(a1 + 48), objc_msgSend(v4, "fullName"), v17 = objc_claimAutoreleasedReturnValue(), LODWORD(v16) = objc_msgSend(v16, "isEqualToString:", v17), v17, !v16))
    {
      v6 = 1;
      goto LABEL_21;
    }

    v18 = *(a1 + 56);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138477827;
      v22 = v4;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Suggested person %{private}@ matches me contact name", &v21, 0xCu);
    }

LABEL_19:
    v6 = 0;
    goto LABEL_21;
  }

  v6 = 0;
LABEL_22:

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_mergeSuggestionResultByPersonIdentifer:(id)identifer withSourceSuggestionResults:(id)results
{
  v24 = *MEMORY[0x277D85DE8];
  identiferCopy = identifer;
  resultsCopy = results;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [resultsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        person = [v11 person];
        localIdentifier = [person localIdentifier];

        if (![localIdentifier length])
        {
          person2 = [v11 person];
          contactIdentifier = [person2 contactIdentifier];

          localIdentifier = contactIdentifier;
        }

        v16 = [identiferCopy objectForKeyedSubscript:localIdentifier];
        v17 = v16;
        if (v16)
        {
          [v16 mergeWithSuggestionResult:v11];
        }

        else
        {
          [identiferCopy setObject:v11 forKeyedSubscript:localIdentifier];
        }
      }

      v8 = [resultsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canIncludeUnverified
{
  v18 = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  countOfClusteringEligibleFaces = [photoLibrary countOfClusteringEligibleFaces];
  if (countOfClusteringEligibleFaces)
  {
    v5 = [photoLibrary countOfUnclusteredFaces] / countOfClusteringEligibleFaces;
    v6 = v5 < 0.1;
  }

  else
  {
    v6 = 0;
    v5 = 0.0;
  }

  loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218752;
    v11 = countOfClusteringEligibleFaces;
    v12 = 2048;
    v13 = v5;
    v14 = 2048;
    v15 = 0x3FB999999999999ALL;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Can include unverified result: countOfClusteringEligibleFaces %lu, percentageOfFacesNotClustered %.2f < %.2f == %d", &v10, 0x26u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)canProvideSuggestionsWithOptions:(id)options forGraph:(id)graph
{
  optionsCopy = options;
  graphCopy = graph;
  if ([optionsCopy includeUnverified])
  {
    v7 = 1;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__PGSharingManager_canProvideSuggestionsWithOptions_forGraph___block_invoke;
    v9[3] = &unk_2788850E0;
    v11 = &v17;
    v10 = optionsCopy;
    v12 = &v13;
    [graphCopy enumeratePersonNodesIncludingMe:0 withBlock:v9];
    if (v18[3])
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v14 + 24);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  return v7 & 1;
}

void __62__PGSharingManager_canProvideSuggestionsWithOptions_forGraph___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 contactIdentifier];
  v6 = [v5 length];

  if (v6)
  {
    v7 = 40;
LABEL_3:
    *(*(*(a1 + v7) + 8) + 24) = 1;
    *a3 = 1;
    goto LABEL_7;
  }

  if ([*(a1 + 32) useContactSuggestion])
  {
    v8 = [v10 suggestedContactIdentifier];
    v9 = [v8 length];

    if (v9)
    {
      v7 = 48;
      goto LABEL_3;
    }
  }

LABEL_7:
}

- (id)suggestionResultsForAssetLocalIdentifiers:(id)identifiers momentLocalIdentifiers:(id)localIdentifiers options:(id)options
{
  v76 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  localIdentifiersCopy = localIdentifiers;
  optionsCopy = options;
  loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
  v12 = [localIdentifiersCopy count];
  v13 = MEMORY[0x277CBEBF8];
  if (v12)
  {
    info = 0;
    mach_timebase_info(&info);
    v14 = mach_absolute_time();
    if (!optionsCopy)
    {
      optionsCopy = [objc_opt_class() _defaultOptions];
    }

    if ([optionsCopy includeUnverified])
    {
      [optionsCopy setIncludeUnverified:{-[PGSharingManager _canIncludeUnverified](self, "_canIncludeUnverified")}];
    }

    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__3417;
    v67 = __Block_byref_object_dispose__3418;
    v68 = v13;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__3417;
    v61 = __Block_byref_object_dispose__3418;
    v62 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__3417;
    v55 = __Block_byref_object_dispose__3418;
    v56 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 1;
    workingContext = self->_workingContext;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke;
    v40[3] = &unk_27887F3A0;
    v44 = &v47;
    v40[4] = self;
    optionsCopy = optionsCopy;
    v41 = optionsCopy;
    v45 = &v51;
    v42 = identifiersCopy;
    v43 = localIdentifiersCopy;
    v46 = &v57;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v40];
    if (v48[3])
    {
      v16 = v14;
      v17 = objc_opt_new();
      v18 = [v58[5] count];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_265;
      block[3] = &unk_27887F3C8;
      block[4] = self;
      v38 = &v57;
      v19 = optionsCopy;
      v35 = v19;
      v20 = loggingConnection;
      v36 = v20;
      v39 = &v51;
      v21 = v17;
      v37 = v21;
      dispatch_apply(v18, 0, block);
      if ([v21 count])
      {
        v22 = self->_workingContext;
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_267;
        v30[3] = &unk_278889308;
        v33 = &v63;
        v30[4] = self;
        v31 = v21;
        v32 = v19;
        [(PGManagerWorkingContext *)v22 performSynchronousConcurrentGraphReadUsingBlock:v30];
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v52[5];
        *buf = 138412290;
        v71 = v23;
        _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No suggestions found for %@", buf, 0xCu);
      }

      v24 = v20;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v64[5] count];
        v26 = mach_absolute_time();
        v27 = v64[5];
        *buf = 134218498;
        v71 = v25;
        v72 = 2048;
        v73 = ((((v26 - v16) * info.numer) / info.denom) / 1000000.0);
        v74 = 2112;
        v75 = v27;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Returning %lu suggestions in %.4fms:\n%@", buf, 0x20u);
      }

      v13 = v64[5];
    }

    else
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v71 = optionsCopy;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Cannot run with options %@, no eligible persons to suggest", buf, 0xCu);
      }

      v13 = MEMORY[0x277CBEBF8];
    }

    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v51, 8);

    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v63, 8);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v13;
}

void __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke(uint64_t a1, void *a2)
{
  v13 = [a2 graph];
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) canProvideSuggestionsWithOptions:*(a1 + 40) forGraph:?];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v3 = [PGSharingSuggestionInput alloc];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = [*(*(a1 + 32) + 8) photoLibrary];
    v7 = [(PGSharingSuggestionInput *)v3 initWithAssetLocalIdentifiers:v4 momentLocalIdentifiers:v5 graph:v13 photoLibrary:v6];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [*(a1 + 32) suggestionSourcesForSharingStream:{objc_msgSend(*(a1 + 40), "sharingStream")}];
    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_265(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_2;
  v10[3] = &unk_278884610;
  v13 = *(a1 + 64);
  v15 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 72);
  v9 = *(a1 + 32);
  v6 = *(a1 + 56);
  *&v7 = v9;
  *(&v7 + 1) = v6;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v11 = v8;
  v12 = v7;
  [v3 performSynchronousConcurrentGraphReadUsingBlock:v10];
}

void __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_267(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) allValues];
  v6 = *(a1 + 48);
  v7 = [v3 graph];
  v8 = [v4 _filteredSuggestionResults:v5 withOptions:v6 graph:v7];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) _sortedSuggestionResults:*(*(*(a1 + 56) + 8) + 40) withOptions:*(a1 + 48)];
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if ([*(a1 + 48) useContactSuggestion])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = *(*(*(a1 + 56) + 8) + 40);
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * v18++) setUseContactSuggestion:{1, v20}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __93__PGSharingManager_suggestionResultsForAssetLocalIdentifiers_momentLocalIdentifiers_options___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(*(a1 + 64) + 8) + 40) objectAtIndexedSubscript:*(a1 + 80)];
  if (([v4 canRunWithOptions:*(a1 + 32)] & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 32);
    *buf = 138412546;
    v19 = v4;
    v20 = 2112;
    v21 = v13;
    v14 = "[Sharing Suggestion] Source %@ cannot run with options %@";
LABEL_10:
    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 0x16u);
    goto LABEL_11;
  }

  if (([v4 canRunWithInput:*(*(*(a1 + 72) + 8) + 40)] & 1) == 0)
  {
    v12 = *(a1 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v15 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412546;
    v19 = v4;
    v20 = 2112;
    v21 = v15;
    v14 = "[Sharing Suggestion] Source %@ cannot run with input %@";
    goto LABEL_10;
  }

  info = 0;
  mach_timebase_info(&info);
  v5 = mach_absolute_time();
  v6 = [v4 suggestedResultsForInput:*(*(*(a1 + 72) + 8) + 40) withOptions:*(a1 + 32)];
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 count];
    v10 = mach_absolute_time();
    *buf = 138413058;
    v19 = v4;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = ((((v10 - v5) * info.numer) / info.denom) / 1000000.0);
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Source %@ returned %lu suggestions in %.4fms:\n%@", buf, 0x2Au);
  }

  v11 = *(a1 + 48);
  objc_sync_enter(v11);
  [*(a1 + 48) _mergeSuggestionResultByPersonIdentifer:*(a1 + 56) withSourceSuggestionResults:v6];
  objc_sync_exit(v11);

LABEL_11:
  v16 = *MEMORY[0x277D85DE8];
}

- (id)suggestionSourcesForSharingStream:(unint64_t)stream
{
  streamCopy = stream;
  v5 = objc_opt_new();
  if (streamCopy)
  {
    presenceStream = [(PGSharingManager *)self presenceStream];
    [v5 addObjectsFromArray:presenceStream];
  }

  if ((streamCopy & 2) != 0)
  {
    contextualStream = [(PGSharingManager *)self contextualStream];
    [v5 addObjectsFromArray:contextualStream];
  }

  return v5;
}

- (id)contextualStream
{
  v12[7] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v12[0] = v2;
  v3 = objc_opt_new();
  v12[1] = v3;
  v4 = objc_opt_new();
  v12[2] = v4;
  v5 = objc_opt_new();
  v12[3] = v5;
  v6 = objc_opt_new();
  v12[4] = v6;
  v7 = objc_opt_new();
  v12[5] = v7;
  v8 = objc_opt_new();
  v12[6] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)presenceStream
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12[0] = v3;
  v4 = [PGSharingSuggestionSourceMergeCandidates alloc];
  serviceManager = [(PGManagerWorkingContext *)self->_workingContext serviceManager];
  v6 = [(PGSharingSuggestionSourceMergeCandidates *)v4 initWithServiceManager:serviceManager];
  v12[1] = v6;
  v7 = objc_opt_new();
  v12[2] = v7;
  v8 = objc_opt_new();
  v12[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (PGSharingManager)initWithWorkingContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = PGSharingManager;
  v6 = [(PGSharingManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_workingContext, context);
  }

  return v7;
}

+ (id)_defaultOptions
{
  v2 = objc_opt_new();

  return v2;
}

@end