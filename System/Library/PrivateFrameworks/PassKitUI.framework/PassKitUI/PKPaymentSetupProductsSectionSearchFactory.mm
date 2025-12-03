@interface PKPaymentSetupProductsSectionSearchFactory
+ (double)_distanceBetweenTerms:(id)terms andSearchTerms:(id)searchTerms;
+ (id)_cleanedSearchTermsFromString:(id)string usingTokenizerCharacterSet:(id)set;
+ (id)_createSortedSectionsListFromFilteredListItems:(id)items withContext:(id)context prefersCategorizingSectionsByCredentialType:(BOOL)type;
+ (id)_filteredListItemsFromSearchFilter:(id)filter withContext:(id)context listItems:(id)items outSectionIdentifierToSearchRankingMapping:(id *)mapping;
+ (id)generateSectionsWithSearchFilter:(id)filter forItems:(id)items withContext:(id)context prefersCategorizingSectionsByCredentialType:(BOOL)type;
+ (void)_applySortToSectionList:(id)list usingSearchRankingMapping:(id)mapping;
@end

@implementation PKPaymentSetupProductsSectionSearchFactory

+ (id)generateSectionsWithSearchFilter:(id)filter forItems:(id)items withContext:(id)context prefersCategorizingSectionsByCredentialType:(BOOL)type
{
  typeCopy = type;
  v15 = 0;
  contextCopy = context;
  v11 = [self _filteredListItemsFromSearchFilter:filter withContext:contextCopy listItems:items outSectionIdentifierToSearchRankingMapping:&v15];
  v12 = v15;
  v13 = [self _createSortedSectionsListFromFilteredListItems:v11 withContext:contextCopy prefersCategorizingSectionsByCredentialType:typeCopy];

  [self _applySortToSectionList:v13 usingSearchRankingMapping:v12];

  return v13;
}

