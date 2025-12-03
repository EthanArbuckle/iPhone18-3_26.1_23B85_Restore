@interface PXAssetsSession
- (PXAssetsSession)init;
- (PXAssetsSession)initWithDataSourceManager:(id)manager mediaProvider:(id)provider selectionManager:(id)selectionManager;
- (void)_updateDataSourceDependentProperties;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDataSource:(id)source;
- (void)setSelectionManager:(id)manager;
- (void)setSelectionSnapshot:(id)snapshot;
@end

@implementation PXAssetsSession

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (DataSourceManagerObservationContext_182050 != context && SelectionManagerObservationContext_182051 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:128 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v12 = observableCopy;
    [(PXAssetsSession *)self _updateDataSourceDependentProperties];
    observableCopy = v12;
  }
}

- (void)_updateDataSourceDependentProperties
{
  dataSourceManager = [(PXAssetsSession *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];

  selectionManager = [(PXAssetsSession *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  if (!selectionSnapshot || ([selectionSnapshot dataSource], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(dataSource, "isEqual:", v7), v7, v8))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__PXAssetsSession__updateDataSourceDependentProperties__block_invoke;
    v9[3] = &unk_1E7740E28;
    v10 = dataSource;
    v11 = selectionSnapshot;
    [(PXAssetsSession *)self performChanges:v9];
  }
}

void __55__PXAssetsSession__updateDataSourceDependentProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDataSource:v3];
  [v4 setSelectionSnapshot:*(a1 + 40)];
}

- (void)setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = self->_selectionSnapshot;
  v6 = v5;
  if (v5 == snapshotCopy)
  {
  }

  else
  {
    v7 = [(PXSelectionSnapshot *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectionSnapshot, snapshot);
      [(PXAssetsSession *)self signalChange:2];
    }
  }
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  v5 = self->_dataSource;
  v6 = v5;
  if (v5 == sourceCopy)
  {
  }

  else
  {
    v7 = [(PXSectionedDataSource *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dataSource, source);
      [(PXAssetsSession *)self signalChange:1];
    }
  }
}

- (void)setSelectionManager:(id)manager
{
  managerCopy = manager;
  v7 = managerCopy;
  if (self->_selectionManager != managerCopy)
  {
    if (managerCopy)
    {
      dataSourceManager = [(PXSectionedSelectionManager *)managerCopy dataSourceManager];
      dataSourceManager2 = [(PXAssetsSession *)self dataSourceManager];
      v10 = [dataSourceManager isEqual:dataSourceManager2];

      if ((v10 & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"!selectionManager || [selectionManager.dataSourceManager isEqual:self.dataSourceManager]"}];
      }
    }

    [(PXSectionedSelectionManager *)self->_selectionManager unregisterChangeObserver:self context:SelectionManagerObservationContext_182051];
    objc_storeStrong(&self->_selectionManager, manager);
    [(PXSectionedSelectionManager *)self->_selectionManager registerChangeObserver:self context:SelectionManagerObservationContext_182051];
    selectionSnapshot = [(PXSectionedSelectionManager *)v7 selectionSnapshot];
    v13 = selectionSnapshot;
    if (selectionSnapshot)
    {
      dataSource = [selectionSnapshot dataSource];
      v15 = [dataSource isEqual:self->_dataSource];

      if ((v15 & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:71 description:@"Initial selection snapshot are out of sync"];
      }
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __39__PXAssetsSession_setSelectionManager___block_invoke;
    v18[3] = &unk_1E7740E00;
    v19 = v13;
    v17 = v13;
    [(PXAssetsSession *)self performChanges:v18];
  }
}

- (PXAssetsSession)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:53 description:{@"%s is not available as initializer", "-[PXAssetsSession init]"}];

  abort();
}

- (PXAssetsSession)initWithDataSourceManager:(id)manager mediaProvider:(id)provider selectionManager:(id)selectionManager
{
  managerCopy = manager;
  providerCopy = provider;
  selectionManagerCopy = selectionManager;
  v13 = selectionManagerCopy;
  if (selectionManagerCopy)
  {
    dataSourceManager = [selectionManagerCopy dataSourceManager];
    v15 = [dataSourceManager isEqual:managerCopy];

    if ((v15 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!selectionManager || [selectionManager.dataSourceManager isEqual:dataSourceManager]"}];
    }
  }

  v28.receiver = self;
  v28.super_class = PXAssetsSession;
  v17 = [(PXAssetsSession *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_dataSourceManager, manager);
    objc_storeStrong(&v18->_mediaProvider, provider);
    objc_storeStrong(&v18->_selectionManager, selectionManager);
    dataSource = [managerCopy dataSource];
    dataSource = v18->_dataSource;
    v18->_dataSource = dataSource;

    selectionSnapshot = [v13 selectionSnapshot];
    selectionSnapshot = v18->_selectionSnapshot;
    v18->_selectionSnapshot = selectionSnapshot;

    v23 = v18->_selectionSnapshot;
    if (v23)
    {
      dataSource2 = [(PXSelectionSnapshot *)v23 dataSource];
      v25 = [dataSource2 isEqual:v18->_dataSource];

      if ((v25 & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:v18 file:@"PXAssetsSession.m" lineNumber:44 description:@"Initial data source and selection snapshot are out of sync"];
      }
    }

    [(PXSectionedDataSourceManager *)v18->_dataSourceManager registerChangeObserver:v18 context:DataSourceManagerObservationContext_182050];
    [(PXSectionedSelectionManager *)v18->_selectionManager registerChangeObserver:v18 context:SelectionManagerObservationContext_182051];
  }

  return v18;
}

@end