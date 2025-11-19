@interface PSISuggestionQueryUtilities
+ (BOOL)groupIsValidForSuggestionGeneration:(id)a3 suggestionType:(unint64_t)a4 allowedIndexCategories:(id)a5 suggestionQuery:(id)a6;
+ (BOOL)groupWithAssetCountMeetsAssetMatchThreshold:(unint64_t)a3 assetSearchResultsCount:(unint64_t)a4;
+ (BOOL)isEligibleIndexCategory:(unint64_t)a3 forSuggestionWithType:(unint64_t)a4;
+ (BOOL)rangeExists:(_NSRange)a3 forString:(id)a4;
+ (BOOL)suggestionCategoriesPairingIsValid:(unint64_t)a3 otherCategory:(unint64_t)a4;
+ (id)_dateFilterFromStartDateComponents:(id)a3 endDateComponents:(id)a4;
+ (id)_filterGroups:(id)a3 forExcludedIndexCategories:(id)a4 forRestrictedIndexCategories:(id)a5;
+ (id)allowedIndexCategoriesForPairedLocationPrimarySuggestions;
+ (id)allowedIndexCategoriesForPairedLocationSecondarySuggestions;
+ (id)dedupedSuggestionComponentsFromSuggestionComponentsMap:(id)a3;
+ (id)excludedLocationCategoriesForPairedLocationPrimarySuggestions;
+ (id)mapKeyForSuggestionComponent:(id)a3;
+ (id)searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet:(id)a3;
+ (id)sortLocationSuggestions:(id)a3;
+ (id)suggestionCandidatesByContentStringFromSuggestionComponents:(id)a3;
+ (id)suggestionCandidatesByIndexCategoryFromSuggestionComponents:(id)a3 suggestionType:(unint64_t)a4;
+ (id)suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents:(id)a3 assetIds:(__CFArray *)a4 collectionIds:(__CFArray *)a5 wantsSuggestionCounts:(BOOL)a6;
+ (id)suggestionComponentForCompletionSuggestionDateComponents:(id)a3 rangeOfCompletionSuggestionDateComponentsInSearchText:(_NSRange)a4 searchQueryAssetIds:(__CFArray *)a5 suggestionQuery:(id)a6 photosEntityStore:(id)a7;
+ (id)suggestionComponentFromGroup:(id)a3 completionText:(id)a4 suggestionQuery:(id)a5 suggestionOptions:(id)a6 matchRange:(_NSRange)a7 requiresScopedUUIDs:(BOOL)a8 generateAssetSuggestions:(BOOL)a9 generateCollectionSuggestions:(BOOL)a10 searchQueryAssetIds:(__CFArray *)a11 searchQueryCollectionIds:(__CFArray *)a12;
+ (id)suggestionGroupsForSearchText:(id)a3 requireExactMatches:(BOOL)a4 leadingAnchored:(BOOL)a5 restrictedIndexCategories:(id)a6 excludedIndexCategories:(id)a7 suggestionResultTypes:(unint64_t)a8 psiQueryDelegate:(id)a9;
+ (unint64_t)_matchTypeForCompletionSuggestionText:(id)a3 matchRange:(_NSRange)a4 completionTexts:(id)a5;
+ (unint64_t)locationPairingScore:(id)a3 otherLocationSuggestion:(id)a4;
+ (unint64_t)scoreForLocationSuggestionStringLength:(id)a3;
+ (unint64_t)suggestionPairingTypeForSuggestionOptions:(id)a3;
+ (void)_categorizeCompletionTexts:(id)a3 completion:(id)a4;
@end

@implementation PSISuggestionQueryUtilities

+ (BOOL)suggestionCategoriesPairingIsValid:(unint64_t)a3 otherCategory:(unint64_t)a4
{
  if (a3 == 11 && a4 == 10 || a3 == 10 && a4 == 11 || a3 == 13 && a4 == 12)
  {
    return 0;
  }

  return a3 != 12 || a4 != 13;
}

+ (id)sortLocationSuggestions:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithKey:@"score" ascending:0];
  v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"matchedAssetsCount" ascending:0];
  v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"contentString" ascending:1];
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v9 = [v4 sortedArrayUsingDescriptors:v8];

  return v9;
}

