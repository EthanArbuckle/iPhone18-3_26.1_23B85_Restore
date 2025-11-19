@interface PXSettingsIndexer
- (PXSettingsIndexer)init;
- (PXSettingsIndexer)initWithRootSettings:(id)a3;
- (id)startIndexingWithCompletionHandler:(id)a3;
- (void)_callCompletionHandlersIfNecessary;
- (void)_handleResultIndex:(id)a3;
- (void)_startIndexingIfNecessary;
@end

@implementation PXSettingsIndexer

- (void)_callCompletionHandlersIfNecessary
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(PXSettingsIndexer *)self state]== 2)
  {
    v3 = [(PXSettingsIndexer *)self completionHandlers];
    v4 = [v3 copy];

    if ([v4 count])
    {
      v5 = [(PXSettingsIndexer *)self completionHandlers];
      [v5 removeAllObjects];

      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v6);
            }

            (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)_handleResultIndex:(id)a3
{
  v4 = a3;
  [(PXSettingsIndexer *)self setIndexingProgress:0];
  if (v4)
  {
    [(PXSettingsIndexer *)self setIndex:v4];
    [(PXSettingsIndexer *)self setState:2];
    [(PXSettingsIndexer *)self _callCompletionHandlersIfNecessary];
  }

  else
  {
    [(PXSettingsIndexer *)self setState:0];
  }
}

- (void)_startIndexingIfNecessary
{
  if (![(PXSettingsIndexer *)self state])
  {
    [(PXSettingsIndexer *)self setState:1];
    objc_initWeak(&location, self);
    v3 = [(PXSettingsIndexer *)self rootSettings];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __46__PXSettingsIndexer__startIndexingIfNecessary__block_invoke;
    v8 = &unk_1E7742C68;
    objc_copyWeak(&v9, &location);
    v4 = [PXSettingsIndex createIndexForSettings:v3 resultHandler:&v5];
    [(PXSettingsIndexer *)self setIndexingProgress:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __46__PXSettingsIndexer__startIndexingIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleResultIndex:v3];
}

- (id)startIndexingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXSettingsIndexer *)self completionHandlers];
  v6 = [v4 copy];

  v7 = _Block_copy(v6);
  [v5 addObject:v7];

  [(PXSettingsIndexer *)self _startIndexingIfNecessary];
  [(PXSettingsIndexer *)self _callCompletionHandlersIfNecessary];

  return [(PXSettingsIndexer *)self indexingProgress];
}

- (PXSettingsIndexer)initWithRootSettings:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXSettingsIndexer;
  v6 = [(PXSettingsIndexer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootSettings, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    completionHandlers = v7->_completionHandlers;
    v7->_completionHandlers = v8;
  }

  return v7;
}

- (PXSettingsIndexer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSettingsIndexer.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXSettingsIndexer init]"}];

  abort();
}

@end