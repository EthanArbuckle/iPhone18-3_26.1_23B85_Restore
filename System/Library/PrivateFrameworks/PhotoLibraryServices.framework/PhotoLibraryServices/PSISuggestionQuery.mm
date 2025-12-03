@interface PSISuggestionQuery
+ (void)_pairLocationCompletionSuggestionsIfPossible:(id)possible completion:(id)completion;
- (BOOL)cancelled;
- (PSISuggestionQuery)initWithFormattedSearchText:(id)text originalSearchText:(id)searchText completionSuggestionTexts:(id)texts suggestionOptions:(id)options suggestionComponents:(id)components photosEntityStore:(id)store;
- (_NSRange)rangeOfCompletionSuggestionDates;
- (id)_bestNextTokenSuggestionFromNextTokenSuggestionCandidatesByIndexCategory:(id)category forLocationCompletion:(id)completion;
- (id)_generateCompletionSuggestionsForAssetUUIDs:(id)ds collectionUUIDs:(id)iDs restrictedIndexCategories:(id)categories shouldFoldSuggestions:(BOOL)suggestions suggestionLimit:(unint64_t)limit completionSuggestionDateComponents:(id)components completionTextForDateComponents:(id)dateComponents;
- (id)_generateLocationNextTokenSuggestionsByIndexCategoryForLocationCompletion:(id)completion;
- (id)_generateNextTokenSuggestionsForAssetUUIDs:(id)ds collectionUUIDs:(id)iDs suggestionLimit:(unint64_t)limit;
- (id)_performQueryForPairedLocationSuggestions:(id)suggestions;
- (id)performQueryWithSearchResultAssetUUIDs:(id)ds collectionUUIDs:(id)iDs completionSuggestionDateComponents:(id)components completionTextForDateComponents:(id)dateComponents;
- (void)setCancelled:(BOOL)cancelled;
@end

@implementation PSISuggestionQuery

- (_NSRange)rangeOfCompletionSuggestionDates
{
  length = self->_rangeOfCompletionSuggestionDates.length;
  location = self->_rangeOfCompletionSuggestionDates.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)_bestNextTokenSuggestionFromNextTokenSuggestionCandidatesByIndexCategory:(id)category forLocationCompletion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  completionCopy = completion;
  if ([categoryCopy count])
  {
    suggestionComponents = [completionCopy suggestionComponents];
    v9 = [suggestionComponents count];

    if (v9 >= 2)
    {
      v10 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        formattedSearchText = [(PSISuggestionQuery *)self formattedSearchText];
        *buf = 138412546;
        v46 = completionCopy;
        v47 = 2112;
        v48 = formattedSearchText;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unexpectedly found a location completion with multiple components: %@ for query: %@", buf, 0x16u);
      }
    }

    v37 = completionCopy;
    suggestionComponents2 = [completionCopy suggestionComponents];
    firstObject = [suggestionComponents2 firstObject];
    indexCategory = [firstObject indexCategory];

    v15 = off_1E7561000;
    v16 = +[PSISuggestionQueryUtilities allowedIndexCategoriesForPairedLocationSecondarySuggestions];
    allKeys = [categoryCopy allKeys];
    v18 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v18;
    v39 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v39)
    {
      v20 = *v41;
      v38 = indexCategory;
LABEL_8:
      v21 = 0;
      while (1)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v19);
        }

        v22 = *(*(&v40 + 1) + 8 * v21);
        if ([(PSISuggestionQuery *)self cancelled])
        {
          break;
        }

        unsignedIntegerValue = [v22 unsignedIntegerValue];
        if ([(__objc2_class *)v15[72] suggestionCategoriesPairingIsValid:indexCategory otherCategory:unsignedIntegerValue])
        {
          v24 = unsignedIntegerValue > indexCategory;
        }

        else
        {
          v24 = 0;
        }

        if (v24)
        {
          if ([v16 containsIndex:unsignedIntegerValue])
          {
            v25 = [categoryCopy objectForKeyedSubscript:v22];
            [(__objc2_class *)v15[72] sortLocationSuggestions:v25];
            v26 = v20;
            v27 = v15;
            v28 = v19;
            selfCopy = self;
            v30 = v16;
            v32 = v31 = categoryCopy;
            firstObject2 = [v32 firstObject];

            categoryCopy = v31;
            v16 = v30;
            self = selfCopy;
            v19 = v28;
            v15 = v27;
            v20 = v26;
            indexCategory = v38;

            if (firstObject2)
            {
              goto LABEL_22;
            }
          }
        }

        if (v39 == ++v21)
        {
          v39 = [v19 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v39)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    firstObject2 = 0;
LABEL_22:

    if ([(PSISuggestionQuery *)self cancelled])
    {
      v34 = 0;
    }

    else
    {
      v34 = firstObject2;
    }

    v35 = v34;

    completionCopy = v37;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)_generateLocationNextTokenSuggestionsByIndexCategoryForLocationCompletion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (!completionCopy)
  {
    v17 = MEMORY[0x1E695E0F8];
    goto LABEL_32;
  }

  suggestionComponents = [completionCopy suggestionComponents];
  v7 = [suggestionComponents count];

  if (v7 >= 2)
  {
    v8 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      formattedSearchText = [(PSISuggestionQuery *)self formattedSearchText];
      *buf = 138412546;
      v50 = v5;
      v51 = 2112;
      v52 = formattedSearchText;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Found unexpected folded suggestion when generation location pairs: %@, for query: %@", buf, 0x16u);
    }
  }

  suggestionComponents2 = [v5 suggestionComponents];
  firstObject = [suggestionComponents2 firstObject];
  group = [firstObject group];

  v13 = off_1E7561000;
  v14 = +[PSISuggestionQueryUtilities allowedIndexCategoriesForPairedLocationSecondarySuggestions];
  if ([(PSISuggestionQuery *)self cancelled])
  {
    v15 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      formattedSearchText2 = [(PSISuggestionQuery *)self formattedSearchText];
      *buf = 138412290;
      v50 = formattedSearchText2;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Paired location suggestions query for %@ aborted because query was cancelled", buf, 0xCu);
    }

    v17 = MEMORY[0x1E695E0F8];
    goto LABEL_31;
  }

  v41 = v5;
  photosEntityStore = [(PSISuggestionQuery *)self photosEntityStore];
  v40 = group;
  v19 = [photosEntityStore groupsForAssetIds:objc_msgSend(group indexCategories:"assetIds") includeObjects:{v14, 0}];

  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = v19;
  v20 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v46;
