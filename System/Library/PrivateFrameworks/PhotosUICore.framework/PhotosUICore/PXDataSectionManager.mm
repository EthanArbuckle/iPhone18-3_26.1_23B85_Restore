@interface PXDataSectionManager
- (BOOL)isChangeProcessingPaused;
- (BOOL)isDataSectionEmpty;
- (PXDataSection)dataSection;
- (PXDataSectionManager)init;
- (PXDataSectionManager)initWithChildDataSectionManagers:(id)managers;
- (id)changeDetailsForChangedChildDataSectionManager:(id)manager childChangeDetails:(id)details;
- (id)changeDetailsForChildDataSectionManagersChangeDetails:(id)details;
- (id)createDataSection;
- (void)_registerAsChangeObserverForDataSectionManagers:(id)managers;
- (void)_setDataSection:(id)section changeDetails:(id)details;
- (void)_unregisterAsChangeObserverForDataSectionManagers:(id)managers;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)pauseBackgroundFetching;
- (void)setChangeProcessingPaused:(BOOL)paused forReason:(id)reason;
- (void)setChildDataSectionManagers:(id)managers;
- (void)startBackgroundFetchingIfNeeded;
- (void)updateDataSectionWithChangeDetails:(id)details;
@end

@implementation PXDataSectionManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXChildDataSourceManagerObserverContext == context)
  {
    v15 = observableCopy;
    v9 = observableCopy;
    dataSectionIfCreated = [(PXDataSectionManager *)self dataSectionIfCreated];
    if (dataSectionIfCreated)
    {
      v11 = dataSectionIfCreated;
      v12 = [(PXDataSectionManager *)self shouldInvalidateDataSectionForChildDataSectionManager:v9 changeDescriptor:change];

      if (v12)
      {
        changeDetailsFromPreviousDataSection = [v9 changeDetailsFromPreviousDataSection];
        [(PXDataSectionManager *)self childDataSectionManager:v9 didChangeDataSectionWithChangeDetails:changeDetailsFromPreviousDataSection];
        v14 = [(PXDataSectionManager *)self changeDetailsForChangedChildDataSectionManager:v9 childChangeDetails:changeDetailsFromPreviousDataSection];
        [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v14];
      }
    }

    observableCopy = v15;
  }
}

- (void)setChangeProcessingPaused:(BOOL)paused forReason:(id)reason
{
  pausedCopy = paused;
  v17 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  childDataSectionManagers = [(PXDataSectionManager *)self childDataSectionManagers];
  v8 = [childDataSectionManagers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(childDataSectionManagers);
        }

        [*(*(&v12 + 1) + 8 * v11++) setChangeProcessingPaused:pausedCopy forReason:reasonCopy];
      }

      while (v9 != v11);
      v9 = [childDataSectionManagers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (BOOL)isChangeProcessingPaused
{
  [(PXDataSectionManager *)self childDataSectionManagers];
  objc_claimAutoreleasedReturnValue();
  PXExists();
}

- (void)pauseBackgroundFetching
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  childDataSectionManagers = [(PXDataSectionManager *)self childDataSectionManagers];
  v3 = [childDataSectionManagers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(childDataSectionManagers);
        }

        [*(*(&v7 + 1) + 8 * v6++) pauseBackgroundFetching];
      }

      while (v4 != v6);
      v4 = [childDataSectionManagers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)startBackgroundFetchingIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  childDataSectionManagers = [(PXDataSectionManager *)self childDataSectionManagers];
  v3 = [childDataSectionManagers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(childDataSectionManagers);
        }

        [*(*(&v7 + 1) + 8 * v6++) startBackgroundFetchingIfNeeded];
      }

      while (v4 != v6);
      v4 = [childDataSectionManagers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)changeDetailsForChangedChildDataSectionManager:(id)manager childChangeDetails:(id)details
{
  managerCopy = manager;
  detailsCopy = details;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDataSectionManager.m" lineNumber:129 description:{@"Method %s is a responsibility of subclass %@", "-[PXDataSectionManager changeDetailsForChangedChildDataSectionManager:childChangeDetails:]", v11}];

  abort();
}

- (id)changeDetailsForChildDataSectionManagersChangeDetails:(id)details
{
  detailsCopy = details;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDataSectionManager.m" lineNumber:125 description:{@"Method %s is a responsibility of subclass %@", "-[PXDataSectionManager changeDetailsForChildDataSectionManagersChangeDetails:]", v8}];

  abort();
}

