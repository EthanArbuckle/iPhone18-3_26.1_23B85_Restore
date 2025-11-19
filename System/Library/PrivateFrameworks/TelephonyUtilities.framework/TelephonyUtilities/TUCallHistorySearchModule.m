@interface TUCallHistorySearchModule
- (TUSearchController)searchController;
- (TUSearchResults)searchResults;
- (void)searchForString:(id)a3 completion:(id)a4;
@end

@implementation TUCallHistorySearchModule

- (void)searchForString:(id)a3 completion:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(TUCallHistorySearchModule *)self setSearchComplete:0];
  v8 = [v6 length];
  if (v8 && ([(TUCallHistorySearchModule *)self previousSearchString], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [(TUCallHistorySearchModule *)self previousSearchString];
    v11 = [v6 rangeOfString:v10];

    v12 = v11 != 0;
  }

  else
  {
    v12 = 1;
  }

  [(TUCallHistorySearchModule *)self setPreviousSearchString:v6];
  v13 = [(TUCallHistorySearchModule *)self currentResultsList];

  v14 = 0x1E695D000uLL;
  v49 = v6;
  v50 = self;
  v48 = v7;
  if (!v13 || v12)
  {
    [(TUCallHistorySearchModule *)self setCurrentResultsList:0, v7, v6];
    v15 = +[TUCallHistoryController sharedController];
    v16 = [v15 recentCalls];

    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
      [(TUCallHistorySearchModule *)self setCurrentResultsList:v17];

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v57;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v57 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [[TUProxyRecentCall alloc] initWithRecentCall:*(*(&v56 + 1) + 8 * i)];
            v24 = [(TUCallHistorySearchModule *)v50 searchController];
            [(TUProxyRecentCall *)v23 setSearchController:v24];

            v25 = [(TUCallHistorySearchModule *)v50 currentResultsList];
            [v25 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v20);
      }

      v6 = v49;
      self = v50;
      v7 = v48;
      v14 = 0x1E695D000;
    }

    else
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(TUCallHistorySearchModule *)self setCurrentResultsList:v26];
    }
  }

  if (v8)
  {
    if (!gPhoneSeparatorCharacterSet)
    {
      v27 = [MEMORY[0x1E696AB08] phoneNumberSeparatorCharacterSet];
      v28 = gPhoneSeparatorCharacterSet;
      gPhoneSeparatorCharacterSet = v27;
    }

    v29 = [v6 componentsSeparatedByCharactersInSet:{v48, v49}];
    v30 = [v29 componentsJoinedByString:&stru_1F098C218];
    v31 = [v30 lowercaseString];

    v32 = *(v14 + 3952);
    v33 = [(TUCallHistorySearchModule *)self currentResultsList];
    v34 = [v32 arrayWithCapacity:{objc_msgSend(v33, "count")}];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(TUCallHistorySearchModule *)self currentResultsList];
    v35 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v53;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v52 + 1) + 8 * j);
          v40 = [v39 callerId];
          v41 = [v40 componentsSeparatedByCharactersInSet:gPhoneSeparatorCharacterSet];
          v42 = [v41 componentsJoinedByString:&stru_1F098C218];
          v43 = [v42 lowercaseString];

          if ([v43 containsString:v31])
          {
            [v34 addObject:v39];
          }

          else
          {
            v44 = [v39 backingContact];

            if (v44)
            {
              v45 = [v39 displayName];
              v46 = [v45 lowercaseString];

              if ([v46 containsString:v31])
              {
                [v34 addObject:v39];
              }
            }
          }
        }

        v36 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v36);
    }

    self = v50;
    [(TUCallHistorySearchModule *)v50 setCurrentResultsList:v34];

    v7 = v48;
    v6 = v49;
  }

  [(TUCallHistorySearchModule *)self setSearchComplete:1, v48, v49];
  if (v7)
  {
    v7[2](v7, self, 1);
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (TUSearchResults)searchResults
{
  v3 = objc_alloc_init(TUSearchResults);
  v4 = [(TUCallHistorySearchModule *)self searchController];
  [(TUSearchResults *)v3 setSearchController:v4];

  v5 = [(TUCallHistorySearchModule *)self currentResultsList];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [TUResultGroup alloc];
    v8 = TUBundle();
    v9 = [v8 localizedStringForKey:@"RECENTS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    v10 = [(TUCallHistorySearchModule *)self currentResultsList];
    v11 = [(TUResultGroup *)v7 initWithTitle:v9 results:v10];
    [(TUSearchResults *)v3 addResultGroup:v11];
  }

  return v3;
}

- (TUSearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

@end