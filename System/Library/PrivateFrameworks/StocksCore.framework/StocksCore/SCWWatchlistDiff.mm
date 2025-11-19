@interface SCWWatchlistDiff
+ (id)reorderedSymbolsFrom:(id)a3 to:(id)a4;
- (BOOL)isEmpty;
- (SCWWatchlistDiff)initWithOldSymbols:(id)a3 newSymbols:(id)a4 updatedName:(id)a5 updatedSortState:(id)a6 updatedSortOrderState:(id)a7 updatedDisplayState:(id)a8;
@end

@implementation SCWWatchlistDiff

- (SCWWatchlistDiff)initWithOldSymbols:(id)a3 newSymbols:(id)a4 updatedName:(id)a5 updatedSortState:(id)a6 updatedSortOrderState:(id)a7 updatedDisplayState:(id)a8
{
  v94 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v91.receiver = self;
  v91.super_class = SCWWatchlistDiff;
  v20 = [(SCWWatchlistDiff *)&v91 init];
  if (v20)
  {
    v76 = v19;
    v77 = v18;
    v79 = v17;
    v81 = v14;
    v21 = [MEMORY[0x1E695DFD8] setWithArray:v14];
    v22 = [MEMORY[0x1E695DFD8] setWithArray:v15];
    v80 = [v21 mutableCopy];
    [v80 minusSet:v22];
    v74 = v22;
    v23 = [v22 mutableCopy];
    v75 = v21;
    [v23 minusSet:v21];
    v24 = [MEMORY[0x1E695DF90] dictionary];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = v23;
    v25 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v88;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v88 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v87 + 1) + 8 * i);
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "indexOfObject:", v29)}];
          [(NSDictionary *)v24 setObject:v30 forKey:v29];
        }

        v26 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v26);
    }

    v31 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v81];
    [v31 minusSet:v80];
    [v31 minusSet:obj];
    v32 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v15];
    [v32 minusSet:v80];
    [v32 minusSet:obj];
    v33 = [objc_opt_class() reorderedSymbolsFrom:v31 to:v32];
    v78 = v20;
    v72 = v32;
    v73 = v31;
    v34 = [objc_opt_class() reorderedSymbolsFrom:v32 to:v31];
    v35 = [v33 count];
    v70 = v34;
    v71 = v33;
    if (v35 >= [v34 count])
    {
      v36 = v34;
    }

    else
    {
      v36 = v33;
    }

    v37 = v36;
    v38 = [MEMORY[0x1E695DF90] dictionary];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v39 = v37;
    v40 = [v39 countByEnumeratingWithState:&v83 objects:v92 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v84;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v84 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v83 + 1) + 8 * j);
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "indexOfObject:", v44)}];
          [(NSDictionary *)v38 setObject:v45 forKey:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v83 objects:v92 count:16];
      }

      while (v41);
    }

    v46 = [v16 copy];
    updatedName = v78->_updatedName;
    v78->_updatedName = v46;

    v14 = v81;
    v48 = [v81 copy];
    symbolsPreDiff = v78->_symbolsPreDiff;
    v78->_symbolsPreDiff = v48;

    v50 = [v15 copy];
    symbolsPostDiff = v78->_symbolsPostDiff;
    v78->_symbolsPostDiff = v50;

    v52 = [obj allObjects];
    addedSymbols = v78->_addedSymbols;
    v78->_addedSymbols = v52;

    indexesOfAddedSymbols = v78->_indexesOfAddedSymbols;
    v78->_indexesOfAddedSymbols = v24;
    v69 = v24;

    v55 = [v80 allObjects];
    removedSymbols = v78->_removedSymbols;
    v78->_removedSymbols = v55;

    v57 = [v39 allObjects];
    reorderedSymbols = v78->_reorderedSymbols;
    v78->_reorderedSymbols = v57;

    indexesOfReorderedSymbols = v78->_indexesOfReorderedSymbols;
    v78->_indexesOfReorderedSymbols = v38;
    v60 = v38;

    v20 = v78;
    v17 = v79;
    v61 = [v79 copy];
    updatedSortState = v78->_updatedSortState;
    v78->_updatedSortState = v61;

    v18 = v77;
    v63 = [v77 copy];
    updatedSortOrderState = v78->_updatedSortOrderState;
    v78->_updatedSortOrderState = v63;

    v19 = v76;
    v65 = [v76 copy];
    updatedDisplayState = v78->_updatedDisplayState;
    v78->_updatedDisplayState = v65;
  }

  v67 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)reorderedSymbolsFrom:(id)a3 to:(id)a4
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
  v3 = [(SCWWatchlistDiff *)self addedSymbols];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SCWWatchlistDiff *)self removedSymbols];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(SCWWatchlistDiff *)self reorderedSymbols];
      if ([v6 count])
      {
        v4 = 0;
      }

      else
      {
        v7 = [(SCWWatchlistDiff *)self updatedName];
        if ([v7 length])
        {
          v4 = 0;
        }

        else
        {
          v8 = [(SCWWatchlistDiff *)self updatedSortState];
          if (v8)
          {
            v4 = 0;
          }

          else
          {
            v9 = [(SCWWatchlistDiff *)self updatedSortOrderState];
            if (v9)
            {
              v4 = 0;
            }

            else
            {
              v10 = [(SCWWatchlistDiff *)self updatedDisplayState];
              v4 = v10 == 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

@end