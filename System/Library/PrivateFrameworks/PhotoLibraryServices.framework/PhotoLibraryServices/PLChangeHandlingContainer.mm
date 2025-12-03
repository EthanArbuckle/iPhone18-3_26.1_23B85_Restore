@interface PLChangeHandlingContainer
- (PLChangeHandlingContainer)initWithLibraryBundle:(id)bundle changePublisher:(id)publisher libraryServicesManager:(id)manager persistentStoreCoordinator:(id)coordinator;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation PLChangeHandlingContainer

- (void)start
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412546;
    v5 = objc_opt_class();
    v6 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p start", &v4, 0x16u);
  }

  [(PLPersistentHistoryChangeDistributor *)self->_persistentHistoryChangeDistributor startObservingRemoteNotifications];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = PLChangeHandlingContainer;
  [(PLChangeHandlingContainer *)&v4 dealloc];
}

- (void)stop
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412546;
    v5 = objc_opt_class();
    v6 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p stop", &v4, 0x16u);
  }

  [(PLPersistentHistoryChangeDistributor *)self->_persistentHistoryChangeDistributor stopObservingRemoteNotifications];
  [(PLPersistentHistoryChangeDistributor *)self->_persistentHistoryChangeDistributor invalidate];
  [(PLChangeNode *)self->_changeNode invalidate];
  [(PLCoreDataChangeMerger *)self->_changeMerger invalidate];
}

- (PLChangeHandlingContainer)initWithLibraryBundle:(id)bundle changePublisher:(id)publisher libraryServicesManager:(id)manager persistentStoreCoordinator:(id)coordinator
{
  v38 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  publisherCopy = publisher;
  managerCopy = manager;
  coordinatorCopy = coordinator;
  v31.receiver = self;
  v31.super_class = PLChangeHandlingContainer;
  v14 = [(PLChangeHandlingContainer *)&v31 init];
  if (v14)
  {
    libraryURL = [bundleCopy libraryURL];
    v16 = [libraryURL copy];
    libraryURL = v14->_libraryURL;
    v14->_libraryURL = v16;

    v18 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v14->_libraryURL;
      *buf = 138412290;
      v33 = v19;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Creating PLChangeHandlingContainer for library URL: %@", buf, 0xCu);
    }

    v20 = objc_alloc_init(PLCoreDataChangeMerger);
    changeMerger = v14->_changeMerger;
    v14->_changeMerger = v20;

    objc_storeStrong(&v14->_changePublisher, publisher);
    v22 = [[PLChangeNode alloc] initWithLibraryURL:v14->_libraryURL changeMerger:v14->_changeMerger changePublisher:v14->_changePublisher libraryServicesManager:managerCopy];
    changeNode = v14->_changeNode;
    v14->_changeNode = v22;

    v24 = [[PLPersistentHistoryChangeDistributor alloc] initWithPersistentStoreCoordinator:coordinatorCopy bundle:bundleCopy changeMerger:v14->_changeMerger];
    persistentHistoryChangeDistributor = v14->_persistentHistoryChangeDistributor;
    v14->_persistentHistoryChangeDistributor = v24;

    v26 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = objc_opt_class();
      v28 = v14->_libraryURL;
      *buf = 138412802;
      v33 = v27;
      v34 = 2048;
      v35 = v14;
      v36 = 2112;
      v37 = v28;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryURL:%@", buf, 0x20u);
    }

    v29 = v14;
  }

  return v14;
}

@end