LABEL_13:
    v23 = 0;
    v42 = v21;
    while (1)
    {
      if (*v46 != v22)
      {
        objc_enumerationMutation(v15);
      }

      v24 = *(*(&v45 + 1) + 8 * v23);
      if ([(PSISuggestionQuery *)self cancelled])
      {
        break;
      }

      if (-[__objc2_class groupIsValidForSuggestionGeneration:suggestionType:allowedIndexCategories:suggestionQuery:](v13[72], "groupIsValidForSuggestionGeneration:suggestionType:allowedIndexCategories:suggestionQuery:", v24, 2, v14, self) && (PLSearchIndexCategoryIsSynonym([v24 category]) & 1) == 0)
      {
        v25 = [[PLSearchSuggestionComponent alloc] initWithGroup:v24 matchedAssetsCount:0 matchedCollectionsCount:0 suggestionType:2 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:0x7FFFFFFFFFFFFFFFLL matchType:0, 0];
        [v44 addObject:v25];
        selfCopy = self;
        v27 = v14;
        v28 = v15;
        v29 = v13;
        v30 = MEMORY[0x1E696AEC0];
        contentString = [v24 contentString];
        v32 = [v30 stringWithFormat:@"%@-%hd", contentString, objc_msgSend(v24, "category")];

        [v43 addObject:v32];
        v13 = v29;
        v15 = v28;
        v14 = v27;
        self = selfCopy;

        v21 = v42;
      }

      if (v21 == ++v23)
      {
        v21 = [v15 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v21)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  cancelled = [(PSISuggestionQuery *)self cancelled];
  v34 = PLSearchBackendQueryGetLog();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
  if (cancelled)
  {
    if (v35)
    {
      formattedSearchText3 = [(PSISuggestionQuery *)self formattedSearchText];
      *buf = 138412290;
      v50 = formattedSearchText3;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_INFO, "Paired location next token suggestions aborted for query %@ due to cancellation", buf, 0xCu);
    }
  }

  else
  {
    if (v35)
    {
      v37 = [v43 count];
      formattedSearchText4 = [(PSISuggestionQuery *)self formattedSearchText];
      *buf = 134218498;
      v50 = v37;
      v51 = 2112;
      v52 = formattedSearchText4;
      v53 = 2112;
      v54 = v43;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_INFO, "Generated %tu pair location next token candidates for query: %@: %@", buf, 0x20u);
    }

    v34 = [(__objc2_class *)v13[72] suggestionCandidatesByIndexCategoryFromSuggestionComponents:v44 suggestionType:2];
    if (![(PSISuggestionQuery *)self cancelled])
    {
      v17 = [v34 copy];
      goto LABEL_30;
    }
  }

  v17 = MEMORY[0x1E695E0F8];
LABEL_30:
  group = v40;
  v5 = v41;

LABEL_31:
LABEL_32:

  return v17;
}

- (id)_performQueryForPairedLocationSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  suggestionOptions = [(PSISuggestionQuery *)self suggestionOptions];
  if ([PSISuggestionQueryUtilities suggestionPairingTypeForSuggestionOptions:suggestionOptions]!= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSISuggestionQuery.m" lineNumber:613 description:{@"Invalid parameter not satisfying: %@", @"pairingType == PSISuggestionPairingTypeLocation"}];
  }

  if ([suggestionOptions searchSuggestionType] != 1)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PSISuggestionQuery.m" lineNumber:614 description:{@"Invalid parameter not satisfying: %@", @"options.searchSuggestionType == PLSearchSuggestionTypeCompletion"}];
  }

  if ([suggestionOptions optionsWantSuggestionsForCollections])
  {
    v7 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Suggestion options set to query collection suggestions, but paired location suggestions do not support this, only asset based suggestions will be generated", buf, 2u);
    }
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__24343;
  v37 = __Block_byref_object_dispose__24344;
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__24343;
  v31 = __Block_byref_object_dispose__24344;
  v32 = 0;
  if (suggestionsCopy)
  {
    v8 = 0;
    v32 = suggestionsCopy;
  }

  else
  {
    v8 = +[PSISuggestionQueryUtilities allowedIndexCategoriesForPairedLocationPrimarySuggestions];
    v9 = -[PSISuggestionQuery _generateCompletionSuggestionsForAssetUUIDs:collectionUUIDs:restrictedIndexCategories:shouldFoldSuggestions:suggestionLimit:completionSuggestionDateComponents:completionTextForDateComponents:](self, "_generateCompletionSuggestionsForAssetUUIDs:collectionUUIDs:restrictedIndexCategories:shouldFoldSuggestions:suggestionLimit:completionSuggestionDateComponents:completionTextForDateComponents:", 0, 0, v8, 0, 2 * [suggestionOptions searchSuggestionLimit], 0, 0);
    v10 = v28[5];
    v28[5] = v9;
  }

  if (![v28[5] count])
  {
    goto LABEL_18;
  }

  v11 = objc_opt_class();
  v12 = v28[5];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __64__PSISuggestionQuery__performQueryForPairedLocationSuggestions___block_invoke;
  v26[3] = &unk_1E7569D48;
  v26[4] = self;
  v26[5] = buf;
  v26[6] = &v27;
  [v11 _pairLocationCompletionSuggestionsIfPossible:v12 completion:v26];
  v13 = [*(v34 + 5) count];
  if (v13 != [suggestionOptions searchSuggestionLimit])
  {
    searchSuggestionLimit = [suggestionOptions searchSuggestionLimit];
    v16 = searchSuggestionLimit - [*(v34 + 5) count];
    if (v16 < [v28[5] count])
    {
      v17 = [PSISuggestionQueryUtilities sortLocationSuggestions:v28[5]];
      v18 = [v17 subarrayWithRange:{0, v16}];
      v19 = v28[5];
      v28[5] = v18;
    }

    v20 = v28[5];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __64__PSISuggestionQuery__performQueryForPairedLocationSuggestions___block_invoke_50;
    v25[3] = &unk_1E7569D70;
    v25[4] = self;
    v25[5] = buf;
    [v20 enumerateObjectsUsingBlock:v25];
    if (![(PSISuggestionQuery *)self cancelled])
    {
      v14 = [*(v34 + 5) copy];
      goto LABEL_20;
    }

LABEL_18:
    v21 = MEMORY[0x1E695E0F0];
    goto LABEL_21;
  }

  v14 = [*(v34 + 5) copy];
LABEL_20:
  v21 = v14;
LABEL_21:
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(buf, 8);

  return v21;
}

void __64__PSISuggestionQuery__performQueryForPairedLocationSuggestions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 count];
    v9 = [*(a1 + 32) formattedSearchText];
    v12 = 134218242;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Found %tu paired completion location suggestions for query for %@", &v12, 0x16u);
  }

  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v5];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v6;
}

void __64__PSISuggestionQuery__performQueryForPairedLocationSuggestions___block_invoke_50(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if ([*(a1 + 32) cancelled])
  {
    v7 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) formattedSearchText];
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Paired location suggestions query for %@ aborted because query was cancelled", &v13, 0xCu);
    }

    *a4 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) _generateLocationNextTokenSuggestionsByIndexCategoryForLocationCompletion:v6];
    v10 = [*(a1 + 32) _bestNextTokenSuggestionFromNextTokenSuggestionCandidatesByIndexCategory:v9 forLocationCompletion:v6];
    if (v10)
    {
      v11 = [PSILocationSuggestionPair searchSuggestionWithNextTokenPairingForPrimarySuggestion:v6 nextTokenSuggestion:v10];
    }

    else
    {
      v11 = v6;
    }

    v12 = v11;
    if (v11)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
    }
  }
}

