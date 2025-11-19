@interface PKPaymentSetupProductsSectionSearchFactory
+ (double)_distanceBetweenTerms:(id)a3 andSearchTerms:(id)a4;
+ (id)_cleanedSearchTermsFromString:(id)a3 usingTokenizerCharacterSet:(id)a4;
+ (id)_createSortedSectionsListFromFilteredListItems:(id)a3 withContext:(id)a4 prefersCategorizingSectionsByCredentialType:(BOOL)a5;
+ (id)_filteredListItemsFromSearchFilter:(id)a3 withContext:(id)a4 listItems:(id)a5 outSectionIdentifierToSearchRankingMapping:(id *)a6;
+ (id)generateSectionsWithSearchFilter:(id)a3 forItems:(id)a4 withContext:(id)a5 prefersCategorizingSectionsByCredentialType:(BOOL)a6;
+ (void)_applySortToSectionList:(id)a3 usingSearchRankingMapping:(id)a4;
@end

@implementation PKPaymentSetupProductsSectionSearchFactory

+ (id)generateSectionsWithSearchFilter:(id)a3 forItems:(id)a4 withContext:(id)a5 prefersCategorizingSectionsByCredentialType:(BOOL)a6
{
  v6 = a6;
  v15 = 0;
  v10 = a5;
  v11 = [a1 _filteredListItemsFromSearchFilter:a3 withContext:v10 listItems:a4 outSectionIdentifierToSearchRankingMapping:&v15];
  v12 = v15;
  v13 = [a1 _createSortedSectionsListFromFilteredListItems:v11 withContext:v10 prefersCategorizingSectionsByCredentialType:v6];

  [a1 _applySortToSectionList:v13 usingSearchRankingMapping:v12];

  return v13;
}

+ (id)_filteredListItemsFromSearchFilter:(id)a3 withContext:(id)a4 listItems:(id)a5 outSectionIdentifierToSearchRankingMapping:(id *)a6
{
  v43 = a6;
  v57 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = v10;
  v12 = [v10 tokenizerCharacterSet];
  v45 = v9;
  v13 = [a1 _cleanedSearchTermsFromString:v9 usingTokenizerCharacterSet:v12];

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v15 = v11;
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
        v21 = [v20 searchTerms];
        if ([v21 count])
        {
          [a1 _distanceBetweenTerms:v21 andSearchTerms:v13];
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
  v24 = [v14 firstObject];
  [v24 searchDistance];
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
      v37 = [v34 listItem];
      [v46 addObject:v37];
      v38 = [v37 sectionIdentifier];
      v39 = [v27 objectForKey:v38];
      if (!v39)
      {
        v39 = objc_alloc_init(PKProductSectionSearchResult);
        [v27 setObject:v39 forKey:v38];
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
  *v43 = v27;

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

+ (id)_createSortedSectionsListFromFilteredListItems:(id)a3 withContext:(id)a4 prefersCategorizingSectionsByCredentialType:(BOOL)a5
{
  v23 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
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
        v12 = [v11 sectionIdentifier];
        v13 = [v11 credentialSectionIdentifier];
        v14 = v12;
        v15 = v14;
        v16 = v14;
        if (v23)
        {
          v16 = v14;
          if (v13)
          {
            v16 = v13;
          }
        }

        v17 = [v6 objectForKey:v16];
        if (!v17)
        {
          v17 = [[PKPaymentSetupProductsSectionListSection alloc] initWithIdentifier:v15 credentialTypeIdentifier:v13];
          [v6 setObject:v17 forKey:v16];
        }

        v18 = [(PKPaymentSetupProductsSectionListSection *)v17 sectionListItems];
        [v18 addObject:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v19 = [v6 allValues];
  v20 = [v19 mutableCopy];

  return v20;
}

+ (void)_applySortToSectionList:(id)a3 usingSearchRankingMapping:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __96__PKPaymentSetupProductsSectionSearchFactory__applySortToSectionList_usingSearchRankingMapping___block_invoke;
  v7[3] = &unk_1E8013810;
  v8 = v5;
  v6 = v5;
  [a3 sortUsingComparator:v7];
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

+ (double)_distanceBetweenTerms:(id)a3 andSearchTerms:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = a4;
  v25 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v7 = *v34;
    v8 = 0.0;
    v9 = 0.0;
    v27 = v6;
    v28 = v5;
    v24 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v26 = v10;
        v11 = *(*(&v33 + 1) + 8 * v10);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v12 = v5;
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
              v19 = [MEMORY[0x1E695DF58] currentLocale];
              v20 = [v17 rangeOfString:v11 options:8 range:0 locale:{v18, v19}];

              if (v20 != 0x7FFFFFFFFFFFFFFFLL)
              {

                v6 = v27;
                v22 = 0.0;
                v5 = v28;
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
        v6 = v27;
        v5 = v28;
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

+ (id)_cleanedSearchTermsFromString:(id)a3 usingTokenizerCharacterSet:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 localizedLowercaseString];
  v7 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 componentsSeparatedByCharactersInSet:{v5, 0}];
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