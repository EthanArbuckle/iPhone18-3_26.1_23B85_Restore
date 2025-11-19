@interface PXDataSectionManager
- (BOOL)isChangeProcessingPaused;
- (BOOL)isDataSectionEmpty;
- (PXDataSection)dataSection;
- (PXDataSectionManager)init;
- (PXDataSectionManager)initWithChildDataSectionManagers:(id)a3;
- (id)changeDetailsForChangedChildDataSectionManager:(id)a3 childChangeDetails:(id)a4;
- (id)changeDetailsForChildDataSectionManagersChangeDetails:(id)a3;
- (id)createDataSection;
- (void)_registerAsChangeObserverForDataSectionManagers:(id)a3;
- (void)_setDataSection:(id)a3 changeDetails:(id)a4;
- (void)_unregisterAsChangeObserverForDataSectionManagers:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)pauseBackgroundFetching;
- (void)setChangeProcessingPaused:(BOOL)a3 forReason:(id)a4;
- (void)setChildDataSectionManagers:(id)a3;
- (void)startBackgroundFetchingIfNeeded;
- (void)updateDataSectionWithChangeDetails:(id)a3;
@end

@implementation PXDataSectionManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (PXChildDataSourceManagerObserverContext == a5)
  {
    v15 = v8;
    v9 = v8;
    v10 = [(PXDataSectionManager *)self dataSectionIfCreated];
    if (v10)
    {
      v11 = v10;
      v12 = [(PXDataSectionManager *)self shouldInvalidateDataSectionForChildDataSectionManager:v9 changeDescriptor:a4];

      if (v12)
      {
        v13 = [v9 changeDetailsFromPreviousDataSection];
        [(PXDataSectionManager *)self childDataSectionManager:v9 didChangeDataSectionWithChangeDetails:v13];
        v14 = [(PXDataSectionManager *)self changeDetailsForChangedChildDataSectionManager:v9 childChangeDetails:v13];
        [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v14];
      }
    }

    v8 = v15;
  }
}

- (void)setChangeProcessingPaused:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(PXDataSectionManager *)self childDataSectionManagers];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setChangeProcessingPaused:v4 forReason:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v2 = [(PXDataSectionManager *)self childDataSectionManagers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) pauseBackgroundFetching];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
  v2 = [(PXDataSectionManager *)self childDataSectionManagers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) startBackgroundFetchingIfNeeded];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)changeDetailsForChangedChildDataSectionManager:(id)a3 childChangeDetails:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXDataSectionManager.m" lineNumber:129 description:{@"Method %s is a responsibility of subclass %@", "-[PXDataSectionManager changeDetailsForChangedChildDataSectionManager:childChangeDetails:]", v11}];

  abort();
}

- (id)changeDetailsForChildDataSectionManagersChangeDetails:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXDataSectionManager.m" lineNumber:125 description:{@"Method %s is a responsibility of subclass %@", "-[PXDataSectionManager changeDetailsForChildDataSectionManagersChangeDetails:]", v8}];

  abort();
}

- (void)setChildDataSectionManagers:(id)a3
{
  v4 = a3;
  childDataSectionManagers = self->_childDataSectionManagers;
  if (childDataSectionManagers != v4)
  {
    v18 = v4;
    v6 = [(NSArray *)childDataSectionManagers isEqual:v4];
    v4 = v18;
    if ((v6 & 1) == 0)
    {
      v7 = [off_1E7721450 changeDetailsFromArray:self->_childDataSectionManagers toArray:v18 changedObjects:MEMORY[0x1E695E0F0]];
      v8 = [v7 hasIncrementalChanges];
      v9 = self->_childDataSectionManagers;
      if (v8)
      {
        v10 = [v7 removedIndexes];
        v11 = [(NSArray *)v9 objectsAtIndexes:v10];
        [(PXDataSectionManager *)self _unregisterAsChangeObserverForDataSectionManagers:v11];

        v12 = [v7 insertedIndexes];
        v13 = [(NSArray *)v18 objectsAtIndexes:v12];
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

      v16 = [(PXDataSectionManager *)self dataSectionIfCreated];

      if (v16)
      {
        v17 = [(PXDataSectionManager *)self changeDetailsForChildDataSectionManagersChangeDetails:v7];
        [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v17];
      }

      v4 = v18;
    }
  }
}

- (BOOL)isDataSectionEmpty
{
  v2 = [(PXDataSectionManager *)self dataSection];
  v3 = [v2 containsAnyObjects];

  return v3 ^ 1;
}

- (PXDataSection)dataSection
{
  dataSection = self->_dataSection;
  if (!dataSection)
  {
    v4 = [(PXDataSectionManager *)self createDataSection];
    v5 = self->_dataSection;
    self->_dataSection = v4;

    dataSection = self->_dataSection;
  }

  return dataSection;
}

- (id)createDataSection
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDataSectionManager.m" lineNumber:85 description:{@"Method %s is a responsibility of subclass %@", "-[PXDataSectionManager createDataSection]", v6}];

  abort();
}

- (void)updateDataSectionWithChangeDetails:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PXDataSectionManager *)self createDataSection];
    [(PXDataSectionManager *)self _setDataSection:v5 changeDetails:v4];
  }
}

- (void)_setDataSection:(id)a3 changeDetails:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__PXDataSectionManager__setDataSection_changeDetails___block_invoke;
  v11[3] = &unk_1E774A448;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)_unregisterAsChangeObserverForDataSectionManagers:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) registerChangeObserver:self context:PXChildDataSourceManagerObserverContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_registerAsChangeObserverForDataSectionManagers:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) registerChangeObserver:self context:PXChildDataSourceManagerObserverContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (PXDataSectionManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_initWithChildDataSectionManagers_);
  [v4 handleFailureInMethod:a2 object:self file:@"PXDataSectionManager.m" lineNumber:36 description:{@"Use the designated initializer %@", v5}];

  abort();
}

- (PXDataSectionManager)initWithChildDataSectionManagers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXDataSectionManager;
  v5 = [(PXDataSectionManager *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    childDataSectionManagers = v5->_childDataSectionManagers;
    v5->_childDataSectionManagers = v6;

    [(PXDataSectionManager *)v5 _registerAsChangeObserverForDataSectionManagers:v5->_childDataSectionManagers];
  }

  return v5;
}

@end