@interface SCWWatchlistOrderDiff
+ (id)reorderedWatchlistIDsFrom:(id)from to:(id)to;
- (BOOL)isEmpty;
- (SCWWatchlistOrderDiff)initWithOldWatchlistIDs:(id)ds newWatchlistIDs:(id)iDs;
@end

@implementation SCWWatchlistOrderDiff

- (SCWWatchlistOrderDiff)initWithOldWatchlistIDs:(id)ds newWatchlistIDs:(id)iDs
{
  v71 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  v68.receiver = self;
  v68.super_class = SCWWatchlistOrderDiff;
  v8 = [(SCWWatchlistOrderDiff *)&v68 init];
  v9 = v8;
  if (v8)
  {
    v58 = v8;
    v10 = [MEMORY[0x1E695DFB8] orderedSetWithArray:dsCopy];
    v11 = [MEMORY[0x1E695DFB8] orderedSetWithArray:iDsCopy];
    v57 = [v10 mutableCopy];
    [v57 minusOrderedSet:v11];
    v54 = v11;
    v12 = [v11 mutableCopy];
    v55 = v10;
    [v12 minusOrderedSet:v10];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
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
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(iDsCopy, "indexOfObject:", v18)}];
          [(NSDictionary *)dictionary setObject:v19 forKey:v18];
        }

        v15 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v15);
    }

    v56 = dsCopy;
    v20 = [MEMORY[0x1E695DFA0] orderedSetWithArray:dsCopy];
    [v20 minusOrderedSet:v57];
    [v20 minusOrderedSet:obj];
    v21 = [MEMORY[0x1E695DFA0] orderedSetWithArray:iDsCopy];
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
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
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
          v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(iDsCopy, "indexOfObject:", v33, v50, v51)}];
          [(NSDictionary *)dictionary2 setObject:v34 forKey:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v30);
    }

    dsCopy = v56;
    v35 = [v56 copy];
    v9 = v58;
    watchlistIDsPreDiff = v58->_watchlistIDsPreDiff;
    v58->_watchlistIDsPreDiff = v35;

    v37 = [iDsCopy copy];
    watchlistIDsPostDiff = v58->_watchlistIDsPostDiff;
    v58->_watchlistIDsPostDiff = v37;

    array = [obj array];
    addedWatchlistIDs = v58->_addedWatchlistIDs;
    v58->_addedWatchlistIDs = array;

    indexesOfAddedWatchlistIDs = v58->_indexesOfAddedWatchlistIDs;
    v58->_indexesOfAddedWatchlistIDs = dictionary;
    v42 = dictionary;

    array2 = [v57 array];
    removedWatchlistIDs = v58->_removedWatchlistIDs;
    v58->_removedWatchlistIDs = array2;

    allObjects = [v28 allObjects];
    reorderedWatchlistIDs = v58->_reorderedWatchlistIDs;
    v58->_reorderedWatchlistIDs = allObjects;

    indexesOfReorderedWatchlistIDs = v58->_indexesOfReorderedWatchlistIDs;
    v58->_indexesOfReorderedWatchlistIDs = dictionary2;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)reorderedWatchlistIDsFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [fromCopy mutableCopy];
  v9 = [toCopy mutableCopy];
  v10 = v9;
  while ([v9 count])
  {
    firstObject = [v10 firstObject];
    v12 = [v8 indexOfObject:firstObject];
    if (v12)
    {
      [v7 addObject:firstObject];
    }

    [v10 removeObjectAtIndex:0];
    [v8 removeObjectAtIndex:v12];

    v9 = v10;
  }

  return v7;
}

- (BOOL)isEmpty
{
  addedWatchlistIDs = [(SCWWatchlistOrderDiff *)self addedWatchlistIDs];
  if ([addedWatchlistIDs count])
  {
    v4 = 0;
  }

  else
  {
    removedWatchlistIDs = [(SCWWatchlistOrderDiff *)self removedWatchlistIDs];
    if ([removedWatchlistIDs count])
    {
      v4 = 0;
    }

    else
    {
      reorderedWatchlistIDs = [(SCWWatchlistOrderDiff *)self reorderedWatchlistIDs];
      v4 = [reorderedWatchlistIDs count] == 0;
    }
  }

  return v4;
}

@end