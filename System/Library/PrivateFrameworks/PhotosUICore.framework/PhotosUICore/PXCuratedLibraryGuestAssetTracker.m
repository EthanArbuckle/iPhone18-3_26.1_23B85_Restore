@interface PXCuratedLibraryGuestAssetTracker
- (BOOL)_checkForGuestAssetsVisible;
- (BOOL)_isViewSettled;
- (PXCuratedLibraryGuestAssetTracker)initWithViewModel:(id)a3 layout:(id)a4;
- (PXCuratedLibraryGuestAssetTrackerDelegate)delegate;
- (void)_checkForVisibilityUpdates;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setCanDisplayGuestAssets:(BOOL)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setIsDisplayingGuestAssets:(BOOL)a3;
@end

@implementation PXCuratedLibraryGuestAssetTracker

- (PXCuratedLibraryGuestAssetTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (CuratedLibraryViewModelObserverContext_151445 == a5)
  {
    if ((v6 & 0x2800) != 0)
    {
LABEL_4:
      v11 = v9;
      [(PXCuratedLibraryGuestAssetTracker *)self _checkForVisibilityUpdates];
      v9 = v11;
    }
  }

  else
  {
    if (operator|| != a5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryGuestAssetTracker.m" lineNumber:138 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (v6)
    {
      goto LABEL_4;
    }
  }
}

- (BOOL)_checkForGuestAssetsVisible
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = self;
    v4 = *&buf[4];
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Checking for guest assets.", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v10 = 0;
  layout = self->_layout;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PXCuratedLibraryGuestAssetTracker__checkForGuestAssetsVisible__block_invoke;
  v8[3] = &unk_1E773DD18;
  v8[4] = buf;
  [(PXCuratedLibraryLayout *)layout enumerateVisibleAssetReferencesUsingBlock:v8];
  v6 = *(*&buf[8] + 24) > 1uLL;
  _Block_object_dispose(buf, 8);
  return v6;
}

void __64__PXCuratedLibraryGuestAssetTracker__checkForGuestAssetsVisible__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 asset];
  if (PXDisplayAssetIsSyndicatedAndUnsaved(v5))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  if (*(*(*(a1 + 32) + 8) + 24) >= 2uLL)
  {
    *a3 = 1;
  }
}

- (BOOL)_isViewSettled
{
  v2 = self->_viewModel;
  if ([(PXCuratedLibraryViewModel *)v2 scrollRegime]|| [(PXCuratedLibraryViewModel *)v2 zoomLevelTransitionPhase])
  {
    v3 = 0;
  }

  else
  {
    v5 = [(PXCuratedLibraryViewModel *)v2 zoomablePhotosViewModel];
    v6 = v5;
    if (v5)
    {
      [v5 zoomState];
      v3 = v7 ^ 1;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3 & 1;
}

- (void)_checkForVisibilityUpdates
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(PXCuratedLibraryGuestAssetTracker *)self isActive])
  {
    v3 = [(PXCuratedLibraryGuestAssetTracker *)self delegate];

    if (v3)
    {
      v4 = self->_viewModel;
      v5 = [(PXCuratedLibraryViewModel *)v4 zoomLevel];
      v6 = [(PXCuratedLibraryGuestAssetTracker *)self _isViewSettled];
      v7 = [(PXCuratedLibraryViewModel *)v4 zoomablePhotosViewModel];
      v8 = [v7 isDisplayingIndividualItems];

      v9 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v11 = @"Can NOT";
        if (v5 == 4)
        {
          v11 = @"CAN";
        }

        v12 = @"is NOT";
        *v19 = 138544386;
        *&v19[4] = v10;
        if (v6)
        {
          v12 = @"IS";
        }

        *&v19[12] = 2048;
        *&v19[14] = self;
        v20 = v11;
        *&v19[22] = 2112;
        *v21 = 2112;
        *&v21[2] = v12;
        if (v8)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        *&v21[10] = 2112;
        *&v21[12] = v13;
        v14 = v10;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Check for visibility updates. %@ display assets. View %@ settled. Individual Items: %@", v19, 0x34u);
      }

      if ((v6 & v8) == 1)
      {
        [(PXCuratedLibraryGuestAssetTracker *)self setCanDisplayGuestAssets:v5 == 4, *v19, *&v19[16], v20, *v21, *&v21[16]];
        if ([(PXCuratedLibraryGuestAssetTracker *)self canDisplayGuestAssets])
        {
          v15 = [(PXCuratedLibraryGuestAssetTracker *)self _checkForGuestAssetsVisible];
          v16 = PLCuratedLibraryGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = objc_opt_class();
            *v19 = 138543618;
            *&v19[4] = v17;
            *&v19[12] = 2048;
            *&v19[14] = self;
            v18 = v17;
            _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Found guest assets.", v19, 0x16u);
          }
        }

        else
        {
          v15 = 0;
        }

        [(PXCuratedLibraryGuestAssetTracker *)self setIsDisplayingGuestAssets:v15];
      }
    }
  }
}

- (void)setIsDisplayingGuestAssets:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_isDisplayingGuestAssets != a3)
  {
    v3 = a3;
    self->_isDisplayingGuestAssets = a3;
    v5 = [(PXCuratedLibraryGuestAssetTracker *)self delegate];
    [v5 guestAssetsTracker:self isDisplayingGuestAssets:v3];

    v6 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543874;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = self;
      v12 = 1024;
      v13 = v3;
      v7 = v9;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> isDisplayingGuestAssets changed: %d", &v8, 0x1Cu);
    }
  }
}

- (void)setCanDisplayGuestAssets:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_canDisplayGuestAssets != a3)
  {
    v3 = a3;
    self->_canDisplayGuestAssets = a3;
    v5 = [(PXCuratedLibraryGuestAssetTracker *)self delegate];
    [v5 guestAssetsTracker:self canDisplayGuestAssets:v3];

    v6 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543874;
      v9 = objc_opt_class();
      v10 = 2048;
      v11 = self;
      v12 = 1024;
      v13 = v3;
      v7 = v9;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> canDisplayGuestAssets changed: %d", &v8, 0x1Cu);
    }
  }
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    if (a3)
    {
      [(PXCuratedLibraryGuestAssetTracker *)self _checkForVisibilityUpdates];
      [(PXCuratedLibraryViewModel *)self->_viewModel registerChangeObserver:self context:CuratedLibraryViewModelObserverContext_151445];
      v5 = [(PXCuratedLibraryViewModel *)self->_viewModel zoomablePhotosViewModel];
      [v5 registerChangeObserver:self context:operator||];
    }

    else
    {
      [(PXCuratedLibraryViewModel *)self->_viewModel unregisterChangeObserver:self context:CuratedLibraryViewModelObserverContext_151445];
      v4 = [(PXCuratedLibraryViewModel *)self->_viewModel zoomablePhotosViewModel];
      [v4 unregisterChangeObserver:self context:operator||];

      [(PXCuratedLibraryGuestAssetTracker *)self setCanDisplayGuestAssets:0];

      [(PXCuratedLibraryGuestAssetTracker *)self setIsDisplayingGuestAssets:0];
    }
  }
}

- (PXCuratedLibraryGuestAssetTracker)initWithViewModel:(id)a3 layout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXCuratedLibraryGuestAssetTracker;
  v9 = [(PXCuratedLibraryGuestAssetTracker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
    objc_storeStrong(&v10->_layout, a4);
  }

  return v10;
}

@end