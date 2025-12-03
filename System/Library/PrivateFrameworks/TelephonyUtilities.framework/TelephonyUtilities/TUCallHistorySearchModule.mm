@interface TUCallHistorySearchModule
- (TUSearchController)searchController;
- (TUSearchResults)searchResults;
- (void)searchForString:(id)string completion:(id)completion;
@end

@implementation TUCallHistorySearchModule

- (void)searchForString:(id)string completion:(id)completion
{
  v62 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  completionCopy = completion;
  [(TUCallHistorySearchModule *)self setSearchComplete:0];
  v8 = [stringCopy length];
  if (v8 && ([(TUCallHistorySearchModule *)self previousSearchString], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    previousSearchString = [(TUCallHistorySearchModule *)self previousSearchString];
    v11 = [stringCopy rangeOfString:previousSearchString];

    v12 = v11 != 0;
  }

  else
  {
    v12 = 1;
  }

  [(TUCallHistorySearchModule *)self setPreviousSearchString:stringCopy];
  currentResultsList = [(TUCallHistorySearchModule *)self currentResultsList];

  v14 = 0x1E695D000uLL;
  v49 = stringCopy;
  selfCopy = self;
  v48 = completionCopy;
  if (!currentResultsList || v12)
  {
    [(TUCallHistorySearchModule *)self setCurrentResultsList:0, completionCopy, stringCopy];
    v15 = +[TUCallHistoryController sharedController];
    recentCalls = [v15 recentCalls];

    if (recentCalls)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recentCalls, "count")}];
      [(TUCallHistorySearchModule *)self setCurrentResultsList:v17];

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v18 = recentCalls;
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
            searchController = [(TUCallHistorySearchModule *)selfCopy searchController];
            [(TUProxyRecentCall *)v23 setSearchController:searchController];

            currentResultsList2 = [(TUCallHistorySearchModule *)selfCopy currentResultsList];
            [currentResultsList2 addObject:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v20);
      }

      stringCopy = v49;
      self = selfCopy;
      completionCopy = v48;
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
      phoneNumberSeparatorCharacterSet = [MEMORY[0x1E696AB08] phoneNumberSeparatorCharacterSet];
      v28 = gPhoneSeparatorCharacterSet;
      gPhoneSeparatorCharacterSet = phoneNumberSeparatorCharacterSet;
    }

    v29 = [stringCopy componentsSeparatedByCharactersInSet:{v48, v49}];
    v30 = [v29 componentsJoinedByString:&stru_1F098C218];
    lowercaseString = [v30 lowercaseString];

    v32 = *(v14 + 3952);
    currentResultsList3 = [(TUCallHistorySearchModule *)self currentResultsList];
    v34 = [v32 arrayWithCapacity:{objc_msgSend(currentResultsList3, "count")}];

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
          callerId = [v39 callerId];
          v41 = [callerId componentsSeparatedByCharactersInSet:gPhoneSeparatorCharacterSet];
          v42 = [v41 componentsJoinedByString:&stru_1F098C218];
          lowercaseString2 = [v42 lowercaseString];

          if ([lowercaseString2 containsString:lowercaseString])
          {
            [v34 addObject:v39];
          }

          else
          {
            backingContact = [v39 backingContact];

            if (backingContact)
            {
              displayName = [v39 displayName];
              lowercaseString3 = [displayName lowercaseString];

              if ([lowercaseString3 containsString:lowercaseString])
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

    self = selfCopy;
    [(TUCallHistorySearchModule *)selfCopy setCurrentResultsList:v34];

    completionCopy = v48;
    stringCopy = v49;
  }

  [(TUCallHistorySearchModule *)self setSearchComplete:1, v48, v49];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, self, 1);
  }

  v47 = *MEMORY[0x1E69E9840];
}

- (TUSearchResults)searchResults
{
  v3 = objc_alloc_init(TUSearchResults);
  searchController = [(TUCallHistorySearchModule *)self searchController];
  [(TUSearchResults *)v3 setSearchController:searchController];

  currentResultsList = [(TUCallHistorySearchModule *)self currentResultsList];
  v6 = [currentResultsList count];

  if (v6)
  {
    v7 = [TUResultGroup alloc];
    v8 = TUBundle();
    v9 = [v8 localizedStringForKey:@"RECENTS" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    currentResultsList2 = [(TUCallHistorySearchModule *)self currentResultsList];
    v11 = [(TUResultGroup *)v7 initWithTitle:v9 results:currentResultsList2];
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