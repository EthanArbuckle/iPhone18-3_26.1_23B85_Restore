@interface PLAssetsdServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PLAssetsdServer)initWithDaemonServices:(id)services;
- (id)stateCaptureDictionary;
- (void)_checkInWithLaunchd;
- (void)_collectCacheMetricsDataFromService:(id)service;
- (void)_startObservingLocaleChanges;
- (void)addService:(id)service;
- (void)currentLocaleDidChangeNotification:(id)notification;
- (void)handleInterruption:(id)interruption;
- (void)handleInvalidation:(id)invalidation;
- (void)logStatus;
- (void)removeService:(id)service;
- (void)start;
@end

@implementation PLAssetsdServer

- (void)currentLocaleDidChangeNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v7 = 138543362;
    v8 = localeIdentifier;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Daemon received locale change notification, requesting exit (current locale: %{public}@)", &v7, 0xCu);
  }

  atomic_store(1u, sLocaleDidChange);
  xpc_transaction_try_exit_clean();
  v6 = PLBackendGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Failed to exit in response to locale change, daemon is dirty", &v7, 2u);
  }

  xpc_transaction_exit_clean();
}

- (void)_startObservingLocaleChanges
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v7 = 138543362;
    v8 = localeIdentifier;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Registering daemon for locale change notification (current locale: %{public}@)", &v7, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_currentLocaleDidChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  +[PLFileDescriptorFuse checkFileDescriptorFuse];
  if ([MEMORY[0x1E69BF350] enabled])
  {
    connectionLogger = self->_connectionLogger;
    if (!connectionLogger)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69BF350]);
      v10 = self->_connectionLogger;
      self->_connectionLogger = v9;

      connectionLogger = self->_connectionLogger;
    }

    [connectionCopy setDelegate:connectionLogger];
  }

  [connectionCopy setExportedInterface:self->_assetsdInterface];
  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F548];
  [connectionCopy setRemoteObjectInterface:v11];

  v12 = [[PLAssetsdService alloc] initWithConnection:connectionCopy libraryBundleController:self->_libraryBundleController daemonServices:self->_daemonServices];
  [connectionCopy setExportedObject:v12];
  [(PLAssetsdServer *)self addService:v12];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__PLAssetsdServer_listener_shouldAcceptNewConnection___block_invoke;
  v19[3] = &unk_1E75782A8;
  objc_copyWeak(&v21, &location);
  v13 = v12;
  v20 = v13;
  [connectionCopy setInterruptionHandler:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__PLAssetsdServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v16[3] = &unk_1E75782A8;
  objc_copyWeak(&v18, &location);
  v14 = v13;
  v17 = v14;
  [connectionCopy setInvalidationHandler:v16];
  [connectionCopy resume];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return 1;
}

void __54__PLAssetsdServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleInterruption:*(a1 + 32)];
}

void __54__PLAssetsdServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleInvalidation:*(a1 + 32)];
}

- (void)handleInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;
  [(PLAssetsdServer *)self _collectCacheMetricsDataFromService:invalidationCopy];
  [invalidationCopy handleInvalidation];
  [(PLAssetsdServer *)self removeService:invalidationCopy];
}

- (void)handleInterruption:(id)interruption
{
  interruptionCopy = interruption;
  [(PLAssetsdServer *)self _collectCacheMetricsDataFromService:interruptionCopy];
  [interruptionCopy handleInterruption];
  [(PLAssetsdServer *)self removeService:interruptionCopy];
}

- (void)_collectCacheMetricsDataFromService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_servicesLock);
  [serviceCopy collectCacheMetrics];

  os_unfair_lock_unlock(&self->_servicesLock);
}

- (void)removeService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_servicesLock);
  [(NSMutableSet *)self->_services removeObject:serviceCopy];

  os_unfair_lock_unlock(&self->_servicesLock);
}

- (void)addService:(id)service
{
  serviceCopy = service;
  os_unfair_lock_lock(&self->_servicesLock);
  [(NSMutableSet *)self->_services addObject:serviceCopy];

  os_unfair_lock_unlock(&self->_servicesLock);
}

- (id)stateCaptureDictionary
{
  v14[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_servicesLock);
  services = self->_services;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __41__PLAssetsdServer_stateCaptureDictionary__block_invoke;
  v11 = &unk_1E7578280;
  v12 = array;
  v5 = array;
  [(NSMutableSet *)services enumerateObjectsUsingBlock:&v8];
  os_unfair_lock_unlock(&self->_servicesLock);
  v13 = @"services";
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:{1, v8, v9, v10, v11}];

  return v6;
}

void __41__PLAssetsdServer_stateCaptureDictionary__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stateDescription];
  [v2 addObject:v3];
}