+ (unint64_t)locationPairingScore:(id)a3 otherLocationSuggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 suggestionComponents];
  v9 = [v8 firstObject];
  v10 = [v9 indexCategory];

  v11 = [v7 suggestionComponents];
  v12 = [v11 firstObject];
  v13 = [v12 indexCategory];

  v14 = +[PSISuggestionQueryUtilities allowedIndexCategoriesForPairedLocationPrimarySuggestions];
  v15 = +[PSISuggestionQueryUtilities allowedIndexCategoriesForPairedLocationSecondarySuggestions];
  if (v10 == v13 || ([a1 suggestionCategoriesPairingIsValid:v10 otherCategory:v13] & 1) != 0)
  {
    goto LABEL_3;
  }

  if (v10 < v13)
  {
    if ([v14 containsIndex:v10] && (objc_msgSend(v15, "containsIndex:", v13) & 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_3:
    Count = 0;
    goto LABEL_4;
  }

  if (![v14 containsIndex:v13] || !objc_msgSend(v15, "containsIndex:", v10))
  {
    goto LABEL_3;
  }

LABEL_11:
  if ((v10 - v13) >= 0)
  {
    v18 = v10 - v13;
  }

  else
  {
    v18 = v13 - v10;
  }

  v19 = [v6 suggestionComponents];
  v20 = [v19 firstObject];
  v21 = [v20 group];

  v22 = [v7 suggestionComponents];
  v23 = [v22 firstObject];
  v24 = [v23 group];

  if ([v21 assetIds])
  {
    v25 = CFArrayGetCount([v21 assetIds]) == 0;
  }

  else
  {
    v25 = 1;
  }

  if ([v24 assetIds] && (!CFArrayGetCount(objc_msgSend(v24, "assetIds")) ? (v26 = 1) : (v26 = v25), (v26 & 1) == 0))
  {
    theArray = CFArrayCreateCopy(0, [v21 assetIds]);
    +[PLScopedSearchUtilities intersectSortedArray:withOtherSortedArray:intersectionLimit:](PLScopedSearchUtilities, "intersectSortedArray:withOtherSortedArray:intersectionLimit:", &theArray, [v24 assetIds], 100);
    Count = CFArrayGetCount(theArray);
    CFRelease(theArray);
    if (Count)
    {
      v27 = (11 - v18) & ~((11 - v18) >> 63);
      v28 = vcvtd_n_f64_u32((Count + 5) / 0xAu, 1uLL);
      if (Count <= 0x63)
      {
        v29 = v28;
      }

      else
      {
        v29 = 5.0;
      }

      v30 = [v6 contentString];
      v31 = [PSISuggestionQueryUtilities scoreForLocationSuggestionStringLength:v30];

      v32 = [v7 contentString];
      v33 = [PSISuggestionQueryUtilities scoreForLocationSuggestionStringLength:v32];

      Count = (v29 + v27 * 0.3 + v31 * 0.1 + v33 * 0.1);
    }
  }

  else
  {
    Count = 0;
  }

LABEL_4:
  return Count;
}

+ (unint64_t)scoreForLocationSuggestionStringLength:(id)a3
{
  result = [a3 length];
  if (result)
  {
    if (result >= 6)
    {
      if (result >= 0xB)
      {
        if (result >= 0x10)
        {
          if (result >= 0x15)
          {
            if (result >= 0x1A)
            {
              if (result >= 0x1F)
              {
                if (result >= 0x24)
                {
                  if (result >= 0x29)
                  {
                    if (result >= 0x2E)
                    {
                      return result < 0x33;
                    }

                    else
                    {
                      return 2;
                    }
                  }

                  else
                  {
                    return 3;
                  }
                }

                else
                {
                  return 4;
                }
              }

              else
              {
                return 5;
              }
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 7;
          }
        }

        else
        {
          return 8;
        }
      }

      else
      {
        return 9;
      }
    }

    else
    {
      return 10;
    }
  }

  return result;
}

+ (id)excludedLocationCategoriesForPairedLocationPrimarySuggestions
{
  v2 = [a1 allowedIndexCategoriesForPairedLocationPrimarySuggestions];
  v3 = PLSearchIndexCategoriesForPLSearchSuggestionCategoriesType(1);
  v4 = [v3 mutableCopy];

  [v4 removeIndexes:v2];
  v5 = [v4 copy];

  return v5;
}

+ (id)allowedIndexCategoriesForPairedLocationSecondarySuggestions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:1];
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:5];
  [v2 addIndex:10];
  [v2 addIndex:11];
  [v2 addIndex:12];
  [v2 addIndex:13];
  v3 = [v2 copy];

  return v3;
}

+ (id)allowedIndexCategoriesForPairedLocationPrimarySuggestions
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD50]);
  [v2 addIndex:3];
  [v2 addIndex:4];
  [v2 addIndex:5];
  [v2 addIndex:6];
  [v2 addIndex:7];
  [v2 addIndex:8];
  [v2 addIndex:9];
  [v2 addIndex:10];
  [v2 addIndex:12];
  v3 = [v2 copy];

  return v3;
}

+ (unint64_t)suggestionPairingTypeForSuggestionOptions:(id)a3
{
  v3 = a3;
  v4 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([v3 wantsPairedSuggestions])
  {
    v5 = [v3 suggestionCategories];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__PSISuggestionQueryUtilities_suggestionPairingTypeForSuggestionOptions___block_invoke;
    v7[3] = &unk_1E756C420;
    v7[4] = &v8;
    [v5 enumerateIndexesUsingBlock:v7];

    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);

  return v4;
}

uint64_t __73__PSISuggestionQueryUtilities_suggestionPairingTypeForSuggestionOptions___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

+ (id)_filterGroups:(id)a3 forExcludedIndexCategories:(id)a4 forRestrictedIndexCategories:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 count] || objc_msgSend(v9, "count"))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if ((![v8 count] || (objc_msgSend(v8, "containsIndex:", objc_msgSend(v16, "category")) & 1) == 0) && (!objc_msgSend(v9, "count") || objc_msgSend(v9, "containsIndex:", objc_msgSend(v16, "category"))))
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v17 = [v10 copy];
  }

  else
  {
    v17 = v7;
  }

  return v17;
}

+ (void)_categorizeCompletionTexts:(id)a3 completion:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [v13 length];
          if (v14 > [v10 length])
          {
            v15 = v13;

            v10 = v15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    if ([v7 count] >= 2 && objc_msgSend(v10, "length"))
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = v7;
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v24 + 1) + 8 * j);
            if (([v22 isEqualToString:{v10, v24}] & 1) == 0)
            {
              [v16 addObject:v22];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v19);
      }

      v23 = [v16 copy];
      v6[2](v6, v10, v23);
    }

    else
    {
      v6[2](v6, v10, 0);
    }
  }

  else
  {
    v6[2](v6, 0, 0);
  }
}

