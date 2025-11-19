@interface REElementCoordinator
- (NSDictionary)displayElements;
- (REElementCoordinator)initWithRelevanceEngine:(id)a3;
- (id)elementAtPath:(id)a3;
- (id)pathForElement:(id)a3;
- (unint64_t)numberOfElementsInSection:(id)a3;
- (unint64_t)numberOfObservers;
- (void)_enqueueOrPerformOperation:(id)a3;
- (void)_enumerateValidObservers:(id)a3;
- (void)_performOperation:(id)a3 toObserver:(id)a4;
- (void)_performOperationsToDisplayElements:(id)a3;
- (void)_performOperationsToDisplayElements:(id)a3 toSection:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)enumerateObservers:(id)a3;
- (void)insertElement:(id)a3 atPath:(id)a4;
- (void)moveElement:(id)a3 fromPath:(id)a4 toPath:(id)a5;
- (void)performBatchUpdateBlock:(id)a3;
- (void)refreshElement:(id)a3 atPath:(id)a4;
- (void)reloadElement:(id)a3 atPath:(id)a4;
- (void)removeElement:(id)a3 atPath:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation REElementCoordinator

- (REElementCoordinator)initWithRelevanceEngine:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = REElementCoordinator;
  v5 = [(RERelevanceEngineSubsystem *)&v25 initWithRelevanceEngine:v4];
  if (v5)
  {
    v6 = [[REObserverStore alloc] initWithFunctionsOptions:512];
    observers = v5->_observers;
    v5->_observers = v6;

    v5->_performingBatch = 0;
    v8 = [MEMORY[0x277CBEB18] array];
    updates = v5->_updates;
    v5->_updates = v8;

    v10 = [v4 configuration];
    v11 = [v10 observerQueue];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      callbackQueue = v5->_callbackQueue;
      v5->_callbackQueue = v13;
    }

    else
    {
      v15 = MEMORY[0x277D85CD0];
      v16 = MEMORY[0x277D85CD0];
      callbackQueue = v5->_callbackQueue;
      v5->_callbackQueue = v15;
    }

    v17 = [MEMORY[0x277CBEB38] dictionary];
    displayElements = v5->_displayElements;
    v5->_displayElements = v17;

    v19 = [(RERelevanceEngineSubsystem *)v5 relevanceEngine];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __48__REElementCoordinator_initWithRelevanceEngine___block_invoke;
    v23[3] = &unk_2785FD740;
    v20 = v5;
    v24 = v20;
    [v19 enumerateSectionDescriptorsWithOptions:0 includeHistoric:1 usingBlock:v23];

    v21 = [v4 logger];
    [v21 addLoggable:v20];
  }

  return v5;
}

void __48__REElementCoordinator_initWithRelevanceEngine___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a2;
  v7 = [v3 array];
  v5 = *(*(a1 + 32) + 40);
  v6 = [v4 name];

  [v5 setObject:v7 forKeyedSubscript:v6];
}

- (void)dealloc
{
  v3 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  v4 = [v3 logger];
  [v4 removeLoggable:self];

  v5.receiver = self;
  v5.super_class = REElementCoordinator;
  [(RERelevanceEngineSubsystem *)&v5 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [[_RERelevanceEngineObserverWrapper alloc] initWithObserver:v4];

  [(REObserverStore *)self->_observers addObserver:v5];
  [(REElementCoordinator *)self didAddObserver:v5];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__28;
  v17 = 0;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __39__REElementCoordinator_removeObserver___block_invoke;
  v9 = &unk_2785FD768;
  v5 = v4;
  v10 = v5;
  v11 = &v12;
  [(REElementCoordinator *)self _enumerateValidObservers:&v6];
  if (v13[5])
  {
    [(REObserverStore *)self->_observers removeObserver:v6, v7, v8, v9];
    [(REElementCoordinator *)self didRemoveObserver:v13[5]];
  }

  _Block_object_dispose(&v12, 8);
}

void __39__REElementCoordinator_removeObserver___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)enumerateObservers:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__REElementCoordinator_enumerateObservers___block_invoke;
    v6[3] = &unk_2785FD790;
    v7 = v4;
    [(REElementCoordinator *)self _enumerateValidObservers:v6];
  }
}

