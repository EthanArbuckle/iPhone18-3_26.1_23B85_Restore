@interface PXStackedDataSourceManager
- (PXStackedDataSourceManager)initWithDataSectionManagers:(id)a3;
- (id)_newDataSource;
- (id)createInitialDataSource;
- (void)_registerAsChangeObserverForDataSectionManagers:(id)a3;
- (void)_unregisterAsChangeObserverForDataSectionManagers:(id)a3;
- (void)_updateDataSourceWithSectionChanges:(id)a3 itemChanges:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDataSectionManagers:(id)a3;
@end

@implementation PXStackedDataSourceManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (PXDataSectionManagerObserverContext == a5 && [(PXStackedDataSourceManager *)self initialDataSourceCreated])
  {
    v8 = v7;
    v9 = [v8 changeDetailsFromPreviousDataSection];
    v10 = [(PXStackedDataSourceManager *)self dataSectionManagers];
    v11 = [v10 indexOfObject:v8];

    v12 = 0;
    if (v11 != 0x7FFFFFFFFFFFFFFFLL && v9)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      v15 = v13;
      v16[0] = v9;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    v14 = [off_1E7721450 changeDetailsWithNoChanges];
    [(PXStackedDataSourceManager *)self _updateDataSourceWithSectionChanges:v14 itemChanges:v12];
  }
}

- (id)createInitialDataSource
{
  [(PXStackedDataSourceManager *)self setInitialDataSourceCreated:1];
  v3 = [(PXStackedDataSourceManager *)self _newDataSource];

  return v3;
}

- (void)setDataSectionManagers:(id)a3
{
  v4 = a3;
  dataSectionManagers = self->_dataSectionManagers;
  if (dataSectionManagers != v4)
  {
    v19 = v4;
    v6 = [(NSArray *)dataSectionManagers isEqual:v4];
    v4 = v19;
    if ((v6 & 1) == 0)
    {
      v7 = [off_1E7721450 changeDetailsFromArray:self->_dataSectionManagers toArray:v19 changedObjects:MEMORY[0x1E695E0F0]];
      v8 = [v7 hasIncrementalChanges];
      v9 = self->_dataSectionManagers;
      if (v8)
      {
        v10 = [v7 removedIndexes];
        v11 = [(NSArray *)v9 objectsAtIndexes:v10];
        [(PXStackedDataSourceManager *)self _unregisterAsChangeObserverForDataSectionManagers:v11];

        v12 = [(NSArray *)v19 copy];
        v13 = self->_dataSectionManagers;
        self->_dataSectionManagers = v12;

        v14 = self->_dataSectionManagers;
        v15 = [v7 insertedIndexes];
        v16 = [(NSArray *)v14 objectsAtIndexes:v15];
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

      v4 = v19;
    }
  }
}

- (void)_updateDataSourceWithSectionChanges:(id)a3 itemChanges:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(PXStackedDataSourceManager *)self _newDataSource];
  v8 = [(PXSectionedDataSourceManager *)self dataSource];
  v9 = [v8 changeDetailsToDataSource:v10 sectionChanges:v7 itemChanges:v6];

  [(PXSectionedDataSourceManager *)self setDataSource:v10 changeDetails:v9];
}

- (id)_newDataSource
{
  [(PXStackedDataSourceManager *)self dataSectionManagers];
  objc_claimAutoreleasedReturnValue();
  PXMap();
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

        [*(*(&v9 + 1) + 8 * v8++) registerChangeObserver:self context:PXDataSectionManagerObserverContext];
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

        [*(*(&v9 + 1) + 8 * v8++) registerChangeObserver:self context:PXDataSectionManagerObserverContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (PXStackedDataSourceManager)initWithDataSectionManagers:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStackedDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dataSectionManagers = v5->_dataSectionManagers;
    v5->_dataSectionManagers = v6;

    [(PXStackedDataSourceManager *)v5 _registerAsChangeObserverForDataSectionManagers:v5->_dataSectionManagers];
  }

  return v5;
}

@end