@interface PUCollectionsCollectionViewDropDelegate
- (BOOL)_allowDrop;
- (BOOL)_canHandleDropSession:(id)session;
- (BOOL)collectionView:(id)view canHandleDropSesson:(id)sesson;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (PUCollectionsCollectionViewDropDataProvider)dropDataProvider;
- (id)_collectionAtIndexPath:(id)path;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (void)_handleDrop:(id)drop forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
@end

@implementation PUCollectionsCollectionViewDropDelegate

- (PUCollectionsCollectionViewDropDataProvider)dropDataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dropDataProvider);

  return WeakRetained;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  coordinatorCopy = coordinator;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = viewCopy;
    v13 = 2112;
    v14 = coordinatorCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ performDropWithCoordinator: %@", &v11, 0x16u);
  }

  session = [coordinatorCopy session];
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  [(PUCollectionsCollectionViewDropDelegate *)self _handleDrop:session forItemAtIndexPath:destinationIndexPath];
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v25 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  updateCopy = update;
  pathCopy = path;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v19 = 138412802;
    v20 = viewCopy;
    v21 = 2112;
    v22 = updateCopy;
    v23 = 2112;
    v24 = pathCopy;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "_collectionView: %@ dropSessionDidUpdate:%@ withDestinationIndexPath: %@", &v19, 0x20u);
  }

  v12 = [(PUCollectionsCollectionViewDropDelegate *)self _collectionAtIndexPath:pathCopy];
  px_assetsDropMode = [v12 px_assetsDropMode];
  if (px_assetsDropMode == 1 || px_assetsDropMode == 2 && PXDropSessionHasItemsNeedingImport())
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

- (BOOL)collectionView:(id)view canHandleDropSesson:(id)sesson
{
  v15 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  sessonCopy = sesson;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = viewCopy;
    v13 = 2112;
    v14 = sessonCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ canHandleDropSesson: %@ ", &v11, 0x16u);
  }

  v9 = [(PUCollectionsCollectionViewDropDelegate *)self _canHandleDropSession:sessonCopy];
  return v9;
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  v6 = [(PUCollectionsCollectionViewDropDelegate *)self _collectionAtIndexPath:path];
  _allowDrop = [(PUCollectionsCollectionViewDropDelegate *)self _allowDrop];
  mEMORY[0x1E69C3498] = [MEMORY[0x1E69C3498] sharedInstance];
  springLoadingEnabled = [mEMORY[0x1E69C3498] springLoadingEnabled];

  px_allowsSpringLoading = 0;
  if (_allowDrop && springLoadingEnabled)
  {
    px_allowsSpringLoading = [v6 px_allowsSpringLoading];
  }

  return px_allowsSpringLoading;
}

- (void)_handleDrop:(id)drop forItemAtIndexPath:(id)path
{
  v15 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  pathCopy = path;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = dropCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_handleDrop: %@", &v13, 0xCu);
  }

  v9 = [(PUCollectionsCollectionViewDropDelegate *)self _collectionAtIndexPath:pathCopy];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v9)
  {
    v10 = [MEMORY[0x1E69C37B0] dropAssetsActionPerformerForAssetCollection:v9 dropSession:dropCopy];
    dropDataProvider = [(PUCollectionsCollectionViewDropDelegate *)self dropDataProvider];
    v12 = [dropDataProvider actionPerformerDelegateForCollectionViewDropDelegate:self];
    [v10 setDelegate:v12];

    [v10 performActionWithCompletionHandler:0];
  }
}

- (BOOL)_canHandleDropSession:(id)session
{
  sessionCopy = session;
  if ([(PUCollectionsCollectionViewDropDelegate *)self _allowDrop])
  {
    supportedTypeIdentifiers = [MEMORY[0x1E69C3618] supportedTypeIdentifiers];
    v6 = [sessionCopy hasItemsConformingToTypeIdentifiers:supportedTypeIdentifiers];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_collectionAtIndexPath:(id)path
{
  pathCopy = path;
  dropDataProvider = [(PUCollectionsCollectionViewDropDelegate *)self dropDataProvider];
  v6 = [dropDataProvider collectionViewDropDelegate:self collectionAtIndexPath:pathCopy];

  return v6;
}

- (BOOL)_allowDrop
{
  dropDataProvider = [(PUCollectionsCollectionViewDropDelegate *)self dropDataProvider];
  v4 = dropDataProvider;
  if (!self->_dataProviderImplementsAllowDrop || dropDataProvider == 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = [dropDataProvider allowDropForCollectionViewDropDelegate:self];
  }

  return v6;
}

@end