- (id)_generateNextTokenSuggestionsForAssetUUIDs:(id)ds collectionUUIDs:(id)iDs suggestionLimit:(unint64_t)limit
{
  v113 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v74 = dsCopy;
  [v9 addObjectsFromArray:dsCopy];
  v72 = v9;
  v70 = iDsCopy;
  [v9 addObjectsFromArray:iDsCopy];
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  suggestionOptions = [(PSISuggestionQuery *)self suggestionOptions];
  v11 = [MEMORY[0x1E695DFD8] setWithArray:v9];
  suggestionResultTypes = [suggestionOptions suggestionResultTypes];
  photosEntityStore = [(PSISuggestionQuery *)self photosEntityStore];
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __97__PSISuggestionQuery__generateNextTokenSuggestionsForAssetUUIDs_collectionUUIDs_suggestionLimit___block_invoke;
  v92[3] = &unk_1E7569CF8;
  v92[4] = &v97;
  v92[5] = &v93;
  [PLScopedSearchUtilities searchIndexIdsFromUUIDs:v11 searchResultTypes:suggestionResultTypes psiDatabase:photosEntityStore completion:v92];
  v71 = suggestionOptions;

  if ([(PSISuggestionQuery *)self cancelled])
  {
    v14 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      formattedSearchText = [(PSISuggestionQuery *)self formattedSearchText];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = formattedSearchText;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Next Token suggestions query for %@ aborted because query was cancelled", &buf, 0xCu);
    }

    v16 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v109 = 0x3032000000;
    v110 = __Block_byref_object_copy__24343;
    v111 = __Block_byref_object_dispose__24344;
    v112 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = __Block_byref_object_copy__24343;
    v90 = __Block_byref_object_dispose__24344;
    v91 = 0;
    photosEntityStore2 = [(PSISuggestionQuery *)self photosEntityStore];
    v17 = v98[3];
    if (v17)
    {
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __97__PSISuggestionQuery__generateNextTokenSuggestionsForAssetUUIDs_collectionUUIDs_suggestionLimit___block_invoke_40;
      v83[3] = &unk_1E7569D20;
      v84 = v69;
      p_buf = &buf;
      [photosEntityStore2 groupsForAssetIds:v17 completion:v83];
    }

    v18 = v94[3];
    if (v18)
    {
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __97__PSISuggestionQuery__generateNextTokenSuggestionsForAssetUUIDs_collectionUUIDs_suggestionLimit___block_invoke_2;
      v80[3] = &unk_1E7569D20;
      v81 = v69;
      v82 = &v86;
      v19 = [photosEntityStore2 groupsForCollectionIds:v18 completion:v80];
    }

    if ([(PSISuggestionQuery *)self cancelled])
    {
      log = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        formattedSearchText2 = [(PSISuggestionQuery *)self formattedSearchText];
        *v101 = 138412290;
        v102 = formattedSearchText2;
        _os_log_impl(&dword_19BF1F000, log, OS_LOG_TYPE_INFO, "Next Token suggestions query for %@ aborted because query was cancelled", v101, 0xCu);
      }

      v16 = MEMORY[0x1E695E0F0];
    }

    else
    {
      log = objc_alloc_init(MEMORY[0x1E695DF70]);
      v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
      optionsWantSuggestionsForAssets = [suggestionOptions optionsWantSuggestionsForAssets];
      optionsWantSuggestionsForCollections = [suggestionOptions optionsWantSuggestionsForCollections];
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      obj = v69;
      v21 = off_1E7561000;
      v75 = [obj countByEnumeratingWithState:&v76 objects:v107 count:16];
      if (v75)
      {
        v22 = *v77;
LABEL_16:
        v23 = 0;
        while (1)
        {
          if (*v77 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v76 + 1) + 8 * v23);
          if ([(PSISuggestionQuery *)self cancelled])
          {
            break;
          }

          if (-[__objc2_class groupIsValidForSuggestionGeneration:suggestionType:allowedIndexCategories:suggestionQuery:](v21[72], "groupIsValidForSuggestionGeneration:suggestionType:allowedIndexCategories:suggestionQuery:", v24, 2, 0, self) && (PLSearchIndexCategoryIsSynonym([v24 category]) & 1) == 0)
          {
            v25 = v98[3];
            v26 = v25 ? CFArrayGetCount(v25) : 0;
            v27 = v22;
            v28 = *(*(&buf + 1) + 40);
            v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v24, "groupId")}];
            v30 = [v28 countForObject:v29];

            v31 = v94[3];
            v32 = v31 ? CFArrayGetCount(v31) : 0;
            v33 = v87[5];
            v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v24, "groupId")}];
            v35 = [v33 countForObject:v34];

            v36 = v30 && v30 != v26;
            v37 = v35 == v32 || v35 == 0;
            v38 = !v37;
            if ((optionsWantSuggestionsForAssets & optionsWantSuggestionsForCollections) != 0)
            {
              v39 = v36 || v38;
            }

            else
            {
              v40 = optionsWantSuggestionsForCollections & v38;
              v39 = optionsWantSuggestionsForAssets ? v36 : v40;
            }

            v41 = v39 & +[PSISuggestionQueryUtilities groupWithAssetCountMeetsAssetMatchThreshold:assetSearchResultsCount:](PSISuggestionQueryUtilities, "groupWithAssetCountMeetsAssetMatchThreshold:assetSearchResultsCount:", v30, [v74 count]);
            v21 = off_1E7561000;
            v22 = v27;
            if (v41)
            {
              v42 = [PLSearchSuggestionComponent alloc];
              if (v30 == v26)
              {
                v43 = 0;
              }

              else
              {
                v43 = v30;
              }

              if (v35 == v32)
              {
                v44 = 0;
              }

              else
              {
                v44 = v35;
              }

              v45 = [(PLSearchSuggestionComponent *)v42 initWithGroup:v24 matchedAssetsCount:v43 matchedCollectionsCount:v44 suggestionType:2 completionSuggestionDateComponents:0 matchedText:0 matchRangeOfSearchText:0x7FFFFFFFFFFFFFFFLL matchType:0, 0];
              [log addObject:v45];
              v46 = MEMORY[0x1E696AEC0];
              contentString = [v24 contentString];
              v48 = [v46 stringWithFormat:@"%@-%hd", contentString, objc_msgSend(v24, "category")];

              [v66 addObject:v48];
              v22 = v27;
            }
          }

          if (v75 == ++v23)
          {
            v75 = [obj countByEnumeratingWithState:&v76 objects:v107 count:16];
            if (v75)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }

      if ([(PSISuggestionQuery *)self cancelled])
      {
        v49 = PLSearchBackendQueryGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          formattedSearchText3 = [(PSISuggestionQuery *)self formattedSearchText];
          *v101 = 138412290;
          v102 = formattedSearchText3;
          _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_INFO, "Next Token suggestions query for %@ aborted because query was cancelled", v101, 0xCu);
        }

        v16 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v51 = PLSearchBackendQueryGetLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = [v66 count];
          formattedSearchText4 = [(PSISuggestionQuery *)self formattedSearchText];
          *v101 = 134218498;
          v102 = v52;
          v103 = 2112;
          v104 = formattedSearchText4;
          v105 = 2112;
          v106 = v66;
          _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_INFO, "Generated %tu next token candidates for query: %@: %@", v101, 0x20u);
        }

        v49 = [PSISuggestionQueryUtilities suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents:log assetIds:v98[3] collectionIds:v94[3] wantsSuggestionCounts:1];
        v54 = +[PSISuggestionRanker rankedSearchSuggestionsFromSuggestionCandidates:suggestionType:queryAssetCount:queryCollectionCount:suggestionLimit:suggestionQuery:](PSISuggestionRanker, "rankedSearchSuggestionsFromSuggestionCandidates:suggestionType:queryAssetCount:queryCollectionCount:suggestionLimit:suggestionQuery:", v49, 2, [v74 count], objc_msgSend(v70, "count"), limit, self);
        v55 = v98[3];
        if (v55)
        {
          CFRelease(v55);
          v98[3] = 0;
        }

        v56 = v94[3];
        if (v56)
        {
          CFRelease(v56);
          v94[3] = 0;
        }

        if ([(PSISuggestionQuery *)self cancelled])
        {
          v57 = PLSearchBackendQueryGetLog();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            formattedSearchText5 = [(PSISuggestionQuery *)self formattedSearchText];
            *v101 = 138412290;
            v102 = formattedSearchText5;
            _os_log_impl(&dword_19BF1F000, v57, OS_LOG_TYPE_INFO, "Next Token suggestions query for %@ aborted because query was cancelled", v101, 0xCu);
          }

          v16 = MEMORY[0x1E695E0F0];
        }

        else
        {
          v59 = PLSearchBackendQueryGetLog();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            v60 = [v54 count];
            formattedSearchText6 = [(PSISuggestionQuery *)self formattedSearchText];
            *v101 = 134218242;
            v102 = v60;
            v103 = 2112;
            v104 = formattedSearchText6;
            _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_INFO, "Generated %tu next token suggestions for query: %@", v101, 0x16u);
          }

          v16 = v54;
        }
      }
    }

    _Block_object_dispose(&v86, 8);
    _Block_object_dispose(&buf, 8);

    v14 = v69;
  }

  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v97, 8);

  return v16;
}

