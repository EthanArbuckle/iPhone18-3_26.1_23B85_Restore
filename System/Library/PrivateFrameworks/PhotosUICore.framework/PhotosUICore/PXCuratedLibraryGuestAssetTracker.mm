@interface PXCuratedLibraryGuestAssetTracker
- (BOOL)_checkForGuestAssetsVisible;
- (BOOL)_isViewSettled;
- (PXCuratedLibraryGuestAssetTracker)initWithViewModel:(id)model layout:(id)layout;
- (PXCuratedLibraryGuestAssetTrackerDelegate)delegate;
- (void)_checkForVisibilityUpdates;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setCanDisplayGuestAssets:(BOOL)assets;
- (void)setIsActive:(BOOL)active;
- (void)setIsDisplayingGuestAssets:(BOOL)assets;
@end

@implementation PXCuratedLibraryGuestAssetTracker

- (PXCuratedLibraryGuestAssetTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (CuratedLibraryViewModelObserverContext_151445 == context)
  {
    if ((changeCopy & 0x2800) != 0)
    {
LABEL_4:
      v11 = observableCopy;
      [(PXCuratedLibraryGuestAssetTracker *)self _checkForVisibilityUpdates];
      observableCopy = v11;
    }
  }

  else
  {
    if (operator|| != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryGuestAssetTracker.m" lineNumber:138 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (changeCopy)
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
    zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)v2 zoomablePhotosViewModel];
    v6 = zoomablePhotosViewModel;
    if (zoomablePhotosViewModel)
    {
      [zoomablePhotosViewModel zoomState];
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
    delegate = [(PXCuratedLibraryGuestAssetTracker *)self delegate];

    if (delegate)
    {
      v4 = self->_viewModel;
      zoomLevel = [(PXCuratedLibraryViewModel *)v4 zoomLevel];
      _isViewSettled = [(PXCuratedLibraryGuestAssetTracker *)self _isViewSettled];
      zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)v4 zoomablePhotosViewModel];
      isDisplayingIndividualItems = [zoomablePhotosViewModel isDisplayingIndividualItems];

      v9 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = objc_opt_class();
        v11 = @"Can NOT";
        if (zoomLevel == 4)
        {
          v11 = @"CAN";
        }

        v12 = @"is NOT";
        *v19 = 138544386;
        *&v19[4] = v10;
        if (_isViewSettled)
        {
          v12 = @"IS";
        }

        *&v19[12] = 2048;
        *&v19[14] = self;
        v20 = v11;
        *&v19[22] = 2112;
        *v21 = 2112;
        *&v21[2] = v12;
        if (isDisplayingIndividualItems)
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

      if ((_isViewSettled & isDisplayingIndividualItems) == 1)
      {
        [(PXCuratedLibraryGuestAssetTracker *)self setCanDisplayGuestAssets:zoomLevel == 4, *v19, *&v19[16], v20, *v21, *&v21[16]];
        if ([(PXCuratedLibraryGuestAssetTracker *)self canDisplayGuestAssets])
        {
          _checkForGuestAssetsVisible = [(PXCuratedLibraryGuestAssetTracker *)self _checkForGuestAssetsVisible];
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
          _checkForGuestAssetsVisible = 0;
        }

        [(PXCuratedLibraryGuestAssetTracker *)self setIsDisplayingGuestAssets:_checkForGuestAssetsVisible];
      }
    }
  }
}

- (void)setIsDisplayingGuestAssets:(BOOL)assets
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_isDisplayingGuestAssets != assets)
  {
    assetsCopy = assets;
    self->_isDisplayingGuestAssets = assets;
    delegate = [(PXCuratedLibraryGuestAssetTracker *)self delegate];
    [delegate guestAssetsTracker:self isDisplayingGuestAssets:assetsCopy];

    v6 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543874;
      v9 = objc_opt_class();
      v10 = 2048;
      selfCopy = self;
      v12 = 1024;
      v13 = assetsCopy;
      v7 = v9;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> isDisplayingGuestAssets changed: %d", &v8, 0x1Cu);
    }
  }
}

- (void)setCanDisplayGuestAssets:(BOOL)assets
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_canDisplayGuestAssets != assets)
  {
    assetsCopy = assets;
    self->_canDisplayGuestAssets = assets;
    delegate = [(PXCuratedLibraryGuestAssetTracker *)self delegate];
    [delegate guestAssetsTracker:self canDisplayGuestAssets:assetsCopy];

    v6 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543874;
      v9 = objc_opt_class();
      v10 = 2048;
      selfCopy = self;
      v12 = 1024;
      v13 = assetsCopy;
      v7 = v9;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> canDisplayGuestAssets changed: %d", &v8, 0x1Cu);
    }
  }
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    if (active)
    {
      [(PXCuratedLibraryGuestAssetTracker *)self _checkForVisibilityUpdates];
      [(PXCuratedLibraryViewModel *)self->_viewModel registerChangeObserver:self context:CuratedLibraryViewModelObserverContext_151445];
      zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)self->_viewModel zoomablePhotosViewModel];
      [zoomablePhotosViewModel registerChangeObserver:self context:operator||];
    }

    else
    {
      [(PXCuratedLibraryViewModel *)self->_viewModel unregisterChangeObserver:self context:CuratedLibraryViewModelObserverContext_151445];
      zoomablePhotosViewModel2 = [(PXCuratedLibraryViewModel *)self->_viewModel zoomablePhotosViewModel];
      [zoomablePhotosViewModel2 unregisterChangeObserver:self context:operator||];

      [(PXCuratedLibraryGuestAssetTracker *)self setCanDisplayGuestAssets:0];

      [(PXCuratedLibraryGuestAssetTracker *)self setIsDisplayingGuestAssets:0];
    }
  }
}

- (PXCuratedLibraryGuestAssetTracker)initWithViewModel:(id)model layout:(id)layout
{
  modelCopy = model;
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = PXCuratedLibraryGuestAssetTracker;
  v9 = [(PXCuratedLibraryGuestAssetTracker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    objc_storeStrong(&v10->_layout, layout);
  }

  return v10;
}

@end