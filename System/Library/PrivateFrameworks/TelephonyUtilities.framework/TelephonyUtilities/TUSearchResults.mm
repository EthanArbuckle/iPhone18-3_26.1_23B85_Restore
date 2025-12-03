@interface TUSearchResults
- (NSArray)allDataItems;
- (NSArray)allSearchItems;
- (TUSearchController)searchController;
- (TUSearchResults)initWithSearchTerm:(id)term shouldAddAdhocResults:(BOOL)results;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resultGroupForSection:(int64_t)section;
- (int64_t)numberOfResults;
- (int64_t)numberOfSections;
- (int64_t)numberOfTableViewRows;
- (void)_clearCaches;
- (void)addAdhocResultGroup;
- (void)addResultGroup:(id)group;
- (void)addSearchResults:(id)results;
- (void)finalizeSearchResults;
- (void)removeDuplicateResults;
- (void)removeSearchItem:(id)item;
@end

@implementation TUSearchResults

- (TUSearchResults)initWithSearchTerm:(id)term shouldAddAdhocResults:(BOOL)results
{
  resultsCopy = results;
  termCopy = term;
  v12.receiver = self;
  v12.super_class = TUSearchResults;
  v8 = [(TUSearchResults *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_searchTerm, term);
    if (MEMORY[0x19A8B71D0](v9->_searchTerm))
    {
      v10 = !resultsCopy;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      [(TUSearchResults *)v9 addAdhocResultGroup];
    }
  }

  return v9;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@: %li sections, %li total results", objc_opt_class(), -[TUSearchResults numberOfSections](self, "numberOfSections"), -[TUSearchResults numberOfResults](self, "numberOfResults")];
  if ([(TUSearchResults *)self numberOfSections]>= 1)
  {
    v4 = 0;
    do
    {
      resultGroups = [(TUSearchResults *)self resultGroups];
      v6 = [resultGroups objectAtIndex:v4];

      title = [v6 title];
      results = [v6 results];
      [v3 appendFormat:@"\n\nSection %@ (%li)", title, objc_msgSend(results, "count")];

      results2 = [v6 results];
      [v3 appendFormat:@"\n%@", results2];

      ++v4;
    }

    while (v4 < [(TUSearchResults *)self numberOfSections]);
  }

  return v3;
}

- (int64_t)numberOfSections
{
  resultGroups = [(TUSearchResults *)self resultGroups];
  v3 = [resultGroups count];

  return v3;
}

- (int64_t)numberOfResults
{
  if ([(TUSearchResults *)self numberOfSections]< 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    resultGroups = [(TUSearchResults *)self resultGroups];
    v6 = [resultGroups objectAtIndex:v4];

    results = [v6 results];
    v3 += [results count];

    ++v4;
  }

  while (v4 < [(TUSearchResults *)self numberOfSections]);
  return v3;
}

- (id)resultGroupForSection:(int64_t)section
{
  v14 = *MEMORY[0x1E69E9840];
  if (section < 0 || [(TUSearchResults *)self numberOfSections]<= section)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      sectionCopy = section;
      v12 = 2048;
      v13 = [(TUSearchResults *)self numberOfSections]- 1;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Attempting to get section results with out of bounds range (%li) for actual range (0..%li)", &v10, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    resultGroups = [(TUSearchResults *)self resultGroups];
    v6 = [resultGroups objectAtIndex:section];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)_clearCaches
{
  [(TUSearchResults *)self setAllDataItemsCache:0];

  [(TUSearchResults *)self setAllSearchItemsCache:0];
}

- (void)finalizeSearchResults
{
  if (![(TUSearchResults *)self numberOfSections])
  {
    [(TUSearchResults *)self addAdhocResultGroup];
  }

  [(TUSearchResults *)self removeDuplicateResults];
}

