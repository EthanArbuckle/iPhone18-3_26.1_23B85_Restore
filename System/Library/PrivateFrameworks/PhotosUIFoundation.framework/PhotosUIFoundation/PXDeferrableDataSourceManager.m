@interface PXDeferrableDataSourceManager
- (PXDeferrableDataSourceManager)init;
- (PXDeferrableDataSourceManager)initWithDataSourceManager:(id)a3;
- (PXDeferrableDataSourceManagerDelegate)delegate;
- (void)_finishTransitionToDataSource:(id)a3 changeDetailsArray:(id)a4;
- (void)_internal_setDataSource:(id)a3 changeDetailsArray:(id)a4;
- (void)_setPendingDataSource:(id)a3 changeDetailsArray:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)resumeDataSourceChanges;
- (void)setDataSource:(id)a3 changeDetails:(id)a4;
- (void)setDataSource:(id)a3 changeDetailsArray:(id)a4;
- (void)setUnderlyingDataSourceManager:(id)a3;
@end

@implementation PXDeferrableDataSourceManager

- (PXDeferrableDataSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (UnderlyingDataSourceManagerObservationContext != a5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:154 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 1) != 0 && self->_hasInitialDataSource)
  {
    v15 = v9;
    v10 = [(PXSectionedDataSourceManager *)self dataSource];
    v11 = [(PXSectionedDataSourceManager *)self->_underlyingDataSourceManager dataSource];
    v12 = [(PXSectionedDataSourceManager *)self->_underlyingDataSourceManager changeHistory];
    v13 = [v12 changeDetailsFromDataSourceIdentifier:objc_msgSend(v10 toDataSourceIdentifier:{"identifier"), objc_msgSend(v11, "identifier")}];

    [(PXDeferrableDataSourceManager *)self _internal_setDataSource:v11 changeDetailsArray:v13];
    v9 = v15;
  }
}

- (void)resumeDataSourceChanges
{
  if (self->_clientIsHandlingDataSourceTransition)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:124 description:@"Cannot call -[PXDeferrableDataSourceManager resumeDataSourceChanges] while an outstanding change is being made. This means we're not calling the completion block for accepting a change."];
  }

  pendingDataSource = self->_pendingDataSource;
  if (pendingDataSource)
  {
    pendingDataSourceChangeDetails = self->_pendingDataSourceChangeDetails;
    self->_pendingDataSource = 0;
    v5 = pendingDataSourceChangeDetails;
    v9 = pendingDataSource;

    v6 = self->_pendingDataSourceChangeDetails;
    self->_pendingDataSourceChangeDetails = 0;

    [(PXDeferrableDataSourceManager *)self _internal_setDataSource:v9 changeDetailsArray:v5];
  }
}

- (void)_setPendingDataSource:(id)a3 changeDetailsArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  pendingDataSource = self->_pendingDataSource;
  self->_pendingDataSource = v6;
  v10 = v6;

  pendingDataSourceChangeDetails = self->_pendingDataSourceChangeDetails;
  self->_pendingDataSourceChangeDetails = v7;
}

- (void)_internal_setDataSource:(id)a3 changeDetailsArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[PXDeferrableDataSourceManager _canAttemptDataSourceChanges](self, "_canAttemptDataSourceChanges") && (-[PXDeferrableDataSourceManager delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 shouldSuspendDataSourceChangesForDataSourceManager:self], v8, !v9))
  {
    self->_clientIsHandlingDataSourceTransition = 1;
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __76__PXDeferrableDataSourceManager__internal_setDataSource_changeDetailsArray___block_invoke;
    v18 = &unk_1E7BB5808;
    objc_copyWeak(&v21, &location);
    v10 = v6;
    v19 = v10;
    v20 = v7;
    v11 = _Block_copy(&v15);
    v12 = [(PXDeferrableDataSourceManager *)self delegate:v15];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      v14 = [(PXDeferrableDataSourceManager *)self delegate];
      [v14 dataSourceManager:self willSetDataSource:v10 completion:v11];
    }

    else
    {
      v11[2](v11);
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXDeferrableDataSourceManager *)self _setPendingDataSource:v6 changeDetailsArray:v7];
  }
}

void __76__PXDeferrableDataSourceManager__internal_setDataSource_changeDetailsArray___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishTransitionToDataSource:*(a1 + 32) changeDetailsArray:*(a1 + 40)];
}

- (void)_finishTransitionToDataSource:(id)a3 changeDetailsArray:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:70 description:{@"%s must be called on the main thread", "-[PXDeferrableDataSourceManager _finishTransitionToDataSource:changeDetailsArray:]"}];
  }

  self->_clientIsHandlingDataSourceTransition = 0;
  v10.receiver = self;
  v10.super_class = PXDeferrableDataSourceManager;
  [(PXSectionedDataSourceManager *)&v10 setDataSource:v7 changeDetailsArray:v8];
  [(PXDeferrableDataSourceManager *)self resumeDataSourceChanges];
}

- (void)setUnderlyingDataSourceManager:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:53 description:{@"%s must be called on the main thread", "-[PXDeferrableDataSourceManager setUnderlyingDataSourceManager:]"}];
  }

  underlyingDataSourceManager = self->_underlyingDataSourceManager;
  if (underlyingDataSourceManager != v6)
  {
    [(PXSectionedDataSourceManager *)underlyingDataSourceManager unregisterChangeObserver:self context:UnderlyingDataSourceManagerObservationContext];
    objc_storeStrong(&self->_underlyingDataSourceManager, a3);
    [(PXSectionedDataSourceManager *)self->_underlyingDataSourceManager registerChangeObserver:self context:UnderlyingDataSourceManagerObservationContext];
    v8 = [(PXSectionedDataSourceManager *)self dataSource];
    v9 = [(PXSectionedDataSourceManager *)self->_underlyingDataSourceManager dataSource];
    v10 = +[PXSectionedDataSourceChangeDetails changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:toDataSourceIdentifier:](PXSectionedDataSourceChangeDetails, "changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:toDataSourceIdentifier:", [v8 identifier], objc_msgSend(v9, "identifier"));
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [(PXDeferrableDataSourceManager *)self _internal_setDataSource:v9 changeDetailsArray:v11];
  }
}

- (void)setDataSource:(id)a3 changeDetailsArray:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:49 description:{@"%s should not be called directly", "-[PXDeferrableDataSourceManager setDataSource:changeDetailsArray:]"}];

  abort();
}

- (void)setDataSource:(id)a3 changeDetails:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:45 description:{@"%s should not be called directly", "-[PXDeferrableDataSourceManager setDataSource:changeDetails:]"}];

  abort();
}

- (PXDeferrableDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXDeferrableDataSourceManager init]"}];

  abort();
}

- (PXDeferrableDataSourceManager)initWithDataSourceManager:(id)a3
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PXDeferrableDataSourceManager;
  v7 = [(PXSectionedDataSourceManager *)&v11 init];
  v8 = v7;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:v8 file:@"PXDeferrableDataSourceManager.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"underlyingDataSourceManager"}];

    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v7)
  {
LABEL_3:
    objc_storeStrong(&v8->_underlyingDataSourceManager, a3);
    [(PXSectionedDataSourceManager *)v8->_underlyingDataSourceManager registerChangeObserver:v8 context:UnderlyingDataSourceManagerObservationContext];
  }

LABEL_4:

  return v8;
}

@end