+ (id)searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet:(id)a3
{
  v3 = MEMORY[0x1E696AD50];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __105__PSISuggestionQueryUtilities_searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet___block_invoke;
  v9[3] = &unk_1E7576338;
  v10 = v5;
  v6 = v5;
  [v4 enumerateIndexesUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __105__PSISuggestionQueryUtilities_searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = PLSearchIndexCategoriesForPLSearchSuggestionCategoriesType(a2);
  [v2 addIndexes:v3];
}

+ (unint64_t)_matchTypeForCompletionSuggestionText:(id)a3 matchRange:(_NSRange)a4 completionTexts:(id)a5
{
  length = a4.length;
  location = a4.location;
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__42875;
  v30 = __Block_byref_object_dispose__42876;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__42875;
  v24 = __Block_byref_object_dispose__42876;
  v25 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __96__PSISuggestionQueryUtilities__matchTypeForCompletionSuggestionText_matchRange_completionTexts___block_invoke;
  v19[3] = &unk_1E756C3F8;
  v19[4] = &v26;
  v19[5] = &v20;
  [a1 _categorizeCompletionTexts:v10 completion:v19];
  if (![v27[5] length])
  {
    v11 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v10;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unexpected nil full completion text for completion texts: %@, unable to determine match type for suggestion: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if (([a1 rangeExists:location forString:{length, v27[5]}] & 1) == 0)
  {
    v11 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v39.location = location;
      v39.length = length;
      v16 = NSStringFromRange(v39);
      v17 = v27[5];
      *buf = 138412802;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      v36 = 2112;
      v37 = v9;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Out of bound match range %@ detected for full completion text: %@, unable to determine match type for suggestion: %@", buf, 0x20u);
    }

    goto LABEL_15;
  }

  v11 = [v27[5] substringWithRange:{location, length}];
  if ([v11 isEqualToString:v27[5]])
  {
    v12 = [v9 localizedLowercaseString];
    v13 = [v27[5] localizedLowercaseString];
    v14 = [v12 hasPrefix:v13];

    if (v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    goto LABEL_16;
  }

  if (![v21[5] containsObject:v11])
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  if ([v9 hasPrefix:v11])
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

LABEL_16:

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v15;
}

void __96__PSISuggestionQueryUtilities__matchTypeForCompletionSuggestionText_matchRange_completionTexts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (id)_dateFilterFromStartDateComponents:(id)a3 endDateComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!(v5 | v6))
  {
    v8 = PLSearchBackendQueryGetLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

LABEL_10:
      v11 = 0;
      goto LABEL_36;
    }

    *buf = 0;
    v9 = "Unable to generate date filter for NL Date suggestion, missing start and end date components";
    v10 = buf;
LABEL_8:
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    goto LABEL_9;
  }

  v7 = [v5 day] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "year") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v5, "era") == 0x7FFFFFFFFFFFFFFFLL;
  if ([v6 day] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v6, "year") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [v6 era];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL && v7)
    {
      v8 = PLSearchBackendQueryGetLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v18 = 0;
      v9 = "Unable to generate date filter for NL Date suggestion, both start and end date components are empty";
      v10 = &v18;
      goto LABEL_8;
    }

    if (!v7)
    {
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (!v5)
        {
          goto LABEL_10;
        }

        v14 = [[PSIDateFilter alloc] initWithStartDateComponents:v5];
        goto LABEL_35;
      }

LABEL_28:
      v15 = [PSIDateFilter alloc];
      if (v5 && v6)
      {
        v14 = [(PSIDateFilter *)v15 initWithStartDateComponents:v5 endDateComponents:v6];
      }

      else
      {
        if (v5)
        {
          v16 = v5;
        }

        else
        {
          v16 = v6;
        }

        v14 = [(PSIDateFilter *)v15 initWithSingleDateComponents:v16];
      }

      goto LABEL_35;
    }
  }

  else if (!v7)
  {
    goto LABEL_28;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  v14 = [[PSIDateFilter alloc] initWithEndDateComponents:v6];
LABEL_35:
  v11 = v14;
LABEL_36:

  return v11;
}

+ (id)mapKeyForSuggestionComponent:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 contentString];
  v6 = [v4 indexCategory];
  v7 = [v4 lookupIdentifier];

  v8 = &stru_1F0F06D80;
  if (v7)
  {
    v8 = v7;
  }

  v9 = [v3 stringWithFormat:@"%@-%tu-%@", v5, v6, v8];

  return v9;
}

+ (id)dedupedSuggestionComponentsFromSuggestionComponentsMap:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__PSISuggestionQueryUtilities_dedupedSuggestionComponentsFromSuggestionComponentsMap___block_invoke;
  v9[3] = &unk_1E7576760;
  v10 = v5;
  v6 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __86__PSISuggestionQueryUtilities_dedupedSuggestionComponentsFromSuggestionComponentsMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] == 1)
    {
      [*(a1 + 32) addObjectsFromArray:v4];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"matchType" ascending:1];
      v10[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      v7 = [v4 sortedArrayUsingDescriptors:v6];

      v8 = *(a1 + 32);
      v9 = [v7 firstObject];
      [v8 addObject:v9];
    }
  }
}

