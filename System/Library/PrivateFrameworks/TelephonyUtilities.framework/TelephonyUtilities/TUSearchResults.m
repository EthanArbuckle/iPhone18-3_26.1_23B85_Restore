@interface TUSearchResults
- (NSArray)allDataItems;
- (NSArray)allSearchItems;
- (TUSearchController)searchController;
- (TUSearchResults)initWithSearchTerm:(id)a3 shouldAddAdhocResults:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resultGroupForSection:(int64_t)a3;
- (int64_t)numberOfResults;
- (int64_t)numberOfSections;
- (int64_t)numberOfTableViewRows;
- (void)_clearCaches;
- (void)addAdhocResultGroup;
- (void)addResultGroup:(id)a3;
- (void)addSearchResults:(id)a3;
- (void)finalizeSearchResults;
- (void)removeDuplicateResults;
- (void)removeSearchItem:(id)a3;
@end

@implementation TUSearchResults

- (TUSearchResults)initWithSearchTerm:(id)a3 shouldAddAdhocResults:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = TUSearchResults;
  v8 = [(TUSearchResults *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_searchTerm, a3);
    if (MEMORY[0x19A8B71D0](v9->_searchTerm))
    {
      v10 = !v4;
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
      v5 = [(TUSearchResults *)self resultGroups];
      v6 = [v5 objectAtIndex:v4];

      v7 = [v6 title];
      v8 = [v6 results];
      [v3 appendFormat:@"\n\nSection %@ (%li)", v7, objc_msgSend(v8, "count")];

      v9 = [v6 results];
      [v3 appendFormat:@"\n%@", v9];

      ++v4;
    }

    while (v4 < [(TUSearchResults *)self numberOfSections]);
  }

  return v3;
}

- (int64_t)numberOfSections
{
  v2 = [(TUSearchResults *)self resultGroups];
  v3 = [v2 count];

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
    v5 = [(TUSearchResults *)self resultGroups];
    v6 = [v5 objectAtIndex:v4];

    v7 = [v6 results];
    v3 += [v7 count];

    ++v4;
  }

  while (v4 < [(TUSearchResults *)self numberOfSections]);
  return v3;
}

- (id)resultGroupForSection:(int64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 < 0 || [(TUSearchResults *)self numberOfSections]<= a3)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218240;
      v11 = a3;
      v12 = 2048;
      v13 = [(TUSearchResults *)self numberOfSections]- 1;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Attempting to get section results with out of bounds range (%li) for actual range (0..%li)", &v10, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v5 = [(TUSearchResults *)self resultGroups];
    v6 = [v5 objectAtIndex:a3];
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
  v3 = [(TUSearchResults *)self resultGroups];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"groupType=%d", 1];
  v5 = [v3 filteredArrayUsingPredicate:v4];
  v6 = [v5 lastObject];

  v45 = self;
  v7 = [(TUSearchResults *)self resultGroups];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"groupType=%d", 2];
  v9 = [v7 filteredArrayUsingPredicate:v8];

  v50 = v6;
  v46 = v9;
  if ([v9 count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
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
          v13 = [MEMORY[0x1E695DF70] array];
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v14 = [v12 results];
          v15 = [v14 countByEnumeratingWithState:&v75 objects:v87 count:16];
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
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v75 + 1) + 8 * i);
                v74[0] = MEMORY[0x1E69E9820];
                v74[1] = 3221225472;
                v74[2] = __41__TUSearchResults_removeDuplicateResults__block_invoke;
                v74[3] = &unk_1E7426300;
                v74[4] = v19;
                if ([v10 indexOfObjectPassingTest:v74] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v20 = v10;
                }

                else
                {
                  v20 = v13;
                }

                [v20 addObject:v19];
              }

              v16 = [v14 countByEnumeratingWithState:&v75 objects:v87 count:16];
            }

            while (v16);
          }

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v21 = v13;
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

    v6 = v50;
  }

  if ([v9 count])
  {
    v56 = [MEMORY[0x1E695DF70] array];
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
          v28 = [v6 results];
          v29 = [v28 countByEnumeratingWithState:&v62 objects:v84 count:16];
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
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v62 + 1) + 8 * k);
                v34 = [v27 results];
                v61[0] = MEMORY[0x1E69E9820];
                v61[1] = 3221225472;
                v61[2] = __41__TUSearchResults_removeDuplicateResults__block_invoke_2;
                v61[3] = &unk_1E7426300;
                v61[4] = v33;
                v35 = [v34 indexOfObjectPassingTest:v61];

                if (v35 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v56 addObject:v33];
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v62 objects:v84 count:16];
            }

            while (v30);
          }

          v26 = v54 + 1;
          v6 = v50;
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
    v36 = v56;
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

          [v6 removeSearchItem:*(*(&v57 + 1) + 8 * m)];
        }

        v38 = [v36 countByEnumeratingWithState:&v57 objects:v83 count:16];
      }

      while (v38);
    }

    v9 = v46;
  }

  if (v6)
  {
    v41 = [v6 results];
    v42 = [v41 count];

    if (!v42)
    {
      v43 = [(TUSearchResults *)v45 resultGroups];
      [v43 removeObject:v6];
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
    v3 = [(TUSearchResults *)self searchController];
    [(TUAdhocResult *)v7 setSearchController:v3];

    v4 = [TUResultGroup alloc];
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:v7];
    v6 = [(TUResultGroup *)v4 initWithTitle:0 results:v5];

    [(TUSearchResults *)self addResultGroup:v6];
  }
}

