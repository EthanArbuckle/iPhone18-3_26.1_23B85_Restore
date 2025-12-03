@interface PLClientPhotoLibraryBundle
- (BOOL)impl_bindAssetsdService:(id)service error:(id *)error;
- (BOOL)impl_calculateTotalSizeWithResult:(id)result;
- (PLClientPhotoLibraryBundle)initWithLibraryURL:(id)l bundleController:(id)controller;
- (id)newAssetsdClient;
- (id)newChangePublisher;
- (id)transferAssets:(id)assets toBundle:(id)bundle options:(id)options completion:(id)completion;
- (id)transferPersons:(id)persons toBundle:(id)bundle options:(id)options completion:(id)completion;
- (void)_handleLibraryBecameUnavailable:(id)unavailable reason:(id)reason;
- (void)_initClientSandboxExtensionCache;
- (void)_setCloudPhotoLibraryEnabled:(BOOL)enabled sync:(BOOL)sync;
- (void)closeWithReason:(id)reason;
- (void)impl_setPhotoStreamEnabled:(BOOL)enabled;
- (void)impl_setSharedAlbumEnabled:(BOOL)enabled;
- (void)impl_unbindAssetsdService:(id)service;
@end

@implementation PLClientPhotoLibraryBundle

- (void)_initClientSandboxExtensionCache
{
  v3 = objc_initWeak(&location, self);

  v4 = objc_alloc(MEMORY[0x1E69BF270]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PLClientPhotoLibraryBundle__initClientSandboxExtensionCache__block_invoke;
  v7[3] = &unk_1E7576828;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  lazyClientSandboxExtensionCache = self->_lazyClientSandboxExtensionCache;
  self->_lazyClientSandboxExtensionCache = v5;
}

- (id)newChangePublisher
{
  v3 = [PLClientChangePublisher alloc];
  assetsdClient = [(PLPhotoLibraryBundle *)self assetsdClient];
  v5 = [(PLClientChangePublisher *)v3 initWithAssetsdClient:assetsdClient];

  return v5;
}

- (id)newAssetsdClient
{
  v3 = objc_alloc(MEMORY[0x1E69BF198]);
  libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
  v5 = [v3 initWithPhotoLibraryURL:libraryURL];

  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PLClientPhotoLibraryBundle_newAssetsdClient__block_invoke;
  v7[3] = &unk_1E756B2D0;
  objc_copyWeak(&v8, &location);
  [v5 addPhotoLibraryUnavailabilityHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return v5;
}

- (void)impl_unbindAssetsdService:(id)service
{
  serviceCopy = service;
  selfCopy = self;
  v6 = PLMethodNotImplementedException();
  objc_exception_throw(v6);
}

- (BOOL)impl_bindAssetsdService:(id)service error:(id *)error
{
  serviceCopy = service;
  selfCopy = self;
  v7 = PLMethodNotImplementedException();
  objc_exception_throw(v7);
}

- (BOOL)impl_calculateTotalSizeWithResult:(id)result
{
  resultCopy = result;
  assetsdClient = [(PLPhotoLibraryBundle *)self assetsdClient];
  libraryManagementClient = [assetsdClient libraryManagementClient];

  if (!libraryManagementClient)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLClientPhotoLibraryBundle.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"managementClient"}];
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__34183;
  v16 = __Block_byref_object_dispose__34184;
  v17 = 0;
  libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__PLClientPhotoLibraryBundle_impl_calculateTotalSizeWithResult___block_invoke;
  v11[3] = &unk_1E756B2F8;
  v11[4] = &v12;
  v11[5] = &v30;
  v11[6] = &v26;
  v11[7] = &v22;
  v11[8] = &v18;
  [libraryManagementClient filesystemSizeForLibraryURL:libraryURL result:v11];

  resultCopy[2](resultCopy, v31[3], v27[3], v23[3], v19[3], v13[5]);
  LOBYTE(libraryURL) = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return libraryURL;
}

void __64__PLClientPhotoLibraryBundle_impl_calculateTotalSizeWithResult___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a6;
  if (v12)
  {
    v13 = v12;
    objc_storeStrong((*(a1[4] + 8) + 40), a6);
    v12 = v13;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a2;
    *(*(a1[6] + 8) + 24) = a3;
    *(*(a1[7] + 8) + 24) = a4;
    *(*(a1[8] + 8) + 24) = a5;
  }
}

- (void)impl_setPhotoStreamEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  indicatorFileCoordinator = [(PLPhotoLibraryBundle *)self indicatorFileCoordinator];
  [indicatorFileCoordinator logCloudServiceEnableEvent:enabledCopy serviceName:@"MPS" reason:0];

  [PLPhotoLibrary setPhotoStreamEnabled:enabledCopy];
}