- (void)setChildDataSectionManagers:(id)managers
{
  managersCopy = managers;
  childDataSectionManagers = self->_childDataSectionManagers;
  if (childDataSectionManagers != managersCopy)
  {
    v18 = managersCopy;
    v6 = [(NSArray *)childDataSectionManagers isEqual:managersCopy];
    managersCopy = v18;
    if ((v6 & 1) == 0)
    {
      v7 = [off_1E7721450 changeDetailsFromArray:self->_childDataSectionManagers toArray:v18 changedObjects:MEMORY[0x1E695E0F0]];
      hasIncrementalChanges = [v7 hasIncrementalChanges];
      v9 = self->_childDataSectionManagers;
      if (hasIncrementalChanges)
      {
        removedIndexes = [v7 removedIndexes];
        v11 = [(NSArray *)v9 objectsAtIndexes:removedIndexes];
        [(PXDataSectionManager *)self _unregisterAsChangeObserverForDataSectionManagers:v11];

        insertedIndexes = [v7 insertedIndexes];
        v13 = [(NSArray *)v18 objectsAtIndexes:insertedIndexes];
        [(PXDataSectionManager *)self _registerAsChangeObserverForDataSectionManagers:v13];
      }

      else
      {
        [(PXDataSectionManager *)self _unregisterAsChangeObserverForDataSectionManagers:self->_childDataSectionManagers];
        [(PXDataSectionManager *)self _registerAsChangeObserverForDataSectionManagers:v18];
      }

      v14 = [(NSArray *)v18 copy];
      v15 = self->_childDataSectionManagers;
      self->_childDataSectionManagers = v14;

      dataSectionIfCreated = [(PXDataSectionManager *)self dataSectionIfCreated];

      if (dataSectionIfCreated)
      {
        v17 = [(PXDataSectionManager *)self changeDetailsForChildDataSectionManagersChangeDetails:v7];
        [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v17];
      }

      managersCopy = v18;
    }
  }
}

- (BOOL)isDataSectionEmpty
{
  dataSection = [(PXDataSectionManager *)self dataSection];
  containsAnyObjects = [dataSection containsAnyObjects];

  return containsAnyObjects ^ 1;
}

- (PXDataSection)dataSection
{
  dataSection = self->_dataSection;
  if (!dataSection)
  {
    createDataSection = [(PXDataSectionManager *)self createDataSection];
    v5 = self->_dataSection;
    self->_dataSection = createDataSection;

    dataSection = self->_dataSection;
  }

  return dataSection;
}

- (id)createDataSection
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDataSectionManager.m" lineNumber:85 description:{@"Method %s is a responsibility of subclass %@", "-[PXDataSectionManager createDataSection]", v6}];

  abort();
}

- (void)updateDataSectionWithChangeDetails:(id)details
{
  if (details)
  {
    detailsCopy = details;
    createDataSection = [(PXDataSectionManager *)self createDataSection];
    [(PXDataSectionManager *)self _setDataSection:createDataSection changeDetails:detailsCopy];
  }
}

- (void)_setDataSection:(id)section changeDetails:(id)details
{
  sectionCopy = section;
  detailsCopy = details;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__PXDataSectionManager__setDataSection_changeDetails___block_invoke;
  v11[3] = &unk_1E774A448;
  v11[4] = self;
  v12 = sectionCopy;
  v13 = detailsCopy;
  v8 = detailsCopy;
  v9 = sectionCopy;
  [(PXDataSectionManager *)self performChanges:v11];
  previousDataSection = self->_previousDataSection;
  self->_previousDataSection = 0;
}

uint64_t __54__PXDataSectionManager__setDataSection_changeDetails___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) identifier];
  result = [*(a1 + 40) identifier];
  if (v2 != result)
  {
    objc_storeStrong((*(a1 + 32) + 128), *(*(a1 + 32) + 96));
    *(*(a1 + 32) + 136) = [*(a1 + 40) identifier];
    if (([*(a1 + 48) hasIncrementalChanges] & 1) != 0 || objc_msgSend(*(*(a1 + 32) + 96), "count") || objc_msgSend(*(a1 + 40), "count"))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 48);
      v6 = *(v4 + 120);
      *(v4 + 120) = v5;
    }

    else
    {
      v8 = [off_1E7721450 changeDetailsWithNoChanges];
      v9 = *(a1 + 32);
      v6 = *(v9 + 120);
      *(v9 + 120) = v8;
    }

    objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
    v7 = *(a1 + 32);

    return [v7 signalChange:1];
  }

  return result;
}

- (void)_unregisterAsChangeObserverForDataSectionManagers:(id)managers
{
  v14 = *MEMORY[0x1E69E9840];
  managersCopy = managers;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [managersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(managersCopy);
        }

        [*(*(&v9 + 1) + 8 * v8++) registerChangeObserver:self context:PXChildDataSourceManagerObserverContext];
      }

      while (v6 != v8);
      v6 = [managersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_registerAsChangeObserverForDataSectionManagers:(id)managers
{
  v14 = *MEMORY[0x1E69E9840];
  managersCopy = managers;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [managersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(managersCopy);
        }

        [*(*(&v9 + 1) + 8 * v8++) registerChangeObserver:self context:PXChildDataSourceManagerObserverContext];
      }

      while (v6 != v8);
      v6 = [managersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (PXDataSectionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_initWithChildDataSectionManagers_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDataSectionManager.m" lineNumber:36 description:{@"Use the designated initializer %@", v5}];

  abort();
}

- (PXDataSectionManager)initWithChildDataSectionManagers:(id)managers
{
  managersCopy = managers;
  v9.receiver = self;
  v9.super_class = PXDataSectionManager;
  v5 = [(PXDataSectionManager *)&v9 init];
  if (v5)
  {
    v6 = [managersCopy copy];
    childDataSectionManagers = v5->_childDataSectionManagers;
    v5->_childDataSectionManagers = v6;

    [(PXDataSectionManager *)v5 _registerAsChangeObserverForDataSectionManagers:v5->_childDataSectionManagers];
  }

  return v5;
}

@end