+ (id)suggestionComponentForCompletionSuggestionDateComponents:(id)a3 rangeOfCompletionSuggestionDateComponentsInSearchText:(_NSRange)a4 searchQueryAssetIds:(__CFArray *)a5 suggestionQuery:(id)a6 photosEntityStore:(id)a7
{
  length = a4.length;
  location = a4.location;
  v37 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = [v12 count];
  if (v14 && v13 && a5 && v15 && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v12 count])
    {
      v16 = [v12 objectAtIndexedSubscript:0];
    }

    else
    {
      v16 = 0;
    }

    if ([v12 count] < 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = [v12 objectAtIndexedSubscript:1];
    }

    v33 = v18;
    v19 = [PSISuggestionQueryUtilities _dateFilterFromStartDateComponents:v16 endDateComponents:v18];
    v20 = [v13 originalSearchText];
    v21 = [v20 string];
    v32 = length;
    v22 = [v21 substringWithRange:{location, length}];

    v23 = [[PSIGroup alloc] initWithContentString:v22 lookupIdentifier:0 category:1102 score:0.0];
    if (v19 && (v24 = CFArrayGetCount(a5)) != 0)
    {
      v25 = v24;
      v31 = v23;
      v26 = [v14 assetIdsWithDateFilter:v19];
      *buf = v26;
      if (v26 && (v27 = v26, CFArrayGetCount(v26) >= 1) && (CFRetain(v27), [PLScopedSearchUtilities intersectSortedArray:buf withOtherSortedArray:a5 intersectionLimit:0], Count = CFArrayGetCount(*buf), Count - 1 < v25))
      {
        v29 = Count;
        [(PSIGroup *)v31 updateWithIntersectedIds:*buf searchResultType:1];
        v23 = v31;
        v17 = [[PLSearchSuggestionComponent alloc] initWithGroup:v31 matchedAssetsCount:v29 matchedCollectionsCount:0 suggestionType:1 completionSuggestionDateComponents:v12 matchedText:v22 matchRangeOfSearchText:location matchType:v32, 1];
      }

      else
      {
        v17 = 0;
        v23 = v31;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v16 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v12;
      v35 = 2112;
      v36 = v13;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Unable to generate component from date components: %@ for suggestion query: %@", buf, 0x16u);
    }

    v17 = 0;
  }

  return v17;
}

+ (id)suggestionComponentFromGroup:(id)a3 completionText:(id)a4 suggestionQuery:(id)a5 suggestionOptions:(id)a6 matchRange:(_NSRange)a7 requiresScopedUUIDs:(BOOL)a8 generateAssetSuggestions:(BOOL)a9 generateCollectionSuggestions:(BOOL)a10 searchQueryAssetIds:(__CFArray *)a11 searchQueryCollectionIds:(__CFArray *)a12
{
  length = a7.length;
  location = a7.location;
  v16 = a9;
  v46 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = v19;
  if (v17 && v19)
  {
    v41 = length;
    v21 = 0;
    if (![PSISuggestionQueryUtilities groupIsValidForSuggestionGeneration:v17 suggestionType:1 allowedIndexCategories:0 suggestionQuery:v19])
    {
      goto LABEL_57;
    }

    if (a11)
    {
      Count = CFArrayGetCount(a11);
      if (a12)
      {
LABEL_6:
        v22 = CFArrayGetCount(a12);
        goto LABEL_12;
      }
    }

    else
    {
      Count = 0;
      if (a12)
      {
        goto LABEL_6;
      }
    }

    v22 = 0;
LABEL_12:
    if ([v17 assetIds])
    {
      v39 = CFArrayGetCount([v17 assetIds]) != 0;
    }

    else
    {
      v39 = 0;
    }

    if ([v17 collectionIds])
    {
      v40 = CFArrayGetCount([v17 collectionIds]) != 0;
    }

    else
    {
      v40 = 0;
    }

    if ([v17 intersectedAssetIds] && CFArrayGetCount(objc_msgSend(v17, "intersectedAssetIds")))
    {
      v37 = location;
      v24 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [v20 formattedSearchText];
        v25 = v36 = v22;
        *buf = 138412546;
        *&buf[4] = v17;
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Erroneous group with non-zero intersected assetIds: %@ for query: %@.", buf, 0x16u);

        v22 = v36;
      }

      location = v37;
    }

    Copy = [v17 assetIds];
    if (Copy)
    {
      Copy = CFArrayCreateCopy(0, [v17 assetIds]);
    }

    *buf = Copy;
    if (a9)
    {
      if (a8)
      {
        [PLScopedSearchUtilities intersectSortedArray:buf withOtherSortedArray:a11 intersectionLimit:0];
        v16 = 0;
        if (a11 && *buf)
        {
          if (CFArrayGetCount(*buf) - 1 >= Count)
          {
            v16 = 0;
          }

          else
          {
            [v17 resetIntersectedIds];
            v16 = 1;
            [v17 updateWithIntersectedIds:*buf searchResultType:1];
          }
        }
      }

      else
      {
        v16 = [v17 assetIds] != 0 && v39;
      }
    }

    v27 = [v17 collectionIds];
    if (v27)
    {
      v27 = CFArrayCreateCopy(0, [v17 collectionIds]);
    }

    theArray = v27;
    if (a10)
    {
      if (a8)
      {
        [PLScopedSearchUtilities intersectSortedArray:&theArray withOtherSortedArray:a12 intersectionLimit:0];
        v28 = 0;
        if (a12 && theArray)
        {
          if (CFArrayGetCount(theArray) - 1 < v22)
          {
            [v17 resetIntersectedIds];
            [v17 updateWithIntersectedIds:theArray searchResultType:2];
            v28 = 1;
            goto LABEL_43;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v28 = [v17 collectionIds] != 0 && v40;
      }

LABEL_42:
      if ((v16 | v28) != 1)
      {
        v21 = 0;
LABEL_53:
        if (*buf)
        {
          CFRelease(*buf);
          *buf = 0;
        }

        if (theArray)
        {
          CFRelease(theArray);
        }

        goto LABEL_57;
      }

LABEL_43:
      if (_os_feature_enabled_impl())
      {
        v29 = [v17 contentString];
        v30 = [v20 completionSuggestionTexts];
        v31 = [PSISuggestionQueryUtilities _matchTypeForCompletionSuggestionText:v29 matchRange:location completionTexts:v41, v30];
      }

      else
      {
        v31 = 0;
      }

      v32 = [PLSearchSuggestionComponent alloc];
      if (v16)
      {
        v33 = CFArrayGetCount(*buf);
        if (!v28)
        {
LABEL_49:
          v34 = 0;
LABEL_52:
          v21 = [(PLSearchSuggestionComponent *)v32 initWithGroup:v17 matchedAssetsCount:v33 matchedCollectionsCount:v34 suggestionType:1 completionSuggestionDateComponents:0 matchedText:v18 matchRangeOfSearchText:location matchType:v41, v31];
          goto LABEL_53;
        }
      }

      else
      {
        v33 = 0;
        if (!v28)
        {
          goto LABEL_49;
        }
      }

      v34 = CFArrayGetCount(theArray);
      goto LABEL_52;
    }

LABEL_40:
    v28 = 0;
    goto LABEL_42;
  }

  v23 = PLSearchBackendQueryGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v17;
    v44 = 2112;
    v45 = v20;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Unable to generate component from group: %@ for suggestion query: %@", buf, 0x16u);
  }

  v21 = 0;
LABEL_57:

  return v21;
}