- (void)logStatus
{
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "services:", v4, 2u);
  }

  os_unfair_lock_lock(&self->_servicesLock);
  [(NSMutableSet *)self->_services enumerateObjectsUsingBlock:&__block_literal_global_115075];
  os_unfair_lock_unlock(&self->_servicesLock);
}

void __28__PLAssetsdServer_logStatus__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "  %{public}@", &v4, 0xCu);
  }
}

- (void)_checkInWithLaunchd
{
  +[PLCacheDeleteRegistration registerDefaultHandlers];
  [(PLDistributedNotificationHandler *)self->_distributedNotificationHandler registerForNotifications];
  [(PLTCCObserver *)self->_tccObserver registerAsTCCObserver];
  [PLAnalysisCoordinator registerSearchFastPassTaskWithBundleController:self->_libraryBundleController];
  urlSessionLaunchEventListener = self->_urlSessionLaunchEventListener;

  [(PLURLSessionLaunchEventListener *)urlSessionLaunchEventListener registerForLaunchEvents];
}

- (void)start
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E69BDD80]) initWithProvider:self];
  stateHandler = self->_stateHandler;
  self->_stateHandler = v3;

  [(PLAssetsdServer *)self _checkInWithLaunchd];
  [(PLBackgroundJobService *)self->_backgroundJobService start];
  [(PLAssetsdServer *)self _startObservingLocaleChanges];
  [(NSXPCListener *)self->_listener resume];
  [(PLPhotoLibraryDaemonService *)self->_syndicationSpotlightReceiver start];
  [(PLPhotoLibraryDaemonService *)self->_syndicationPreferencesListener start];
  [(PLPhotoLibraryDaemonService *)self->_searchSpotlightReceiver start];
  v5 = +[PLPhotoLibraryForceExitObserver sharedInstance];
  v6 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %p start", &v7, 0x16u);
  }
}

- (PLAssetsdServer)initWithDaemonServices:(id)services
{
  v37 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  if ((PLIsAssetsd() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdServer.m" lineNumber:66 description:@"PLAssetsdServer must only be initialized on assetsd"];
  }

  v32.receiver = self;
  v32.super_class = PLAssetsdServer;
  v7 = [(PLAssetsdServer *)&v32 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_daemonServices, services);
    v9 = objc_alloc(MEMORY[0x1E696B0D8]);
    v10 = [v9 initWithMachServiceName:*MEMORY[0x1E69BF408]];
    listener = v8->_listener;
    v8->_listener = v10;

    [(NSXPCListener *)v8->_listener setDelegate:v8];
    assetsdInterface = [MEMORY[0x1E69BF1A0] assetsdInterface];
    assetsdInterface = v8->_assetsdInterface;
    v8->_assetsdInterface = assetsdInterface;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    services = v8->_services;
    v8->_services = v14;

    v16 = objc_alloc_init(PLCacheDeleteRegistration);
    cacheDeleteRegistration = v8->_cacheDeleteRegistration;
    v8->_cacheDeleteRegistration = v16;

    v18 = objc_alloc_init(PLBackgroundJobService);
    backgroundJobService = v8->_backgroundJobService;
    v8->_backgroundJobService = v18;

    v20 = +[PLPhotoLibraryBundleController sharedBundleController];
    libraryBundleController = v8->_libraryBundleController;
    v8->_libraryBundleController = v20;

    [(PLPhotoLibraryBundleController *)v8->_libraryBundleController setCacheDeleteRegistration:v8->_cacheDeleteRegistration];
    [(PLPhotoLibraryBundleController *)v8->_libraryBundleController setBackgroundJobService:v8->_backgroundJobService];
    v22 = [[PLDistributedNotificationHandler alloc] initWithLibraryBundleController:v8->_libraryBundleController];
    distributedNotificationHandler = v8->_distributedNotificationHandler;
    v8->_distributedNotificationHandler = v22;

    if (PLPlatformLimitedLibrarySupported())
    {
      v24 = [[PLTCCObserver alloc] initWithLibraryBundleController:v8->_libraryBundleController];
      tccObserver = v8->_tccObserver;
      v8->_tccObserver = v24;
    }

    v26 = [[PLURLSessionLaunchEventListener alloc] initWithLibraryBundleController:v8->_libraryBundleController];
    urlSessionLaunchEventListener = v8->_urlSessionLaunchEventListener;
    v8->_urlSessionLaunchEventListener = v26;

    v8->_servicesLock._os_unfair_lock_opaque = 0;
  }

  v28 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = objc_opt_class();
    *buf = 138412546;
    v34 = v29;
    v35 = 2048;
    v36 = v8;
    _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "%@ %p init", buf, 0x16u);
  }

  return v8;
}

@end