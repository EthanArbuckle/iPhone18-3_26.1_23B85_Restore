@interface SCWatchlistDiff
+ (id)reorderedStocksFrom:(id)a3 to:(id)a4;
- (BOOL)isEmpty;
- (SCWatchlistDiff)initWithOldStocks:(id)a3 newStocks:(id)a4;
@end

@implementation SCWatchlistDiff

- (SCWatchlistDiff)initWithOldStocks:(id)a3 newStocks:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v67.receiver = self;
  v67.super_class = SCWatchlistDiff;
  v8 = [(SCWatchlistDiff *)&v67 init];
  v9 = v8;
  if (v8)
  {
    v57 = v8;
    v10 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v11 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v56 = [v10 mutableCopy];
    [v56 minusSet:v11];
    v53 = v11;
    v12 = [v11 mutableCopy];
    v54 = v10;
    [v12 minusSet:v10];
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v64;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v64 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v63 + 1) + 8 * i);
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "indexOfObject:", v18)}];
          [(NSDictionary *)v13 setObject:v19 forKey:v18];
        }

        v15 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v15);
    }

    v55 = v6;
    v20 = [MEMORY[0x277CBEB40] orderedSetWithArray:v6];
    [v20 minusSet:v56];
    [v20 minusSet:obj];
    v21 = [MEMORY[0x277CBEB40] orderedSetWithArray:v7];
    [v21 minusSet:v56];
    [v21 minusSet:obj];
    v22 = [objc_opt_class() reorderedStocksFrom:v20 to:v21];
    v51 = v21;
    v52 = v20;
    v23 = [objc_opt_class() reorderedStocksFrom:v21 to:v20];
    v24 = [v22 count];
    v49 = v23;
    v50 = v22;
    if (v24 >= [v23 count])
    {
      v25 = v23;
    }

    else
    {
      v25 = v22;
    }

    v26 = v25;
    v27 = [MEMORY[0x277CBEB38] dictionary];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v28 = v26;
    v29 = [v28 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v60;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v60 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v59 + 1) + 8 * j);
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "indexOfObject:", v33, v49, v50)}];
          [(NSDictionary *)v27 setObject:v34 forKey:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v30);
    }

    v6 = v55;
    v35 = [v55 copy];
    v9 = v57;
    stocksPreDiff = v57->_stocksPreDiff;
    v57->_stocksPreDiff = v35;

    v37 = [v7 copy];
    stocksPostDiff = v57->_stocksPostDiff;
    v57->_stocksPostDiff = v37;

    v39 = [obj allObjects];
    addedStocks = v57->_addedStocks;
    v57->_addedStocks = v39;

    indexesOfAddedStocks = v57->_indexesOfAddedStocks;
    v57->_indexesOfAddedStocks = v13;
    v42 = v13;

    v43 = [v56 allObjects];
    removedStocks = v57->_removedStocks;
    v57->_removedStocks = v43;

    v45 = [v28 allObjects];
    reorderedStocks = v57->_reorderedStocks;
    v57->_reorderedStocks = v45;

    indexesOfReorderedStocks = v57->_indexesOfReorderedStocks;
    v57->_indexesOfReorderedStocks = v27;
  }

  return v9;
}

+ (id)reorderedStocksFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB58] set];
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
  v3 = [(SCWatchlistDiff *)self addedStocks];
  if ([v3 count])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SCWatchlistDiff *)self removedStocks];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(SCWatchlistDiff *)self reorderedStocks];
      v4 = [v6 count] == 0;
    }
  }

  return v4;
}

@end