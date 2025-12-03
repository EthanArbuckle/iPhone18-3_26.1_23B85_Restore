@interface PXStackedDataSourceManager
- (PXStackedDataSourceManager)initWithDataSectionManagers:(id)managers;
- (id)_newDataSource;
- (id)createInitialDataSource;
- (void)_registerAsChangeObserverForDataSectionManagers:(id)managers;
- (void)_unregisterAsChangeObserverForDataSectionManagers:(id)managers;
- (void)_updateDataSourceWithSectionChanges:(id)changes itemChanges:(id)itemChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDataSectionManagers:(id)managers;
@end

@implementation PXStackedDataSourceManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v16[1] = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  if (PXDataSectionManagerObserverContext == context && [(PXStackedDataSourceManager *)self initialDataSourceCreated])
  {
    v8 = observableCopy;
    changeDetailsFromPreviousDataSection = [v8 changeDetailsFromPreviousDataSection];
    dataSectionManagers = [(PXStackedDataSourceManager *)self dataSectionManagers];
    v11 = [dataSectionManagers indexOfObject:v8];

    v12 = 0;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && changeDetailsFromPreviousDataSection)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      v15 = v13;
      v16[0] = changeDetailsFromPreviousDataSection;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    [(PXStackedDataSourceManager *)self _updateDataSourceWithSectionChanges:changeDetailsWithNoChanges itemChanges:v12];
  }
}

- (id)createInitialDataSource
{
  [(PXStackedDataSourceManager *)self setInitialDataSourceCreated:1];
  _newDataSource = [(PXStackedDataSourceManager *)self _newDataSource];

  return _newDataSource;
}

- (void)setDataSectionManagers:(id)managers
{
  managersCopy = managers;
  dataSectionManagers = self->_dataSectionManagers;
  if (dataSectionManagers != managersCopy)
  {
    v19 = managersCopy;
    v6 = [(NSArray *)dataSectionManagers isEqual:managersCopy];
    managersCopy = v19;
    if ((v6 & 1) == 0)
    {
      v7 = [off_1E7721450 changeDetailsFromArray:self->_dataSectionManagers toArray:v19 changedObjects:MEMORY[0x1E695E0F0]];
      hasIncrementalChanges = [v7 hasIncrementalChanges];
      v9 = self->_dataSectionManagers;
      if (hasIncrementalChanges)
      {
        removedIndexes = [v7 removedIndexes];
        v11 = [(NSArray *)v9 objectsAtIndexes:removedIndexes];
        [(PXStackedDataSourceManager *)self _unregisterAsChangeObserverForDataSectionManagers:v11];

        v12 = [(NSArray *)v19 copy];
        v13 = self->_dataSectionManagers;
        self->_dataSectionManagers = v12;

        v14 = self->_dataSectionManagers;
        insertedIndexes = [v7 insertedIndexes];
        v16 = [(NSArray *)v14 objectsAtIndexes:insertedIndexes];
        [(PXStackedDataSourceManager *)self _registerAsChangeObserverForDataSectionManagers:v16];
      }

      else
      {
        [(PXStackedDataSourceManager *)self _unregisterAsChangeObserverForDataSectionManagers:self->_dataSectionManagers];
        v17 = [(NSArray *)v19 copy];
        v18 = self->_dataSectionManagers;
        self->_dataSectionManagers = v17;

        [(PXStackedDataSourceManager *)self _registerAsChangeObserverForDataSectionManagers:self->_dataSectionManagers];
      }

      if ([(PXStackedDataSourceManager *)self initialDataSourceCreated])
      {
        [(PXStackedDataSourceManager *)self _updateDataSourceWithSectionChanges:v7 itemChanges:0];
      }

      managersCopy = v19;
    }
  }
}

- (void)_updateDataSourceWithSectionChanges:(id)changes itemChanges:(id)itemChanges
{
  itemChangesCopy = itemChanges;
  changesCopy = changes;
  _newDataSource = [(PXStackedDataSourceManager *)self _newDataSource];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  v9 = [dataSource changeDetailsToDataSource:_newDataSource sectionChanges:changesCopy itemChanges:itemChangesCopy];

  [(PXSectionedDataSourceManager *)self setDataSource:_newDataSource changeDetails:v9];
}

- (id)_newDataSource
{
  [(PXStackedDataSourceManager *)self dataSectionManagers];
  objc_claimAutoreleasedReturnValue();
  PXMap();
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

        [*(*(&v9 + 1) + 8 * v8++) registerChangeObserver:self context:PXDataSectionManagerObserverContext];
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

        [*(*(&v9 + 1) + 8 * v8++) registerChangeObserver:self context:PXDataSectionManagerObserverContext];
      }

      while (v6 != v8);
      v6 = [managersCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (PXStackedDataSourceManager)initWithDataSectionManagers:(id)managers
{
  managersCopy = managers;
  v9.receiver = self;
  v9.super_class = PXStackedDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v9 init];
  if (v5)
  {
    v6 = [managersCopy copy];
    dataSectionManagers = v5->_dataSectionManagers;
    v5->_dataSectionManagers = v6;

    [(PXStackedDataSourceManager *)v5 _registerAsChangeObserverForDataSectionManagers:v5->_dataSectionManagers];
  }

  return v5;
}

@end