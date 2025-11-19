@interface PXPeoplePagingSuggestionProvider
- (BOOL)hasNextSuggestions;
- (BOOL)hasPreviousSuggestions;
- (PXPeoplePagingSuggestionProvider)init;
- (id)nextSuggestionsWithPageLimit:(int64_t)a3;
- (id)previousSuggestions;
- (void)appendSuggestionArray:(id)a3;
- (void)removeAllSuggestions;
- (void)removeSuggestions:(id)a3;
@end

@implementation PXPeoplePagingSuggestionProvider

- (void)removeAllSuggestions
{
  [(PXPeoplePagingSuggestionProvider *)self setCurrentSuggestions:0];
  v3 = [(PXPeoplePagingSuggestionProvider *)self visitedSuggestions];
  [v3 removeAllObjects];

  v4 = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
  [v4 removeAllObjects];
}

- (void)removeSuggestions:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPeoplePagingSuggestionProvider *)self currentSuggestions];
  v6 = [v5 mutableCopy];
  [v6 removeObjectsInArray:v4];
  v7 = [v6 count];
  v25 = v5;
  if (v7 != [v5 count])
  {
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    [(PXPeoplePagingSuggestionProvider *)self setCurrentSuggestions:v8];
  }

  v24 = v6;
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = self;
  obj = [(PXPeoplePagingSuggestionProvider *)self visitedSuggestions];
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v30 = [v10 count];
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v32;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v32 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v31 + 1) + 8 * j);
              v18 = [v17 count];
              if (v18)
              {
                v19 = v18;
                v20 = [v17 mutableCopy];
                [v20 removeObjectsInArray:v4];
                v21 = [v20 count];
                if (v21)
                {
                  if (v19 != v21)
                  {
                    [v17 removeObjectsInArray:v4];
                  }
                }

                else
                {
                  [v11 addObject:v17];
                }
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v14);
        }

        if ([v11 count])
        {
          [v12 removeObjectsInArray:v11];
        }

        if (v30 && ![v12 count])
        {
          [v26 addObject:v12];
        }
      }

      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  if ([v26 count])
  {
    v22 = [(PXPeoplePagingSuggestionProvider *)v23 visitedSuggestions];
    [v22 removeObjectsInArray:v26];
  }
}

- (void)appendSuggestionArray:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v4 = [v6 mutableCopy];
    v5 = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
    [v5 addObject:v4];
  }
}

- (id)nextSuggestionsWithPageLimit:(int64_t)a3
{
  v5 = [(PXPeoplePagingSuggestionProvider *)self currentSuggestions];
  v6 = [(PXPeoplePagingSuggestionProvider *)self visitedSuggestions];
  v7 = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
  v8 = [v7 firstObject];
  v9 = [v8 count];
  if ([v5 count])
  {
    v10 = [v6 lastObject];
    v11 = [v5 mutableCopy];
    if (v10)
    {
      [v10 addObject:v11];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v12 addObject:v11];
      [v6 addObject:v12];
    }

    [(PXPeoplePagingSuggestionProvider *)self setCurrentSuggestions:MEMORY[0x1E695E0F0]];
  }

  if (!v8 || v9)
  {
    if (v9)
    {
      goto LABEL_11;
    }

    v13 = 0;
LABEL_15:
    v15 = MEMORY[0x1E695E0F0];
    goto LABEL_16;
  }

  [v7 removeObjectAtIndex:0];
  v13 = [v7 firstObject];

  v9 = [v13 count];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v6 addObject:v14];

  if (!v9)
  {
    goto LABEL_15;
  }

  v8 = v13;
LABEL_11:
  if (v9 >= a3)
  {
    v9 = a3;
  }

  v15 = [v8 subarrayWithRange:{0, v9}];
  [v8 removeObjectsInRange:{0, v9}];
  [(PXPeoplePagingSuggestionProvider *)self setCurrentSuggestions:v15];
  v13 = v8;
LABEL_16:

  return v15;
}

- (id)previousSuggestions
{
  if ([(PXPeoplePagingSuggestionProvider *)self hasPreviousSuggestions])
  {
    v3 = [(PXPeoplePagingSuggestionProvider *)self visitedSuggestions];
    v4 = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
    v5 = [(PXPeoplePagingSuggestionProvider *)self currentSuggestions];
    v6 = [v3 lastObject];
    v7 = [v6 count];
    if (!v7)
    {
      [v3 removeLastObject];
      [v4 removeAllObjects];
      v8 = [v3 lastObject];

      v5 = 0;
      v6 = v8;
    }

    v9 = [v6 lastObject];
    [v6 removeObject:v9];
    v10 = [v5 count];
    if (v7)
    {
      v11 = v10;
      if (v10)
      {
        v12 = [v4 firstObject];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v4 insertObject:v12 atIndex:0];
        }

        v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v11}];
        [v12 insertObjects:v5 atIndexes:v13];
      }
    }

    v14 = [v9 copy];

    [(PXPeoplePagingSuggestionProvider *)self setCurrentSuggestions:v14];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (BOOL)hasPreviousSuggestions
{
  v2 = [(PXPeoplePagingSuggestionProvider *)self visitedSuggestions];
  v3 = [v2 lastObject];
  v4 = [v3 lastObject];
  if ([v4 count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v2 count];
    if (v6 < 2)
    {
      v5 = 0;
    }

    else
    {
      v7 = [v2 objectAtIndexedSubscript:v6 - 2];

      v5 = [v7 count] != 0;
      v4 = v7;
    }
  }

  return v5;
}

- (BOOL)hasNextSuggestions
{
  v2 = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
  v3 = [v2 firstObject];
  if ([v3 count])
  {
    v4 = 1;
  }

  else if ([v2 count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 objectAtIndexedSubscript:1];

    v4 = [v5 count] != 0;
    v3 = v5;
  }

  return v4;
}

- (PXPeoplePagingSuggestionProvider)init
{
  v8.receiver = self;
  v8.super_class = PXPeoplePagingSuggestionProvider;
  v2 = [(PXPeoplePagingSuggestionProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    unvisitedSuggestions = v2->_unvisitedSuggestions;
    v2->_unvisitedSuggestions = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    visitedSuggestions = v2->_visitedSuggestions;
    v2->_visitedSuggestions = v5;
  }

  return v2;
}

@end