- (void)removeDuplicateResults
{
  v89 = *MEMORY[0x1E69E9840];
  resultGroups = [(TUSearchResults *)self resultGroups];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"groupType=%d", 1];
  v5 = [resultGroups filteredArrayUsingPredicate:v4];
  lastObject = [v5 lastObject];

  selfCopy = self;
  resultGroups2 = [(TUSearchResults *)self resultGroups];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"groupType=%d", 2];
  v9 = [resultGroups2 filteredArrayUsingPredicate:v8];

  v50 = lastObject;
  v46 = v9;
  if ([v9 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v9;
    v53 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v53)
    {
      v51 = *v80;
      do
      {
        v11 = 0;
        do
        {
          if (*v80 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v55 = v11;
          v12 = *(*(&v79 + 1) + 8 * v11);
          array2 = [MEMORY[0x1E695DF70] array];
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          results = [v12 results];
          v15 = [results countByEnumeratingWithState:&v75 objects:v87 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v76;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v76 != v17)
                {
                  objc_enumerationMutation(results);
                }

                v19 = *(*(&v75 + 1) + 8 * i);
                v74[0] = MEMORY[0x1E69E9820];
                v74[1] = 3221225472;
                v74[2] = __41__TUSearchResults_removeDuplicateResults__block_invoke;
                v74[3] = &unk_1E7426300;
                v74[4] = v19;
                if ([array indexOfObjectPassingTest:v74] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v20 = array;
                }

                else
                {
                  v20 = array2;
                }

                [v20 addObject:v19];
              }

              v16 = [results countByEnumeratingWithState:&v75 objects:v87 count:16];
            }

            while (v16);
          }

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v21 = array2;
          v22 = [v21 countByEnumeratingWithState:&v70 objects:v86 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v71;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v71 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                [v12 removeSearchItem:*(*(&v70 + 1) + 8 * j)];
              }

              v23 = [v21 countByEnumeratingWithState:&v70 objects:v86 count:16];
            }

            while (v23);
          }

          v11 = v55 + 1;
        }

        while (v55 + 1 != v53);
        v53 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v53);
    }

    lastObject = v50;
  }

  if ([v9 count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v47 = v9;
    v52 = [v47 countByEnumeratingWithState:&v66 objects:v85 count:16];
    if (v52)
    {
      obja = *v67;
      do
      {
        v26 = 0;
        do
        {
          if (*v67 != obja)
          {
            objc_enumerationMutation(v47);
          }

          v54 = v26;
          v27 = *(*(&v66 + 1) + 8 * v26);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          results2 = [lastObject results];
          v29 = [results2 countByEnumeratingWithState:&v62 objects:v84 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v63;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v63 != v31)
                {
                  objc_enumerationMutation(results2);
                }

                v33 = *(*(&v62 + 1) + 8 * k);
                results3 = [v27 results];
                v61[0] = MEMORY[0x1E69E9820];
                v61[1] = 3221225472;
                v61[2] = __41__TUSearchResults_removeDuplicateResults__block_invoke_2;
                v61[3] = &unk_1E7426300;
                v61[4] = v33;
                v35 = [results3 indexOfObjectPassingTest:v61];

                if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [array3 addObject:v33];
                }
              }

              v30 = [results2 countByEnumeratingWithState:&v62 objects:v84 count:16];
            }

            while (v30);
          }

          v26 = v54 + 1;
          lastObject = v50;
        }

        while (v54 + 1 != v52);
        v52 = [v47 countByEnumeratingWithState:&v66 objects:v85 count:16];
      }

      while (v52);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v36 = array3;
    v37 = [v36 countByEnumeratingWithState:&v57 objects:v83 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v58;
      do
      {
        for (m = 0; m != v38; ++m)
        {
          if (*v58 != v39)
          {
            objc_enumerationMutation(v36);
          }

          [lastObject removeSearchItem:*(*(&v57 + 1) + 8 * m)];
        }

        v38 = [v36 countByEnumeratingWithState:&v57 objects:v83 count:16];
      }

      while (v38);
    }

    v9 = v46;
  }

  if (lastObject)
  {
    results4 = [lastObject results];
    v42 = [results4 count];

    if (!v42)
    {
      resultGroups3 = [(TUSearchResults *)selfCopy resultGroups];
      [resultGroups3 removeObject:lastObject];
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

uint64_t __41__TUSearchResults_removeDuplicateResults__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 backingContactIdentifier];
  v4 = [*(a1 + 32) backingContactIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __41__TUSearchResults_removeDuplicateResults__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 destinationId];
  v4 = [*(a1 + 32) destinationId];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)addAdhocResultGroup
{
  if ([(NSString *)self->_searchTerm length])
  {
    v7 = [[TUAdhocResult alloc] initWithString:self->_searchTerm];
    searchController = [(TUSearchResults *)self searchController];
    [(TUAdhocResult *)v7 setSearchController:searchController];

    v4 = [TUResultGroup alloc];
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
    v6 = [(TUResultGroup *)v4 initWithTitle:0 results:v5];

    [(TUSearchResults *)self addResultGroup:v6];
  }
}

- (void)addResultGroup:(id)group
{
  groupCopy = group;
  resultGroups = [(TUSearchResults *)self resultGroups];

  if (!resultGroups)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(TUSearchResults *)self setResultGroups:v6];
  }

  resultGroups2 = [(TUSearchResults *)self resultGroups];
  [resultGroups2 addObject:groupCopy];

  [(TUSearchResults *)self _clearCaches];
}

