@interface PXSectionedDataSourceManager
- (PXSectionedDataSource)dataSource;
- (PXSectionedDataSourceManager)init;
- (id)allChangeDetailsFromDataSource:(id)source toDataSource:(id)dataSource;
- (id)changeDetailsFromDataSource:(id)source toDataSource:(id)dataSource;
- (id)createInitialDataSource;
- (id)queryObserversInterestingObjectReferences;
- (void)_reevaluateWaitingConditions;
- (void)_setDataSource:(id)source;
- (void)_waitingConditionDidTimeout:(id)timeout;
- (void)didPublishChanges:(unint64_t)changes;
- (void)registerChangeObserver:(id)observer context:(void *)context;
- (void)setDataSource:(id)source changeDetails:(id)details;
- (void)setDataSource:(id)source changeDetailsArray:(id)array;
- (void)unregisterChangeObserver:(id)observer context:(void *)context;
- (void)waitForCondition:(id)condition timeout:(double)timeout completionHandler:(id)handler;
@end

@implementation PXSectionedDataSourceManager

- (PXSectionedDataSourceManager)init
{
  v6.receiver = self;
  v6.super_class = PXSectionedDataSourceManager;
  v2 = [(PXObservable *)&v6 init];
  if (v2)
  {
    v3 = [[PXSectionedChangeDetailsRepository alloc] initWithChangeHistoryLimit:100];
    changeHistory = v2->_changeHistory;
    v2->_changeHistory = v3;
  }

  return v2;
}

- (PXSectionedDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    createInitialDataSource = [(PXSectionedDataSourceManager *)self createInitialDataSource];
    v5 = self->_dataSource;
    self->_dataSource = createInitialDataSource;

    [(PXSectionedDataSourceManager *)self didCreateInitialDataSource];
    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)_reevaluateWaitingConditions
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_waitingConditions count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    waitingConditions = self->_waitingConditions;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__PXSectionedDataSourceManager__reevaluateWaitingConditions__block_invoke;
    v19[3] = &unk_1E7BB6CA0;
    v6 = dataSource;
    v20 = v6;
    v7 = v3;
    v21 = v7;
    [(NSMutableArray *)waitingConditions enumerateObjectsUsingBlock:v19];
    if ([v7 count])
    {
      v8 = [(NSMutableArray *)self->_waitingConditions objectsAtIndexes:v7];
      [(NSMutableArray *)self->_waitingConditions removeObjectsAtIndexes:v7];
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          v13 = 0;
          do
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            completionHandler = [*(*(&v15 + 1) + 8 * v13) completionHandler];
            completionHandler[2](completionHandler, 1);

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v15 objects:v22 count:16];
        }

        while (v11);
      }
    }
  }
}

- (id)createInitialDataSource
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSourceManager.m" lineNumber:161 description:{@"Method %s is a responsibility of subclass %@", "-[PXSectionedDataSourceManager createInitialDataSource]", v6}];

  abort();
}

- (id)queryObserversInterestingObjectReferences
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __73__PXSectionedDataSourceManager_queryObserversInterestingObjectReferences__block_invoke;
  v10 = &unk_1E7BB6CF0;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [(PXObservable *)self enumerateObserversUsingBlock:&v7];
  allObjects = [v4 allObjects];

  return allObjects;
}

uint64_t __73__PXSectionedDataSourceManager_queryObserversInterestingObjectReferences__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_opt_respondsToSelector();
  v4 = v7;
  if (v3)
  {
    v5 = [v7 sectionedDataSourceManagerInterestingObjectReferences:*(a1 + 32)];
    if (v5)
    {
      [*(a1 + 40) addObjectsFromArray:v5];
    }

    v4 = v7;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)_setDataSource:(id)source
{
  sourceCopy = source;
  identifier = [(PXSectionedDataSource *)self->_dataSource identifier];
  if (identifier != [sourceCopy identifier])
  {
    objc_storeStrong(&self->_dataSource, source);
    [(PXObservable *)self signalChange:1];
  }
}

- (void)didPublishChanges:(unint64_t)changes
{
  changesCopy = changes;
  v5.receiver = self;
  v5.super_class = PXSectionedDataSourceManager;
  [(PXObservable *)&v5 didPublishChanges:?];
  if (changesCopy)
  {
    [(PXSectionedDataSourceManager *)self _reevaluateWaitingConditions];
  }
}

- (void)setDataSource:(id)source changeDetailsArray:(id)array
{
  sourceCopy = source;
  arrayCopy = array;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PXSectionedDataSourceManager_setDataSource_changeDetailsArray___block_invoke;
  v10[3] = &unk_1E7BB6CC8;
  v10[4] = self;
  v11 = sourceCopy;
  v12 = arrayCopy;
  v8 = arrayCopy;
  v9 = sourceCopy;
  [(PXObservable *)self performChanges:v10];
}