+ (id)suggestionGroupsForSearchText:(id)a3 requireExactMatches:(BOOL)a4 leadingAnchored:(BOOL)a5 restrictedIndexCategories:(id)a6 excludedIndexCategories:(id)a7 suggestionResultTypes:(unint64_t)a8 psiQueryDelegate:(id)a9
{
  v12 = a5;
  v13 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a9;
  v19 = [v15 length];
  if (v18)
  {
    v20 = v19 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v23 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v15;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Unable to fetch groups for search text: %@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v35 = a1;
    v22 = [v15 lowercaseString];
    v36 = v13;
    v23 = [PSITokenizer fts5StringFromString:v22 useWildcard:!v13 leadingAnchored:v12 orderInsensitive:0];

    v24 = [v18 groupIdsMatchingFTSString:v23 categories:0 textIsSearchable:1];
    v25 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v38 = [v24 count];
      v39 = 2112;
      v40 = v15;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Found %tu groups for suggestion text: %@.", buf, 0x16u);
    }

    v34 = v24;
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v24, 0}];
    v28 = [v18 groupArraysFromGroupIdSets:v27 dateFilter:0 searchResultTypes:a8 progressBlock:&__block_literal_global_42904];
    [v18 resetGroupsCache];
    v29 = [v28 firstObject];
    v30 = v16;
    v31 = [v35 _filterGroups:v29 forExcludedIndexCategories:v17 forRestrictedIndexCategories:v16];

    v21 = [PLScopedSearchUtilities removeSynonymsOfOtherGroupsInGroups:v31];

    if (v36)
    {
      v32 = [PLScopedSearchUtilities removeGroupsWithNonExactMatchTextFromGroups:v21 searchText:v15];

      v21 = v32;
    }

    v16 = v30;
  }

  return v21;
}

+ (BOOL)rangeExists:(_NSRange)a3 forString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = 0;
  if ([v6 length] && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = location <= [v6 length] && location + length <= objc_msgSend(v6, "length");
  }

  return v7;
}

+ (BOOL)groupWithAssetCountMeetsAssetMatchThreshold:(unint64_t)a3 assetSearchResultsCount:(unint64_t)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    v5 = (a3 / a4) * 100.0;
    return v5 <= 65.0 && v5 >= 15.0;
  }

  return v4;
}

+ (BOOL)isEligibleIndexCategory:(unint64_t)a3 forSuggestionWithType:(unint64_t)a4
{
  result = 1;
  if (a3 <= 1500)
  {
    if (a3 <= 1101)
    {
      if (a3 > 0xE)
      {
        goto LABEL_13;
      }

      if (((1 << a3) & 0x53C4) != 0)
      {
        return a4 != 2;
      }

      if (((1 << a3) & 0x2801) == 0)
      {
LABEL_13:
        if (a3 - 1003 >= 6)
        {
          if (a3 - 1009 >= 2)
          {
            return result;
          }

          return a4 != 2;
        }
      }

      return 0;
    }

    if (a3 > 1300)
    {
      if (a3 - 1301 > 0x1E)
      {
        goto LABEL_32;
      }

      if (((1 << (a3 - 21)) & 0x40180001) != 0)
      {
        return a4 != 2;
      }

      if (a3 != 1310)
      {
LABEL_32:
        if (a3 - 1400 >= 3)
        {
          return result;
        }

        return a4 != 2;
      }

      return 0;
    }

    if (a3 - 1200 < 6)
    {
      return a4 != 2;
    }

    if (a3 - 1102 > 7)
    {
      return result;
    }

    v5 = 1 << (a3 - 78);
    v6 = 201;
LABEL_22:
    if ((v5 & v6) == 0)
    {
      return result;
    }

    return a4 != 2;
  }

  if (a3 <= 1899)
  {
    if (a3 > 1600)
    {
      if (a3 != 1601 && a3 != 1611 && a3 != 1803)
      {
        return result;
      }

      return a4 != 2;
    }

    if (a3 - 1501 > 0x28)
    {
      return result;
    }

    v5 = 1 << (a3 + 35);
    v6 = 0x18060180601;
    goto LABEL_22;
  }

  if (a3 > 2399)
  {
    if (a3 <= 2699)
    {
      if (a3 - 2400 >= 2 && a3 != 2501 && a3 != 2601)
      {
        return result;
      }

      return a4 != 2;
    }

    if (a3 - 2900 < 2)
    {
      return a4 != 2;
    }

    if (a3 != 2700 && a3 != 2800)
    {
      return result;
    }

    return 0;
  }

  if (a3 - 1900 <= 0x14 && ((1 << (a3 - 108)) & 0x1F7FFD) != 0 || a3 == 2100 || a3 == 2300)
  {
    return a4 != 2;
  }

  return result;
}