- (unint64_t)numberOfObservers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__REElementCoordinator_numberOfObservers__block_invoke;
  v4[3] = &unk_2785FD7B8;
  v4[4] = &v5;
  [(REElementCoordinator *)self _enumerateValidObservers:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_enumerateValidObservers:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    observers = self->_observers;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__REElementCoordinator__enumerateValidObservers___block_invoke;
    v18[3] = &unk_2785FD7E0;
    v20 = v4;
    v7 = v5;
    v19 = v7;
    [(REObserverStore *)observers enumerateObserversWithBlock:v18];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(REObserverStore *)self->_observers removeObserver:*(*(&v14 + 1) + 8 * v12++), v14];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __49__REElementCoordinator__enumerateValidObservers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 observer];
  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (NSDictionary)displayElements
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  displayElements = self->_displayElements;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__REElementCoordinator_displayElements__block_invoke;
  v8[3] = &unk_2785FA648;
  v9 = v3;
  v5 = v3;
  [(NSMutableDictionary *)displayElements enumerateKeysAndObjectsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __39__REElementCoordinator_displayElements__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)elementAtPath:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  displayElements = self->_displayElements;
  v6 = [v4 sectionName];
  v7 = [(NSMutableDictionary *)displayElements objectForKeyedSubscript:v6];

  if (v7 && (v8 = [v4 element], v8 < objc_msgSend(v7, "count")))
  {
    v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "element")}];
    v10 = REElementByRemovingNamespacedIdentifier(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)numberOfElementsInSection:(id)a3
{
  callbackQueue = self->_callbackQueue;
  v5 = a3;
  dispatch_assert_queue_V2(callbackQueue);
  v6 = [(NSMutableDictionary *)self->_displayElements objectForKeyedSubscript:v5];

  v7 = [v6 count];
  return v7;
}

- (id)pathForElement:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__28;
  v17 = 0;
  displayElements = self->_displayElements;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__REElementCoordinator_pathForElement___block_invoke;
  v9[3] = &unk_2785FD830;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [(NSMutableDictionary *)displayElements enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __39__REElementCoordinator_pathForElement___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__REElementCoordinator_pathForElement___block_invoke_2;
  v11[3] = &unk_2785FD808;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v14 = v9;
  v10 = v7;
  v13 = v10;
  [a3 enumerateObjectsUsingBlock:v11];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __39__REElementCoordinator_pathForElement___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [*(a1 + 32) identifier];
  v9 = v7;
  v10 = v8;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) == 0 || (v12)
  {
    v16 = isKindOfClass | ~v12;
    v15 = v10;
    v13 = v9;
    if (v16)
    {
      goto LABEL_7;
    }

    v15 = [v10 identifier];
    v14 = v10;
    v13 = v9;
  }

  else
  {
    v13 = [v9 identifier];
    v14 = v9;
    v15 = v10;
  }

LABEL_7:
  v17 = [v13 isEqualToString:v15];

  if (v17)
  {
    v18 = [RESectionPath sectionPathWithSectionName:*(a1 + 40) element:a3];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *a4 = 1;
  }
}