uint64_t __97__PSISuggestionQuery__generateNextTokenSuggestionsForAssetUUIDs_collectionUUIDs_suggestionLimit___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

void __97__PSISuggestionQuery__generateNextTokenSuggestionsForAssetUUIDs_collectionUUIDs_suggestionLimit___block_invoke_40(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) addObjectsFromArray:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __97__PSISuggestionQuery__generateNextTokenSuggestionsForAssetUUIDs_collectionUUIDs_suggestionLimit___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) addObjectsFromArray:a2];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_generateCompletionSuggestionsForAssetUUIDs:(id)ds collectionUUIDs:(id)iDs restrictedIndexCategories:(id)categories shouldFoldSuggestions:(BOOL)suggestions suggestionLimit:(unint64_t)limit completionSuggestionDateComponents:(id)components completionTextForDateComponents:(id)dateComponents
{
  suggestionsCopy = suggestions;
  v237 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  categoriesCopy = categories;
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  selfCopy = self;
  formattedSearchText = [(PSISuggestionQuery *)self formattedSearchText];
  completionSuggestionTexts = [(PSISuggestionQuery *)self completionSuggestionTexts];
  LODWORD(components) = [completionSuggestionTexts count] == 0;
  v13 = PLSearchBackendQueryGetLog();
  if (components)
  {
    v18 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = formattedSearchText;
      v19 = "Completion suggestions aborted because completion text could not be identified. Query string: %@";
LABEL_12:
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, v19, buf, 0xCu);
    }

LABEL_13:
    v20 = MEMORY[0x1E695E0F0];
    goto LABEL_176;
  }

  v14 = v13;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = completionSuggestionTexts;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Begin completion generation for suggestion texts: %@", buf, 0xCu);
  }

  if (!limit)
  {
    v18 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = formattedSearchText;
      v19 = "Completion suggestions aborted because the completion suggestion limit provided was zero. Query string: %@";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  suggestionOptions = [(PSISuggestionQuery *)self suggestionOptions];
  v154 = [PSISuggestionQueryUtilities suggestionPairingTypeForSuggestionOptions:suggestionOptions];
  if (v154 == 1)
  {
    v159 = +[PSISuggestionQueryUtilities excludedLocationCategoriesForPairedLocationPrimarySuggestions];
    if (![categoriesCopy count])
    {
      goto LABEL_18;
    }

    v15 = +[PSISuggestionQueryUtilities allowedIndexCategoriesForPairedLocationPrimarySuggestions];
    v16 = [categoriesCopy mutableCopy];
    [v16 addIndexes:v15];
    [v16 removeIndexes:v159];
    v17 = [v16 copy];

    categoriesCopy = v17;
  }

  else
  {
    v159 = 0;
    if (![categoriesCopy count])
    {
      goto LABEL_18;
    }
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v219[0] = MEMORY[0x1E69E9820];
  v219[1] = 3221225472;
  v219[2] = __213__PSISuggestionQuery__generateCompletionSuggestionsForAssetUUIDs_collectionUUIDs_restrictedIndexCategories_shouldFoldSuggestions_suggestionLimit_completionSuggestionDateComponents_completionTextForDateComponents___block_invoke;
  v219[3] = &unk_1E7576338;
  v22 = v21;
  v220 = v22;
  [categoriesCopy enumerateIndexesUsingBlock:v219];
  v23 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = formattedSearchText;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_INFO, "Scoping suggestions query to categories: %@, for query string: %@", buf, 0x16u);
  }

