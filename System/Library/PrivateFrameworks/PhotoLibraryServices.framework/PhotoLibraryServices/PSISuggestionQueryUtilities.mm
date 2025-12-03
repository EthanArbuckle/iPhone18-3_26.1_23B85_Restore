@interface PSISuggestionQueryUtilities
+ (BOOL)groupIsValidForSuggestionGeneration:(id)generation suggestionType:(unint64_t)type allowedIndexCategories:(id)categories suggestionQuery:(id)query;
+ (BOOL)groupWithAssetCountMeetsAssetMatchThreshold:(unint64_t)threshold assetSearchResultsCount:(unint64_t)count;
+ (BOOL)isEligibleIndexCategory:(unint64_t)category forSuggestionWithType:(unint64_t)type;
+ (BOOL)rangeExists:(_NSRange)exists forString:(id)string;
+ (BOOL)suggestionCategoriesPairingIsValid:(unint64_t)valid otherCategory:(unint64_t)category;
+ (id)_dateFilterFromStartDateComponents:(id)components endDateComponents:(id)dateComponents;
+ (id)_filterGroups:(id)groups forExcludedIndexCategories:(id)categories forRestrictedIndexCategories:(id)indexCategories;
+ (id)allowedIndexCategoriesForPairedLocationPrimarySuggestions;
+ (id)allowedIndexCategoriesForPairedLocationSecondarySuggestions;
+ (id)dedupedSuggestionComponentsFromSuggestionComponentsMap:(id)map;
+ (id)excludedLocationCategoriesForPairedLocationPrimarySuggestions;
+ (id)mapKeyForSuggestionComponent:(id)component;
+ (id)searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet:(id)set;
+ (id)sortLocationSuggestions:(id)suggestions;
+ (id)suggestionCandidatesByContentStringFromSuggestionComponents:(id)components;
+ (id)suggestionCandidatesByIndexCategoryFromSuggestionComponents:(id)components suggestionType:(unint64_t)type;
+ (id)suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents:(id)components assetIds:(__CFArray *)ids collectionIds:(__CFArray *)collectionIds wantsSuggestionCounts:(BOOL)counts;
+ (id)suggestionComponentForCompletionSuggestionDateComponents:(id)components rangeOfCompletionSuggestionDateComponentsInSearchText:(_NSRange)text searchQueryAssetIds:(__CFArray *)ids suggestionQuery:(id)query photosEntityStore:(id)store;
+ (id)suggestionComponentFromGroup:(id)group completionText:(id)text suggestionQuery:(id)query suggestionOptions:(id)options matchRange:(_NSRange)range requiresScopedUUIDs:(BOOL)ds generateAssetSuggestions:(BOOL)suggestions generateCollectionSuggestions:(BOOL)self0 searchQueryAssetIds:(__CFArray *)self1 searchQueryCollectionIds:(__CFArray *)self2;
+ (id)suggestionGroupsForSearchText:(id)text requireExactMatches:(BOOL)matches leadingAnchored:(BOOL)anchored restrictedIndexCategories:(id)categories excludedIndexCategories:(id)indexCategories suggestionResultTypes:(unint64_t)types psiQueryDelegate:(id)delegate;
+ (unint64_t)_matchTypeForCompletionSuggestionText:(id)text matchRange:(_NSRange)range completionTexts:(id)texts;
+ (unint64_t)locationPairingScore:(id)score otherLocationSuggestion:(id)suggestion;
+ (unint64_t)scoreForLocationSuggestionStringLength:(id)length;
+ (unint64_t)suggestionPairingTypeForSuggestionOptions:(id)options;
+ (void)_categorizeCompletionTexts:(id)texts completion:(id)completion;
@end

@implementation PSISuggestionQueryUtilities

+ (BOOL)suggestionCategoriesPairingIsValid:(unint64_t)valid otherCategory:(unint64_t)category
{
  if (valid == 11 && category == 10 || valid == 10 && category == 11 || valid == 13 && category == 12)
  {
    return 0;
  }

  return valid != 12 || category != 13;
}