- (void)addResultGroup:(id)a3
{
  v4 = a3;
  v5 = [(TUSearchResults *)self resultGroups];

  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(TUSearchResults *)self setResultGroups:v6];
  }

  v7 = [(TUSearchResults *)self resultGroups];
  [v7 addObject:v4];

  [(TUSearchResults *)self _clearCaches];
}

- (void)addSearchResults:(id)a3
{
  v6 = a3;
  if ([v6 numberOfSections] >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [v6 resultGroupForSection:v4];
      [(TUSearchResults *)self addResultGroup:v5];

      ++v4;
    }

    while (v4 < [v6 numberOfSections]);
  }

  [(TUSearchResults *)self _clearCaches];
}

- (void)removeSearchItem:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(TUSearchResults *)self resultGroups];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v9++) removeSearchItem:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = [(TUSearchResults *)self allSearchItemsCache];
  [v10 removeObject:v4];

  v11 = [(TUSearchResults *)self allDataItemsCache];
  [v11 removeObject:v4];

  v12 = *MEMORY[0x1E69E9840];
}

- (int64_t)numberOfTableViewRows
{
  v2 = [(TUSearchResults *)self allSearchItems];
  v3 = [v2 count];

  return v3;
}

- (NSArray)allSearchItems
{
  v3 = [(TUSearchResults *)self allSearchItemsCache];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[TUSearchResults numberOfResults](self, "numberOfResults") + -[TUSearchResults numberOfSections](self, "numberOfSections")}];
    [(TUSearchResults *)self setAllSearchItemsCache:v4];

    if ([(TUSearchResults *)self numberOfSections]>= 1)
    {
      v5 = 0;
      do
      {
        v6 = [(TUSearchResults *)self resultGroups];
        v7 = [v6 objectAtIndex:v5];

        v8 = [v7 title];
        if (v8)
        {
          v9 = [(TUSearchResults *)self allSearchItemsCache];
          v10 = [v7 title];
          [v9 addObject:v10];
        }

        v11 = [(TUSearchResults *)self allSearchItemsCache];
        v12 = [v7 results];
        [v11 addObjectsFromArray:v12];

        ++v5;
      }

      while (v5 < [(TUSearchResults *)self numberOfSections]);
    }
  }

  return [(TUSearchResults *)self allSearchItemsCache];
}

- (NSArray)allDataItems
{
  v3 = [(TUSearchResults *)self allDataItemsCache];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[TUSearchResults numberOfResults](self, "numberOfResults")}];
    [(TUSearchResults *)self setAllDataItemsCache:v4];

    v5 = [(TUSearchResults *)self searchTerm];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [TUAdhocResult alloc];
      v8 = [(TUSearchResults *)self searchTerm];
      v9 = [(TUAdhocResult *)v7 initWithString:v8];

      v10 = [(TUSearchResults *)self searchController];
      [(TUAdhocResult *)v9 setSearchController:v10];

      v11 = [(TUSearchResults *)self allDataItemsCache];
      [v11 addObject:v9];
    }

    if ([(TUSearchResults *)self numberOfSections]>= 1)
    {
      v12 = 0;
      do
      {
        v13 = [(TUSearchResults *)self resultGroups];
        v14 = [v13 objectAtIndex:v12];

        v15 = [(TUSearchResults *)self allDataItemsCache];
        v16 = [v14 results];
        [v15 addObjectsFromArray:v16];

        ++v12;
      }

      while (v12 < [(TUSearchResults *)self numberOfSections]);
    }
  }

  return [(TUSearchResults *)self allDataItemsCache];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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