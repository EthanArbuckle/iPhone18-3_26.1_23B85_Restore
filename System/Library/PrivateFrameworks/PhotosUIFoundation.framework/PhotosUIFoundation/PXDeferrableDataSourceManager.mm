@interface PXDeferrableDataSourceManager
- (PXDeferrableDataSourceManager)init;
- (PXDeferrableDataSourceManager)initWithDataSourceManager:(id)manager;
- (PXDeferrableDataSourceManagerDelegate)delegate;
- (void)_finishTransitionToDataSource:(id)source changeDetailsArray:(id)array;
- (void)_internal_setDataSource:(id)source changeDetailsArray:(id)array;
- (void)_setPendingDataSource:(id)source changeDetailsArray:(id)array;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)resumeDataSourceChanges;
- (void)setDataSource:(id)source changeDetails:(id)details;
- (void)setDataSource:(id)source changeDetailsArray:(id)array;
- (void)setUnderlyingDataSourceManager:(id)manager;
@end

@implementation PXDeferrableDataSourceManager

- (PXDeferrableDataSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (UnderlyingDataSourceManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:154 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 1) != 0 && self->_hasInitialDataSource)
  {
    v15 = observableCopy;
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    dataSource2 = [(PXSectionedDataSourceManager *)self->_underlyingDataSourceManager dataSource];
    changeHistory = [(PXSectionedDataSourceManager *)self->_underlyingDataSourceManager changeHistory];
    v13 = [changeHistory changeDetailsFromDataSourceIdentifier:objc_msgSend(dataSource toDataSourceIdentifier:{"identifier"), objc_msgSend(dataSource2, "identifier")}];

    [(PXDeferrableDataSourceManager *)self _internal_setDataSource:dataSource2 changeDetailsArray:v13];
    observableCopy = v15;
  }
}

- (void)resumeDataSourceChanges
{
  if (self->_clientIsHandlingDataSourceTransition)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:124 description:@"Cannot call -[PXDeferrableDataSourceManager resumeDataSourceChanges] while an outstanding change is being made. This means we're not calling the completion block for accepting a change."];
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

- (void)_setPendingDataSource:(id)source changeDetailsArray:(id)array
{
  sourceCopy = source;
  arrayCopy = array;
  pendingDataSource = self->_pendingDataSource;
  self->_pendingDataSource = sourceCopy;
  v10 = sourceCopy;

  pendingDataSourceChangeDetails = self->_pendingDataSourceChangeDetails;
  self->_pendingDataSourceChangeDetails = arrayCopy;
}

- (void)_internal_setDataSource:(id)source changeDetailsArray:(id)array
{
  sourceCopy = source;
  arrayCopy = array;
  if (-[PXDeferrableDataSourceManager _canAttemptDataSourceChanges](self, "_canAttemptDataSourceChanges") && (-[PXDeferrableDataSourceManager delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 shouldSuspendDataSourceChangesForDataSourceManager:self], v8, !v9))
  {
    self->_clientIsHandlingDataSourceTransition = 1;
    objc_initWeak(&location, self);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __76__PXDeferrableDataSourceManager__internal_setDataSource_changeDetailsArray___block_invoke;
    v18 = &unk_1E7BB5808;
    objc_copyWeak(&v21, &location);
    v10 = sourceCopy;
    v19 = v10;
    v20 = arrayCopy;
    v11 = _Block_copy(&v15);
    v12 = [(PXDeferrableDataSourceManager *)self delegate:v15];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate = [(PXDeferrableDataSourceManager *)self delegate];
      [delegate dataSourceManager:self willSetDataSource:v10 completion:v11];
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
    [(PXDeferrableDataSourceManager *)self _setPendingDataSource:sourceCopy changeDetailsArray:arrayCopy];
  }
}

void __76__PXDeferrableDataSourceManager__internal_setDataSource_changeDetailsArray___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishTransitionToDataSource:*(a1 + 32) changeDetailsArray:*(a1 + 40)];
}

- (void)_finishTransitionToDataSource:(id)source changeDetailsArray:(id)array
{
  sourceCopy = source;
  arrayCopy = array;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:70 description:{@"%s must be called on the main thread", "-[PXDeferrableDataSourceManager _finishTransitionToDataSource:changeDetailsArray:]"}];
  }

  self->_clientIsHandlingDataSourceTransition = 0;
  v10.receiver = self;
  v10.super_class = PXDeferrableDataSourceManager;
  [(PXSectionedDataSourceManager *)&v10 setDataSource:sourceCopy changeDetailsArray:arrayCopy];
  [(PXDeferrableDataSourceManager *)self resumeDataSourceChanges];
}

- (void)setUnderlyingDataSourceManager:(id)manager
{
  v13[1] = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:53 description:{@"%s must be called on the main thread", "-[PXDeferrableDataSourceManager setUnderlyingDataSourceManager:]"}];
  }

  underlyingDataSourceManager = self->_underlyingDataSourceManager;
  if (underlyingDataSourceManager != managerCopy)
  {
    [(PXSectionedDataSourceManager *)underlyingDataSourceManager unregisterChangeObserver:self context:UnderlyingDataSourceManagerObservationContext];
    objc_storeStrong(&self->_underlyingDataSourceManager, manager);
    [(PXSectionedDataSourceManager *)self->_underlyingDataSourceManager registerChangeObserver:self context:UnderlyingDataSourceManagerObservationContext];
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    dataSource2 = [(PXSectionedDataSourceManager *)self->_underlyingDataSourceManager dataSource];
    v10 = +[PXSectionedDataSourceChangeDetails changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:toDataSourceIdentifier:](PXSectionedDataSourceChangeDetails, "changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:toDataSourceIdentifier:", [dataSource identifier], objc_msgSend(dataSource2, "identifier"));
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    [(PXDeferrableDataSourceManager *)self _internal_setDataSource:dataSource2 changeDetailsArray:v11];
  }
}

- (void)setDataSource:(id)source changeDetailsArray:(id)array
{
  sourceCopy = source;
  arrayCopy = array;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:49 description:{@"%s should not be called directly", "-[PXDeferrableDataSourceManager setDataSource:changeDetailsArray:]"}];

  abort();
}

- (void)setDataSource:(id)source changeDetails:(id)details
{
  sourceCopy = source;
  detailsCopy = details;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:45 description:{@"%s should not be called directly", "-[PXDeferrableDataSourceManager setDataSource:changeDetails:]"}];

  abort();
}

- (PXDeferrableDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDeferrableDataSourceManager.m" lineNumber:37 description:{@"%s is not available as initializer", "-[PXDeferrableDataSourceManager init]"}];

  abort();
}

- (PXDeferrableDataSourceManager)initWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = PXDeferrableDataSourceManager;
  v7 = [(PXSectionedDataSourceManager *)&v11 init];
  v8 = v7;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v8 file:@"PXDeferrableDataSourceManager.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"underlyingDataSourceManager"}];

    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v7)
  {
LABEL_3:
    objc_storeStrong(&v8->_underlyingDataSourceManager, manager);
    [(PXSectionedDataSourceManager *)v8->_underlyingDataSourceManager registerChangeObserver:v8 context:UnderlyingDataSourceManagerObservationContext];
  }

LABEL_4:

  return v8;
}

@end