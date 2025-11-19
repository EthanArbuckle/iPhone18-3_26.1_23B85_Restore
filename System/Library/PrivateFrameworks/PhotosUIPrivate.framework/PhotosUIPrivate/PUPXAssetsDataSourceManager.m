@interface PUPXAssetsDataSourceManager
- (PUPXAssetsDataSourceManager)init;
- (PUPXAssetsDataSourceManager)initWithUnderlyingDataSourceManager:(id)a3;
- (id)photosDataSource;
- (void)_handleScheduledUpdateWithID:(int64_t)a3;
- (void)_scheduleUpdate;
- (void)_update;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PUPXAssetsDataSourceManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PUPXAssetsDataSourceManagerObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUPXAssetsDataSourceManager.m" lineNumber:84 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PUPXAssetsDataSourceManager *)self _scheduleUpdate];
    v9 = v11;
  }
}

- (void)_update
{
  v3 = [(PUPXAssetsDataSourceManager *)self underlyingDataSourceManager];
  v5 = [v3 dataSource];

  v4 = [[PUPXAssetsDataSource alloc] initWithUnderlyingDataSource:v5];
  [(PUAssetsDataSourceManager *)self setAssetsDataSource:v4];
}

- (void)_handleScheduledUpdateWithID:(int64_t)a3
{
  if ([(PUPXAssetsDataSourceManager *)self _currentUpdateID]== a3)
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
  v3 = [(PUPXAssetsDataSourceManager *)self underlyingDataSourceManager];
  v4 = objc_opt_respondsToSelector();

  v5 = [(PUPXAssetsDataSourceManager *)self underlyingDataSourceManager];
  v6 = v5;
  if (v4)
  {
    goto LABEL_4;
  }

  v7 = [v5 dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(PUPXAssetsDataSourceManager *)self underlyingDataSourceManager];
    v6 = [v9 dataSource];

LABEL_4:
    v10 = [v6 photosDataSource];

    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (PUPXAssetsDataSourceManager)initWithUnderlyingDataSourceManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUPXAssetsDataSourceManager;
  v6 = [(PUPXAssetsDataSourceManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingDataSourceManager, a3);
    [(PXAssetsDataSourceManager *)v7->_underlyingDataSourceManager registerChangeObserver:v7 context:PUPXAssetsDataSourceManagerObservationContext];
    [(PUPXAssetsDataSourceManager *)v7 _update];
  }

  return v7;
}

- (PUPXAssetsDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPXAssetsDataSourceManager.m" lineNumber:25 description:{@"%s is not available as initializer", "-[PUPXAssetsDataSourceManager init]"}];

  abort();
}

@end