+ (BOOL)groupIsValidForSuggestionGeneration:(id)a3 suggestionType:(unint64_t)a4 allowedIndexCategories:(id)a5 suggestionQuery:(id)a6
{
  v70 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v9 contentString];
  v13 = [v12 length];

  v14 = [v10 count];
  v15 = [v9 category];
  if (v14)
  {
    v16 = [v10 containsIndex:v15];
  }

  else
  {
    if (!PLSearchIndexCategoryIsEligibleForSuggestion(v15))
    {
      v17 = 0;
      goto LABEL_6;
    }

    v16 = +[PSISuggestionQueryUtilities isEligibleIndexCategory:forSuggestionWithType:](PSISuggestionQueryUtilities, "isEligibleIndexCategory:forSuggestionWithType:", [v9 category], a4);
  }

  v17 = v16;
LABEL_6:
  v52 = v10;
  if ([v9 category] == 1203 || objc_msgSend(v9, "category") == 1204 || objc_msgSend(v9, "category") == 1205)
  {
    v18 = [v9 contentString];
    v51 = [v18 length] < 3;
  }

  else
  {
    v51 = 0;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v19 = [v11 suggestionComponents];
  v20 = [v19 countByEnumeratingWithState:&v58 objects:v69 count:16];
  v53 = v11;
  if (v20)
  {
    v21 = v20;
    v22 = v13;
    v23 = a4;
    v24 = v17;
    v25 = *v59;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(v19);
        }

        v27 = [*(*(&v58 + 1) + 8 * i) psiGroupId];
        if (v27 == [v9 groupId])
        {
          v28 = 0;
          goto LABEL_20;
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

    v28 = 1;
LABEL_20:
    v17 = v24;
    a4 = v23;
    v13 = v22;
  }

  else
  {
    v28 = 1;
  }

  v29 = [v11 suggestionOptions];
  v30 = [v29 minMatchPercentForCategoriesType:{PLSearchSuggestionCategoriesTypeForSearchIndexCategory(objc_msgSend(v9, "category"))}];
  v31 = 1;
  v32 = a4 - 1;
  if (!v32)
  {
    v33 = v30;
    if (v30)
    {
      v34 = v28;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v35 = [v11 completionSuggestionTexts];
      v36 = [v35 countByEnumeratingWithState:&v54 objects:v68 count:16];
      if (v36)
      {
        v37 = v36;
        v49 = v17;
        v50 = v13;
        v38 = *v55;
        while (2)
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v55 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = [*(*(&v54 + 1) + 8 * j) length];
            v41 = [v9 contentString];
            v42 = ((v40 / [v41 length]) * 100.0);

            if (v33 <= v42)
            {
              v31 = 1;
              goto LABEL_34;
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v54 objects:v68 count:16];
          if (v37)
          {
            continue;
          }

          break;
        }

        v31 = 0;
LABEL_34:
        v13 = v50;
        v17 = v49;
      }

      else
      {
        v31 = 0;
      }

      v28 = v34;
      v32 = 0;
    }
  }

  v43 = v28 & v31 & (((v13 == 0) | v17 ^ 1 | v51) ^ 1);
  if ((v43 & 1) == 0)
  {
    v44 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      if (v32 > 3)
      {
        v45 = @"PLSearchSuggestionTypeNone";
      }

      else
      {
        v45 = off_1E756C590[v32];
      }

      v46 = v45;
      v47 = [v53 formattedSearchText];
      *buf = 138412802;
      v63 = v9;
      v64 = 2112;
      v65 = v46;
      v66 = 2112;
      v67 = v47;
      _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_INFO, "Group is invalid for suggestion of type for query: %@, %@, %@.", buf, 0x20u);
    }
  }

  return v43;
}

+ (id)suggestionCandidatesByIndexCategoryFromSuggestionComponents:(id)a3 suggestionType:(unint64_t)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __106__PSISuggestionQueryUtilities_suggestionCandidatesByIndexCategoryFromSuggestionComponents_suggestionType___block_invoke;
  v14 = &unk_1E756C3D0;
  v15 = v7;
  v16 = a4;
  v8 = v7;
  [v6 enumerateObjectsUsingBlock:&v11];

  v9 = [v8 copy];

  return v9;
}

void __106__PSISuggestionQueryUtilities_suggestionCandidatesByIndexCategoryFromSuggestionComponents_suggestionType___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "indexCategory")}];
  v5 = PLSearchSuggestionCategoriesTypeForSearchIndexCategory([v3 indexCategory]);
  v6 = [PLSearchSuggestion alloc];
  v7 = [v3 contentString];
  v8 = *(a1 + 40);
  v9 = [v3 matchedText];
  v10 = [v3 matchRangeOfSearchText];
  v12 = v11;
  v19[0] = v3;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v14 = [(PLSearchSuggestion *)v6 initWithContentString:v7 categoriesType:v5 suggestionType:v8 matchedAssetsCount:0 matchedCollectionsCount:0 matchedText:v9 matchRangeOfSearchText:v10 suggestionComponents:v12 nextTokenSuggestions:v13, 0];

  v15 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (v15)
  {
    v16 = [*(a1 + 32) objectForKeyedSubscript:v4];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v17 = v16;

  [v17 addObject:v14];
  [*(a1 + 32) setObject:v17 forKeyedSubscript:v4];
}