LABEL_18:
  if ([(PSISuggestionQuery *)self cancelled])
  {
    oslog = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = formattedSearchText;
      _os_log_impl(&dword_19BF1F000, oslog, OS_LOG_TYPE_INFO, "Completion suggestions aborted because query was cancelled. Query string: %@", buf, 0xCu);
    }

    v20 = MEMORY[0x1E695E0F0];
    goto LABEL_175;
  }

  oslog = objc_alloc_init(MEMORY[0x1E695DF70]);
  [oslog addObjectsFromArray:dsCopy];
  [oslog addObjectsFromArray:iDsCopy];
  wantsUnscopedSuggestions = [suggestionOptions wantsUnscopedSuggestions];
  optionsWantSuggestionsForAssets = [suggestionOptions optionsWantSuggestionsForAssets];
  optionsWantSuggestionsForCollections = [suggestionOptions optionsWantSuggestionsForCollections];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v236 = 0;
  v215 = 0;
  v216 = &v215;
  v217 = 0x2020000000;
  v218 = 0;
  if ((wantsUnscopedSuggestions & 1) == 0)
  {
    if (optionsWantSuggestionsForAssets)
    {
      LOBYTE(optionsWantSuggestionsForAssets) = [dsCopy count] != 0;
    }

    else
    {
      LOBYTE(optionsWantSuggestionsForAssets) = 0;
    }

    if (optionsWantSuggestionsForCollections)
    {
      LOBYTE(optionsWantSuggestionsForCollections) = [iDsCopy count] != 0;
    }

    else
    {
      LOBYTE(optionsWantSuggestionsForCollections) = 0;
    }

    v25 = [MEMORY[0x1E695DFD8] setWithArray:oslog];
    suggestionResultTypes = [suggestionOptions suggestionResultTypes];
    photosEntityStore = [(PSISuggestionQuery *)selfCopy photosEntityStore];
    v214[0] = MEMORY[0x1E69E9820];
    v214[1] = 3221225472;
    v214[2] = __213__PSISuggestionQuery__generateCompletionSuggestionsForAssetUUIDs_collectionUUIDs_restrictedIndexCategories_shouldFoldSuggestions_suggestionLimit_completionSuggestionDateComponents_completionTextForDateComponents___block_invoke_18;
    v214[3] = &unk_1E7569CF8;
    v214[4] = buf;
    v214[5] = &v215;
    [PLScopedSearchUtilities searchIndexIdsFromUUIDs:v25 searchResultTypes:suggestionResultTypes psiDatabase:photosEntityStore completion:v214];
  }

  if ([(PSISuggestionQuery *)selfCopy cancelled])
  {
    v28 = PLSearchBackendQueryGetLog();
    v155 = v28;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *v224 = 138412290;
      v225 = formattedSearchText;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_INFO, "Completion suggestions aborted because query was cancelled. Query string: %@", v224, 0xCu);
    }

    v20 = MEMORY[0x1E695E0F0];
    goto LABEL_174;
  }

  v155 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v150 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v146 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v142 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v152 = objc_alloc_init(MEMORY[0x1E695DF70]);
  suggestionOptions2 = [(PSISuggestionQuery *)selfCopy suggestionOptions];
  limitSuggestionsToExactTextMatches = [suggestionOptions2 limitSuggestionsToExactTextMatches];

  photosEntityStore2 = [(PSISuggestionQuery *)selfCopy photosEntityStore];
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  obj = completionSuggestionTexts;
  v141 = [obj countByEnumeratingWithState:&v210 objects:v234 count:16];
  if (v141)
  {
    v153 = wantsUnscopedSuggestions ^ 1;
    v143 = *v211;
    do
    {
      for (i = 0; i != v141; ++i)
      {
        if (*v211 != v143)
        {
          objc_enumerationMutation(obj);
        }

        v170 = *(*(&v210 + 1) + 8 * i);
        if (_os_feature_enabled_impl())
        {
          substringMatchedCategories = [suggestionOptions substringMatchedCategories];
          v31 = [PSISuggestionQueryUtilities searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet:substringMatchedCategories];

          v32 = [v159 mutableCopy];
          v33 = v32;
          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = objc_alloc_init(MEMORY[0x1E696AD50]);
          }

          [v34 addIndexes:v31];
          v36 = [PSISuggestionQueryUtilities suggestionGroupsForSearchText:v170 requireExactMatches:limitSuggestionsToExactTextMatches leadingAnchored:1 restrictedIndexCategories:categoriesCopy excludedIndexCategories:v34 suggestionResultTypes:[suggestionOptions suggestionResultTypes] psiQueryDelegate:photosEntityStore2];
          v37 = [categoriesCopy mutableCopy];
          v38 = v37;
          if (v37)
          {
            v39 = v37;
          }

          else
          {
            v39 = objc_alloc_init(MEMORY[0x1E696AD50]);
          }

          [v39 addIndexes:v31];
          v40 = [PSISuggestionQueryUtilities suggestionGroupsForSearchText:v170 requireExactMatches:limitSuggestionsToExactTextMatches leadingAnchored:0 restrictedIndexCategories:v39 excludedIndexCategories:v159 suggestionResultTypes:[suggestionOptions suggestionResultTypes] psiQueryDelegate:photosEntityStore2];
          v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v41 addObjectsFromArray:v36];
          [v41 addObjectsFromArray:v40];
          v149 = v41;

          v35 = [v149 count];
        }

        else
        {
          v149 = [PSISuggestionQueryUtilities suggestionGroupsForSearchText:v170 requireExactMatches:limitSuggestionsToExactTextMatches leadingAnchored:1 restrictedIndexCategories:categoriesCopy excludedIndexCategories:v159 suggestionResultTypes:[suggestionOptions suggestionResultTypes] psiQueryDelegate:photosEntityStore2];
          v35 = [v149 count];
        }

        if (v35)
        {
          v208 = 0u;
          v209 = 0u;
          v206 = 0u;
          v207 = 0u;
          v160 = v149;
          v163 = [v160 countByEnumeratingWithState:&v206 objects:v233 count:16];
          if (v163)
          {
            v162 = *v207;
            while (2)
            {
              for (j = 0; j != v163; ++j)
              {
                if (*v207 != v162)
                {
                  objc_enumerationMutation(v160);
                }

                v173 = *(*(&v206 + 1) + 8 * j);
                if ([(PSISuggestionQuery *)selfCopy cancelled])
                {
                  v83 = PLSearchBackendQueryGetLog();
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                  {
                    formattedSearchText2 = [(PSISuggestionQuery *)selfCopy formattedSearchText];
                    *v224 = 138412290;
                    v225 = formattedSearchText2;
                    _os_log_impl(&dword_19BF1F000, v83, OS_LOG_TYPE_INFO, "Completion suggestions aborted because query was cancelled. Query: %@.", v224, 0xCu);
                  }

                  goto LABEL_110;
                }

                originalSearchText = [(PSISuggestionQuery *)selfCopy originalSearchText];
                string = [originalSearchText string];
                v44 = [string rangeOfString:v170 options:133];
                v46 = v45;

                if (v44 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v47 = PLSearchBackendQueryGetLog();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    *v224 = 138412546;
                    v225 = v170;
                    v226 = 2112;
                    v227 = formattedSearchText;
                    _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "Suggestion text (%@) not found in completion text (%@). Skipping suggestion text.", v224, 0x16u);
                  }
                }

                else
                {
                  BYTE2(v140) = optionsWantSuggestionsForCollections;
                  BYTE1(v140) = optionsWantSuggestionsForAssets;
                  LOBYTE(v140) = v153;
                  v47 = [PSISuggestionQueryUtilities suggestionComponentFromGroup:v173 completionText:v170 suggestionQuery:selfCopy suggestionOptions:suggestionOptions matchRange:v44 requiresScopedUUIDs:v46 generateAssetSuggestions:v140 generateCollectionSuggestions:*(*&buf[8] + 24) searchQueryAssetIds:v216[3] searchQueryCollectionIds:?];
                  if (v47)
                  {
                    v165 = v47;
                    if (_os_feature_enabled_impl())
                    {
                      v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v173, "groupId")}];
                      v49 = [v150 objectForKeyedSubscript:v48];
                      v50 = v49;
                      if (v49)
                      {
                        v51 = v49;
                      }

                      else
                      {
                        v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      }

                      [v51 addObject:v165];
                      v182 = [v51 mutableCopy];
                      [v165 matchRangeOfSearchText];
                      v53 = v52;
                      v204 = 0u;
                      v205 = 0u;
                      v202 = 0u;
                      v203 = 0u;
                      v180 = v51;
                      v54 = [v180 countByEnumeratingWithState:&v202 objects:v232 count:16];
                      if (v54)
                      {
                        v55 = *v203;
                        do
                        {
                          for (k = 0; k != v54; ++k)
                          {
                            if (*v203 != v55)
                            {
                              objc_enumerationMutation(v180);
                            }

                            v57 = *(*(&v202 + 1) + 8 * k);
                            [v57 matchRangeOfSearchText];
                            if (v58 >= v53)
                            {
                              [v57 matchRangeOfSearchText];
                              v53 = v59;
                            }

                            else
                            {
                              [v182 removeObject:v57];
                            }
                          }

                          v54 = [v180 countByEnumeratingWithState:&v202 objects:v232 count:16];
                        }

                        while (v54);
                      }

                      v60 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v173, "groupId")}];
                      [v150 setObject:v182 forKeyedSubscript:v60];

                      v151 = [PSISuggestionQueryUtilities mapKeyForSuggestionComponent:v165];
                      v61 = [v155 objectForKeyedSubscript:v151];
                      v62 = v61;
                      if (v61)
                      {
                        v63 = v61;
                      }

                      else
                      {
                        v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      }

                      [v63 addObject:v165];
                      v64 = [v63 mutableCopy];
                      v200 = 0u;
                      v201 = 0u;
                      v198 = 0u;
                      v199 = 0u;
                      v179 = v63;
                      v65 = [v179 countByEnumeratingWithState:&v198 objects:v231 count:16];
                      v178 = v64;
                      if (v65)
                      {
                        v66 = *v199;
                        do
                        {
                          for (m = 0; m != v65; ++m)
                          {
                            if (*v199 != v66)
                            {
                              objc_enumerationMutation(v179);
                            }

                            v68 = *(*(&v198 + 1) + 8 * m);
                            v194 = 0u;
                            v195 = 0u;
                            v196 = 0u;
                            v197 = 0u;
                            v69 = v182;
                            v70 = [v69 countByEnumeratingWithState:&v194 objects:v230 count:16];
                            if (v70)
                            {
                              v71 = *v195;
                              while (2)
                              {
                                for (n = 0; n != v70; ++n)
                                {
                                  if (*v195 != v71)
                                  {
                                    objc_enumerationMutation(v69);
                                  }

                                  v73 = *(*(&v194 + 1) + 8 * n);
                                  psiGroupId = [v73 psiGroupId];
                                  if (psiGroupId == [v68 psiGroupId])
                                  {
                                    [v73 matchRangeOfSearchText];
                                    v76 = v75;
                                    [v68 matchRangeOfSearchText];
                                    if (v76 == v77)
                                    {

                                      goto LABEL_93;
                                    }
                                  }
                                }

                                v70 = [v69 countByEnumeratingWithState:&v194 objects:v230 count:16];
                                if (v70)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            [v178 removeObject:v68];
LABEL_93:
                            ;
                          }

                          v65 = [v179 countByEnumeratingWithState:&v198 objects:v231 count:16];
                        }

                        while (v65);
                      }

                      [v155 setObject:v178 forKeyedSubscript:v151];
                    }

                    else
                    {
                      [v146 addObject:v47];
                    }

                    v78 = MEMORY[0x1E696AEC0];
                    contentString = [v173 contentString];
                    v80 = [v78 stringWithFormat:@"%@-%hd", contentString, objc_msgSend(v173, "category")];

                    [v152 addObject:v80];
                    v47 = v165;
                  }
                }
              }

              v163 = [v160 countByEnumeratingWithState:&v206 objects:v233 count:16];
              if (v163)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          v160 = PLSearchBackendQueryGetLog();
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
          {
            formattedSearchText3 = [(PSISuggestionQuery *)selfCopy formattedSearchText];
            *v224 = 138412290;
            v225 = formattedSearchText3;
            _os_log_impl(&dword_19BF1F000, v160, OS_LOG_TYPE_DEFAULT, "Found no filtered groups for query: %@.", v224, 0xCu);
          }
        }
      }

      v141 = [obj countByEnumeratingWithState:&v210 objects:v234 count:16];
    }

    while (v141);
  }

  if ([(PSISuggestionQuery *)selfCopy cancelled])
  {
    obj = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_INFO))
    {
      formattedSearchText4 = [(PSISuggestionQuery *)selfCopy formattedSearchText];
      *v224 = 138412290;
      v225 = formattedSearchText4;
      _os_log_impl(&dword_19BF1F000, obj, OS_LOG_TYPE_INFO, "Completion suggestions aborted because query was cancelled. Query: %@.", v224, 0xCu);
    }

