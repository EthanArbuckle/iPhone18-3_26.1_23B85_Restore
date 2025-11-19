@interface SBHIconLibraryPredicateQueryEngine
- (void)_processingQueue_teardownQueryContext:(id)a3;
- (void)executeQuery:(id)a3;
@end

@implementation SBHIconLibraryPredicateQueryEngine

- (void)executeQuery:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconLibraryAbstractQueryEngine *)self iconModel];
  v6 = [v5 leafIcons];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__SBHIconLibraryPredicateQueryEngine_executeQuery___block_invoke;
  v17[3] = &unk_1E808A1B8;
  v7 = v5;
  v18 = v7;
  v8 = [v6 bs_filter:v17];

  objc_initWeak(&location, self);
  v9 = [(SBHIconLibraryAbstractQueryEngine *)self processingQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__SBHIconLibraryPredicateQueryEngine_executeQuery___block_invoke_2;
  v12[3] = &unk_1E808A1E0;
  objc_copyWeak(&v15, &location);
  v12[4] = self;
  v13 = v4;
  v14 = v8;
  v10 = v8;
  v11 = v4;
  dispatch_async(v9, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

uint64_t __51__SBHIconLibraryPredicateQueryEngine_executeQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isIconVisible:v3])
  {
    IsLeafIconAndNotWidgetIcon = _SBIconIsLeafIconAndNotWidgetIcon(v3);
  }

  else
  {
    IsLeafIconAndNotWidgetIcon = 0;
  }

  return IsLeafIconAndNotWidgetIcon;
}

uint64_t __51__SBHIconLibraryPredicateQueryEngine_executeQuery___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    WeakRetained = [WeakRetained _processingQueue_isIconModelReloading];
    v3 = v10;
    if ((WeakRetained & 1) == 0)
    {
      v4 = objc_loadWeakRetained(v10 + 8);
      if (v4)
      {
        v5 = v4;
        [a1[4] _processingQueue_teardownQueryContext:v4];
      }

      v6 = [[SBHIconLibraryQueryContext alloc] initWithQuery:a1[5]];
      objc_storeWeak(v10 + 8, v6);
      [v10 _processingQueue_startNewQueryContext:v6];
      v7 = [a1[5] predicate];
      v8 = [a1[6] filteredSetUsingPredicate:v7];
      [a1[4] _processingQueue_addIcons:v8 iconLibraryQueryContext:v6 notifyDelegate:1];

      v3 = v10;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

- (void)_processingQueue_teardownQueryContext:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentlyRunningQueryContext);

  if (WeakRetained == v4)
  {
    objc_storeWeak(&self->_currentlyRunningQueryContext, 0);
  }

  v6.receiver = self;
  v6.super_class = SBHIconLibraryPredicateQueryEngine;
  [(SBHIconLibraryAbstractQueryEngine *)&v6 _processingQueue_teardownQueryContext:v4];
}

@end