+ (id)suggestionCandidatesByContentStringFromSuggestionComponents:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__PSISuggestionQueryUtilities_suggestionCandidatesByContentStringFromSuggestionComponents___block_invoke;
  v9[3] = &unk_1E756C358;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __91__PSISuggestionQueryUtilities_suggestionCandidatesByContentStringFromSuggestionComponents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 contentString];
  v9 = [v4 stringByFoldingWithOptions:385 locale:0];

  v5 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (v5)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v7 addObject:v3];
  v8 = [v7 copy];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
}

+ (id)suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents:(id)a3 assetIds:(__CFArray *)a4 collectionIds:(__CFArray *)a5 wantsSuggestionCounts:(BOOL)a6
{
  v9 = a3;
  if ([v9 count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __147__PSISuggestionQueryUtilities_suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents_assetIds_collectionIds_wantsSuggestionCounts___block_invoke;
    v21[3] = &unk_1E756C358;
    v22 = v10;
    v11 = v10;
    [v9 enumerateObjectsUsingBlock:v21];
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __147__PSISuggestionQueryUtilities_suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents_assetIds_collectionIds_wantsSuggestionCounts___block_invoke_2;
    v16[3] = &unk_1E756C3A8;
    v20 = a6;
    v18 = a4;
    v19 = a5;
    v17 = v12;
    v13 = v12;
    [v11 enumerateKeysAndObjectsUsingBlock:v16];
    v14 = [v13 copy];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  return v14;
}

void __147__PSISuggestionQueryUtilities_suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents_assetIds_collectionIds_wantsSuggestionCounts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLSearchSuggestionCategoriesTypeForSearchIndexCategory([v3 indexCategory]);
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    v10 = [v8 objectForKeyedSubscript:v9];
    v14 = [v10 mutableCopy];
  }

  else
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v14 addObject:v3];
  v11 = [v14 copy];
  v12 = *(a1 + 32);
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  [v12 setObject:v11 forKeyedSubscript:v13];
}

void __147__PSISuggestionQueryUtilities_suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents_assetIds_collectionIds_wantsSuggestionCounts___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [PSISuggestionQueryUtilities suggestionCandidatesByContentStringFromSuggestionComponents:a3];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __147__PSISuggestionQueryUtilities_suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents_assetIds_collectionIds_wantsSuggestionCounts___block_invoke_3;
  v11[3] = &unk_1E756C380;
  v15 = *(a1 + 56);
  v7 = *(a1 + 48);
  v12 = v5;
  v14 = v7;
  v10 = *(a1 + 32);
  v8 = v10;
  v13 = v10;
  v9 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];
}

void __147__PSISuggestionQueryUtilities_suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents_assetIds_collectionIds_wantsSuggestionCounts___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v94 = *MEMORY[0x1E69E9840];
  v78 = a2;
  v5 = a3;
  v74 = [*(a1 + 32) unsignedIntegerValue];
  v6 = [v5 firstObject];
  v7 = [v6 suggestionType];
  v8 = [v6 matchRangeOfSearchText];
  v72 = v9;
  v73 = v8;
  v10 = [v6 matchedText];
  v77 = v6;
  v11 = [v6 contentString];
  v12 = *MEMORY[0x1E695E480];
  v13 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
  v14 = CFArrayCreate(v12, 0, 0, 0);
  v84 = v7;
  if (v7 != 2)
  {
    v15 = 0;
    goto LABEL_5;
  }

  v15 = [v5 count] == 1;
  if ([v5 count] < 2)
  {
LABEL_5:
    v86 = 0;
    goto LABEL_6;
  }

  v86 = *(a1 + 64);
