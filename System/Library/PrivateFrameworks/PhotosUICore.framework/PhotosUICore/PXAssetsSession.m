@interface PXAssetsSession
- (PXAssetsSession)init;
- (PXAssetsSession)initWithDataSourceManager:(id)a3 mediaProvider:(id)a4 selectionManager:(id)a5;
- (void)_updateDataSourceDependentProperties;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDataSource:(id)a3;
- (void)setSelectionManager:(id)a3;
- (void)setSelectionSnapshot:(id)a3;
@end

@implementation PXAssetsSession

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (DataSourceManagerObservationContext_182050 != a5 && SelectionManagerObservationContext_182051 != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:128 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v12 = v9;
    [(PXAssetsSession *)self _updateDataSourceDependentProperties];
    v9 = v12;
  }
}

- (void)_updateDataSourceDependentProperties
{
  v3 = [(PXAssetsSession *)self dataSourceManager];
  v4 = [v3 dataSource];

  v5 = [(PXAssetsSession *)self selectionManager];
  v6 = [v5 selectionSnapshot];

  if (!v6 || ([v6 dataSource], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v4, "isEqual:", v7), v7, v8))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__PXAssetsSession__updateDataSourceDependentProperties__block_invoke;
    v9[3] = &unk_1E7740E28;
    v10 = v4;
    v11 = v6;
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

- (void)setSelectionSnapshot:(id)a3
{
  v8 = a3;
  v5 = self->_selectionSnapshot;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXSelectionSnapshot *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_selectionSnapshot, a3);
      [(PXAssetsSession *)self signalChange:2];
    }
  }
}

- (void)setDataSource:(id)a3
{
  v8 = a3;
  v5 = self->_dataSource;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PXSectionedDataSource *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_dataSource, a3);
      [(PXAssetsSession *)self signalChange:1];
    }
  }
}

- (void)setSelectionManager:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self->_selectionManager != v6)
  {
    if (v6)
    {
      v8 = [(PXSectionedSelectionManager *)v6 dataSourceManager];
      v9 = [(PXAssetsSession *)self dataSourceManager];
      v10 = [v8 isEqual:v9];

      if ((v10 & 1) == 0)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"!selectionManager || [selectionManager.dataSourceManager isEqual:self.dataSourceManager]"}];
      }
    }

    [(PXSectionedSelectionManager *)self->_selectionManager unregisterChangeObserver:self context:SelectionManagerObservationContext_182051];
    objc_storeStrong(&self->_selectionManager, a3);
    [(PXSectionedSelectionManager *)self->_selectionManager registerChangeObserver:self context:SelectionManagerObservationContext_182051];
    v12 = [(PXSectionedSelectionManager *)v7 selectionSnapshot];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 dataSource];
      v15 = [v14 isEqual:self->_dataSource];

      if ((v15 & 1) == 0)
      {
        v16 = [MEMORY[0x1E696AAA8] currentHandler];
        [v16 handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:71 description:@"Initial selection snapshot are out of sync"];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:53 description:{@"%s is not available as initializer", "-[PXAssetsSession init]"}];

  abort();
}

- (PXAssetsSession)initWithDataSourceManager:(id)a3 mediaProvider:(id)a4 selectionManager:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v12)
  {
    v14 = [v12 dataSourceManager];
    v15 = [v14 isEqual:v10];

    if ((v15 & 1) == 0)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"PXAssetsSession.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!selectionManager || [selectionManager.dataSourceManager isEqual:dataSourceManager]"}];
    }
  }

  v28.receiver = self;
  v28.super_class = PXAssetsSession;
  v17 = [(PXAssetsSession *)&v28 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_dataSourceManager, a3);
    objc_storeStrong(&v18->_mediaProvider, a4);
    objc_storeStrong(&v18->_selectionManager, a5);
    v19 = [v10 dataSource];
    dataSource = v18->_dataSource;
    v18->_dataSource = v19;

    v21 = [v13 selectionSnapshot];
    selectionSnapshot = v18->_selectionSnapshot;
    v18->_selectionSnapshot = v21;

    v23 = v18->_selectionSnapshot;
    if (v23)
    {
      v24 = [(PXSelectionSnapshot *)v23 dataSource];
      v25 = [v24 isEqual:v18->_dataSource];

      if ((v25 & 1) == 0)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:a2 object:v18 file:@"PXAssetsSession.m" lineNumber:44 description:@"Initial data source and selection snapshot are out of sync"];
      }
    }

    [(PXSectionedDataSourceManager *)v18->_dataSourceManager registerChangeObserver:v18 context:DataSourceManagerObservationContext_182050];
    [(PXSectionedSelectionManager *)v18->_selectionManager registerChangeObserver:v18 context:SelectionManagerObservationContext_182051];
  }

  return v18;
}

@end