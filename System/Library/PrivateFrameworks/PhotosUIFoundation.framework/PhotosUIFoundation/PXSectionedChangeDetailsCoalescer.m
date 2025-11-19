@interface PXSectionedChangeDetailsCoalescer
+ (id)changeDetailsByCoalescingChangeDetails:(id)a3;
- (PXSectionedChangeDetailsCoalescer)init;
- (PXSectionedChangeDetailsCoalescer)initWithSectionedChangeDetails:(id)a3;
- (PXSectionedDataSourceChangeDetails)coalescedChangeDetails;
- (void)addChangeDetails:(id)a3;
@end

@implementation PXSectionedChangeDetailsCoalescer

- (PXSectionedDataSourceChangeDetails)coalescedChangeDetails
{
  v32 = *MEMORY[0x1E69E9840];
  cachedResult = self->_cachedResult;
  if (cachedResult)
  {
    v3 = cachedResult;
  }

  else
  {
    v4 = self;
    fromDataSourceIdentifier = self->_fromDataSourceIdentifier;
    currentToDataSourceIdentifier = self->_currentToDataSourceIdentifier;
    v7 = [(PXMutableArrayChangeDetails *)self->_sectionChangeDetails copy];
    if ([v7 hasIncrementalChanges])
    {
      v23 = currentToDataSourceIdentifier;
      v24 = fromDataSourceIdentifier;
      v25 = v4;
      v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableArray count](v4->_itemChangeEntries, "count")}];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = v4->_itemChangeEntries;
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v28;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            if ([v14 index] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v15 = [v14 changeDetails];
              v16 = [v15 copy];
              v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "index")}];
              [v26 setObject:v16 forKeyedSubscript:v17];

              v18 = [v14 subitemChangesByItem];
              if ([v18 count])
              {
                if (!v11)
                {
                  v11 = [MEMORY[0x1E695DF90] dictionary];
                }

                v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "index")}];
                [v11 setObject:v18 forKeyedSubscript:v19];
              }
            }
          }

          v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v10);
      }

      else
      {
        v11 = 0;
      }

      v4 = v25;
      currentToDataSourceIdentifier = v23;
      fromDataSourceIdentifier = v24;
      v20 = v26;
    }

    else
    {
      v11 = 0;
      v20 = 0;
    }

    v3 = [[PXSectionedDataSourceChangeDetails alloc] initWithFromDataSourceIdentifier:fromDataSourceIdentifier toDataSourceIdentifier:currentToDataSourceIdentifier sectionChanges:v7 itemChangeDetailsBySection:v20 subitemChangeDetailsByItemBySection:v11];
    v21 = v4->_cachedResult;
    v4->_cachedResult = v3;
  }

  return v3;
}

- (void)addChangeDetails:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  cachedResult = self->_cachedResult;
  self->_cachedResult = 0;

  currentToDataSourceIdentifier = self->_currentToDataSourceIdentifier;
  if (currentToDataSourceIdentifier == [v4 fromDataSourceIdentifier])
  {
    self->_currentToDataSourceIdentifier = [v4 toDataSourceIdentifier];
    v7 = [v4 sectionChanges];
  }

  else
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v21 = self->_currentToDataSourceIdentifier;
      *buf = 134218240;
      v29 = v21;
      v30 = 2048;
      v31 = [v4 fromDataSourceIdentifier];
      _os_log_fault_impl(&dword_1B3F73000, v8, OS_LOG_TYPE_FAULT, "Invalid coalescing operation. Sectioned change details are not contiguous (data source don't match: %lu <-> %lu)", buf, 0x16u);
    }

    self->_currentToDataSourceIdentifier = [v4 toDataSourceIdentifier];
    v7 = +[PXArrayChangeDetails changeDetailsWithNoIncrementalChanges];
  }

  v9 = v7;
  [(PXMutableArrayChangeDetails *)self->_sectionChangeDetails addChangeDetails:v7];
  if ([(PXMutableArrayChangeDetails *)self->_sectionChangeDetails hasIncrementalChanges])
  {
    v10 = [v4 sectionsWithItemChanges];
    v11 = [v10 mutableCopy];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = self;
    v12 = self->_itemChangeEntries;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          v18 = [v9 indexAfterApplyingChangesToIndex:{objc_msgSend(v17, "index")}];
          [v17 setIndex:v18];
          if (v18 != 0x7FFFFFFFFFFFFFFFLL && [v11 containsIndex:v18])
          {
            [v17 updateWithSectionedChangeDetails:v4];
            [v11 removeIndex:v18];
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    while ([v11 count])
    {
      v19 = [v11 firstIndex];
      [v11 removeIndex:v19];
      if ([(PXArrayChangeDetails *)v22->_sectionChangeDetails indexAfterRevertingChangesFromIndex:v19]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = _PXChangeDetailsEntryForSection(v19, v4);
        [(NSMutableArray *)v22->_itemChangeEntries addObject:v20];
      }
    }
  }

  else
  {
    v11 = PXChangeDetailsCoalescerGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B3F73000, v11, OS_LOG_TYPE_DEFAULT, "Failed to coalesce sectioned change details due to non-incremental section changes", buf, 2u);
    }
  }
}

