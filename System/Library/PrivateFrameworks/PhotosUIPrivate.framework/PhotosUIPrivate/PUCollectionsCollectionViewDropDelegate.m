@interface PUCollectionsCollectionViewDropDelegate
- (BOOL)_allowDrop;
- (BOOL)_canHandleDropSession:(id)a3;
- (BOOL)collectionView:(id)a3 canHandleDropSesson:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (PUCollectionsCollectionViewDropDataProvider)dropDataProvider;
- (id)_collectionAtIndexPath:(id)a3;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (void)_handleDrop:(id)a3 forItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
@end

@implementation PUCollectionsCollectionViewDropDelegate

- (PUCollectionsCollectionViewDropDataProvider)dropDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dropDataProvider);

  return WeakRetained;
}

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ performDropWithCoordinator: %@", &v11, 0x16u);
  }

  v9 = [v7 session];
  v10 = [v7 destinationIndexPath];
  [(PUCollectionsCollectionViewDropDelegate *)self _handleDrop:v9 forItemAtIndexPath:v10];
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412802;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "_collectionView: %@ dropSessionDidUpdate:%@ withDestinationIndexPath: %@", &v19, 0x20u);
  }

  v12 = [(PUCollectionsCollectionViewDropDelegate *)self _collectionAtIndexPath:v10];
  v13 = [v12 px_assetsDropMode];
  if (v13 == 1 || v13 == 2 && PXDropSessionHasItemsNeedingImport())
  {
    v14 = objc_alloc(MEMORY[0x1E69DC838]);
    v15 = 2;
    v16 = 2;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x1E69DC838]);
    v15 = 1;
    v16 = 0;
  }

  v17 = [v14 initWithDropOperation:v15 intent:v16];

  return v17;
}

- (BOOL)collectionView:(id)a3 canHandleDropSesson:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ canHandleDropSesson: %@ ", &v11, 0x16u);
  }

  v9 = [(PUCollectionsCollectionViewDropDelegate *)self _canHandleDropSession:v7];
  return v9;
}

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v6 = [(PUCollectionsCollectionViewDropDelegate *)self _collectionAtIndexPath:a4];
  v7 = [(PUCollectionsCollectionViewDropDelegate *)self _allowDrop];
  v8 = [MEMORY[0x1E69C3498] sharedInstance];
  v9 = [v8 springLoadingEnabled];

  v10 = 0;
  if (v7 && v9)
  {
    v10 = [v6 px_allowsSpringLoading];
  }

  return v10;
}

- (void)_handleDrop:(id)a3 forItemAtIndexPath:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_handleDrop: %@", &v13, 0xCu);
  }

  v9 = [(PUCollectionsCollectionViewDropDelegate *)self _collectionAtIndexPath:v7];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v9)
  {
    v10 = [MEMORY[0x1E69C37B0] dropAssetsActionPerformerForAssetCollection:v9 dropSession:v6];
    v11 = [(PUCollectionsCollectionViewDropDelegate *)self dropDataProvider];
    v12 = [v11 actionPerformerDelegateForCollectionViewDropDelegate:self];
    [v10 setDelegate:v12];

    [v10 performActionWithCompletionHandler:0];
  }
}

- (BOOL)_canHandleDropSession:(id)a3
{
  v4 = a3;
  if ([(PUCollectionsCollectionViewDropDelegate *)self _allowDrop])
  {
    v5 = [MEMORY[0x1E69C3618] supportedTypeIdentifiers];
    v6 = [v4 hasItemsConformingToTypeIdentifiers:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_collectionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUCollectionsCollectionViewDropDelegate *)self dropDataProvider];
  v6 = [v5 collectionViewDropDelegate:self collectionAtIndexPath:v4];

  return v6;
}

- (BOOL)_allowDrop
{
  v3 = [(PUCollectionsCollectionViewDropDelegate *)self dropDataProvider];
  v4 = v3;
  if (!self->_dataProviderImplementsAllowDrop || v3 == 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 allowDropForCollectionViewDropDelegate:self];
  }

  return v6;
}

@end