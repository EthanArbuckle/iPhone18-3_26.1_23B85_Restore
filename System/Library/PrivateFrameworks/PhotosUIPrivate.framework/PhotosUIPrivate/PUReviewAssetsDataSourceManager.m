@interface PUReviewAssetsDataSourceManager
- (PUReviewAssetsDataSourceManager)initWithReviewDataSource:(id)a3;
- (PUReviewAssetsDataSourceManagerDelegate)reviewDelegate;
- (void)_createContainingAssetCollectionForMultiLibraryMode;
- (void)_updateWithReviewDataSource:(id)a3 changeDetails:(id)a4;
- (void)dealloc;
@end

@implementation PUReviewAssetsDataSourceManager

- (PUReviewAssetsDataSourceManagerDelegate)reviewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reviewDelegate);

  return WeakRetained;
}

- (void)_updateWithReviewDataSource:(id)a3 changeDetails:(id)a4
{
  v6 = a4;
  v7 = a3;
  v12 = [v7 assetsByIdentifier];
  v8 = [v7 orderedIdentifiers];

  v9 = [(PUReviewAssetsDataSourceManager *)self _containingAssetCollection];
  v10 = [[PUReviewAssetsDataSource alloc] initWithAssetsByIdentifier:v12 usingOrdering:v8 inAssetCollection:v9];
  [(PUAssetsDataSourceManager *)self setAssetsDataSource:v10];
  v11 = [(PUReviewAssetsDataSourceManager *)self reviewDelegate];
  [v11 assetsDataSourceManager:self didChangeAssetsDataSource:v10 changeDetails:v6];
}

- (void)dealloc
{
  v3 = [(PUReviewAssetsDataSourceManager *)self _reviewDataSource];
  [v3 unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = PUReviewAssetsDataSourceManager;
  [(PUReviewAssetsDataSourceManager *)&v4 dealloc];
}

- (void)_createContainingAssetCollectionForMultiLibraryMode
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->__containingAssetCollection)
  {
    v3 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
    if (v3)
    {
      self->_didFailToOpenPhotoLibrary = 0;
      v4 = [objc_alloc(MEMORY[0x1E6978AF8]) initWithPhotoLibrary:v3];
      v5 = [MEMORY[0x1E6978650] transientAssetCollectionWithOptions:v4];
      containingAssetCollection = self->__containingAssetCollection;
      self->__containingAssetCollection = v5;
    }

    else
    {
      if (_PUReviewAssetsDataSourceManagerLog_onceToken != -1)
      {
        dispatch_once(&_PUReviewAssetsDataSourceManagerLog_onceToken, &__block_literal_global_72922);
      }

      v7 = _PUReviewAssetsDataSourceManagerLog_log;
      if (os_log_type_enabled(_PUReviewAssetsDataSourceManagerLog_log, OS_LOG_TYPE_ERROR))
      {
        v9 = v7;
        v10 = 138412546;
        v11 = objc_opt_class();
        v12 = 2048;
        v13 = self;
        _os_log_error_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_ERROR, "<%@:%p> failed to open system photo library - this data source manager will likely fail.", &v10, 0x16u);
      }

      self->_didFailToOpenPhotoLibrary = 1;
      v8 = self->__containingAssetCollection;
      self->__containingAssetCollection = 0;
    }
  }
}

- (PUReviewAssetsDataSourceManager)initWithReviewDataSource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PUReviewAssetsDataSourceManager;
  v6 = [(PUReviewAssetsDataSourceManager *)&v11 init];
  if (v6)
  {
    if ([MEMORY[0x1E69789A8] isMultiLibraryModeEnabled])
    {
      [(PUReviewAssetsDataSourceManager *)v6 _createContainingAssetCollectionForMultiLibraryMode];
    }

    else
    {
      v7 = [MEMORY[0x1E6978650] transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0];
      containingAssetCollection = v6->__containingAssetCollection;
      v6->__containingAssetCollection = v7;
    }

    objc_storeStrong(&v6->__reviewDataSource, a3);
    [v5 registerChangeObserver:v6];
    [(PUReviewAssetsDataSourceManager *)v6 _updateWithReviewDataSource:v5 changeDetails:0];
    v9 = v6;
  }

  return v6;
}

@end