- (void)impl_setSharedAlbumEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  indicatorFileCoordinator = [(PLPhotoLibraryBundle *)self indicatorFileCoordinator];
  [indicatorFileCoordinator logCloudServiceEnableEvent:enabledCopy serviceName:@"SharedAlbum" reason:0];

  pathManager = [(PLPhotoLibraryBundle *)self pathManager];
  [PLCloudSharingEnablingJob enableCloudSharing:enabledCopy withPathManager:pathManager];
}

- (void)_setCloudPhotoLibraryEnabled:(BOOL)enabled sync:(BOOL)sync
{
  syncCopy = sync;
  enabledCopy = enabled;
  indicatorFileCoordinator = [(PLPhotoLibraryBundle *)self indicatorFileCoordinator];
  [indicatorFileCoordinator logCloudServiceEnableEvent:enabledCopy serviceName:@"CPL" reason:0];
  assetsdClient = [(PLPhotoLibraryBundle *)self assetsdClient];
  cloudInternalClient = [assetsdClient cloudInternalClient];

  if (enabledCopy)
  {
    [indicatorFileCoordinator writeEnableICloudPhotosMarker];
    v9 = cloudInternalClient;
    v10 = 1;
    if (!syncCopy)
    {
      [cloudInternalClient setCloudPhotoLibraryEnabledState:1];
      goto LABEL_6;
    }
  }

  else
  {
    [indicatorFileCoordinator writeDisableICloudPhotosMarker];
    v9 = cloudInternalClient;
    v10 = 0;
  }

  [v9 setCloudPhotoLibraryEnabledStateSync:v10];
LABEL_6:
}

PLClientSandboxExtensionCache *__62__PLClientPhotoLibraryBundle__initClientSandboxExtensionCache__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLClientSandboxExtensionCache alloc] initWithCacheLimit:200];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)closeWithReason:(id)reason
{
  v17 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v10 = objc_opt_class();
    v11 = 2048;
    selfCopy = self;
    v13 = 2080;
    v14 = "[PLClientPhotoLibraryBundle closeWithReason:]";
    v15 = 2112;
    v16 = reasonCopy;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p %s %@", buf, 0x2Au);
  }

  v8.receiver = self;
  v8.super_class = PLClientPhotoLibraryBundle;
  [(PLPhotoLibraryBundle *)&v8 closeWithReason:reasonCopy];
  pathManager = [(PLPhotoLibraryBundle *)self pathManager];
  v7 = PLLibraryIDFromPathManager();
  PLUnregisterDataStoresForLibraryID(v7);
}

- (id)transferPersons:(id)persons toBundle:(id)bundle options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  personsCopy = persons;
  assetsdClient = [bundle assetsdClient];
  libraryClient = [assetsdClient libraryClient];

  libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
  v16 = [libraryClient transferPersonsWithUuids:personsCopy fromLibraryURL:libraryURL transferOptions:optionsCopy completionHandler:completionCopy];

  return v16;
}

- (id)transferAssets:(id)assets toBundle:(id)bundle options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  assetsCopy = assets;
  assetsdClient = [bundle assetsdClient];
  libraryClient = [assetsdClient libraryClient];

  libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
  v16 = [libraryClient transferAssetsWithUuids:assetsCopy fromLibraryURL:libraryURL transferOptions:optionsCopy completionHandler:completionCopy];

  return v16;
}

void __46__PLClientPhotoLibraryBundle_newAssetsdClient__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLibraryBecameUnavailable:v6 reason:v5];
}

- (void)_handleLibraryBecameUnavailable:(id)unavailable reason:(id)reason
{
  unavailableCopy = unavailable;
  v5 = MEMORY[0x1E69BF238];
  libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
  path = [libraryURL path];
  path2 = [unavailableCopy path];
  LODWORD(v5) = [v5 filePath:path isEqualToFilePath:path2];

  if (v5)
  {
    bundleController = [(PLPhotoLibraryBundle *)self bundleController];
    [bundleController removeBundleForRebuildAtLibraryURL:unavailableCopy];
  }
}

- (PLClientPhotoLibraryBundle)initWithLibraryURL:(id)l bundleController:(id)controller
{
  v7.receiver = self;
  v7.super_class = PLClientPhotoLibraryBundle;
  v4 = [(PLPhotoLibraryBundle *)&v7 initWithLibraryURL:l bundleController:controller];
  v5 = v4;
  if (v4)
  {
    [(PLClientPhotoLibraryBundle *)v4 _initClientSandboxExtensionCache];
  }

  return v5;
}

@end