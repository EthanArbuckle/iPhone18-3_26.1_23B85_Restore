@interface SBHTableViewIconLibrary
- (SBHTableViewIconLibrary)initWithIconModel:(id)model;
- (SBHTableViewIconLibrary)initWithIconModel:(id)model queryEngine:(id)engine;
- (void)_dispatchQueryResult:(id)result;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)engine:(id)engine failedToExecuteQuery:(id)query withError:(id)error;
- (void)engine:(id)engine queryResultsWereUpdated:(id)updated;
- (void)executeQuery:(id)query completion:(id)completion;
@end

@implementation SBHTableViewIconLibrary

- (SBHTableViewIconLibrary)initWithIconModel:(id)model
{
  modelCopy = model;
  v5 = [(SBHIconLibraryAbstractQueryEngine *)[SBHIconLibraryPredicateQueryEngine alloc] initWithIconModel:modelCopy];
  v6 = [(SBHTableViewIconLibrary *)self initWithIconModel:modelCopy queryEngine:v5];

  return v6;
}

- (SBHTableViewIconLibrary)initWithIconModel:(id)model queryEngine:(id)engine
{
  modelCopy = model;
  engineCopy = engine;
  v12.receiver = self;
  v12.super_class = SBHTableViewIconLibrary;
  v9 = [(SBHTableViewIconLibrary *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_iconModel, model);
    objc_storeStrong(&v10->_queryEngine, engine);
    [(SBHIconLibraryQueryEngine *)v10->_queryEngine addObserver:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(SBHIconLibraryQueryEngine *)self->_queryEngine shutdown];
  queryEngine = self->_queryEngine;
  self->_queryEngine = 0;

  iconModel = self->_iconModel;
  self->_iconModel = 0;

  v5.receiver = self;
  v5.super_class = SBHTableViewIconLibrary;
  [(SBHTableViewIconLibrary *)&v5 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)executeQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  if (completionCopy)
  {
    completionHandlerForQuery = self->_completionHandlerForQuery;
    if (!completionHandlerForQuery)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v9 = self->_completionHandlerForQuery;
      self->_completionHandlerForQuery = strongToStrongObjectsMapTable;

      completionHandlerForQuery = self->_completionHandlerForQuery;
    }

    v10 = [completionCopy copy];
    v11 = _Block_copy(v10);
    [(NSMapTable *)completionHandlerForQuery setObject:v11 forKey:queryCopy];
  }

  [(SBHIconLibraryQueryEngine *)self->_queryEngine executeQuery:queryCopy];
}

- (void)engine:(id)engine queryResultsWereUpdated:(id)updated
{
  updatedCopy = updated;
  v4 = updatedCopy;
  BSDispatchMain();
}

- (void)engine:(id)engine failedToExecuteQuery:(id)query withError:(id)error
{
  queryCopy = query;
  errorCopy = error;
  v7 = errorCopy;
  v8 = queryCopy;
  BSDispatchMain();
}

void __65__SBHTableViewIconLibrary_engine_failedToExecuteQuery_withError___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  v2 = +[SBHIconLibraryQueryResult nullQueryResults];
  if (v3)
  {
    v3[2](v3, v2, *(a1 + 48));
    [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  }

  [*(a1 + 32) _dispatchQueryResult:v2];
}

- (void)_dispatchQueryResult:(id)result
{
  v22 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  lastQueryResults = self->_lastQueryResults;
  if (!lastQueryResults || ![(SBHIconLibraryQueryResult *)lastQueryResults isEqualToQueryResult:resultCopy])
  {
    objc_storeStrong(&self->_lastQueryResults, result);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_observers;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v17 + 1) + 8 * v11++) iconLibrary:self hasUpdatedQueryResult:{resultCopy, v17}];
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    completionHandlerForQuery = self->_completionHandlerForQuery;
    query = [resultCopy query];
    v14 = [(NSMapTable *)completionHandlerForQuery objectForKey:query];

    if (v14)
    {
      (v14)[2](v14, resultCopy, 0);
      v15 = self->_completionHandlerForQuery;
      query2 = [resultCopy query];
      [(NSMapTable *)v15 removeObjectForKey:query2];
    }
  }
}

@end