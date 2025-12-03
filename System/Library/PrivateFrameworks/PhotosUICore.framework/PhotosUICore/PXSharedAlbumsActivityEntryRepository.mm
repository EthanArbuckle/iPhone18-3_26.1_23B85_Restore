@interface PXSharedAlbumsActivityEntryRepository
- (PXSharedAlbumsActivityEntryRepository)init;
- (PXSharedAlbumsActivityEntryRepository)initWithLogIdentifier:(id)identifier;
- (PXSharedAlbumsActivityEntryRepositoryDelegate)delegate;
- (void)_clearPendingNotifications;
- (void)_didFinishPostingNotifications:(id)notifications;
- (void)assetsDidChange:(id)change;
- (void)cloudCommentsDidChange:(id)change;
- (void)cloudFeedEntriesDidChange:(id)change;
- (void)shouldReload:(id)reload;
@end

@implementation PXSharedAlbumsActivityEntryRepository

- (PXSharedAlbumsActivityEntryRepositoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_clearPendingNotifications
{
  [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications removeAllObjects];
  [(NSMutableArray *)self->_pendingCommentsChangeNotifications removeAllObjects];
  pendingAssetsChangeNotifications = self->_pendingAssetsChangeNotifications;

  [(NSMutableArray *)pendingAssetsChangeNotifications removeAllObjects];
}

- (void)_didFinishPostingNotifications:(id)notifications
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    logIdentifier = self->_logIdentifier;
    v7 = NSStringFromSelector(a2);
    v8 = [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications count];
    v9 = [(NSMutableArray *)self->_pendingCommentsChangeNotifications count];
    v10 = [(NSMutableArray *)self->_pendingAssetsChangeNotifications count];
    v12 = 138544386;
    v13 = logIdentifier;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2048;
    v19 = v9;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEBUG, "[SharedAlbumsActivityEntryRepository - %{public}@] %@ (pendingFeedEntries count: %lu, pendingCommentsChange count: %lu, pendingAssetsChange count: %lu)", &v12, 0x34u);
  }

  if ([(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications count]|| [(NSMutableArray *)self->_pendingCommentsChangeNotifications count]|| [(NSMutableArray *)self->_pendingAssetsChangeNotifications count])
  {
    [(PXSharedAlbumsActivityEntryRepository *)self _clearPendingNotifications];
    delegate = [(PXSharedAlbumsActivityEntryRepository *)self delegate];
    [delegate activityEntryRepositoryDidChange:self];
  }
}

- (void)shouldReload:(id)reload
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = PLSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v7 = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "[SharedAlbumsActivityEntryRepository - %{public}@] shouldReload", &v7, 0xCu);
  }

  [(PXSharedAlbumsActivityEntryRepository *)self _clearPendingNotifications];
  delegate = [(PXSharedAlbumsActivityEntryRepository *)self delegate];
  [delegate activityEntryRepositoryDidChange:self];
}

- (void)cloudFeedEntriesDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v7 = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[SharedAlbumsActivityEntryRepository - %{public}@] cloudFeedEntriesDidChange", &v7, 0xCu);
  }

  [(NSMutableArray *)self->_pendingFeedEntriesChangeNotifications addObject:changeCopy];
}

- (void)cloudCommentsDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v7 = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[SharedAlbumsActivityEntryRepository - %{public}@] cloudCommentsDidChange", &v7, 0xCu);
  }

  [(NSMutableArray *)self->_pendingCommentsChangeNotifications addObject:changeCopy];
}

- (void)assetsDidChange:(id)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = PLSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logIdentifier = self->_logIdentifier;
    v7 = 138543362;
    v8 = logIdentifier;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[SharedAlbumsActivityEntryRepository - %{public}@] assetsDidChange", &v7, 0xCu);
  }

  [(NSMutableArray *)self->_pendingAssetsChangeNotifications addObject:changeCopy];
}

- (PXSharedAlbumsActivityEntryRepository)initWithLogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:811 description:{@"Invalid parameter not satisfying: %@", @"logIdentifier"}];
  }

  v18.receiver = self;
  v18.super_class = PXSharedAlbumsActivityEntryRepository;
  v6 = [(PXSharedAlbumsActivityEntryRepository *)&v18 init];
  if (v6)
  {
    v7 = [identifierCopy copy];
    logIdentifier = v6->_logIdentifier;
    v6->_logIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingFeedEntriesChangeNotifications = v6->_pendingFeedEntriesChangeNotifications;
    v6->_pendingFeedEntriesChangeNotifications = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingCommentsChangeNotifications = v6->_pendingCommentsChangeNotifications;
    v6->_pendingCommentsChangeNotifications = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingAssetsChangeNotifications = v6->_pendingAssetsChangeNotifications;
    v6->_pendingAssetsChangeNotifications = v13;

    defaultCenter = [MEMORY[0x1E69BE2F0] defaultCenter];
    [defaultCenter addCloudFeedEntriesObserver:v6];
    [defaultCenter addCloudCommentsChangeObserver:v6 asset:0];
    [defaultCenter addAssetChangeObserver:v6];
    [defaultCenter addShouldReloadObserver:v6];
    [defaultCenter addObserver:v6 selector:sel__didFinishPostingNotifications_ name:*MEMORY[0x1E69BE918] object:0];
  }

  return v6;
}

- (PXSharedAlbumsActivityEntryRepository)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedAlbumsActivityEntry.m" lineNumber:807 description:{@"%s is not available as initializer", "-[PXSharedAlbumsActivityEntryRepository init]"}];

  abort();
}

@end