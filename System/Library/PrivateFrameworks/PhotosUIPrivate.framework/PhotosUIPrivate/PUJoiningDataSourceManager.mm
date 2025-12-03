@interface PUJoiningDataSourceManager
- (PUJoiningDataSourceManager)initWithDataSourceManagers:(id)managers;
- (id)assetsDataSourceManagerInterestingAssetReferences:(id)references;
- (void)_handleScheduledUpdateWithID:(int64_t)d;
- (void)_scheduleUpdate;
- (void)_update;
@end

@implementation PUJoiningDataSourceManager

- (id)assetsDataSourceManagerInterestingAssetReferences:(id)references
{
  delegate = [(PUAssetsDataSourceManager *)self delegate];
  v5 = [delegate assetsDataSourceManagerInterestingAssetReferences:self];

  return v5;
}

- (void)_update
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  dataSourceManagers = [(PUJoiningDataSourceManager *)self dataSourceManagers];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(dataSourceManagers, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataSourceManagers2 = [(PUJoiningDataSourceManager *)self dataSourceManagers];
  v7 = [dataSourceManagers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(dataSourceManagers2);
        }

        assetsDataSource = [*(*(&v13 + 1) + 8 * v10) assetsDataSource];
        [v5 addObject:assetsDataSource];

        ++v10;
      }

      while (v8 != v10);
      v8 = [dataSourceManagers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [[PUJoiningAssetsDataSource alloc] initWithDataSources:v5];
  [(PUAssetsDataSourceManager *)self setAssetsDataSource:v12];
}

- (void)_handleScheduledUpdateWithID:(int64_t)d
{
  if ([(PUJoiningDataSourceManager *)self _currentUpdateID]== d)
  {

    [(PUJoiningDataSourceManager *)self _update];
  }
}

- (void)_scheduleUpdate
{
  v3 = ([(PUJoiningDataSourceManager *)self _currentUpdateID]+ 1);
  [(PUJoiningDataSourceManager *)self _setCurrentUpdateId:v3];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PUJoiningDataSourceManager__scheduleUpdate__block_invoke;
  block[3] = &unk_1E7B804A8;
  objc_copyWeak(v5, &location);
  v5[1] = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __45__PUJoiningDataSourceManager__scheduleUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleScheduledUpdateWithID:*(a1 + 40)];
}

- (PUJoiningDataSourceManager)initWithDataSourceManagers:(id)managers
{
  v20 = *MEMORY[0x1E69E9840];
  managersCopy = managers;
  v18.receiver = self;
  v18.super_class = PUJoiningDataSourceManager;
  v6 = [(PUJoiningDataSourceManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceManagers, managers);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = managersCopy;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * v12++) setDelegate:{v7, v14}];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v10);
    }

    [(PUJoiningDataSourceManager *)v7 _update];
  }

  return v7;
}

@end