LABEL_110:
    v20 = MEMORY[0x1E695E0F0];
    goto LABEL_173;
  }

  v85 = [componentsCopy count];
  if ([dateComponentsCopy length])
  {
    originalSearchText2 = [(PSISuggestionQuery *)selfCopy originalSearchText];
    string2 = [originalSearchText2 string];
    v88 = [string2 rangeOfString:dateComponentsCopy options:4];
    v90 = v89;
  }

  else
  {
    v90 = 0;
    v88 = 0x7FFFFFFFFFFFFFFFLL;
  }

  originalSearchText3 = [(PSISuggestionQuery *)selfCopy originalSearchText];
  string3 = [originalSearchText3 string];
  v93 = [PSISuggestionQueryUtilities rangeExists:v88 forString:v90, string3];

  if (v85 != 0 && v93)
  {
    v94 = *(*&buf[8] + 24);
    photosEntityStore3 = [(PSISuggestionQuery *)selfCopy photosEntityStore];
    v96 = [PSISuggestionQueryUtilities suggestionComponentForCompletionSuggestionDateComponents:componentsCopy rangeOfCompletionSuggestionDateComponentsInSearchText:v88 searchQueryAssetIds:v90 suggestionQuery:v94 photosEntityStore:selfCopy, photosEntityStore3];

    if (v96)
    {
      [v142 addObject:v96];
      v97 = MEMORY[0x1E696AEC0];
      contentString2 = [v96 contentString];
      1102 = [v97 stringWithFormat:@"%@-%lu", contentString2, 1102];

      [v152 addObject:1102];
    }
  }

  obj = v146;
  v100 = v152;
  if (_os_feature_enabled_impl())
  {
    v101 = [PSISuggestionQueryUtilities dedupedSuggestionComponentsFromSuggestionComponentsMap:v155];
    v102 = [v101 mutableCopy];

    [v102 addObjectsFromArray:v142];
    v103 = v102;

    obj = v103;
    v100 = v152;
  }

  else
  {
    [obj addObjectsFromArray:v142];
  }

  if (![(PSISuggestionQuery *)selfCopy cancelled])
  {
    v105 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = [v100 count];
      *v224 = 134218498;
      v225 = v106;
      v226 = 2112;
      v227 = formattedSearchText;
      v228 = 2112;
      v229 = v100;
      _os_log_impl(&dword_19BF1F000, v105, OS_LOG_TYPE_DEFAULT, "Generated %tu completion candidates for query %@: %@", v224, 0x20u);
    }

    if (suggestionsCopy)
    {
      [PSISuggestionQueryUtilities suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents:obj assetIds:*(*&buf[8] + 24) collectionIds:v216[3] wantsSuggestionCounts:1];
    }

    else
    {
      [PSISuggestionQueryUtilities suggestionCandidatesByIndexCategoryFromSuggestionComponents:obj suggestionType:1];
    }
    v181 = ;

    if (limitSuggestionsToExactTextMatches)
    {
      v107 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v108 = v193;
      v193[0] = MEMORY[0x1E69E9820];
      v193[1] = 3221225472;
      v193[2] = __213__PSISuggestionQuery__generateCompletionSuggestionsForAssetUUIDs_collectionUUIDs_restrictedIndexCategories_shouldFoldSuggestions_suggestionLimit_completionSuggestionDateComponents_completionTextForDateComponents___block_invoke_32;
      v193[3] = &unk_1E756E150;
      v109 = v107;
      v193[4] = v109;
      [v181 enumerateKeysAndObjectsUsingBlock:v193];
      v110 = [PSISuggestionRanker sortedSuggestionsFromSuggestions:v109];
      v111 = [v109 count];
      if (v111 >= limit)
      {
        limitCopy = limit;
      }

      else
      {
        limitCopy = v111;
      }

      v113 = [v110 subarrayWithRange:{0, limitCopy}];
    }

    else
    {
      if ([categoriesCopy count] != 1)
      {
        v118 = +[PSISuggestionRanker rankedSearchSuggestionsFromSuggestionCandidates:suggestionType:queryAssetCount:queryCollectionCount:suggestionLimit:suggestionQuery:](PSISuggestionRanker, "rankedSearchSuggestionsFromSuggestionCandidates:suggestionType:queryAssetCount:queryCollectionCount:suggestionLimit:suggestionQuery:", v181, 1, [dsCopy count], objc_msgSend(iDsCopy, "count"), limit, selfCopy);
        goto LABEL_142;
      }

      v114 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v108 = v192;
      v192[0] = MEMORY[0x1E69E9820];
      v192[1] = 3221225472;
      v192[2] = __213__PSISuggestionQuery__generateCompletionSuggestionsForAssetUUIDs_collectionUUIDs_restrictedIndexCategories_shouldFoldSuggestions_suggestionLimit_completionSuggestionDateComponents_completionTextForDateComponents___block_invoke_2;
      v192[3] = &unk_1E756E150;
      v109 = v114;
      v192[4] = v109;
      [v181 enumerateKeysAndObjectsUsingBlock:v192];
      v110 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"score" ascending:0];
      v223 = v110;
      v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v223 count:1];
      [v109 sortUsingDescriptors:v115];

      v116 = [v109 count];
      if (v116 >= limit)
      {
        limitCopy2 = limit;
      }

      else
      {
        limitCopy2 = v116;
      }

      v113 = [v109 subarrayWithRange:{0, limitCopy2}];
    }

    v118 = v113;

