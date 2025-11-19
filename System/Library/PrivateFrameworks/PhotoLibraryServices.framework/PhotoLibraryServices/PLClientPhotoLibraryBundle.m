@interface PLClientPhotoLibraryBundle
- (BOOL)impl_bindAssetsdService:(id)a3 error:(id *)a4;
- (BOOL)impl_calculateTotalSizeWithResult:(id)a3;
- (PLClientPhotoLibraryBundle)initWithLibraryURL:(id)a3 bundleController:(id)a4;
- (id)newAssetsdClient;
- (id)newChangePublisher;
- (id)transferAssets:(id)a3 toBundle:(id)a4 options:(id)a5 completion:(id)a6;
- (id)transferPersons:(id)a3 toBundle:(id)a4 options:(id)a5 completion:(id)a6;
- (void)_handleLibraryBecameUnavailable:(id)a3 reason:(id)a4;
- (void)_initClientSandboxExtensionCache;
- (void)_setCloudPhotoLibraryEnabled:(BOOL)a3 sync:(BOOL)a4;
- (void)closeWithReason:(id)a3;
- (void)impl_setPhotoStreamEnabled:(BOOL)a3;
- (void)impl_setSharedAlbumEnabled:(BOOL)a3;
- (void)impl_unbindAssetsdService:(id)a3;
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
  v4 = [(PLPhotoLibraryBundle *)self assetsdClient];
  v5 = [(PLClientChangePublisher *)v3 initWithAssetsdClient:v4];

  return v5;
}

- (id)newAssetsdClient
{
  v3 = objc_alloc(MEMORY[0x1E69BF198]);
  v4 = [(PLPhotoLibraryBundle *)self libraryURL];
  v5 = [v3 initWithPhotoLibraryURL:v4];

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

- (void)impl_unbindAssetsdService:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PLMethodNotImplementedException();
  objc_exception_throw(v6);
}

- (BOOL)impl_bindAssetsdService:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = PLMethodNotImplementedException();
  objc_exception_throw(v7);
}

- (BOOL)impl_calculateTotalSizeWithResult:(id)a3
{
  v5 = a3;
  v6 = [(PLPhotoLibraryBundle *)self assetsdClient];
  v7 = [v6 libraryManagementClient];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLClientPhotoLibraryBundle.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"managementClient"}];
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
  v8 = [(PLPhotoLibraryBundle *)self libraryURL];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__PLClientPhotoLibraryBundle_impl_calculateTotalSizeWithResult___block_invoke;
  v11[3] = &unk_1E756B2F8;
  v11[4] = &v12;
  v11[5] = &v30;
  v11[6] = &v26;
  v11[7] = &v22;
  v11[8] = &v18;
  [v7 filesystemSizeForLibraryURL:v8 result:v11];

  v5[2](v5, v31[3], v27[3], v23[3], v19[3], v13[5]);
  LOBYTE(v8) = v13[5] == 0;
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v8;
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

- (void)impl_setPhotoStreamEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(PLPhotoLibraryBundle *)self indicatorFileCoordinator];
  [v4 logCloudServiceEnableEvent:v3 serviceName:@"MPS" reason:0];

  [PLPhotoLibrary setPhotoStreamEnabled:v3];
}

- (void)impl_setSharedAlbumEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PLPhotoLibraryBundle *)self indicatorFileCoordinator];
  [v5 logCloudServiceEnableEvent:v3 serviceName:@"SharedAlbum" reason:0];

  v6 = [(PLPhotoLibraryBundle *)self pathManager];
  [PLCloudSharingEnablingJob enableCloudSharing:v3 withPathManager:v6];
}

- (void)_setCloudPhotoLibraryEnabled:(BOOL)a3 sync:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11 = [(PLPhotoLibraryBundle *)self indicatorFileCoordinator];
  [v11 logCloudServiceEnableEvent:v5 serviceName:@"CPL" reason:0];
  v7 = [(PLPhotoLibraryBundle *)self assetsdClient];
  v8 = [v7 cloudInternalClient];

  if (v5)
  {
    [v11 writeEnableICloudPhotosMarker];
    v9 = v8;
    v10 = 1;
    if (!v4)
    {
      [v8 setCloudPhotoLibraryEnabledState:1];
      goto LABEL_6;
    }
  }

  else
  {
    [v11 writeDisableICloudPhotosMarker];
    v9 = v8;
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

- (void)closeWithReason:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v10 = objc_opt_class();
    v11 = 2048;
    v12 = self;
    v13 = 2080;
    v14 = "[PLClientPhotoLibraryBundle closeWithReason:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p %s %@", buf, 0x2Au);
  }

  v8.receiver = self;
  v8.super_class = PLClientPhotoLibraryBundle;
  [(PLPhotoLibraryBundle *)&v8 closeWithReason:v4];
  v6 = [(PLPhotoLibraryBundle *)self pathManager];
  v7 = PLLibraryIDFromPathManager();
  PLUnregisterDataStoresForLibraryID(v7);
}

- (id)transferPersons:(id)a3 toBundle:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a4 assetsdClient];
  v14 = [v13 libraryClient];

  v15 = [(PLPhotoLibraryBundle *)self libraryURL];
  v16 = [v14 transferPersonsWithUuids:v12 fromLibraryURL:v15 transferOptions:v11 completionHandler:v10];

  return v16;
}

- (id)transferAssets:(id)a3 toBundle:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a4 assetsdClient];
  v14 = [v13 libraryClient];

  v15 = [(PLPhotoLibraryBundle *)self libraryURL];
  v16 = [v14 transferAssetsWithUuids:v12 fromLibraryURL:v15 transferOptions:v11 completionHandler:v10];

  return v16;
}

void __46__PLClientPhotoLibraryBundle_newAssetsdClient__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLibraryBecameUnavailable:v6 reason:v5];
}

- (void)_handleLibraryBecameUnavailable:(id)a3 reason:(id)a4
{
  v10 = a3;
  v5 = MEMORY[0x1E69BF238];
  v6 = [(PLPhotoLibraryBundle *)self libraryURL];
  v7 = [v6 path];
  v8 = [v10 path];
  LODWORD(v5) = [v5 filePath:v7 isEqualToFilePath:v8];

  if (v5)
  {
    v9 = [(PLPhotoLibraryBundle *)self bundleController];
    [v9 removeBundleForRebuildAtLibraryURL:v10];
  }
}

- (PLClientPhotoLibraryBundle)initWithLibraryURL:(id)a3 bundleController:(id)a4
{
  v7.receiver = self;
  v7.super_class = PLClientPhotoLibraryBundle;
  v4 = [(PLPhotoLibraryBundle *)&v7 initWithLibraryURL:a3 bundleController:a4];
  v5 = v4;
  if (v4)
  {
    [(PLClientPhotoLibraryBundle *)v4 _initClientSandboxExtensionCache];
  }

  return v5;
}

@end