void __65__PXSectionedDataSourceManager_setDataSource_changeDetailsArray___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _setDataSource:*(a1 + 40)];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 32) changeHistory];
        [v8 addChangeDetails:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)setDataSource:(id)source changeDetails:(id)details
{
  v12 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  v7 = detailsCopy;
  if (detailsCopy)
  {
    v11 = detailsCopy;
    v8 = MEMORY[0x1E695DEC8];
    sourceCopy = source;
    sourceCopy2 = [v8 arrayWithObjects:&v11 count:1];
    [(PXSectionedDataSourceManager *)self setDataSource:sourceCopy changeDetailsArray:sourceCopy2, v11, v12];
  }

  else
  {
    sourceCopy2 = source;
    [(PXSectionedDataSourceManager *)self setDataSource:sourceCopy2 changeDetailsArray:0];
  }
}

- (void)_waitingConditionDidTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v4 = [(NSMutableArray *)self->_waitingConditions indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_waitingConditions removeObjectAtIndex:v4];
    completionHandler = [timeoutCopy completionHandler];
    completionHandler[2](completionHandler, 0);
  }
}

void __60__PXSectionedDataSourceManager__reevaluateWaitingConditions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 condition];
  v6 = v5[2](v5, *(a1 + 32));

  if (v6)
  {
    v7 = *(a1 + 40);

    [v7 addIndex:a3];
  }
}

- (void)waitForCondition:(id)condition timeout:(double)timeout completionHandler:(id)handler
{
  conditionCopy = condition;
  handlerCopy = handler;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  v11 = conditionCopy[2](conditionCopy, dataSource);

  if (v11)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    v12 = objc_alloc_init(PXSectionedDataSourceWaitingCondition);
    [(PXSectionedDataSourceWaitingCondition *)v12 setCondition:conditionCopy];
    [(PXSectionedDataSourceWaitingCondition *)v12 setCompletionHandler:handlerCopy];
    waitingConditions = self->_waitingConditions;
    if (!waitingConditions)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v15 = self->_waitingConditions;
      self->_waitingConditions = v14;

      waitingConditions = self->_waitingConditions;
    }

    [(NSMutableArray *)waitingConditions addObject:v12];
    objc_initWeak(&location, self);
    v16 = dispatch_time(0, (timeout * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__PXSectionedDataSourceManager_waitForCondition_timeout_completionHandler___block_invoke;
    block[3] = &unk_1E7BB6C78;
    objc_copyWeak(&v20, &location);
    v19 = v12;
    v17 = v12;
    dispatch_after(v16, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __75__PXSectionedDataSourceManager_waitForCondition_timeout_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _waitingConditionDidTimeout:*(a1 + 32)];
}

- (void)unregisterChangeObserver:(id)observer context:(void *)context
{
  v4.receiver = self;
  v4.super_class = PXSectionedDataSourceManager;
  [(PXObservable *)&v4 unregisterChangeObserver:observer context:context];
}

- (void)registerChangeObserver:(id)observer context:(void *)context
{
  v4.receiver = self;
  v4.super_class = PXSectionedDataSourceManager;
  [(PXObservable *)&v4 registerChangeObserver:observer context:context];
}

- (id)allChangeDetailsFromDataSource:(id)source toDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v8 = dataSourceCopy;
  if (sourceCopy)
  {
    identifier = [sourceCopy identifier];
    if (v8)
    {
LABEL_3:
      identifier2 = [v8 identifier];
      goto LABEL_6;
    }
  }

  else
  {
    identifier = 0;
    if (dataSourceCopy)
    {
      goto LABEL_3;
    }
  }

  identifier2 = 0;
LABEL_6:
  changeHistory = [(PXSectionedDataSourceManager *)self changeHistory];
  v12 = [changeHistory changeDetailsFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2];

  return v12;
}

- (id)changeDetailsFromDataSource:(id)source toDataSource:(id)dataSource
{
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v8 = dataSourceCopy;
  if (sourceCopy)
  {
    identifier = [sourceCopy identifier];
    if (v8)
    {
LABEL_3:
      identifier2 = [v8 identifier];
      goto LABEL_6;
    }
  }

  else
  {
    identifier = 0;
    if (dataSourceCopy)
    {
      goto LABEL_3;
    }
  }

  identifier2 = 0;
LABEL_6:
  changeHistory = [(PXSectionedDataSourceManager *)self changeHistory];
  v12 = [changeHistory coalescedChangeDetailsFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2];

  return v12;
}

@end