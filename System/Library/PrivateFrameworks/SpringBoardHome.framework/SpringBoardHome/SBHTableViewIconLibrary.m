@interface SBHTableViewIconLibrary
- (SBHTableViewIconLibrary)initWithIconModel:(id)a3;
- (SBHTableViewIconLibrary)initWithIconModel:(id)a3 queryEngine:(id)a4;
- (void)_dispatchQueryResult:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)engine:(id)a3 failedToExecuteQuery:(id)a4 withError:(id)a5;
- (void)engine:(id)a3 queryResultsWereUpdated:(id)a4;
- (void)executeQuery:(id)a3 completion:(id)a4;
@end

@implementation SBHTableViewIconLibrary

- (SBHTableViewIconLibrary)initWithIconModel:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconLibraryAbstractQueryEngine *)[SBHIconLibraryPredicateQueryEngine alloc] initWithIconModel:v4];
  v6 = [(SBHTableViewIconLibrary *)self initWithIconModel:v4 queryEngine:v5];

  return v6;
}

- (SBHTableViewIconLibrary)initWithIconModel:(id)a3 queryEngine:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBHTableViewIconLibrary;
  v9 = [(SBHTableViewIconLibrary *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_iconModel, a3);
    objc_storeStrong(&v10->_queryEngine, a4);
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)executeQuery:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v6)
  {
    completionHandlerForQuery = self->_completionHandlerForQuery;
    if (!completionHandlerForQuery)
    {
      v8 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v9 = self->_completionHandlerForQuery;
      self->_completionHandlerForQuery = v8;

      completionHandlerForQuery = self->_completionHandlerForQuery;
    }

    v10 = [v6 copy];
    v11 = _Block_copy(v10);
    [(NSMapTable *)completionHandlerForQuery setObject:v11 forKey:v12];
  }

  [(SBHIconLibraryQueryEngine *)self->_queryEngine executeQuery:v12];
}

- (void)engine:(id)a3 queryResultsWereUpdated:(id)a4
{
  v5 = a4;
  v4 = v5;
  BSDispatchMain();
}

- (void)engine:(id)a3 failedToExecuteQuery:(id)a4 withError:(id)a5
{
  v6 = a4;
  v9 = a5;
  v7 = v9;
  v8 = v6;
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

- (void)_dispatchQueryResult:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  lastQueryResults = self->_lastQueryResults;
  if (!lastQueryResults || ![(SBHIconLibraryQueryResult *)lastQueryResults isEqualToQueryResult:v5])
  {
    objc_storeStrong(&self->_lastQueryResults, a3);
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

          [*(*(&v17 + 1) + 8 * v11++) iconLibrary:self hasUpdatedQueryResult:{v5, v17}];
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    completionHandlerForQuery = self->_completionHandlerForQuery;
    v13 = [v5 query];
    v14 = [(NSMapTable *)completionHandlerForQuery objectForKey:v13];

    if (v14)
    {
      (v14)[2](v14, v5, 0);
      v15 = self->_completionHandlerForQuery;
      v16 = [v5 query];
      [(NSMapTable *)v15 removeObjectForKey:v16];
    }
  }
}

@end