+ (id)_filteredListItemsFromSearchFilter:(id)filter withContext:(id)context listItems:(id)items outSectionIdentifierToSearchRankingMapping:(id *)mapping
{
  mappingCopy = mapping;
  v57 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  contextCopy = context;
  itemsCopy = items;
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = contextCopy;
  tokenizerCharacterSet = [contextCopy tokenizerCharacterSet];
  v45 = filterCopy;
  v13 = [self _cleanedSearchTermsFromString:filterCopy usingTokenizerCharacterSet:tokenizerCharacterSet];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = itemsCopy;
  v16 = [v15 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v52;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v51 + 1) + 8 * i);
        searchTerms = [v20 searchTerms];
        if ([searchTerms count])
        {
          [self _distanceBetweenTerms:searchTerms andSearchTerms:v13];
          if (v22 < 1.0)
          {
            v23 = [[PKProductSearchResult alloc] initWithListItem:v20 searchDistance:v22];
            [v14 addObject:v23];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v17);
  }

  [v14 sortUsingComparator:&__block_literal_global_33];
  firstObject = [v14 firstObject];
  [firstObject searchDistance];
  v26 = v25 <= 0.3;

  v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v28 = v14;
  v29 = [v28 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = dbl_1BE114920[v26];
    v32 = *v48;
LABEL_13:
    v33 = 0;
    while (1)
    {
      if (*v48 != v32)
      {
        objc_enumerationMutation(v28);
      }

      v34 = *(*(&v47 + 1) + 8 * v33);
      [v34 searchDistance];
      if (v35 > v31)
      {
        break;
      }

      v36 = v35;
      listItem = [v34 listItem];
      [v46 addObject:listItem];
      sectionIdentifier = [listItem sectionIdentifier];
      v39 = [v27 objectForKey:sectionIdentifier];
      if (!v39)
      {
        v39 = objc_alloc_init(PKProductSectionSearchResult);
        [v27 setObject:v39 forKey:sectionIdentifier];
      }

      [(PKProductSectionSearchResult *)v39 searchDistance];
      [(PKProductSectionSearchResult *)v39 setSearchDistance:v36 + v40];
      [(PKProductSectionSearchResult *)v39 setNumberOfResults:[(PKProductSectionSearchResult *)v39 numberOfResults]+ 1];

      if (v30 == ++v33)
      {
        v30 = [v28 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v30)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

  v41 = v27;
  *mappingCopy = v27;

  return v46;
}

uint64_t __146__PKPaymentSetupProductsSectionSearchFactory__filteredListItemsFromSearchFilter_withContext_listItems_outSectionIdentifierToSearchRankingMapping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 searchDistance];
  v7 = v6;
  [v5 searchDistance];
  if (v7 >= v8)
  {
    if (v7 <= v8)
    {
      v10 = [v4 listItem];
      v11 = [v10 title];
      v12 = [v5 listItem];
      v13 = [v12 title];
      v9 = [v11 localizedCaseInsensitiveCompare:v13];
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

+ (id)_createSortedSectionsListFromFilteredListItems:(id)items withContext:(id)context prefersCategorizingSectionsByCredentialType:(BOOL)type
{
  typeCopy = type;
  v29 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = itemsCopy;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        sectionIdentifier = [v11 sectionIdentifier];
        credentialSectionIdentifier = [v11 credentialSectionIdentifier];
        v14 = sectionIdentifier;
        v15 = v14;
        v16 = v14;
        if (typeCopy)
        {
          v16 = v14;
          if (credentialSectionIdentifier)
          {
            v16 = credentialSectionIdentifier;
          }
        }

        v17 = [v6 objectForKey:v16];
        if (!v17)
        {
          v17 = [[PKPaymentSetupProductsSectionListSection alloc] initWithIdentifier:v15 credentialTypeIdentifier:credentialSectionIdentifier];
          [v6 setObject:v17 forKey:v16];
        }

        sectionListItems = [(PKPaymentSetupProductsSectionListSection *)v17 sectionListItems];
        [sectionListItems addObject:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  allValues = [v6 allValues];
  v20 = [allValues mutableCopy];

  return v20;
}

+ (void)_applySortToSectionList:(id)list usingSearchRankingMapping:(id)mapping
{
  mappingCopy = mapping;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__PKPaymentSetupProductsSectionSearchFactory__applySortToSectionList_usingSearchRankingMapping___block_invoke;
  v7[3] = &unk_1E8013810;
  v8 = mappingCopy;
  v6 = mappingCopy;
  [list sortUsingComparator:v7];
}

uint64_t __96__PKPaymentSetupProductsSectionSearchFactory__applySortToSectionList_usingSearchRankingMapping___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 identifier];
  v7 = [v5 identifier];

  v8 = [*(a1 + 32) objectForKey:v6];
  v9 = [*(a1 + 32) objectForKey:v7];
  [v8 normalizedSearchDistance];
  v11 = v10;
  [v9 normalizedSearchDistance];
  if (v11 < v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 > v12;
  }

  return v13;
}

+ (double)_distanceBetweenTerms:(id)terms andSearchTerms:(id)searchTerms
{
  v39 = *MEMORY[0x1E69E9840];
  termsCopy = terms;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  searchTermsCopy = searchTerms;
  v25 = [searchTermsCopy countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v7 = *v34;
    v8 = 0.0;
    v9 = 0.0;
    v27 = searchTermsCopy;
    v28 = termsCopy;
    v24 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(searchTermsCopy);
        }

        v26 = v10;
        v11 = *(*(&v33 + 1) + 8 * v10);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = termsCopy;
        v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v30;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v29 + 1) + 8 * i);
              v18 = [v17 length];
              currentLocale = [MEMORY[0x1E695DF58] currentLocale];
              v20 = [v17 rangeOfString:v11 options:8 range:0 locale:{v18, currentLocale}];

              if (v20 != 0x7FFFFFFFFFFFFFFFLL)
              {

                searchTermsCopy = v27;
                v22 = 0.0;
                termsCopy = v28;
                goto LABEL_20;
              }

              v8 = v8 + 1.0;
              [v17 pk_normalizedLevenshteinDistanceFromString:v11 decimalPlaces:1];
              v9 = v9 + v21;
            }

            v14 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v10 = v26 + 1;
        searchTermsCopy = v27;
        termsCopy = v28;
        v7 = v24;
      }

      while (v26 + 1 != v25);
      v25 = [v27 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  v22 = v9 / v8;
LABEL_20:

  return v22;
}

+ (id)_cleanedSearchTermsFromString:(id)string usingTokenizerCharacterSet:(id)set
{
  v21 = *MEMORY[0x1E69E9840];
  setCopy = set;
  localizedLowercaseString = [string localizedLowercaseString];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [localizedLowercaseString componentsSeparatedByCharactersInSet:{setCopy, 0}];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 length])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

@end