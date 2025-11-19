@interface PXCMMCapabilitiesProvider
- (PXCMMCapabilitiesProvider)init;
- (PXCMMCapabilitiesProvider)initWithPhotoLibrary:(id)a3;
- (void)_accountStoreDidChange:(id)a3;
- (void)_handleCapabilities:(int64_t)a3 cplStatus:(id)a4 permanentlyUnavailable:(BOOL)a5;
- (void)_updateCapabilities;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PXCMMCapabilitiesProvider

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = NSStringFromSelector(sel_simulateFeatureFlagState);
  v14 = v6;
  v7 = NSStringFromSelector(sel_simulateCloudState);
  v15 = v7;
  v8 = NSStringFromSelector(sel_simulateCloudPhotosState);
  v16 = v8;
  v9 = NSStringFromSelector(sel_simulateCPLFeatureState);
  v17 = v9;
  v10 = NSStringFromSelector(sel_simulateCPLCMMFeatureState);
  v18 = v10;
  v11 = NSStringFromSelector(sel_simulateSystemPhotoLibraryState);
  v19 = v11;
  v12 = NSStringFromSelector(sel_simulateCloudPhotosExitState);
  v20 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:7];

  LODWORD(v6) = [v13 containsObject:{v5, v14, v15, v16, v17, v18, v19}];
  if (v6)
  {
    [(PXCMMCapabilitiesProvider *)self _updateCapabilities];
  }
}

- (void)_accountStoreDidChange:(id)a3
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__PXCMMCapabilitiesProvider__accountStoreDidChange___block_invoke;
  v3[3] = &unk_1E774C318;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __52__PXCMMCapabilitiesProvider__accountStoreDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateCapabilities];
}

- (void)_updateCapabilities
{
  photoLibrary = self->_photoLibrary;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__PXCMMCapabilitiesProvider__updateCapabilities__block_invoke;
  v3[3] = &unk_1E7745D48;
  v3[4] = self;
  _PXCMMCapabilitiesForPhotoLibrary(photoLibrary, v3);
}

- (void)_handleCapabilities:(int64_t)a3 cplStatus:(id)a4 permanentlyUnavailable:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = self->_cplStatus;
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    v12 = [(CPLStatus *)v10 isEqual:v9];

    if ((v12 & 1) == 0)
    {
      [(CPLStatus *)self->_cplStatus setDelegate:0];
      objc_storeStrong(&self->_cplStatus, a4);
      [(CPLStatus *)self->_cplStatus setDelegate:self];
    }
  }

  if (v5)
  {
    if (self->_isObserving)
    {
      self->_isObserving = 0;
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 removeObserver:self name:*MEMORY[0x1E69BE8E8] object:0];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(MEMORY[0x1E69789A8], "systemPhotoLibraryURLChangeNotificationName")}], 0);
    }
  }

  else if (!self->_isObserving)
  {
    self->_isObserving = 1;
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:self selector:sel__accountStoreDidChange_ name:*MEMORY[0x1E69BE8E8] object:0];

    v16 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v16, self, _systemPhotoLibraryURLDidChange_213774, [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(MEMORY[0x1E69789A8], "systemPhotoLibraryURLChangeNotificationName")}], 0, 1024);
  }

  if (self->_capabilities != a3)
  {
    v17 = PLUserStatusGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      if (a3 >= 3)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid PXCMMCapabilities: %ld", a3];
      }

      else
      {
        v19 = off_1E7745D80[a3];
      }

      *buf = 138544642;
      v22 = v18;
      v23 = 2048;
      v24 = self;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = objc_opt_class();
      v29 = 2048;
      v30 = v9;
      v31 = 1024;
      v32 = v5;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> capabilities: %{public}@, cplStatus: <%{public}@:%p>, permanentlyUnavailable: %d", buf, 0x3Au);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __82__PXCMMCapabilitiesProvider__handleCapabilities_cplStatus_permanentlyUnavailable___block_invoke;
    v20[3] = &unk_1E7749D78;
    v20[4] = self;
    v20[5] = a3;
    [(PXCMMCapabilitiesProvider *)self performChanges:v20];
  }
}

- (PXCMMCapabilitiesProvider)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCMMCapabilitiesProvider.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v16.receiver = self;
  v16.super_class = PXCMMCapabilitiesProvider;
  v7 = [(PXCMMCapabilitiesProvider *)&v16 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
    photoLibrary = v8->_photoLibrary;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__PXCMMCapabilitiesProvider_initWithPhotoLibrary___block_invoke;
    v14[3] = &unk_1E7745D48;
    v10 = v8;
    v15 = v10;
    _PXCMMCapabilitiesForPhotoLibrary(photoLibrary, v14);
    v11 = +[PXCompleteMyMomentSettings sharedInstance];
    [v11 addDeferredKeyObserver:v10];
  }

  return v8;
}

- (PXCMMCapabilitiesProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMCapabilitiesProvider.m" lineNumber:177 description:{@"%s is not available as initializer", "-[PXCMMCapabilitiesProvider init]"}];

  abort();
}

@end