- (void)performBatchUpdateBlock:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v5 = RELogForDomain(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [REElementCoordinator performBatchUpdateBlock:];
  }

  if (self->_performingBatch)
  {
    v6 = RELogForDomain(7);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }
  }

  self->_performingBatch = 1;
  if (v4)
  {
    v4[2](v4);
  }

  v7 = [(NSMutableArray *)self->_updates copy];
  [(NSMutableArray *)self->_updates removeAllObjects];
  v8 = [v7 count];
  v9 = RELogForDomain(7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v10)
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    v11 = RELogForDomain(7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    v12 = RELogForDomain(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    [(NSMutableDictionary *)self->_displayElements enumerateKeysAndObjectsUsingBlock:&__block_literal_global_80];
    v13 = RELogForDomain(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    v14 = RELogForDomain(7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    v15 = RELogForDomain(7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    [(REElementCoordinator *)self _performOperationsToDisplayElements:v7];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v40;
      while (2)
      {
        v20 = 0;
        do
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v39 + 1) + 8 * v20) type] != 4)
          {
            v21 = 1;
            goto LABEL_32;
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v21 = 0;
LABEL_32:

    v22 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_14;
    v34 = &unk_2785FD8C8;
    v35 = v16;
    v36 = self;
    v38 = v21;
    v9 = v22;
    v37 = v9;
    [(REElementCoordinator *)self enumerateObservers:&v31];
    v23 = RELogForDomain(7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    v24 = RELogForDomain(7);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    v25 = RELogForDomain(7);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    [(NSMutableDictionary *)self->_displayElements enumerateKeysAndObjectsUsingBlock:&__block_literal_global_24_0, v31, v32, v33, v34];
    v26 = RELogForDomain(7);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    v27 = RELogForDomain(7);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }

    v28 = RELogForDomain(7);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator performBatchUpdateBlock:];
    }
  }

  else if (v10)
  {
    [REElementCoordinator performBatchUpdateBlock:];
  }

  self->_performingBatch = 0;
  v29 = RELogForDomain(7);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    [REElementCoordinator performBatchUpdateBlock:];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __48__REElementCoordinator_performBatchUpdateBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = RELogForDomain(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_cold_1(v4, v6);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_13;
  v8[3] = &unk_2785FD878;
  v9 = v4;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = RELogForDomain(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = [RESectionPath sectionPathWithSectionName:*(a1 + 32) element:a3];
    v9 = REStringForSectionPath(v8);
    v10 = [v5 identifier];
    v11 = 138412546;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_debug_impl(&dword_22859F000, v6, OS_LOG_TYPE_DEBUG, "[%@]: %@", &v11, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_2;
  v9[3] = &unk_2785FB070;
  v4 = v3;
  v10 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v7 = MEMORY[0x22AABC5E0](v9);
  v8 = v7;
  if (*(a1 + 56) == 1)
  {
    [v4 relevanceEngine:*(a1 + 48) performBatchUpdateBlock:v7 completion:&__block_literal_global_20_1];
  }

  else
  {
    (*(v7 + 16))(v7);
  }
}

void __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = RELogForDomain(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = *(a1 + 32);
    if (isKindOfClass)
    {
      v5 = [*(a1 + 32) observer];
    }

    *buf = 138543362;
    v19 = v5;
    _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_INFO, "[EC]: Begin view updates for observer: %{public}@.", buf, 0xCu);
    if (isKindOfClass)
    {
    }
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_15;
  v15 = &unk_2785FD8A0;
  v6 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:&v12];
  v7 = RELogForDomain(7);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    v10 = *(a1 + 32);
    if (v9)
    {
      v10 = [v10 observer];
    }

    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&dword_22859F000, v7, OS_LOG_TYPE_INFO, "[EC]: End view updates for observer: %{public}@.", buf, 0xCu);
    if (v9)
    {
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = RELogForDomain(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_cold_1(v4, v6);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_25;
  v8[3] = &unk_2785FD878;
  v9 = v4;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_25(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = RELogForDomain(7);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) UTF8String];
    v8 = [v5 identifier];
    v10 = 136315650;
    v11 = v7;
    v12 = 2048;
    v13 = a3;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_INFO, "[%s - %lu]: %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reloadElement:(id)a3 atPath:(id)a4
{
  callbackQueue = self->_callbackQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(callbackQueue);
  v9 = [REElementUpdateOperation reloadElement:v8 atPath:v7];

  [(REElementCoordinator *)self _enqueueOrPerformOperation:v9];
}

- (void)insertElement:(id)a3 atPath:(id)a4
{
  callbackQueue = self->_callbackQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(callbackQueue);
  v9 = [REElementUpdateOperation insertElement:v8 atPath:v7];

  [(REElementCoordinator *)self _enqueueOrPerformOperation:v9];
}

- (void)removeElement:(id)a3 atPath:(id)a4
{
  callbackQueue = self->_callbackQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(callbackQueue);
  v9 = [REElementUpdateOperation removeElement:v8 atPath:v7];

  [(REElementCoordinator *)self _enqueueOrPerformOperation:v9];
}

- (void)moveElement:(id)a3 fromPath:(id)a4 toPath:(id)a5
{
  callbackQueue = self->_callbackQueue;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  dispatch_assert_queue_V2(callbackQueue);
  v12 = [REElementUpdateOperation moveElement:v11 fromPath:v10 toPath:v9];

  [(REElementCoordinator *)self _enqueueOrPerformOperation:v12];
}

- (void)refreshElement:(id)a3 atPath:(id)a4
{
  callbackQueue = self->_callbackQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(callbackQueue);
  v9 = [REElementUpdateOperation refreshElement:v8 atPath:v7];

  [(REElementCoordinator *)self _enqueueOrPerformOperation:v9];
}

- (void)_enqueueOrPerformOperation:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v5 = [v4 type];
  v6 = RELogForDomain(7);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5 == 3)
  {
    if (v7)
    {
      v26 = [v4 type];
      v29 = [v4 path];
      v8 = [v29 sectionName];
      v25 = [v8 UTF8String];
      v28 = [v4 path];
      v24 = [v28 element];
      v27 = [v4 movedToPath];
      v9 = [v27 sectionName];
      v10 = [v9 UTF8String];
      v11 = [v4 movedToPath];
      v12 = [v11 element];
      v13 = [v4 element];
      v14 = [v13 identifier];
      *buf = 134219266;
      v35 = v26;
      v36 = 2080;
      v37 = v25;
      v38 = 2048;
      v39 = v24;
      v40 = 2080;
      v41 = v10;
      v42 = 2048;
      v43 = v12;
      v44 = 2112;
      v45 = v14;
      _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_INFO, "[EC]: Enqueue operation: %lu %s-%lu → %s-%lu for element %@", buf, 0x3Eu);
    }
  }

  else if (v7)
  {
    v15 = [v4 type];
    v30 = [v4 path];
    v16 = [v30 sectionName];
    v17 = [v16 UTF8String];
    v18 = [v4 path];
    v19 = [v18 element];
    v20 = [v4 element];
    v21 = [v20 identifier];
    *buf = 134218754;
    v35 = v15;
    v36 = 2080;
    v37 = v17;
    v38 = 2048;
    v39 = v19;
    v40 = 2112;
    v41 = v21;
    _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_INFO, "[EC]: Enqueue operation: %lu %s-%lu for element %@", buf, 0x2Au);
  }

  if (self->_performingBatch)
  {
    [(NSMutableArray *)self->_updates addObject:v4];
  }

  else
  {
    v33 = v4;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [(REElementCoordinator *)self _performOperationsToDisplayElements:v22];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __51__REElementCoordinator__enqueueOrPerformOperation___block_invoke;
    v31[3] = &unk_2785FCE10;
    v31[4] = self;
    v32 = v4;
    [(REElementCoordinator *)self enumerateObservers:v31];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_performOperation:(id)a3 toObserver:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 element];
  v9 = [v6 path];
  v10 = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  v11 = [v6 type];
  if (v11 > 1)
  {
    if (v11 != 4)
    {
      if (v11 == 3)
      {
        v15 = [v6 movedToPath];
        v16 = RELogForDomain(7);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v8 identifier];
          v19 = REStringForSectionPath(v9);
          v20 = REStringForSectionPath(v15);
          v21 = 138412802;
          v22 = v18;
          v23 = 2112;
          v24 = v19;
          v25 = 2112;
          v26 = v20;
          _os_log_debug_impl(&dword_22859F000, v16, OS_LOG_TYPE_DEBUG, "[EC]: Move %@ from %@ to %@", &v21, 0x20u);
        }

        [v7 relevanceEngine:v10 didMoveElement:v8 fromPath:v9 toPath:v15];
      }

      else if (v11 == 2)
      {
        v12 = RELogForDomain(7);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [REElementCoordinator _performOperation:v8 toObserver:v9];
        }

        [v7 relevanceEngine:v10 didInsertElement:v8 atPath:v9];
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (!v11)
  {
LABEL_13:
    v14 = RELogForDomain(7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator _performOperation:v8 toObserver:v9];
    }

    [v7 relevanceEngine:v10 didReloadElement:v8 atPath:v9];
    goto LABEL_19;
  }

  if (v11 == 1)
  {
    v13 = RELogForDomain(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [REElementCoordinator _performOperation:v8 toObserver:v9];
    }

    [v7 relevanceEngine:v10 didRemoveElement:v8 atPath:v9];
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performOperationsToDisplayElements:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 path];
        v13 = [v12 sectionName];

        v14 = [v5 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = [MEMORY[0x277CBEB18] array];
          [v5 setObject:v15 forKeyedSubscript:v13];
        }

        v16 = [v5 objectForKeyedSubscript:v13];
        [v16 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__REElementCoordinator__performOperationsToDisplayElements___block_invoke;
  v18[3] = &unk_2785FA648;
  v18[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performOperationsToDisplayElements:(id)a3 toSection:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v39 = [(NSMutableDictionary *)self->_displayElements objectForKeyedSubscript:v7];
  v8 = [MEMORY[0x277CCAB58] indexSet];
  v41 = [MEMORY[0x277CCAB58] indexSet];
  v40 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v52 + 1) + 8 * i);
        v16 = [v15 type];
        if (v16 <= 1)
        {
          if (!v16)
          {
LABEL_14:
            v19 = [v15 path];
            v20 = [v19 element];

            v21 = [v15 element];
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
            [v9 setObject:v21 forKeyedSubscript:v22];

            continue;
          }

          if (v16 == 1)
          {
            v17 = [v15 path];
            v18 = [v17 element];

            [v8 addIndex:v18];
          }
        }

        else
        {
          switch(v16)
          {
            case 2:
              v23 = [v15 path];
LABEL_17:
              v26 = v23;
              v27 = [v23 element];

              [v41 addIndex:v27];
              v28 = [v15 element];
              v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v27];
              [v40 setObject:v28 forKeyedSubscript:v29];

              continue;
            case 3:
              v24 = [v15 path];
              v25 = [v24 element];

              [v8 addIndex:v25];
              v23 = [v15 movedToPath];
              goto LABEL_17;
            case 4:
              goto LABEL_14;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v12);
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __70__REElementCoordinator__performOperationsToDisplayElements_toSection___block_invoke;
  v49[3] = &unk_2785FD8F0;
  v30 = v7;
  v50 = v30;
  v31 = v39;
  v51 = v31;
  v32 = v9;
  [v9 enumerateKeysAndObjectsUsingBlock:v49];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __70__REElementCoordinator__performOperationsToDisplayElements_toSection___block_invoke_31;
  v46[3] = &unk_2785FD580;
  v33 = v30;
  v47 = v33;
  v34 = v31;
  v48 = v34;
  [v8 enumerateIndexesWithOptions:2 usingBlock:v46];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __70__REElementCoordinator__performOperationsToDisplayElements_toSection___block_invoke_33;
  v42[3] = &unk_2785FD918;
  v43 = v40;
  v44 = v33;
  v45 = v34;
  v35 = v34;
  v36 = v33;
  v37 = v40;
  [v41 enumerateIndexesUsingBlock:v42];

  v38 = *MEMORY[0x277D85DE8];
}