LABEL_142:
    if (v154 == 1)
    {
      v119 = +[PSISuggestionQueryUtilities allowedIndexCategoriesForPairedLocationPrimarySuggestions];
      v183 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v120 = [v118 mutableCopy];
      v190 = 0u;
      v191 = 0u;
      v188 = 0u;
      v189 = 0u;
      v121 = v118;
      v122 = [v121 countByEnumeratingWithState:&v188 objects:v222 count:16];
      if (v122)
      {
        v123 = *v189;
        do
        {
          for (ii = 0; ii != v122; ++ii)
          {
            if (*v189 != v123)
            {
              objc_enumerationMutation(v121);
            }

            v125 = *(*(&v188 + 1) + 8 * ii);
            suggestionComponents = [v125 suggestionComponents];
            firstObject = [suggestionComponents firstObject];
            indexCategory = [firstObject indexCategory];

            if ([v119 containsIndex:indexCategory])
            {
              [v183 addObject:v125];
              [v120 removeObject:v125];
            }
          }

          v122 = [v121 countByEnumeratingWithState:&v188 objects:v222 count:16];
        }

        while (v122);
      }

      [(PSISuggestionQuery *)selfCopy _performQueryForPairedLocationSuggestions:v183];
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v129 = v185 = 0u;
      v130 = [v129 countByEnumeratingWithState:&v184 objects:v221 count:16];
      if (v130)
      {
        v131 = *v185;
        do
        {
          for (jj = 0; jj != v130; ++jj)
          {
            if (*v185 != v131)
            {
              objc_enumerationMutation(v129);
            }

            [v120 addObject:*(*(&v184 + 1) + 8 * jj)];
          }

          v130 = [v129 countByEnumeratingWithState:&v184 objects:v221 count:16];
        }

        while (v130);
      }

      v118 = [v120 copy];
    }

    v133 = *(*&buf[8] + 24);
    if (v133)
    {
      CFRelease(v133);
      *(*&buf[8] + 24) = 0;
    }

    v134 = v216[3];
    if (v134)
    {
      CFRelease(v134);
      v216[3] = 0;
    }

    if ([(PSISuggestionQuery *)selfCopy cancelled])
    {
      v135 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        formattedSearchText5 = [(PSISuggestionQuery *)selfCopy formattedSearchText];
        *v224 = 138412290;
        v225 = formattedSearchText5;
        _os_log_impl(&dword_19BF1F000, v135, OS_LOG_TYPE_INFO, "Completion suggestions aborted because query was cancelled. Query: %@.", v224, 0xCu);
      }

      v20 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v137 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
      {
        v138 = [v118 count];
        *v224 = 134218242;
        v225 = v138;
        v226 = 2112;
        v227 = formattedSearchText;
        _os_log_impl(&dword_19BF1F000, v137, OS_LOG_TYPE_INFO, "Generated %tu completion suggestions for query: %@", v224, 0x16u);
      }

      v20 = v118;
    }

    goto LABEL_172;
  }

  v181 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
  {
    formattedSearchText6 = [(PSISuggestionQuery *)selfCopy formattedSearchText];
    *v224 = 138412290;
    v225 = formattedSearchText6;
    _os_log_impl(&dword_19BF1F000, v181, OS_LOG_TYPE_INFO, "Completion suggestions aborted because query was cancelled. Query: %@.", v224, 0xCu);
  }

  v20 = MEMORY[0x1E695E0F0];
LABEL_172:

LABEL_173:
LABEL_174:

  _Block_object_dispose(&v215, 8);
  _Block_object_dispose(buf, 8);
LABEL_175:

  v18 = suggestionOptions;
LABEL_176:

  return v20;
}

void __213__PSISuggestionQuery__generateCompletionSuggestionsForAssetUUIDs_collectionUUIDs_restrictedIndexCategories_shouldFoldSuggestions_suggestionLimit_completionSuggestionDateComponents_completionTextForDateComponents___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = PLDebugStringForSearchIndexCategory(a2);
  [*(a1 + 32) addObject:v3];
}

uint64_t __213__PSISuggestionQuery__generateCompletionSuggestionsForAssetUUIDs_collectionUUIDs_restrictedIndexCategories_shouldFoldSuggestions_suggestionLimit_completionSuggestionDateComponents_completionTextForDateComponents___block_invoke_18(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  *(*(*(result + 40) + 8) + 24) = a3;
  return result;
}

- (BOOL)cancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->_cancelled;
  objc_sync_exit(selfCopy);

  return cancelled;
}

- (void)setCancelled:(BOOL)cancelled
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cancelled = cancelled;
  objc_sync_exit(obj);
}

- (id)performQueryWithSearchResultAssetUUIDs:(id)ds collectionUUIDs:(id)iDs completionSuggestionDateComponents:(id)components completionTextForDateComponents:(id)dateComponents
{
  v50 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  formattedSearchText = [(PSISuggestionQuery *)self formattedSearchText];
  if (![formattedSearchText length])
  {
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_42;
  }

  suggestionOptions = [(PSISuggestionQuery *)self suggestionOptions];
  if (![suggestionOptions searchSuggestionLimit])
  {
    v28 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = formattedSearchText;
      v29 = "Suggestions query for %@ aborted because the suggestion limit provided was zero";
LABEL_22:
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_INFO, v29, buf, 0xCu);
    }

LABEL_23:
    v18 = MEMORY[0x1E695E0F0];
LABEL_40:

    goto LABEL_41;
  }

  if ([dsCopy count])
  {
    [suggestionOptions wantsUnscopedSuggestions];
    goto LABEL_5;
  }

  v30 = [iDsCopy count];
  if (([suggestionOptions wantsUnscopedSuggestions] & 1) == 0 && !v30)
  {
    v28 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = formattedSearchText;
      v29 = "Suggestions query for %@ aborted because no scoping search results were provided";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_5:
  suggestionOptions2 = [(PSISuggestionQuery *)self suggestionOptions];
  searchSuggestionType = [suggestionOptions2 searchSuggestionType];

  v18 = MEMORY[0x1E695E0F0];
  if (searchSuggestionType > 2)
  {
    if ((searchSuggestionType - 3) > 1)
    {
      goto LABEL_41;
    }

LABEL_25:
    v28 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = formattedSearchText;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Suggestions query for %@ aborted because the required suggestion type was unexpected", buf, 0xCu);
    }

    goto LABEL_40;
  }

  switch(searchSuggestionType)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v31 = PLPhotosSearchGetLog();
      v32 = os_signpost_id_generate(v31);

      v33 = v31;
      v34 = v33;
      v43 = v32 - 1;
      if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "PLSearchCompletionSuggestionsSignpost", "", buf, 2u);
      }

      v42 = v32;
      v47 = v34;

      suggestionCategories = [suggestionOptions suggestionCategories];
      spida = [PSISuggestionQueryUtilities searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet:suggestionCategories];

      v36 = [spida copy];
      suggestionOptions3 = [(PSISuggestionQuery *)self suggestionOptions];
      v18 = -[PSISuggestionQuery _generateCompletionSuggestionsForAssetUUIDs:collectionUUIDs:restrictedIndexCategories:shouldFoldSuggestions:suggestionLimit:completionSuggestionDateComponents:completionTextForDateComponents:](self, "_generateCompletionSuggestionsForAssetUUIDs:collectionUUIDs:restrictedIndexCategories:shouldFoldSuggestions:suggestionLimit:completionSuggestionDateComponents:completionTextForDateComponents:", dsCopy, iDsCopy, v36, 1, [suggestionOptions3 searchSuggestionLimit], componentsCopy, dateComponentsCopy);

      v38 = v47;
      v28 = v38;
      if (v43 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v38))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, v42, "PLSearchCompletionSuggestionsSignpost", "", buf, 2u);
      }

      goto LABEL_40;
    case 2:
      suggestionOptions4 = [(PSISuggestionQuery *)self suggestionOptions];
      enableNextTokenSuggestions = [suggestionOptions4 enableNextTokenSuggestions];

      if (enableNextTokenSuggestions)
      {
        suggestionOptions5 = [(PSISuggestionQuery *)self suggestionOptions];
        minNumberOfResultsForNextTokenGeneration = [suggestionOptions5 minNumberOfResultsForNextTokenGeneration];

        v23 = PLPhotosSearchGetLog();
        v24 = os_signpost_id_generate(v23);

        v25 = v23;
        v26 = v25;
        spid = v24;
        v27 = v24 - 1;
        if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_BEGIN, spid, "PLSearchNextTokenSuggestionsSignpost", "", buf, 2u);
        }

        v46 = v26;

        if ([dsCopy count] >= minNumberOfResultsForNextTokenGeneration)
        {
          suggestionOptions6 = [(PSISuggestionQuery *)self suggestionOptions];
          v18 = -[PSISuggestionQuery _generateNextTokenSuggestionsForAssetUUIDs:collectionUUIDs:suggestionLimit:](self, "_generateNextTokenSuggestionsForAssetUUIDs:collectionUUIDs:suggestionLimit:", dsCopy, iDsCopy, [suggestionOptions6 searchSuggestionLimit]);
        }

        else
        {
          v18 = MEMORY[0x1E695E0F0];
        }

        v40 = v46;
        v28 = v40;
        if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchNextTokenSuggestionsSignpost", "", buf, 2u);
        }

        goto LABEL_40;
      }

      v18 = MEMORY[0x1E695E0F0];
      break;
  }

