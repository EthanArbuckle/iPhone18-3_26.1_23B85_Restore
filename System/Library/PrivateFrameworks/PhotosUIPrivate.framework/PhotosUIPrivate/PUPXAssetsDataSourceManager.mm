@interface PUPXAssetsDataSourceManager
- (PUPXAssetsDataSourceManager)init;
- (PUPXAssetsDataSourceManager)initWithUnderlyingDataSourceManager:(id)manager;
- (id)photosDataSource;
- (void)_handleScheduledUpdateWithID:(int64_t)d;
- (void)_scheduleUpdate;
- (void)_update;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PUPXAssetsDataSourceManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PUPXAssetsDataSourceManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXAssetsDataSourceManager.m" lineNumber:84 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PUPXAssetsDataSourceManager *)self _scheduleUpdate];
    observableCopy = v11;
  }
}

- (void)_update
{
  underlyingDataSourceManager = [(PUPXAssetsDataSourceManager *)self underlyingDataSourceManager];
  dataSource = [underlyingDataSourceManager dataSource];

  v4 = [[PUPXAssetsDataSource alloc] initWithUnderlyingDataSource:dataSource];
  [(PUAssetsDataSourceManager *)self setAssetsDataSource:v4];
}

- (void)_handleScheduledUpdateWithID:(int64_t)d
{
  if ([(PUPXAssetsDataSourceManager *)self _currentUpdateID]== d)
  {

    [(PUPXAssetsDataSourceManager *)self _update];
  }
}

- (void)_scheduleUpdate
{
  v3 = ([(PUPXAssetsDataSourceManager *)self _currentUpdateID]+ 1);
  [(PUPXAssetsDataSourceManager *)self _setCurrentUpdateId:v3];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PUPXAssetsDataSourceManager__scheduleUpdate__block_invoke;
  block[3] = &unk_1E7B804A8;
  objc_copyWeak(v5, &location);
  v5[1] = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __46__PUPXAssetsDataSourceManager__scheduleUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleScheduledUpdateWithID:*(a1 + 40)];
}

- (id)photosDataSource
{
  underlyingDataSourceManager = [(PUPXAssetsDataSourceManager *)self underlyingDataSourceManager];
  v4 = objc_opt_respondsToSelector();

  underlyingDataSourceManager2 = [(PUPXAssetsDataSourceManager *)self underlyingDataSourceManager];
  dataSource2 = underlyingDataSourceManager2;
  if (v4)
  {
    goto LABEL_4;
  }

  dataSource = [underlyingDataSourceManager2 dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    underlyingDataSourceManager3 = [(PUPXAssetsDataSourceManager *)self underlyingDataSourceManager];
    dataSource2 = [underlyingDataSourceManager3 dataSource];

LABEL_4:
    photosDataSource = [dataSource2 photosDataSource];

    goto LABEL_6;
  }

  photosDataSource = 0;
LABEL_6:

  return photosDataSource;
}

- (PUPXAssetsDataSourceManager)initWithUnderlyingDataSourceManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PUPXAssetsDataSourceManager;
  v6 = [(PUPXAssetsDataSourceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingDataSourceManager, manager);
    [(PXAssetsDataSourceManager *)v7->_underlyingDataSourceManager registerChangeObserver:v7 context:PUPXAssetsDataSourceManagerObservationContext];
    [(PUPXAssetsDataSourceManager *)v7 _update];
  }

  return v7;
}

- (PUPXAssetsDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXAssetsDataSourceManager.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PUPXAssetsDataSourceManager init]"}];

  abort();
}

@end