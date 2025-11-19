@interface WBSRecentWebSearchesController
- (id)_dateThresholdForFiltering;
- (id)_recentSearchDictionariesFromUserDefaultsUsingKey:(id)a3;
- (id)recentSearchesMatchingPrefix:(id)a3;
- (id)recentWebSearchEntries;
- (id)recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView;
- (void)_addRecentSearchEntry:(id)a3;
- (void)_loadRecentSearchesIfNeeded;
- (void)_postClearingNotificationForSearches:(id)a3;
- (void)_pruneRecentSearchesOlderThanOneMonth;
- (void)_saveRecentSearchDictionaries:(id)a3 toUserDefaultsUsingKey:(id)a4;
- (void)_saveRecentSearches;
- (void)addRecentSearch:(id)a3 fromURL:(id)a4;
- (void)clearRecentSearch:(id)a3;
- (void)clearRecentSearches;
- (void)clearRecentSearchesAddedAfterDate:(id)a3;
@end

@implementation WBSRecentWebSearchesController

- (void)addRecentSearch:(id)a3 fromURL:(id)a4
{
  v13 = a3;
  v6 = a4;
  if ([objc_opt_class() _shouldTrackSearches])
  {
    v7 = [MEMORY[0x1E696AB08] safari_whitespaceAndNewlineCharacterSet];
    v8 = [v13 stringByTrimmingCharactersInSet:v7];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [WBSRecentWebSearchEntry alloc];
      v11 = [v6 absoluteString];
      v12 = [(WBSRecentWebSearchEntry *)v10 initWithSearchString:v13 url:v11];
      [(WBSRecentWebSearchesController *)self _addRecentSearchEntry:v12];

      [(WBSRecentWebSearchesController *)self _saveRecentSearches];
    }
  }
}

- (id)recentWebSearchEntries
{
  [(WBSRecentWebSearchesController *)self _loadRecentSearchesIfNeeded];
  recentSearchEntries = self->_recentSearchEntries;

  return recentSearchEntries;
}

- (id)recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView
{
  [(WBSRecentWebSearchesController *)self _loadRecentSearchesIfNeeded];
  v3 = [(WBSRecentWebSearchesController *)self _dateThresholdForFiltering];
  recentSearchEntries = self->_recentSearchEntries;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __112__WBSRecentWebSearchesController_recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView__block_invoke;
  v8[3] = &unk_1E7FC9D00;
  v9 = v3;
  v5 = v3;
  v6 = [(NSMutableArray *)recentSearchEntries safari_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

id __112__WBSRecentWebSearchesController_recentWebSearchEntriesFilteredByTimeIntervalForDisplayInMainRecentSearchesView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 date];
  v5 = [v4 earlierDate:*(a1 + 32)];
  v6 = [v3 date];

  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  if (v5 == v6)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  return v7;
}

- (id)recentSearchesMatchingPrefix:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  [(WBSRecentWebSearchesController *)self _loadRecentSearchesIfNeeded];
  recentSearchEntries = self->_recentSearchEntries;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__WBSRecentWebSearchesController_recentSearchesMatchingPrefix___block_invoke;
  v11[3] = &unk_1E7FC9D28;
  v13 = v5 == 0;
  v7 = v4;
  v12 = v7;
  v8 = recentSearchEntries;
  v9 = [(NSMutableArray *)v8 safari_mapAndFilterObjectsUsingBlock:v11];

  return v9;
}

id __63__WBSRecentWebSearchesController_recentSearchesMatchingPrefix___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 searchString];
  v4 = v3;
  if ((*(a1 + 40) & 1) == 0)
  {
    v5 = [v3 safari_hasCaseInsensitivePrefix:*(a1 + 32)];
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v4;
    }

    v4 = v6;
  }

  return v4;
}

- (void)clearRecentSearches
{
  [(WBSRecentWebSearchesController *)self _loadRecentSearchesIfNeeded];
  if ([(NSMutableArray *)self->_recentSearchEntries count])
  {
    v5 = [(NSMutableArray *)self->_recentSearchEntries copy];
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recentSearchEntries = self->_recentSearchEntries;
    self->_recentSearchEntries = v3;

    [(WBSRecentWebSearchesController *)self _saveRecentSearches];
    [(WBSRecentWebSearchesController *)self _postClearingNotificationForSearches:v5];
  }
}

- (void)clearRecentSearchesAddedAfterDate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WBSRecentWebSearchesController *)self _loadRecentSearchesIfNeeded];
  v5 = [(NSMutableArray *)self->_recentSearchEntries count];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = v5;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_recentSearchEntries;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 date];
        v13 = [v12 compare:v4] == 1;

        if (v13)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_recentSearchEntries removeObjectsInArray:v6];
  if (v14 != [(NSMutableArray *)self->_recentSearchEntries count])
  {
    [(WBSRecentWebSearchesController *)self _saveRecentSearches];
  }

  [(WBSRecentWebSearchesController *)self _postClearingNotificationForSearches:v6];
}