LABEL_41:

LABEL_42:

  return v18;
}

- (PSISuggestionQuery)initWithFormattedSearchText:(id)text originalSearchText:(id)searchText completionSuggestionTexts:(id)texts suggestionOptions:(id)options suggestionComponents:(id)components photosEntityStore:(id)store
{
  v41 = *MEMORY[0x1E69E9840];
  textCopy = text;
  searchTextCopy = searchText;
  textsCopy = texts;
  optionsCopy = options;
  componentsCopy = components;
  storeCopy = store;
  if (textCopy)
  {
    if (searchTextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSISuggestionQuery.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"formattedSearchText"}];

    if (searchTextCopy)
    {
LABEL_3:
      if (optionsCopy)
      {
        goto LABEL_4;
      }

LABEL_13:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PSISuggestionQuery.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"suggestionOptions"}];

      if (storeCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PSISuggestionQuery.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"originalSearchText"}];

  if (!optionsCopy)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (storeCopy)
  {
LABEL_5:
    v38.receiver = self;
    v38.super_class = PSISuggestionQuery;
    v21 = [(PSISuggestionQuery *)&v38 init];
    if (v21)
    {
      v22 = [textCopy copy];
      formattedSearchText = v21->_formattedSearchText;
      v21->_formattedSearchText = v22;

      v24 = [searchTextCopy copy];
      originalSearchText = v21->_originalSearchText;
      v21->_originalSearchText = v24;

      v26 = [optionsCopy copy];
      suggestionOptions = v21->_suggestionOptions;
      v21->_suggestionOptions = v26;

      objc_storeStrong(&v21->_photosEntityStore, store);
      v28 = [textsCopy copy];
      completionSuggestionTexts = v21->_completionSuggestionTexts;
      v21->_completionSuggestionTexts = v28;

      if (componentsCopy)
      {
        v30 = [componentsCopy copy];
      }

      else
      {
        v30 = MEMORY[0x1E695E0F0];
      }

      suggestionComponents = v21->_suggestionComponents;
      v21->_suggestionComponents = v30;
    }

    self = v21;
    selfCopy = self;
    goto LABEL_17;
  }

LABEL_14:
  v36 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = textCopy;
    _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_INFO, "Unexpected nil photos entity store, aborting initialization of query: %@", buf, 0xCu);
  }

  selfCopy = 0;
LABEL_17:

  return selfCopy;
}

+ (void)_pairLocationCompletionSuggestionsIfPossible:(id)possible completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  possibleCopy = possible;
  completionCopy = completion;
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([possibleCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [possibleCopy objectAtIndexedSubscript:v6];
      if (++v6 < [possibleCopy count])
      {
        v8 = 0;
        v9 = -1;
        v10 = v6;
        do
        {
          v11 = [possibleCopy objectAtIndexedSubscript:v10];
          if (([v11 isEqual:v7] & 1) == 0)
          {
            v12 = [PSISuggestionQueryUtilities locationPairingScore:v7 otherLocationSuggestion:v11];
            if (v12 <= v8)
            {
              v13 = v8;
            }

            else
            {
              v13 = v12;
            }

            if (v12 <= v8)
            {
              v14 = v9;
            }

            else
            {
              v14 = v10;
            }

            if (v9 == -1)
            {
              v13 = v12;
              v14 = v10;
            }

            if (v12)
            {
              v8 = v13;
              v9 = v14;
            }
          }

          ++v10;
        }

        while (v10 < [possibleCopy count]);
        if (v9 != -1)
        {
          v15 = [possibleCopy objectAtIndexedSubscript:v9];
          v16 = [[PSILocationSuggestionPair alloc] initWithSuggestion:v7 otherSuggestion:v15 score:v8];
          [v42 addObject:v16];
        }
      }
    }

    while (v6 < [possibleCopy count]);
  }

  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = possibleCopy;
  v18 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v49;
    v40 = *v49;
    do
    {
      v21 = 0;
      v41 = v19;
      do
      {
        if (*v49 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v48 + 1) + 8 * v21);
        if (([v17 containsObject:v22] & 1) == 0)
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v23 = v42;
          v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = 0;
            score = 0;
            v28 = *v45;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v45 != v28)
                {
                  objc_enumerationMutation(v23);
                }

                v30 = *(*(&v44 + 1) + 8 * i);
                if ([v30 containsSuggestion:v22] && objc_msgSend(v30, "score") && objc_msgSend(v30, "score") > score)
                {
                  score = [v30 score];
                  v31 = v30;

                  v26 = v31;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v25);

            if (v26)
            {
              suggestion = [v26 suggestion];
              v20 = v40;
              v19 = v41;
              if ([v17 containsObject:suggestion])
              {
                goto LABEL_44;
              }

              otherSuggestion = [v26 otherSuggestion];
              v34 = [v17 containsObject:otherSuggestion];

              if ((v34 & 1) == 0)
              {
                suggestion = [v26 searchSuggestionWithNextTokenPairing];
                if (suggestion)
                {
                  [v38 addObject:suggestion];
                }

                [v23 removeObject:v26];
                suggestion2 = [v26 suggestion];
                [v17 addObject:suggestion2];

                otherSuggestion2 = [v26 otherSuggestion];
                [v17 addObject:otherSuggestion2];

LABEL_44:
              }
            }

            else
            {
              v20 = v40;
              v19 = v41;
            }

            if (([v17 containsObject:v22] & 1) == 0)
            {
              [v39 addObject:v22];
            }

            goto LABEL_49;
          }

          v26 = 0;
          suggestion = v23;
          goto LABEL_44;
        }

LABEL_49:
        ++v21;
      }

      while (v21 != v19);
      v19 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v19);
  }

  completionCopy[2](completionCopy, v38, v39);
}

@end