- (PXSectionedChangeDetailsCoalescer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSectionedChangeDetailsCoalescer.m" lineNumber:159 description:{@"%s is not available as initializer", "-[PXSectionedChangeDetailsCoalescer init]"}];

  abort();
}

- (PXSectionedChangeDetailsCoalescer)initWithSectionedChangeDetails:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PXSectionedChangeDetailsCoalescer;
  v5 = [(PXSectionedChangeDetailsCoalescer *)&v17 init];
  if (v5)
  {
    v6 = PXChangeDetailsCoalescerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v19 = v5;
      v20 = 2112;
      v21 = v4;
      _os_log_impl(&dword_1B3F73000, v6, OS_LOG_TYPE_DEBUG, "PXSectionedChangeDetailsCoalescer: Initializing %@ with change details: %@", buf, 0x16u);
    }

    v5->_fromDataSourceIdentifier = [v4 fromDataSourceIdentifier];
    v5->_currentToDataSourceIdentifier = [v4 toDataSourceIdentifier];
    v7 = [v4 sectionChanges];
    v8 = [v7 mutableCopy];
    sectionChangeDetails = v5->_sectionChangeDetails;
    v5->_sectionChangeDetails = v8;

    v10 = [v4 sectionsWithItemChanges];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
    itemChangeEntries = v5->_itemChangeEntries;
    v5->_itemChangeEntries = v11;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__PXSectionedChangeDetailsCoalescer_initWithSectionedChangeDetails___block_invoke;
    v14[3] = &unk_1E7BB85E0;
    v15 = v4;
    v16 = v5;
    [v10 enumerateIndexesUsingBlock:v14];
  }

  return v5;
}

void __68__PXSectionedChangeDetailsCoalescer_initWithSectionedChangeDetails___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _PXChangeDetailsEntryForSection(a2, *(a1 + 32));
  [*(*(a1 + 40) + 32) addObject:v3];
}

+ (id)changeDetailsByCoalescingChangeDetails:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![v5 count])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PXSectionedChangeDetailsCoalescer.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"changeDetailsArray.count > 0"}];
  }

  v6 = [v5 count];
  v7 = PXChangeDetailsCoalescerGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6 == 1)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_DEBUG, "PXSectionedChangeDetailsCoalescer: Early return for single changeDetails", buf, 2u);
    }

    v9 = [v5 firstObject];
  }

  else
  {
    if (v8)
    {
      *buf = 134217984;
      v22 = [v5 count];
      _os_log_impl(&dword_1B3F73000, v7, OS_LOG_TYPE_DEBUG, "PXSectionedChangeDetailsCoalescer: BEGIN COALESCING %lu changes", buf, 0xCu);
    }

    v10 = [PXSectionedChangeDetailsCoalescer alloc];
    v11 = [v5 objectAtIndexedSubscript:0];
    v12 = [(PXSectionedChangeDetailsCoalescer *)v10 initWithSectionedChangeDetails:v11];

    if ([v5 count] >= 2)
    {
      v13 = 1;
      do
      {
        v14 = PXChangeDetailsCoalescerGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v5 objectAtIndexedSubscript:v13];
          *buf = 138412290;
          v22 = v15;
          _os_log_impl(&dword_1B3F73000, v14, OS_LOG_TYPE_DEBUG, "PXSectionedChangeDetailsCoalescer: Adding child details: %@", buf, 0xCu);
        }

        v16 = [v5 objectAtIndexedSubscript:v13];
        [(PXSectionedChangeDetailsCoalescer *)v12 addChangeDetails:v16];

        ++v13;
      }

      while (v13 < [v5 count]);
    }

    v9 = [(PXSectionedChangeDetailsCoalescer *)v12 coalescedChangeDetails];
    v17 = PXChangeDetailsCoalescerGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&dword_1B3F73000, v17, OS_LOG_TYPE_DEBUG, "PXSectionedChangeDetailsCoalescer: Final details: %@", buf, 0xCu);
    }

    v18 = PXChangeDetailsCoalescerGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B3F73000, v18, OS_LOG_TYPE_DEBUG, "PXSectionedChangeDetailsCoalescer: END COALESCING", buf, 2u);
    }
  }

  return v9;
}

@end