- (void)_postClearingNotificationForSearches:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = WBSRecentSearchesWereClearedNotificationUserInfoKey;
  v8[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v5 postNotificationName:@"RecentSearchesWereCleared" object:self userInfo:v6];
}

- (void)clearRecentSearch:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(WBSRecentWebSearchesController *)self _loadRecentSearchesIfNeeded];
  v13 = [(NSMutableArray *)self->_recentSearchEntries count];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_recentSearchEntries;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 searchString];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_recentSearchEntries removeObjectsInArray:v5];
  if (v13 != [(NSMutableArray *)self->_recentSearchEntries count])
  {
    [(WBSRecentWebSearchesController *)self _saveRecentSearches];
  }

  [(WBSRecentWebSearchesController *)self _postClearingNotificationForSearches:v5];
}

- (void)_addRecentSearchEntry:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [(WBSRecentWebSearchesController *)self _loadRecentSearchesIfNeeded];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_recentSearchEntries;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([v9 isEqual:{v4, v18}])
          {
            v10 = [WBSRecentWebSearchEntry alloc];
            v11 = [v4 searchString];
            v12 = [v4 date];
            v13 = [v4 URLStrings];
            v14 = [v9 URLStrings];
            v15 = [v13 arrayByAddingObjectsFromArray:v14];
            v16 = [(WBSRecentWebSearchEntry *)v10 initWithSearchString:v11 date:v12 URLs:v15];

            v4 = v16;
            goto LABEL_12;
          }
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    [(NSMutableArray *)self->_recentSearchEntries removeObject:v4];
    [(NSMutableArray *)self->_recentSearchEntries insertObject:v4 atIndex:0];
    v17 = [(NSMutableArray *)self->_recentSearchEntries count];
    if (v17 >= 0x15)
    {
      [(NSMutableArray *)self->_recentSearchEntries removeObjectsInRange:20, v17 - 20];
    }
  }
}

- (void)_saveRecentSearches
{
  if (!self->_recentSearchEntries)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recentSearchEntries = self->_recentSearchEntries;
    self->_recentSearchEntries = v3;
  }

  v6 = [(WBSRecentWebSearchesController *)self _recentSearchesDictionaries];
  v5 = [objc_opt_class() _defaultsKey];
  [(WBSRecentWebSearchesController *)self _saveRecentSearchDictionaries:v6 toUserDefaultsUsingKey:v5];
}

id __61__WBSRecentWebSearchesController__recentSearchesDictionaries__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dictionaryRepresentation];

  return v2;
}

- (void)_saveRecentSearchDictionaries:(id)a3 toUserDefaultsUsingKey:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v6 setObject:v7 forKey:v5];
}

- (id)_recentSearchDictionariesFromUserDefaultsUsingKey:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 arrayForKey:v3];

  return v5;
}

- (void)_loadRecentSearchesIfNeeded
{
  if (!self->_recentSearchEntries)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recentSearchEntries = self->_recentSearchEntries;
    self->_recentSearchEntries = v3;

    v5 = [objc_opt_class() _defaultsKey];
    v6 = [(WBSRecentWebSearchesController *)self _recentSearchDictionariesFromUserDefaultsUsingKey:v5];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__WBSRecentWebSearchesController__loadRecentSearchesIfNeeded__block_invoke;
    v7[3] = &unk_1E7FC9D70;
    v7[4] = self;
    [v6 enumerateObjectsWithOptions:2 usingBlock:v7];
    [(WBSRecentWebSearchesController *)self _pruneRecentSearchesOlderThanOneMonth];
    [(WBSRecentWebSearchesController *)self _saveRecentSearches];
  }
}

void __61__WBSRecentWebSearchesController__loadRecentSearchesIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [[WBSRecentWebSearchEntry alloc] initWithDictionaryRepresentation:v5];
    [v3 _addRecentSearchEntry:v4];
  }
}

- (void)_pruneRecentSearchesOlderThanOneMonth
{
  v3 = [objc_opt_class() _ageLimitInDaysForRecentSearches];
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = [MEMORY[0x1E695DEE8] currentCalendar];
    v7 = [v6 dateByAddingUnit:16 value:-v4 toDate:v5 options:0];

    recentSearchEntries = self->_recentSearchEntries;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__WBSRecentWebSearchesController__pruneRecentSearchesOlderThanOneMonth__block_invoke;
    v13[3] = &unk_1E7FC9D00;
    v9 = v7;
    v14 = v9;
    v10 = [(NSMutableArray *)recentSearchEntries safari_mapAndFilterObjectsUsingBlock:v13];
    v11 = [v10 mutableCopy];
    v12 = self->_recentSearchEntries;
    self->_recentSearchEntries = v11;
  }
}

id __71__WBSRecentWebSearchesController__pruneRecentSearchesOlderThanOneMonth__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 date];
  v5 = [v4 earlierDate:*(a1 + 32)];
  v6 = [v3 date];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  if (v7)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  return v8;
}

- (id)_dateThresholdForFiltering
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [v2 dateByAddingUnit:16 value:-7 toDate:v3 options:0];

  return v4;
}

@end