LABEL_6:
  v71 = v15;
  v75 = v11;
  v76 = v10;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v16 = v5;
  v82 = v16;
  v85 = [v16 countByEnumeratingWithState:&v89 objects:v93 count:16];
  if (!v85)
  {
    v17 = v14;
    goto LABEL_77;
  }

  v83 = *v90;
  v81 = a1;
  v17 = v14;
  v18 = v86;
  do
  {
    for (i = 0; i != v85; ++i)
    {
      if (*v90 != v83)
      {
        objc_enumerationMutation(v16);
      }

      v20 = [*(*(&v89 + 1) + 8 * i) group];
      v21 = v20;
      if (v84 == 1)
      {
        cf = [v20 intersectedAssetIds];
        v22 = [v21 intersectedCollectionIds];
      }

      else
      {
        v22 = 0;
        cf = 0;
      }

      v87 = v22;
      if (v18)
      {
        Copy = [v21 assetIds];
        if (Copy)
        {
          Copy = CFArrayCreateCopy(0, [v21 assetIds]);
        }

        cf = Copy;
        v24 = [v21 collectionIds];
        if (v24)
        {
          v24 = CFArrayCreateCopy(0, [v21 collectionIds]);
        }

        v87 = v24;
        if (cf)
        {
          v25 = *(a1 + 48);
          if (v25)
          {
            [PLScopedSearchUtilities intersectSortedArray:&cf withOtherSortedArray:v25 intersectionLimit:0];
            v24 = v87;
          }
        }

        if (v24)
        {
          v26 = *(a1 + 56);
          if (v26)
          {
            [PLScopedSearchUtilities intersectSortedArray:&v87 withOtherSortedArray:v26 intersectionLimit:0];
          }
        }
      }

      v27 = cf;
      if (cf)
      {
        if (!v13 || (Count = CFArrayGetCount(v13)) == 0)
        {
          Mutable = CFRetain(v27);
          goto LABEL_43;
        }

        v29 = Count;
        v30 = CFArrayGetCount(v27);
        if (v30)
        {
          v31 = v30;
          v79 = v17;
          Mutable = CFArrayCreateMutable(0, v30 + v29, 0);
          v33 = 0;
          v34 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v13, v33);
            v36 = CFArrayGetValueAtIndex(v27, v34);
            if (ValueAtIndex < v36)
            {
              v37 = ValueAtIndex;
            }

            else
            {
              v37 = v36;
            }

            if (ValueAtIndex <= v36)
            {
              ++v33;
            }

            if (ValueAtIndex >= v36)
            {
              ++v34;
            }

            CFArrayAppendValue(Mutable, v37);
          }

          while (v29 > v33 && v31 > v34);
          v95.location = v33;
          v95.length = v29 - v33;
          CFArrayAppendArray(Mutable, v13, v95);
          v96.length = v31 - v34;
          v96.location = v34;
          CFArrayAppendArray(Mutable, v27, v96);
          v17 = v79;
          a1 = v81;
          v16 = v82;
LABEL_43:
          v39 = CFAutorelease(Mutable);
          v18 = v86;
          if (!v13)
          {
LABEL_47:
            v13 = CFRetain(v39);
            if (v18)
            {
              CFRelease(cf);
            }

            goto LABEL_49;
          }
        }

        else
        {
          v40 = CFRetain(v13);
          v39 = CFAutorelease(v40);
        }

        CFRelease(v13);
        goto LABEL_47;
      }

LABEL_49:
      v41 = v87;
      if (!v87)
      {
        goto LABEL_73;
      }

      if (v17 && (v42 = CFArrayGetCount(v17)) != 0)
      {
        v43 = v42;
        v44 = CFArrayGetCount(v41);
        if (!v44)
        {
          v57 = CFRetain(v17);
          v56 = CFAutorelease(v57);
LABEL_70:
          CFRelease(v17);
          goto LABEL_71;
        }

        v45 = v44;
        v80 = v13;
        v46 = CFArrayCreateMutable(0, v44 + v43, 0);
        v47 = 0;
        v48 = 0;
        do
        {
          v49 = v17;
          v50 = CFArrayGetValueAtIndex(v17, v47);
          v51 = CFArrayGetValueAtIndex(v41, v48);
          v52 = v50 >= v51;
          v53 = v50 > v51;
          if (v50 < v51)
          {
            v54 = v50;
          }

          else
          {
            v54 = v51;
          }

          v17 = v49;
          if (!v53)
          {
            ++v47;
          }

          if (v52)
          {
            ++v48;
          }

          CFArrayAppendValue(v46, v54);
        }

        while (v43 > v47 && v45 > v48);
        v97.location = v47;
        v97.length = v43 - v47;
        CFArrayAppendArray(v46, v49, v97);
        v98.length = v45 - v48;
        v98.location = v48;
        CFArrayAppendArray(v46, v41, v98);
        v13 = v80;
        a1 = v81;
        v16 = v82;
      }

      else
      {
        v46 = CFRetain(v41);
      }

      v56 = CFAutorelease(v46);
      v18 = v86;
      if (v17)
      {
        goto LABEL_70;
      }

LABEL_71:
      v17 = CFRetain(v56);
      if (v18)
      {
        CFRelease(v87);
      }

LABEL_73:
    }

    v85 = [v16 countByEnumeratingWithState:&v89 objects:v93 count:16];
  }

  while (v85);
LABEL_77:

  v58 = v17;
  if (*(a1 + 64) == 1)
  {
    v60 = v75;
    v59 = v76;
    if (v13)
    {
      v61 = CFArrayGetCount(v13);
    }

    else
    {
      v61 = 0;
    }

    if (v58)
    {
      v63 = CFArrayGetCount(v58);
      if (v71)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v63 = 0;
      if (v71)
      {
LABEL_84:
        v64 = [v16 firstObject];
        v61 = [v64 matchedAssetsCount];

        v65 = [v16 firstObject];
        v63 = [v65 matchedCollectionsCount];
      }
    }

    v62 = [[PLSearchSuggestion alloc] initWithContentString:v75 categoriesType:v74 suggestionType:v84 matchedAssetsCount:v61 matchedCollectionsCount:v63 matchedText:v76 matchRangeOfSearchText:v73 suggestionComponents:v72 nextTokenSuggestions:v16, 0];
  }

  else
  {
    v60 = v75;
    v59 = v76;
    v62 = [[PLSearchSuggestion alloc] initWithContentString:v75 categoriesType:v74 suggestionType:v84 matchedAssetsCount:0 matchedCollectionsCount:0 matchedText:v76 matchRangeOfSearchText:v73 suggestionComponents:v72 nextTokenSuggestions:v16, 0];
  }

  v66 = v62;
  v67 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];
  if (v67)
  {
    v68 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 32)];
    v69 = [v68 mutableCopy];

    v16 = v82;
  }

  else
  {
    v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  [v69 addObject:v66];
  v70 = [v69 copy];
  [*(a1 + 40) setObject:v70 forKeyedSubscript:*(a1 + 32)];

  if (v13)
  {
    CFRelease(v13);
  }

  if (v58)
  {
    CFRelease(v58);
  }
}

@end