- (void)addSearchResults:(id)results
{
  resultsCopy = results;
  if ([resultsCopy numberOfSections] >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [resultsCopy resultGroupForSection:v4];
      [(TUSearchResults *)self addResultGroup:v5];

      ++v4;
    }

    while (v4 < [resultsCopy numberOfSections]);
  }

  [(TUSearchResults *)self _clearCaches];
}

- (void)removeSearchItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  resultGroups = [(TUSearchResults *)self resultGroups];
  v6 = [resultGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(resultGroups);
        }

        [*(*(&v13 + 1) + 8 * v9++) removeSearchItem:itemCopy];
      }

      while (v7 != v9);
      v7 = [resultGroups countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  allSearchItemsCache = [(TUSearchResults *)self allSearchItemsCache];
  [allSearchItemsCache removeObject:itemCopy];

  allDataItemsCache = [(TUSearchResults *)self allDataItemsCache];
  [allDataItemsCache removeObject:itemCopy];

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)numberOfTableViewRows
{
  allSearchItems = [(TUSearchResults *)self allSearchItems];
  v3 = [allSearchItems count];

  return v3;
}

- (NSArray)allSearchItems
{
  allSearchItemsCache = [(TUSearchResults *)self allSearchItemsCache];

  if (!allSearchItemsCache)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[TUSearchResults numberOfResults](self, "numberOfResults") + -[TUSearchResults numberOfSections](self, "numberOfSections")}];
    [(TUSearchResults *)self setAllSearchItemsCache:v4];

    if ([(TUSearchResults *)self numberOfSections]>= 1)
    {
      v5 = 0;
      do
      {
        resultGroups = [(TUSearchResults *)self resultGroups];
        v7 = [resultGroups objectAtIndex:v5];

        title = [v7 title];
        if (title)
        {
          allSearchItemsCache2 = [(TUSearchResults *)self allSearchItemsCache];
          title2 = [v7 title];
          [allSearchItemsCache2 addObject:title2];
        }

        allSearchItemsCache3 = [(TUSearchResults *)self allSearchItemsCache];
        results = [v7 results];
        [allSearchItemsCache3 addObjectsFromArray:results];

        ++v5;
      }

      while (v5 < [(TUSearchResults *)self numberOfSections]);
    }
  }

  return [(TUSearchResults *)self allSearchItemsCache];
}

- (NSArray)allDataItems
{
  allDataItemsCache = [(TUSearchResults *)self allDataItemsCache];

  if (!allDataItemsCache)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[TUSearchResults numberOfResults](self, "numberOfResults")}];
    [(TUSearchResults *)self setAllDataItemsCache:v4];

    searchTerm = [(TUSearchResults *)self searchTerm];
    v6 = [searchTerm length];

    if (v6)
    {
      v7 = [TUAdhocResult alloc];
      searchTerm2 = [(TUSearchResults *)self searchTerm];
      v9 = [(TUAdhocResult *)v7 initWithString:searchTerm2];

      searchController = [(TUSearchResults *)self searchController];
      [(TUAdhocResult *)v9 setSearchController:searchController];

      allDataItemsCache2 = [(TUSearchResults *)self allDataItemsCache];
      [allDataItemsCache2 addObject:v9];
    }

    if ([(TUSearchResults *)self numberOfSections]>= 1)
    {
      v12 = 0;
      do
      {
        resultGroups = [(TUSearchResults *)self resultGroups];
        v14 = [resultGroups objectAtIndex:v12];

        allDataItemsCache3 = [(TUSearchResults *)self allDataItemsCache];
        results = [v14 results];
        [allDataItemsCache3 addObjectsFromArray:results];

        ++v12;
      }

      while (v12 < [(TUSearchResults *)self numberOfSections]);
    }
  }

  return [(TUSearchResults *)self allDataItemsCache];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchController);
    objc_storeWeak(v4 + 3, WeakRetained);

    objc_storeStrong(v4 + 1, self->_searchTerm);
    objc_storeStrong(v4 + 2, self->_resultGroups);
    objc_storeStrong(v4 + 4, self->_allSearchItemsCache);
    objc_storeStrong(v4 + 5, self->_allDataItemsCache);
  }

  return v4;
}

- (TUSearchController)searchController
{
  WeakRetained = objc_loadWeakRetained(&self->_searchController);

  return WeakRetained;
}

@end