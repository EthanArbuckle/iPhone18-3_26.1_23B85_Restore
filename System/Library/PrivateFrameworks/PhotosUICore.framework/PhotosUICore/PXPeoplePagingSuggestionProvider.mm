@interface PXPeoplePagingSuggestionProvider
- (BOOL)hasNextSuggestions;
- (BOOL)hasPreviousSuggestions;
- (PXPeoplePagingSuggestionProvider)init;
- (id)nextSuggestionsWithPageLimit:(int64_t)limit;
- (id)previousSuggestions;
- (void)appendSuggestionArray:(id)array;
- (void)removeAllSuggestions;
- (void)removeSuggestions:(id)suggestions;
@end

@implementation PXPeoplePagingSuggestionProvider

- (void)removeAllSuggestions
{
  [(PXPeoplePagingSuggestionProvider *)self setCurrentSuggestions:0];
  visitedSuggestions = [(PXPeoplePagingSuggestionProvider *)self visitedSuggestions];
  [visitedSuggestions removeAllObjects];

  unvisitedSuggestions = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
  [unvisitedSuggestions removeAllObjects];
}

- (void)removeSuggestions:(id)suggestions
{
  v41 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  currentSuggestions = [(PXPeoplePagingSuggestionProvider *)self currentSuggestions];
  v6 = [currentSuggestions mutableCopy];
  [v6 removeObjectsInArray:suggestionsCopy];
  v7 = [v6 count];
  v25 = currentSuggestions;
  if (v7 != [currentSuggestions count])
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
  selfCopy = self;
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
                [v20 removeObjectsInArray:suggestionsCopy];
                v21 = [v20 count];
                if (v21)
                {
                  if (v19 != v21)
                  {
                    [v17 removeObjectsInArray:suggestionsCopy];
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
    visitedSuggestions = [(PXPeoplePagingSuggestionProvider *)selfCopy visitedSuggestions];
    [visitedSuggestions removeObjectsInArray:v26];
  }
}

- (void)appendSuggestionArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v4 = [arrayCopy mutableCopy];
    unvisitedSuggestions = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
    [unvisitedSuggestions addObject:v4];
  }
}

- (id)nextSuggestionsWithPageLimit:(int64_t)limit
{
  currentSuggestions = [(PXPeoplePagingSuggestionProvider *)self currentSuggestions];
  visitedSuggestions = [(PXPeoplePagingSuggestionProvider *)self visitedSuggestions];
  unvisitedSuggestions = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
  firstObject = [unvisitedSuggestions firstObject];
  limitCopy = [firstObject count];
  if ([currentSuggestions count])
  {
    lastObject = [visitedSuggestions lastObject];
    v11 = [currentSuggestions mutableCopy];
    if (lastObject)
    {
      [lastObject addObject:v11];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v12 addObject:v11];
      [visitedSuggestions addObject:v12];
    }

    [(PXPeoplePagingSuggestionProvider *)self setCurrentSuggestions:MEMORY[0x1E695E0F0]];
  }

  if (!firstObject || limitCopy)
  {
    if (limitCopy)
    {
      goto LABEL_11;
    }

    firstObject2 = 0;
LABEL_15:
    v15 = MEMORY[0x1E695E0F0];
    goto LABEL_16;
  }

  [unvisitedSuggestions removeObjectAtIndex:0];
  firstObject2 = [unvisitedSuggestions firstObject];

  limitCopy = [firstObject2 count];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [visitedSuggestions addObject:v14];

  if (!limitCopy)
  {
    goto LABEL_15;
  }

  firstObject = firstObject2;
LABEL_11:
  if (limitCopy >= limit)
  {
    limitCopy = limit;
  }

  v15 = [firstObject subarrayWithRange:{0, limitCopy}];
  [firstObject removeObjectsInRange:{0, limitCopy}];
  [(PXPeoplePagingSuggestionProvider *)self setCurrentSuggestions:v15];
  firstObject2 = firstObject;
LABEL_16:

  return v15;
}

- (id)previousSuggestions
{
  if ([(PXPeoplePagingSuggestionProvider *)self hasPreviousSuggestions])
  {
    visitedSuggestions = [(PXPeoplePagingSuggestionProvider *)self visitedSuggestions];
    unvisitedSuggestions = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
    currentSuggestions = [(PXPeoplePagingSuggestionProvider *)self currentSuggestions];
    lastObject = [visitedSuggestions lastObject];
    v7 = [lastObject count];
    if (!v7)
    {
      [visitedSuggestions removeLastObject];
      [unvisitedSuggestions removeAllObjects];
      lastObject2 = [visitedSuggestions lastObject];

      currentSuggestions = 0;
      lastObject = lastObject2;
    }

    v6LastObject = [lastObject lastObject];
    [lastObject removeObject:v6LastObject];
    v10 = [currentSuggestions count];
    if (v7)
    {
      v11 = v10;
      if (v10)
      {
        firstObject = [unvisitedSuggestions firstObject];
        if (!firstObject)
        {
          firstObject = objc_alloc_init(MEMORY[0x1E695DF70]);
          [unvisitedSuggestions insertObject:firstObject atIndex:0];
        }

        v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v11}];
        [firstObject insertObjects:currentSuggestions atIndexes:v13];
      }
    }

    v14 = [v6LastObject copy];

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
  visitedSuggestions = [(PXPeoplePagingSuggestionProvider *)self visitedSuggestions];
  lastObject = [visitedSuggestions lastObject];
  v3LastObject = [lastObject lastObject];
  if ([v3LastObject count])
  {
    v5 = 1;
  }

  else
  {
    v6 = [visitedSuggestions count];
    if (v6 < 2)
    {
      v5 = 0;
    }

    else
    {
      v7 = [visitedSuggestions objectAtIndexedSubscript:v6 - 2];

      v5 = [v7 count] != 0;
      v3LastObject = v7;
    }
  }

  return v5;
}

- (BOOL)hasNextSuggestions
{
  unvisitedSuggestions = [(PXPeoplePagingSuggestionProvider *)self unvisitedSuggestions];
  firstObject = [unvisitedSuggestions firstObject];
  if ([firstObject count])
  {
    v4 = 1;
  }

  else if ([unvisitedSuggestions count] < 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = [unvisitedSuggestions objectAtIndexedSubscript:1];

    v4 = [v5 count] != 0;
    firstObject = v5;
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