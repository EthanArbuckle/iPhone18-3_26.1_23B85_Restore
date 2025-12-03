@interface SCWWatchlistDiff
+ (id)reorderedSymbolsFrom:(id)from to:(id)to;
- (BOOL)isEmpty;
- (SCWWatchlistDiff)initWithOldSymbols:(id)symbols newSymbols:(id)newSymbols updatedName:(id)name updatedSortState:(id)state updatedSortOrderState:(id)orderState updatedDisplayState:(id)displayState;
@end

@implementation SCWWatchlistDiff

- (SCWWatchlistDiff)initWithOldSymbols:(id)symbols newSymbols:(id)newSymbols updatedName:(id)name updatedSortState:(id)state updatedSortOrderState:(id)orderState updatedDisplayState:(id)displayState
{
  v94 = *MEMORY[0x1E69E9840];
  symbolsCopy = symbols;
  newSymbolsCopy = newSymbols;
  nameCopy = name;
  stateCopy = state;
  orderStateCopy = orderState;
  displayStateCopy = displayState;
  v91.receiver = self;
  v91.super_class = SCWWatchlistDiff;
  v20 = [(SCWWatchlistDiff *)&v91 init];
  if (v20)
  {
    v76 = displayStateCopy;
    v77 = orderStateCopy;
    v79 = stateCopy;
    v81 = symbolsCopy;
    v21 = [MEMORY[0x1E695DFD8] setWithArray:symbolsCopy];
    v22 = [MEMORY[0x1E695DFD8] setWithArray:newSymbolsCopy];
    v80 = [v21 mutableCopy];
    [v80 minusSet:v22];
    v74 = v22;
    v23 = [v22 mutableCopy];
    v75 = v21;
    [v23 minusSet:v21];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
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
          v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(newSymbolsCopy, "indexOfObject:", v29)}];
          [(NSDictionary *)dictionary setObject:v30 forKey:v29];
        }

        v26 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v26);
    }

    v31 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v81];
    [v31 minusSet:v80];
    [v31 minusSet:obj];
    v32 = [MEMORY[0x1E695DFA0] orderedSetWithArray:newSymbolsCopy];
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
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
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
          v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(newSymbolsCopy, "indexOfObject:", v44)}];
          [(NSDictionary *)dictionary2 setObject:v45 forKey:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v83 objects:v92 count:16];
      }

      while (v41);
    }

    v46 = [nameCopy copy];
    updatedName = v78->_updatedName;
    v78->_updatedName = v46;

    symbolsCopy = v81;
    v48 = [v81 copy];
    symbolsPreDiff = v78->_symbolsPreDiff;
    v78->_symbolsPreDiff = v48;

    v50 = [newSymbolsCopy copy];
    symbolsPostDiff = v78->_symbolsPostDiff;
    v78->_symbolsPostDiff = v50;

    allObjects = [obj allObjects];
    addedSymbols = v78->_addedSymbols;
    v78->_addedSymbols = allObjects;

    indexesOfAddedSymbols = v78->_indexesOfAddedSymbols;
    v78->_indexesOfAddedSymbols = dictionary;
    v69 = dictionary;

    allObjects2 = [v80 allObjects];
    removedSymbols = v78->_removedSymbols;
    v78->_removedSymbols = allObjects2;

    allObjects3 = [v39 allObjects];
    reorderedSymbols = v78->_reorderedSymbols;
    v78->_reorderedSymbols = allObjects3;

    indexesOfReorderedSymbols = v78->_indexesOfReorderedSymbols;
    v78->_indexesOfReorderedSymbols = dictionary2;
    v60 = dictionary2;

    v20 = v78;
    stateCopy = v79;
    v61 = [v79 copy];
    updatedSortState = v78->_updatedSortState;
    v78->_updatedSortState = v61;

    orderStateCopy = v77;
    v63 = [v77 copy];
    updatedSortOrderState = v78->_updatedSortOrderState;
    v78->_updatedSortOrderState = v63;

    displayStateCopy = v76;
    v65 = [v76 copy];
    updatedDisplayState = v78->_updatedDisplayState;
    v78->_updatedDisplayState = v65;
  }

  v67 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)reorderedSymbolsFrom:(id)from to:(id)to
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
  addedSymbols = [(SCWWatchlistDiff *)self addedSymbols];
  if ([addedSymbols count])
  {
    v4 = 0;
  }

  else
  {
    removedSymbols = [(SCWWatchlistDiff *)self removedSymbols];
    if ([removedSymbols count])
    {
      v4 = 0;
    }

    else
    {
      reorderedSymbols = [(SCWWatchlistDiff *)self reorderedSymbols];
      if ([reorderedSymbols count])
      {
        v4 = 0;
      }

      else
      {
        updatedName = [(SCWWatchlistDiff *)self updatedName];
        if ([updatedName length])
        {
          v4 = 0;
        }

        else
        {
          updatedSortState = [(SCWWatchlistDiff *)self updatedSortState];
          if (updatedSortState)
          {
            v4 = 0;
          }

          else
          {
            updatedSortOrderState = [(SCWWatchlistDiff *)self updatedSortOrderState];
            if (updatedSortOrderState)
            {
              v4 = 0;
            }

            else
            {
              updatedDisplayState = [(SCWWatchlistDiff *)self updatedDisplayState];
              v4 = updatedDisplayState == 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

@end