+ (id)sortLocationSuggestions:(id)suggestions
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  suggestionsCopy = suggestions;
  v5 = [[v3 alloc] initWithKey:@"score" ascending:0];
  v6 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"matchedAssetsCount" ascending:0];
  v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"contentString" ascending:1];
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v9 = [suggestionsCopy sortedArrayUsingDescriptors:v8];

  return v9;
}

+ (unint64_t)locationPairingScore:(id)score otherLocationSuggestion:(id)suggestion
{
  scoreCopy = score;
  suggestionCopy = suggestion;
  suggestionComponents = [scoreCopy suggestionComponents];
  firstObject = [suggestionComponents firstObject];
  indexCategory = [firstObject indexCategory];

  suggestionComponents2 = [suggestionCopy suggestionComponents];
  firstObject2 = [suggestionComponents2 firstObject];
  indexCategory2 = [firstObject2 indexCategory];

  v14 = +[PSISuggestionQueryUtilities allowedIndexCategoriesForPairedLocationPrimarySuggestions];
  v15 = +[PSISuggestionQueryUtilities allowedIndexCategoriesForPairedLocationSecondarySuggestions];
  if (indexCategory == indexCategory2 || ([self suggestionCategoriesPairingIsValid:indexCategory otherCategory:indexCategory2] & 1) != 0)
  {
    goto LABEL_3;
  }

  if (indexCategory < indexCategory2)
  {
    if ([v14 containsIndex:indexCategory] && (objc_msgSend(v15, "containsIndex:", indexCategory2) & 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_3:
    Count = 0;
    goto LABEL_4;
  }

  if (![v14 containsIndex:indexCategory2] || !objc_msgSend(v15, "containsIndex:", indexCategory))
  {
    goto LABEL_3;
  }

LABEL_11:
  if ((indexCategory - indexCategory2) >= 0)
  {
    v18 = indexCategory - indexCategory2;
  }

  else
  {
    v18 = indexCategory2 - indexCategory;
  }

  suggestionComponents3 = [scoreCopy suggestionComponents];
  firstObject3 = [suggestionComponents3 firstObject];
  group = [firstObject3 group];

  suggestionComponents4 = [suggestionCopy suggestionComponents];
  firstObject4 = [suggestionComponents4 firstObject];
  group2 = [firstObject4 group];

  if ([group assetIds])
  {
    v25 = CFArrayGetCount([group assetIds]) == 0;
  }

  else
  {
    v25 = 1;
  }

  if ([group2 assetIds] && (!CFArrayGetCount(objc_msgSend(group2, "assetIds")) ? (v26 = 1) : (v26 = v25), (v26 & 1) == 0))
  {
    theArray = CFArrayCreateCopy(0, [group assetIds]);
    +[PLScopedSearchUtilities intersectSortedArray:withOtherSortedArray:intersectionLimit:](PLScopedSearchUtilities, "intersectSortedArray:withOtherSortedArray:intersectionLimit:", &theArray, [group2 assetIds], 100);
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

      contentString = [scoreCopy contentString];
      v31 = [PSISuggestionQueryUtilities scoreForLocationSuggestionStringLength:contentString];

      contentString2 = [suggestionCopy contentString];
      v33 = [PSISuggestionQueryUtilities scoreForLocationSuggestionStringLength:contentString2];

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

+ (unint64_t)scoreForLocationSuggestionStringLength:(id)length
{
  result = [length length];
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
  allowedIndexCategoriesForPairedLocationPrimarySuggestions = [self allowedIndexCategoriesForPairedLocationPrimarySuggestions];
  v3 = PLSearchIndexCategoriesForPLSearchSuggestionCategoriesType(1);
  v4 = [v3 mutableCopy];

  [v4 removeIndexes:allowedIndexCategoriesForPairedLocationPrimarySuggestions];
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

+ (unint64_t)suggestionPairingTypeForSuggestionOptions:(id)options
{
  optionsCopy = options;
  v4 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([optionsCopy wantsPairedSuggestions])
  {
    suggestionCategories = [optionsCopy suggestionCategories];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__PSISuggestionQueryUtilities_suggestionPairingTypeForSuggestionOptions___block_invoke;
    v7[3] = &unk_1E756C420;
    v7[4] = &v8;
    [suggestionCategories enumerateIndexesUsingBlock:v7];

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

+ (id)_filterGroups:(id)groups forExcludedIndexCategories:(id)categories forRestrictedIndexCategories:(id)indexCategories
{
  v24 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  categoriesCopy = categories;
  indexCategoriesCopy = indexCategories;
  if ([categoriesCopy count] || objc_msgSend(indexCategoriesCopy, "count"))
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = groupsCopy;
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
          if ((![categoriesCopy count] || (objc_msgSend(categoriesCopy, "containsIndex:", objc_msgSend(v16, "category")) & 1) == 0) && (!objc_msgSend(indexCategoriesCopy, "count") || objc_msgSend(indexCategoriesCopy, "containsIndex:", objc_msgSend(v16, "category"))))
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
    v17 = groupsCopy;
  }

  return v17;
}

+ (void)_categorizeCompletionTexts:(id)texts completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  textsCopy = texts;
  completionCopy = completion;
  if ([textsCopy count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = textsCopy;
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
      completionCopy[2](completionCopy, v10, v23);
    }

    else
    {
      completionCopy[2](completionCopy, v10, 0);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

+ (id)searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet:(id)set
{
  v3 = MEMORY[0x1E696AD50];
  setCopy = set;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __105__PSISuggestionQueryUtilities_searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet___block_invoke;
  v9[3] = &unk_1E7576338;
  v10 = v5;
  v6 = v5;
  [setCopy enumerateIndexesUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __105__PSISuggestionQueryUtilities_searchIndexCategoriesIndexSetFromPLSearchSuggestionCategoriesTypeIndexSet___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = PLSearchIndexCategoriesForPLSearchSuggestionCategoriesType(a2);
  [v2 addIndexes:v3];
}

+ (unint64_t)_matchTypeForCompletionSuggestionText:(id)text matchRange:(_NSRange)range completionTexts:(id)texts
{
  length = range.length;
  location = range.location;
  v38 = *MEMORY[0x1E69E9840];
  textCopy = text;
  textsCopy = texts;
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
  [self _categorizeCompletionTexts:textsCopy completion:v19];
  if (![v27[5] length])
  {
    v11 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = textsCopy;
      v34 = 2112;
      v35 = textCopy;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Unexpected nil full completion text for completion texts: %@, unable to determine match type for suggestion: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  if (([self rangeExists:location forString:{length, v27[5]}] & 1) == 0)
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
      v37 = textCopy;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Out of bound match range %@ detected for full completion text: %@, unable to determine match type for suggestion: %@", buf, 0x20u);
    }

    goto LABEL_15;
  }

  v11 = [v27[5] substringWithRange:{location, length}];
  if ([v11 isEqualToString:v27[5]])
  {
    localizedLowercaseString = [textCopy localizedLowercaseString];
    localizedLowercaseString2 = [v27[5] localizedLowercaseString];
    v14 = [localizedLowercaseString hasPrefix:localizedLowercaseString2];

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

  if ([textCopy hasPrefix:v11])
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

+ (id)_dateFilterFromStartDateComponents:(id)components endDateComponents:(id)dateComponents
{
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  if (!(componentsCopy | dateComponentsCopy))
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

  v7 = [componentsCopy day] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "year") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(componentsCopy, "era") == 0x7FFFFFFFFFFFFFFFLL;
  if ([dateComponentsCopy day] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(dateComponentsCopy, "month") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(dateComponentsCopy, "year") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [dateComponentsCopy era];
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
        if (!componentsCopy)
        {
          goto LABEL_10;
        }

        v14 = [[PSIDateFilter alloc] initWithStartDateComponents:componentsCopy];
        goto LABEL_35;
      }

LABEL_28:
      v15 = [PSIDateFilter alloc];
      if (componentsCopy && dateComponentsCopy)
      {
        v14 = [(PSIDateFilter *)v15 initWithStartDateComponents:componentsCopy endDateComponents:dateComponentsCopy];
      }

      else
      {
        if (componentsCopy)
        {
          v16 = componentsCopy;
        }

        else
        {
          v16 = dateComponentsCopy;
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

  if (!dateComponentsCopy)
  {
    goto LABEL_10;
  }

  v14 = [[PSIDateFilter alloc] initWithEndDateComponents:dateComponentsCopy];
LABEL_35:
  v11 = v14;
LABEL_36:

  return v11;
}

+ (id)mapKeyForSuggestionComponent:(id)component
{
  v3 = MEMORY[0x1E696AEC0];
  componentCopy = component;
  contentString = [componentCopy contentString];
  indexCategory = [componentCopy indexCategory];
  lookupIdentifier = [componentCopy lookupIdentifier];

  v8 = &stru_1F0F06D80;
  if (lookupIdentifier)
  {
    v8 = lookupIdentifier;
  }

  v9 = [v3 stringWithFormat:@"%@-%tu-%@", contentString, indexCategory, v8];

  return v9;
}

+ (id)dedupedSuggestionComponentsFromSuggestionComponentsMap:(id)map
{
  v3 = MEMORY[0x1E695DF70];
  mapCopy = map;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __86__PSISuggestionQueryUtilities_dedupedSuggestionComponentsFromSuggestionComponentsMap___block_invoke;
  v9[3] = &unk_1E7576760;
  v10 = v5;
  v6 = v5;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v9];

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

+ (id)suggestionComponentForCompletionSuggestionDateComponents:(id)components rangeOfCompletionSuggestionDateComponentsInSearchText:(_NSRange)text searchQueryAssetIds:(__CFArray *)ids suggestionQuery:(id)query photosEntityStore:(id)store
{
  length = text.length;
  location = text.location;
  v37 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  queryCopy = query;
  storeCopy = store;
  v15 = [componentsCopy count];
  if (storeCopy && queryCopy && ids && v15 && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([componentsCopy count])
    {
      v16 = [componentsCopy objectAtIndexedSubscript:0];
    }

    else
    {
      v16 = 0;
    }

    if ([componentsCopy count] < 2)
    {
      v18 = 0;
    }

    else
    {
      v18 = [componentsCopy objectAtIndexedSubscript:1];
    }

    v33 = v18;
    v19 = [PSISuggestionQueryUtilities _dateFilterFromStartDateComponents:v16 endDateComponents:v18];
    originalSearchText = [queryCopy originalSearchText];
    string = [originalSearchText string];
    v32 = length;
    v22 = [string substringWithRange:{location, length}];

    v23 = [[PSIGroup alloc] initWithContentString:v22 lookupIdentifier:0 category:1102 score:0.0];
    if (v19 && (v24 = CFArrayGetCount(ids)) != 0)
    {
      v25 = v24;
      v31 = v23;
      v26 = [storeCopy assetIdsWithDateFilter:v19];
      *buf = v26;
      if (v26 && (v27 = v26, CFArrayGetCount(v26) >= 1) && (CFRetain(v27), [PLScopedSearchUtilities intersectSortedArray:buf withOtherSortedArray:ids intersectionLimit:0], Count = CFArrayGetCount(*buf), Count - 1 < v25))
      {
        v29 = Count;
        [(PSIGroup *)v31 updateWithIntersectedIds:*buf searchResultType:1];
        v23 = v31;
        v17 = [[PLSearchSuggestionComponent alloc] initWithGroup:v31 matchedAssetsCount:v29 matchedCollectionsCount:0 suggestionType:1 completionSuggestionDateComponents:componentsCopy matchedText:v22 matchRangeOfSearchText:location matchType:v32, 1];
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
      *&buf[4] = componentsCopy;
      v35 = 2112;
      v36 = queryCopy;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Unable to generate component from date components: %@ for suggestion query: %@", buf, 0x16u);
    }

    v17 = 0;
  }

  return v17;
}

+ (id)suggestionComponentFromGroup:(id)group completionText:(id)text suggestionQuery:(id)query suggestionOptions:(id)options matchRange:(_NSRange)range requiresScopedUUIDs:(BOOL)ds generateAssetSuggestions:(BOOL)suggestions generateCollectionSuggestions:(BOOL)self0 searchQueryAssetIds:(__CFArray *)self1 searchQueryCollectionIds:(__CFArray *)self2
{
  length = range.length;
  location = range.location;
  suggestionsCopy = suggestions;
  v46 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  textCopy = text;
  queryCopy = query;
  v20 = queryCopy;
  if (groupCopy && queryCopy)
  {
    v41 = length;
    v21 = 0;
    if (![PSISuggestionQueryUtilities groupIsValidForSuggestionGeneration:groupCopy suggestionType:1 allowedIndexCategories:0 suggestionQuery:queryCopy])
    {
      goto LABEL_57;
    }

    if (ids)
    {
      Count = CFArrayGetCount(ids);
      if (collectionIds)
      {
LABEL_6:
        v22 = CFArrayGetCount(collectionIds);
        goto LABEL_12;
      }
    }

    else
    {
      Count = 0;
      if (collectionIds)
      {
        goto LABEL_6;
      }
    }

    v22 = 0;
LABEL_12:
    if ([groupCopy assetIds])
    {
      v39 = CFArrayGetCount([groupCopy assetIds]) != 0;
    }

    else
    {
      v39 = 0;
    }

    if ([groupCopy collectionIds])
    {
      v40 = CFArrayGetCount([groupCopy collectionIds]) != 0;
    }

    else
    {
      v40 = 0;
    }

    if ([groupCopy intersectedAssetIds] && CFArrayGetCount(objc_msgSend(groupCopy, "intersectedAssetIds")))
    {
      v37 = location;
      v24 = PLSearchBackendQueryGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [v20 formattedSearchText];
        v25 = v36 = v22;
        *buf = 138412546;
        *&buf[4] = groupCopy;
        v44 = 2112;
        v45 = v25;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Erroneous group with non-zero intersected assetIds: %@ for query: %@.", buf, 0x16u);

        v22 = v36;
      }

      location = v37;
    }

    Copy = [groupCopy assetIds];
    if (Copy)
    {
      Copy = CFArrayCreateCopy(0, [groupCopy assetIds]);
    }

    *buf = Copy;
    if (suggestions)
    {
      if (ds)
      {
        [PLScopedSearchUtilities intersectSortedArray:buf withOtherSortedArray:ids intersectionLimit:0];
        suggestionsCopy = 0;
        if (ids && *buf)
        {
          if (CFArrayGetCount(*buf) - 1 >= Count)
          {
            suggestionsCopy = 0;
          }

          else
          {
            [groupCopy resetIntersectedIds];
            suggestionsCopy = 1;
            [groupCopy updateWithIntersectedIds:*buf searchResultType:1];
          }
        }
      }

      else
      {
        suggestionsCopy = [groupCopy assetIds] != 0 && v39;
      }
    }

    collectionIds = [groupCopy collectionIds];
    if (collectionIds)
    {
      collectionIds = CFArrayCreateCopy(0, [groupCopy collectionIds]);
    }

    theArray = collectionIds;
    if (collectionSuggestions)
    {
      if (ds)
      {
        [PLScopedSearchUtilities intersectSortedArray:&theArray withOtherSortedArray:collectionIds intersectionLimit:0];
        v28 = 0;
        if (collectionIds && theArray)
        {
          if (CFArrayGetCount(theArray) - 1 < v22)
          {
            [groupCopy resetIntersectedIds];
            [groupCopy updateWithIntersectedIds:theArray searchResultType:2];
            v28 = 1;
            goto LABEL_43;
          }

          goto LABEL_40;
        }
      }

      else
      {
        v28 = [groupCopy collectionIds] != 0 && v40;
      }

LABEL_42:
      if ((suggestionsCopy | v28) != 1)
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
        contentString = [groupCopy contentString];
        completionSuggestionTexts = [v20 completionSuggestionTexts];
        v31 = [PSISuggestionQueryUtilities _matchTypeForCompletionSuggestionText:contentString matchRange:location completionTexts:v41, completionSuggestionTexts];
      }

      else
      {
        v31 = 0;
      }

      v32 = [PLSearchSuggestionComponent alloc];
      if (suggestionsCopy)
      {
        v33 = CFArrayGetCount(*buf);
        if (!v28)
        {
LABEL_49:
          v34 = 0;
LABEL_52:
          v21 = [(PLSearchSuggestionComponent *)v32 initWithGroup:groupCopy matchedAssetsCount:v33 matchedCollectionsCount:v34 suggestionType:1 completionSuggestionDateComponents:0 matchedText:textCopy matchRangeOfSearchText:location matchType:v41, v31];
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
    *&buf[4] = groupCopy;
    v44 = 2112;
    v45 = v20;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Unable to generate component from group: %@ for suggestion query: %@", buf, 0x16u);
  }

  v21 = 0;
LABEL_57:

  return v21;
}

+ (id)suggestionGroupsForSearchText:(id)text requireExactMatches:(BOOL)matches leadingAnchored:(BOOL)anchored restrictedIndexCategories:(id)categories excludedIndexCategories:(id)indexCategories suggestionResultTypes:(unint64_t)types psiQueryDelegate:(id)delegate
{
  anchoredCopy = anchored;
  matchesCopy = matches;
  v41 = *MEMORY[0x1E69E9840];
  textCopy = text;
  categoriesCopy = categories;
  indexCategoriesCopy = indexCategories;
  delegateCopy = delegate;
  v19 = [textCopy length];
  if (delegateCopy)
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
      v38 = textCopy;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Unable to fetch groups for search text: %@", buf, 0xCu);
    }

    v21 = MEMORY[0x1E695E0F0];
  }

  else
  {
    selfCopy = self;
    lowercaseString = [textCopy lowercaseString];
    v36 = matchesCopy;
    v23 = [PSITokenizer fts5StringFromString:lowercaseString useWildcard:!matchesCopy leadingAnchored:anchoredCopy orderInsensitive:0];

    v24 = [delegateCopy groupIdsMatchingFTSString:v23 categories:0 textIsSearchable:1];
    v25 = PLSearchBackendQueryGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v38 = [v24 count];
      v39 = 2112;
      v40 = textCopy;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "Found %tu groups for suggestion text: %@.", buf, 0x16u);
    }

    v34 = v24;
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v24, 0}];
    v28 = [delegateCopy groupArraysFromGroupIdSets:v27 dateFilter:0 searchResultTypes:types progressBlock:&__block_literal_global_42904];
    [delegateCopy resetGroupsCache];
    firstObject = [v28 firstObject];
    v30 = categoriesCopy;
    v31 = [selfCopy _filterGroups:firstObject forExcludedIndexCategories:indexCategoriesCopy forRestrictedIndexCategories:categoriesCopy];

    v21 = [PLScopedSearchUtilities removeSynonymsOfOtherGroupsInGroups:v31];

    if (v36)
    {
      v32 = [PLScopedSearchUtilities removeGroupsWithNonExactMatchTextFromGroups:v21 searchText:textCopy];

      v21 = v32;
    }

    categoriesCopy = v30;
  }

  return v21;
}

+ (BOOL)rangeExists:(_NSRange)exists forString:(id)string
{
  length = exists.length;
  location = exists.location;
  stringCopy = string;
  v7 = 0;
  if ([stringCopy length] && location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = location <= [stringCopy length] && location + length <= objc_msgSend(stringCopy, "length");
  }

  return v7;
}

+ (BOOL)groupWithAssetCountMeetsAssetMatchThreshold:(unint64_t)threshold assetSearchResultsCount:(unint64_t)count
{
  v4 = 0;
  if (threshold && count)
  {
    v5 = (threshold / count) * 100.0;
    return v5 <= 65.0 && v5 >= 15.0;
  }

  return v4;
}

+ (BOOL)isEligibleIndexCategory:(unint64_t)category forSuggestionWithType:(unint64_t)type
{
  result = 1;
  if (category <= 1500)
  {
    if (category <= 1101)
    {
      if (category > 0xE)
      {
        goto LABEL_13;
      }

      if (((1 << category) & 0x53C4) != 0)
      {
        return type != 2;
      }

      if (((1 << category) & 0x2801) == 0)
      {
LABEL_13:
        if (category - 1003 >= 6)
        {
          if (category - 1009 >= 2)
          {
            return result;
          }

          return type != 2;
        }
      }

      return 0;
    }

    if (category > 1300)
    {
      if (category - 1301 > 0x1E)
      {
        goto LABEL_32;
      }

      if (((1 << (category - 21)) & 0x40180001) != 0)
      {
        return type != 2;
      }

      if (category != 1310)
      {
LABEL_32:
        if (category - 1400 >= 3)
        {
          return result;
        }

        return type != 2;
      }

      return 0;
    }

    if (category - 1200 < 6)
    {
      return type != 2;
    }

    if (category - 1102 > 7)
    {
      return result;
    }

    v5 = 1 << (category - 78);
    v6 = 201;
LABEL_22:
    if ((v5 & v6) == 0)
    {
      return result;
    }

    return type != 2;
  }

  if (category <= 1899)
  {
    if (category > 1600)
    {
      if (category != 1601 && category != 1611 && category != 1803)
      {
        return result;
      }

      return type != 2;
    }

    if (category - 1501 > 0x28)
    {
      return result;
    }

    v5 = 1 << (category + 35);
    v6 = 0x18060180601;
    goto LABEL_22;
  }

  if (category > 2399)
  {
    if (category <= 2699)
    {
      if (category - 2400 >= 2 && category != 2501 && category != 2601)
      {
        return result;
      }

      return type != 2;
    }

    if (category - 2900 < 2)
    {
      return type != 2;
    }

    if (category != 2700 && category != 2800)
    {
      return result;
    }

    return 0;
  }

  if (category - 1900 <= 0x14 && ((1 << (category - 108)) & 0x1F7FFD) != 0 || category == 2100 || category == 2300)
  {
    return type != 2;
  }

  return result;
}

+ (BOOL)groupIsValidForSuggestionGeneration:(id)generation suggestionType:(unint64_t)type allowedIndexCategories:(id)categories suggestionQuery:(id)query
{
  v70 = *MEMORY[0x1E69E9840];
  generationCopy = generation;
  categoriesCopy = categories;
  queryCopy = query;
  contentString = [generationCopy contentString];
  v13 = [contentString length];

  v14 = [categoriesCopy count];
  category = [generationCopy category];
  if (v14)
  {
    v16 = [categoriesCopy containsIndex:category];
  }

  else
  {
    if (!PLSearchIndexCategoryIsEligibleForSuggestion(category))
    {
      v17 = 0;
      goto LABEL_6;
    }

    v16 = +[PSISuggestionQueryUtilities isEligibleIndexCategory:forSuggestionWithType:](PSISuggestionQueryUtilities, "isEligibleIndexCategory:forSuggestionWithType:", [generationCopy category], type);
  }

  v17 = v16;
LABEL_6:
  v52 = categoriesCopy;
  if ([generationCopy category] == 1203 || objc_msgSend(generationCopy, "category") == 1204 || objc_msgSend(generationCopy, "category") == 1205)
  {
    contentString2 = [generationCopy contentString];
    v51 = [contentString2 length] < 3;
  }

  else
  {
    v51 = 0;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  suggestionComponents = [queryCopy suggestionComponents];
  v20 = [suggestionComponents countByEnumeratingWithState:&v58 objects:v69 count:16];
  v53 = queryCopy;
  if (v20)
  {
    v21 = v20;
    v22 = v13;
    typeCopy = type;
    v24 = v17;
    v25 = *v59;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(suggestionComponents);
        }

        psiGroupId = [*(*(&v58 + 1) + 8 * i) psiGroupId];
        if (psiGroupId == [generationCopy groupId])
        {
          v28 = 0;
          goto LABEL_20;
        }
      }

      v21 = [suggestionComponents countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

    v28 = 1;
LABEL_20:
    v17 = v24;
    type = typeCopy;
    v13 = v22;
  }

  else
  {
    v28 = 1;
  }

  suggestionOptions = [queryCopy suggestionOptions];
  v30 = [suggestionOptions minMatchPercentForCategoriesType:{PLSearchSuggestionCategoriesTypeForSearchIndexCategory(objc_msgSend(generationCopy, "category"))}];
  v31 = 1;
  v32 = type - 1;
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
      completionSuggestionTexts = [queryCopy completionSuggestionTexts];
      v36 = [completionSuggestionTexts countByEnumeratingWithState:&v54 objects:v68 count:16];
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
              objc_enumerationMutation(completionSuggestionTexts);
            }

            v40 = [*(*(&v54 + 1) + 8 * j) length];
            contentString3 = [generationCopy contentString];
            v42 = ((v40 / [contentString3 length]) * 100.0);

            if (v33 <= v42)
            {
              v31 = 1;
              goto LABEL_34;
            }
          }

          v37 = [completionSuggestionTexts countByEnumeratingWithState:&v54 objects:v68 count:16];
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
      formattedSearchText = [v53 formattedSearchText];
      *buf = 138412802;
      v63 = generationCopy;
      v64 = 2112;
      v65 = v46;
      v66 = 2112;
      v67 = formattedSearchText;
      _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_INFO, "Group is invalid for suggestion of type for query: %@, %@, %@.", buf, 0x20u);
    }
  }

  return v43;
}

+ (id)suggestionCandidatesByIndexCategoryFromSuggestionComponents:(id)components suggestionType:(unint64_t)type
{
  v5 = MEMORY[0x1E695DF90];
  componentsCopy = components;
  v7 = objc_alloc_init(v5);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __106__PSISuggestionQueryUtilities_suggestionCandidatesByIndexCategoryFromSuggestionComponents_suggestionType___block_invoke;
  v14 = &unk_1E756C3D0;
  v15 = v7;
  typeCopy = type;
  v8 = v7;
  [componentsCopy enumerateObjectsUsingBlock:&v11];

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

+ (id)suggestionCandidatesByContentStringFromSuggestionComponents:(id)components
{
  v3 = MEMORY[0x1E695DF90];
  componentsCopy = components;
  v5 = objc_alloc_init(v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__PSISuggestionQueryUtilities_suggestionCandidatesByContentStringFromSuggestionComponents___block_invoke;
  v9[3] = &unk_1E756C358;
  v10 = v5;
  v6 = v5;
  [componentsCopy enumerateObjectsUsingBlock:v9];

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

+ (id)suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents:(id)components assetIds:(__CFArray *)ids collectionIds:(__CFArray *)collectionIds wantsSuggestionCounts:(BOOL)counts
{
  componentsCopy = components;
  if ([componentsCopy count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __147__PSISuggestionQueryUtilities_suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents_assetIds_collectionIds_wantsSuggestionCounts___block_invoke;
    v21[3] = &unk_1E756C358;
    v22 = v10;
    v11 = v10;
    [componentsCopy enumerateObjectsUsingBlock:v21];
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __147__PSISuggestionQueryUtilities_suggestionCandidatesBySuggestionCategoriesTypeFromSuggestionComponents_assetIds_collectionIds_wantsSuggestionCounts___block_invoke_2;
    v16[3] = &unk_1E756C3A8;
    countsCopy = counts;
    idsCopy = ids;
    collectionIdsCopy = collectionIds;
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