void __70__REElementCoordinator__performOperationsToDisplayElements_toSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = RELogForDomain(7);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v5 identifier];
    v10 = [RESectionPath sectionPathWithSectionName:*(a1 + 32) element:v6];
    v11 = REStringForSectionPath(v10);
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_22859F000, v7, OS_LOG_TYPE_DEBUG, "[EC]: Reload %@ into display elements at %@", &v12, 0x16u);
  }

  [*(a1 + 40) setObject:v5 atIndexedSubscript:v6];
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __70__REElementCoordinator__performOperationsToDisplayElements_toSection___block_invoke_31(uint64_t a1, uint64_t a2)
{
  v4 = RELogForDomain(7);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __70__REElementCoordinator__performOperationsToDisplayElements_toSection___block_invoke_31_cold_1(a1, a2);
  }

  return [*(a1 + 40) removeObjectAtIndex:a2];
}

void __70__REElementCoordinator__performOperationsToDisplayElements_toSection___block_invoke_33(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = RELogForDomain(7);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v6 identifier];
    v10 = [RESectionPath sectionPathWithSectionName:*(a1 + 40) element:a2];
    v11 = REStringForSectionPath(v10);
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    _os_log_debug_impl(&dword_22859F000, v7, OS_LOG_TYPE_DEBUG, "[EC]: Insert %@ into display elements at %@", &v12, 0x16u);
  }

  [*(a1 + 48) insertObject:v6 atIndex:a2];
  v8 = *MEMORY[0x277D85DE8];
}

void __48__REElementCoordinator_performBatchUpdateBlock___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22859F000, a2, OS_LOG_TYPE_DEBUG, "[EC]: Begin section %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_performOperation:(void *)a1 toObserver:(void *)a2 .cold.1(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = REStringForSectionPath(a2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_performOperation:(void *)a1 toObserver:(void *)a2 .cold.2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = REStringForSectionPath(a2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_performOperation:(void *)a1 toObserver:(void *)a2 .cold.3(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 identifier];
  v4 = REStringForSectionPath(a2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __70__REElementCoordinator__performOperationsToDisplayElements_toSection___block_invoke_31_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [RESectionPath sectionPathWithSectionName:*(a1 + 32) element:a2];
  v9 = REStringForSectionPath(v2);
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

@end