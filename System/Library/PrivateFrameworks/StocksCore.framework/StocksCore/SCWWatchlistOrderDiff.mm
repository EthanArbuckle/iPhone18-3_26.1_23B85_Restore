@interface SCWWatchlistOrderDiff
+ (id)reorderedWatchlistIDsFrom:(id)a3 to:(id)a4;
- (BOOL)isEmpty;
- (SCWWatchlistOrderDiff)initWithOldWatchlistIDs:(id)a3 newWatchlistIDs:(id)a4;
@end

@implementation SCWWatchlistOrderDiff

- (SCWWatchlistOrderDiff)initWithOldWatchlistIDs:(id)a3 newWatchlistIDs:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v68.receiver = self;
  v68.super_class = SCWWatchlistOrderDiff;
  v8 = [(SCWWatchlistOrderDiff *)&v68 init];
  v9 = v8;
  if (v8)
  {
    v58 = v8;
    v10 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v6];
    v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v7];
    v57 = [v10 mutableCopy];
    [v57 minusOrderedSet:v11];
    v54 = v11;
    v12 = [v11 mutableCopy];
    v55 = v10;
    [v12 minusOrderedSet:v10];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v65;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v65 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v64 + 1) + 8 * i);
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "indexOfObject:", v18)}];
          [(NSDictionary *)v13 setObject:v19 forKey:v18];
        }

        v15 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v15);
    }

    v56 = v6;
    v20 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v6];
    [v20 minusOrderedSet:v57];
    [v20 minusOrderedSet:obj];
    v21 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v7];
    [v21 minusOrderedSet:v57];
    [v21 minusOrderedSet:obj];
    v22 = [objc_opt_class() reorderedWatchlistIDsFrom:v20 to:v21];
    v52 = v21;
    v53 = v20;
    v23 = [objc_opt_class() reorderedWatchlistIDsFrom:v21 to:v20];
    v24 = [v22 count];
    v50 = v23;
    v51 = v22;
    if (v24 >= [v23 count])
    {
      v25 = v23;
    }

    else
    {
      v25 = v22;
    }

    v26 = v25;
    v27 = [MEMORY[0x1E695DF90] dictionary];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v61;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v61 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v60 + 1) + 8 * j);
          v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "indexOfObject:", v33, v50, v51)}];
          [(NSDictionary *)v27 setObject:v34 forKey:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v30);
    }

    v6 = v56;
    v35 = [v56 copy];
    v9 = v58;
    watchlistIDsPreDiff = v58->_watchlistIDsPreDiff;
    v58->_watchlistIDsPreDiff = v35;

    v37 = [v7 copy];
    watchlistIDsPostDiff = v58->_watchlistIDsPostDiff;
    v58->_watchlistIDsPostDiff = v37;

    v39 = [obj array];
    addedWatchlistIDs = v58->_addedWatchlistIDs;
    v58->_addedWatchlistIDs = v39;

    indexesOfAddedWatchlistIDs = v58->_indexesOfAddedWatchlistIDs;
    v58->_indexesOfAddedWatchlistIDs = v13;
    v42 = v13;

    v43 = [v57 array];
    removedWatchlistIDs = v58->_removedWatchlistIDs;
    v58->_removedWatchlistIDs = v43;

    v45 = [v28 allObjects];
    reorderedWatchlistIDs = v58->_reorderedWatchlistIDs;
    v58->_reorderedWatchlistIDs = v45;

    indexesOfReorderedWatchlistIDs = v58->_indexesOfReorderedWatchlistIDs;
    v58->_indexesOfReorderedWatchlistIDs = v27;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)reorderedWatchlistIDsFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [v5 mutableCopy];
  v9 = [v6 mutableCopy];
  v10 = v9;
  while ([v9 count])
  {
    v11 = [v10 firstObject];
    v12 = [v8 indexOfObject:v11];
    if (v12)
    {
      [v7 addObject:v11];
    }

    [v10 removeObjectAtIndex:0];
    [v8 removeObjectAtIndex:v12];

    v9 = v10;
  }

  return v7;
}

- (BOOL)isEmpty
{
  v3 = [(SCWWatchlistOrderDiff *)self addedWatchlistIDs];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SCWWatchlistOrderDiff *)self removedWatchlistIDs];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(SCWWatchlistOrderDiff *)self reorderedWatchlistIDs];
      v4 = [v6 count] == 0;
    }
  }

  return v4;
}

@end