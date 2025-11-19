@interface PXContentSyndicationConfigurationProvider
+ (PXContentSyndicationConfigurationProvider)contentSyndicationConfigurationProviderWithPhotoLibrary:(id)a3;
+ (PXContentSyndicationConfigurationProvider)deprecated_sharedInstance;
+ (void)preloadResourcesForPhotoLibrary:(id)a3;
- (PXContentSyndicationConfigurationProvider)init;
- (PXContentSyndicationConfigurationProvider)initWithPhotoLibrary:(id)a3;
- (id)_dataSourceManagerForDataSourceType:(int64_t)a3;
- (void)_createDataSourceManagerIfNeeded;
- (void)_initializeSocialHighlightCenter;
- (void)_invalidateDataSourceManager;
- (void)_markDataSourceManagerAsReadyToLoad;
- (void)_updateContentSyndicationAvailability;
- (void)_updateDataSourceType;
- (void)_updateEverything;
- (void)_updateShowContentSyndicationItemInSidebar;
- (void)_updateShowUnsavedSyndicatedContentInFeaturedPhotos;
- (void)_updateShowUnsavedSyndicatedContentInMemories;
- (void)_updateShowUnsavedSyndicatedContentInPhotosGrids;
- (void)contentSyndicationHighlightCenterDidChange:(id)a3;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setContentSyndicationIsAvailable:(BOOL)a3;
- (void)setShowUnsavedSyndicatedContentInFeaturedPhotos:(BOOL)a3;
- (void)setShowUnsavedSyndicatedContentInMemories:(BOOL)a3;
- (void)setShowUnsavedSyndicatedContentInPhotosGrids:(BOOL)a3;
- (void)setTestingOverride_contentSyndicationEnabled:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PXContentSyndicationConfigurationProvider

- (void)_updateEverything
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __62__PXContentSyndicationConfigurationProvider__updateEverything__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(PXContentSyndicationConfigurationProvider *)self performChanges:v2];
}

uint64_t __62__PXContentSyndicationConfigurationProvider__updateEverything__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateContentSyndicationAvailability];
  [*(a1 + 32) _updateDataSourceType];
  [*(a1 + 32) _createDataSourceManagerIfNeeded];
  [*(a1 + 32) _updateShowUnsavedSyndicatedContentInPhotosGrids];
  [*(a1 + 32) _updateShowUnsavedSyndicatedContentInMemories];
  [*(a1 + 32) _updateShowUnsavedSyndicatedContentInFeaturedPhotos];
  v2 = *(a1 + 32);

  return [v2 _updateShowContentSyndicationItemInSidebar];
}

- (void)_updateContentSyndicationAvailability
{
  photoLibrary = self->_photoLibrary;
  v4 = [(PXContentSyndicationConfigurationProvider *)self testingOverride_contentSyndicationEnabled];
  isContentSyndicationAvailable = _isContentSyndicationAvailable(photoLibrary, v4);

  [(PXContentSyndicationConfigurationProvider *)self setContentSyndicationIsAvailable:isContentSyndicationAvailable];
}

- (void)_updateDataSourceType
{
  v3 = +[PXContentSyndicationSettings sharedInstance];
  v4 = [v3 dataSourceType];

  if (v4 != [(PXContentSyndicationConfigurationProvider *)self dataSourceType])
  {
    [(PXContentSyndicationConfigurationProvider *)self _invalidateDataSourceManager];
    [(PXContentSyndicationConfigurationProvider *)self setDataSourceType:v4];

    [(PXContentSyndicationConfigurationProvider *)self _createDataSourceManagerIfNeeded];
  }
}

- (void)_createDataSourceManagerIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(PXContentSyndicationConfigurationProvider *)self syndicationItemsDataSourceManager];

  if (!v3)
  {
    v4 = [(PXContentSyndicationConfigurationProvider *)self syndicationItemsDataSourceManager];
    if ([(PXContentSyndicationConfigurationProvider *)self readyToLoadActualDataSourceManager])
    {
      v5 = [(PXContentSyndicationConfigurationProvider *)self _dataSourceManagerForDataSourceType:[(PXContentSyndicationConfigurationProvider *)self dataSourceType]];
    }

    else
    {
      v6 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Not yet ready to load the real data source manager, so loading an empty one instead.", &v18, 2u);
      }

      v5 = objc_alloc_init(PXContentSyndicationEmptyDataSourceManager);
    }

    v7 = v5;
    [(PXContentSyndicationConfigurationProvider *)self setSyndicationItemsDataSourceManager:v5];

    v8 = [(PXContentSyndicationConfigurationProvider *)self syndicationItemsDataSourceManager];
    [v8 registerChangeObserver:self context:PXContentSyndicationConfigurationProviderDataSourceObservationContext];

    v9 = objc_opt_class();
    v10 = [(PXContentSyndicationConfigurationProvider *)self syndicationItemsDataSourceManager];
    v11 = objc_opt_class();

    if (v9 != v11)
    {
      v12 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [(PXContentSyndicationConfigurationProvider *)self syndicationItemsDataSourceManager];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = 138543618;
        v19 = v14;
        v20 = 2114;
        v21 = v17;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Content syndication data source manager changed from %{public}@ to %{public}@", &v18, 0x16u);
      }

      [(PXContentSyndicationConfigurationProvider *)self signalChange:2];
    }
  }
}

- (void)_updateShowUnsavedSyndicatedContentInPhotosGrids
{
  photoLibrary = self->_photoLibrary;
  v4 = [(PXContentSyndicationConfigurationProvider *)self testingOverride_contentSyndicationEnabled];
  if (_isContentSyndicationAvailable(photoLibrary, v4))
  {
    v5 = +[PXContentSyndicationSettings sharedInstance];
    v6 = [v5 showSyndicatedContentInLibrary];
  }

  else
  {
    v6 = 0;
  }

  [(PXContentSyndicationConfigurationProvider *)self setShowUnsavedSyndicatedContentInPhotosGrids:v6];
}

- (void)_updateShowUnsavedSyndicatedContentInMemories
{
  photoLibrary = self->_photoLibrary;
  v4 = [(PXContentSyndicationConfigurationProvider *)self testingOverride_contentSyndicationEnabled];
  isContentSyndicationAvailable = _isContentSyndicationAvailable(photoLibrary, v4);

  [(PXContentSyndicationConfigurationProvider *)self setShowUnsavedSyndicatedContentInMemories:isContentSyndicationAvailable];
}

- (void)_updateShowUnsavedSyndicatedContentInFeaturedPhotos
{
  photoLibrary = self->_photoLibrary;
  v4 = [(PXContentSyndicationConfigurationProvider *)self testingOverride_contentSyndicationEnabled];
  isContentSyndicationAvailable = _isContentSyndicationAvailable(photoLibrary, v4);

  [(PXContentSyndicationConfigurationProvider *)self setShowUnsavedSyndicatedContentInFeaturedPhotos:isContentSyndicationAvailable];
}

- (void)_updateShowContentSyndicationItemInSidebar
{
  if ([(PXContentSyndicationConfigurationProvider *)self showContentSyndicationItemInSidebar])
  {
    [(PXContentSyndicationConfigurationProvider *)self setShowContentSyndicationItemInSidebar:0];

    [(PXContentSyndicationConfigurationProvider *)self signalChange:32];
  }
}

- (void)_markDataSourceManagerAsReadyToLoad
{
  v3 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Loading real data source manager.", buf, 2u);
  }

  if (!self->_readyToLoadActualDataSourceManager)
  {
    self->_readyToLoadActualDataSourceManager = 1;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __80__PXContentSyndicationConfigurationProvider__markDataSourceManagerAsReadyToLoad__block_invoke;
    v4[3] = &unk_1E774C5F8;
    v4[4] = self;
    [(PXContentSyndicationConfigurationProvider *)self performChanges:v4];
  }
}

uint64_t __80__PXContentSyndicationConfigurationProvider__markDataSourceManagerAsReadyToLoad__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateDataSourceManager];
  [*(a1 + 32) _createDataSourceManagerIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _updateShowContentSyndicationItemInSidebar];
}

- (void)_invalidateDataSourceManager
{
  v3 = [(PXContentSyndicationConfigurationProvider *)self syndicationItemsDataSourceManager];
  [v3 unregisterChangeObserver:self context:PXContentSyndicationConfigurationProviderDataSourceObservationContext];

  [(PXContentSyndicationConfigurationProvider *)self setSyndicationItemsDataSourceManager:0];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXContentSyndicationConfigurationProviderDataSourceObservationContext == a5)
  {
    if (v6)
    {
      v10 = v15;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v11 = __74__PXContentSyndicationConfigurationProvider_observable_didChange_context___block_invoke;
      goto LABEL_7;
    }
  }

  else
  {
    if (PXLibraryFilterStateObservationContext_202006 != a5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationConfigurationProvider.m" lineNumber:611 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (v6)
    {
      v10 = &v13;
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v11 = __74__PXContentSyndicationConfigurationProvider_observable_didChange_context___block_invoke_2;
LABEL_7:
      v10[2] = v11;
      v10[3] = &unk_1E774C5F8;
      v10[4] = self;
      [(PXContentSyndicationConfigurationProvider *)self performChanges:v13, v14];
    }
  }
}

- (void)contentSyndicationHighlightCenterDidChange:(id)a3
{
  v4 = PLSyndicationUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: SLHighlightCenter reports that Shared with You enablement has changed.", v5, 2u);
  }

  [(PXContentSyndicationConfigurationProvider *)self _updateEverything];
}

- (void)setShowUnsavedSyndicatedContentInFeaturedPhotos:(BOOL)a3
{
  if (self->_showUnsavedSyndicatedContentInFeaturedPhotos != a3)
  {
    self->_showUnsavedSyndicatedContentInFeaturedPhotos = a3;
    [(PXContentSyndicationConfigurationProvider *)self signalChange:16];
  }
}

- (void)setShowUnsavedSyndicatedContentInMemories:(BOOL)a3
{
  if (self->_showUnsavedSyndicatedContentInMemories != a3)
  {
    self->_showUnsavedSyndicatedContentInMemories = a3;
    [(PXContentSyndicationConfigurationProvider *)self signalChange:8];
  }
}

- (void)setShowUnsavedSyndicatedContentInPhotosGrids:(BOOL)a3
{
  if (self->_showUnsavedSyndicatedContentInPhotosGrids != a3)
  {
    self->_showUnsavedSyndicatedContentInPhotosGrids = a3;
    [(PXContentSyndicationConfigurationProvider *)self signalChange:4];
  }
}

- (id)_dataSourceManagerForDataSourceType:(int64_t)a3
{
  photoLibrary = self->_photoLibrary;
  v6 = [(PXContentSyndicationConfigurationProvider *)self testingOverride_contentSyndicationEnabled];
  LODWORD(photoLibrary) = _isContentSyndicationAvailable(photoLibrary, v6);

  if (!photoLibrary)
  {
    v13 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v14 = "ContentSyndicationConfiguration: Using empty data source manager, as content syndication is not available.";
      v15 = &v20;
      v16 = v13;
      v17 = OS_LOG_TYPE_DEFAULT;
LABEL_20:
      _os_log_impl(&dword_1A3C1C000, v16, v17, v14, v15, 2u);
    }

LABEL_21:

    v12 = objc_alloc_init(PXContentSyndicationEmptyDataSourceManager);
    goto LABEL_22;
  }

  if (a3 > 6)
  {
LABEL_18:
    v13 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      v14 = "ContentSyndicationConfiguration: Data Source Manager could not be created, falling back to empty data source manager. The syndication library may not exist, or could not be opened.";
      v15 = v21;
      v16 = v13;
      v17 = OS_LOG_TYPE_ERROR;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (((1 << a3) & 0xE) != 0)
  {
    v18 = PXContentSyndicationMockSingleAssetsDataSourceManager;
    goto LABEL_17;
  }

  if (((1 << a3) & 0x31) == 0)
  {
    v18 = PXContentSyndicationMockCMMDataSourceManager;
    goto LABEL_17;
  }

  v7 = [(PXContentSyndicationConfigurationProvider *)self syndicationPhotoLibrary];

  v8 = PLSyndicationUIGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (v9)
    {
      *v22 = 0;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Syndication photo library wasn't loaded in the background loading directly with data source manager instantiation.", v22, 2u);
    }

    v18 = PXContentSyndicationPhotoKitDataSourceManager;
LABEL_17:
    v12 = objc_alloc_init(v18);
    if (v12)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Using already-created syndication photo library instance for data source manager.", buf, 2u);
  }

  v10 = [PXContentSyndicationPhotoKitDataSourceManager alloc];
  v11 = [(PXContentSyndicationConfigurationProvider *)self syndicationPhotoLibrary];
  v12 = [(PXContentSyndicationPhotoKitDataSourceManager *)v10 initWithPhotoLibrary:v11];

  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_22:

  return v12;
}

- (void)setContentSyndicationIsAvailable:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_contentSyndicationIsAvailable != a3)
  {
    self->_contentSyndicationIsAvailable = a3;
    v4 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_contentSyndicationIsAvailable)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Content syndication availability changed to %{public}@", &v7, 0xCu);
    }

    [(PXContentSyndicationConfigurationProvider *)self _invalidateDataSourceManager];
    [(PXContentSyndicationConfigurationProvider *)self signalChange:1];
  }
}

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v5 = a4;
  v6 = NSStringFromSelector(sel_contentSyndicationEnabled);
  if ([v5 isEqualToString:v6])
  {
    goto LABEL_6;
  }

  v7 = NSStringFromSelector(sel_showSyndicatedContentInLibrary);
  if ([v5 isEqualToString:v7])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v8 = NSStringFromSelector(sel_ignoreSocialLayerEnablement);
  if ([v5 isEqualToString:v8])
  {

    goto LABEL_5;
  }

  v9 = NSStringFromSelector(sel_showContentSyndicationInSystemPhotoLibraryOnly);
  v10 = [v5 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = NSStringFromSelector(sel_dataSourceType);
    v12 = [v5 isEqualToString:v11];

    if (v12)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __73__PXContentSyndicationConfigurationProvider_settings_changedValueForKey___block_invoke;
      v24 = &unk_1E774C5F8;
      v25 = self;
      v13 = &v21;
    }

    else
    {
      v14 = NSStringFromSelector(sel_showSidebarItemEvenIfNoSyndicatedContentAvailable);
      v15 = [v5 isEqualToString:v14];

      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __73__PXContentSyndicationConfigurationProvider_settings_changedValueForKey___block_invoke_2;
      v19 = &unk_1E774C5F8;
      v20 = self;
      v13 = &v16;
    }

    [(PXContentSyndicationConfigurationProvider *)self performChanges:v13, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25];
    goto LABEL_8;
  }

LABEL_7:
  [(PXContentSyndicationConfigurationProvider *)self _updateEverything];
LABEL_8:
}

uint64_t __73__PXContentSyndicationConfigurationProvider_settings_changedValueForKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateDataSourceType];
  v2 = *(a1 + 32);

  return [v2 _updateShowContentSyndicationItemInSidebar];
}

- (void)_initializeSocialHighlightCenter
{
  v3 = +[PXContentSyndicationHighlightCenter shared];
  socialLayerHighlightCenter = self->_socialLayerHighlightCenter;
  self->_socialLayerHighlightCenter = v3;

  v5 = self->_socialLayerHighlightCenter;

  [(PXContentSyndicationHighlightCenter *)v5 registerObserver:self];
}

- (void)dealloc
{
  v3 = +[PXContentSyndicationSettings sharedInstance];
  [v3 removeKeyObserver:self];

  v4.receiver = self;
  v4.super_class = PXContentSyndicationConfigurationProvider;
  [(PXContentSyndicationConfigurationProvider *)&v4 dealloc];
}

- (PXContentSyndicationConfigurationProvider)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationConfigurationProvider.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v27.receiver = self;
  v27.super_class = PXContentSyndicationConfigurationProvider;
  v7 = [(PXContentSyndicationConfigurationProvider *)&v27 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
    v9 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v8->_photoLibrary];
    v10 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v9];
    libraryFilterState = v8->_libraryFilterState;
    v8->_libraryFilterState = v10;

    v12 = +[PXContentSyndicationSettings sharedInstance];
    [v12 addDeferredKeyObserver:v8];
    if (_isContentSyndicationPossible())
    {
      objc_initWeak(location, v8);
      v13 = [off_1E7721858 sharedScheduler];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __66__PXContentSyndicationConfigurationProvider_initWithPhotoLibrary___block_invoke;
      v24[3] = &unk_1E774C318;
      objc_copyWeak(&v25, location);
      [v13 scheduleTaskWithQoS:1 block:v24];

      objc_destroyWeak(&v25);
      objc_destroyWeak(location);
    }

    [(PXLibraryFilterState *)v8->_libraryFilterState registerChangeObserver:v8 context:PXLibraryFilterStateObservationContext_202006];
    if (([v12 delayLoadingActualDataSourceUntilAfterLaunch] & 1) == 0)
    {
      v8->_readyToLoadActualDataSourceManager = 1;
    }

    [(PXContentSyndicationConfigurationProvider *)v8 _updateEverything];
    if (-[PXContentSyndicationConfigurationProvider contentSyndicationIsAvailable](v8, "contentSyndicationIsAvailable") && [v12 delayLoadingActualDataSourceUntilAfterLaunch])
    {
      v14 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Beginning delayed load of real data source manager. Loading syndication photo library in background thread.", location, 2u);
      }

      v15 = [MEMORY[0x1E695DF00] date];
      v16 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__PXContentSyndicationConfigurationProvider_initWithPhotoLibrary___block_invoke_207;
      block[3] = &unk_1E774A1B8;
      v21 = v8;
      v22 = v6;
      v23 = v15;
      v17 = v15;
      dispatch_async(v16, block);
    }

    else
    {
      [(PXContentSyndicationConfigurationProvider *)v8 _markDataSourceManagerAsReadyToLoad];
    }
  }

  return v8;
}

void __66__PXContentSyndicationConfigurationProvider_initWithPhotoLibrary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _initializeSocialHighlightCenter];
}

void __66__PXContentSyndicationConfigurationProvider_initWithPhotoLibrary___block_invoke_207(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) dataSourceType];
  if (v2 > 5 || ((1 << v2) & 0x31) == 0)
  {
    v23 = PLSyndicationUIGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Syndication photo library loading not needed. Must be using a mock/internal data source type. Dispatching to main.", buf, 2u);
    }

    v22 = 0;
  }

  else
  {
    if ([*(a1 + 40) wellKnownPhotoLibraryIdentifier] == 3)
    {
      v4 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: operating on syndication library, shortcircuiting open", buf, 2u);
      }

      [*(a1 + 32) setSyndicationPhotoLibrary:*(a1 + 40)];
    }

    else
    {
      v5 = PLSyndicationGetLog();
      v6 = os_signpost_id_generate(v5);
      v7 = [MEMORY[0x1E695DF00] date];
      v8 = v5;
      v9 = v8;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PXContentSyndicationConfigurationProvider.syndicationLibraryLoad", "", buf, 2u);
      }

      v27 = 0;
      v10 = [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:3 error:&v27];
      v11 = COERCE_DOUBLE(v27);
      [*(a1 + 32) setSyndicationPhotoLibrary:v10];

      v12 = [*(a1 + 32) syndicationPhotoLibrary];

      if (!v12)
      {
        v13 = PLSyndicationUIGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = v11;
          _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "ContentSyndicationConfiguration: Unable to open syndication library: %@", buf, 0xCu);
        }
      }

      v14 = v9;
      v15 = v14;
      if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_END, v6, "PXContentSyndicationConfigurationProvider.syndicationLibraryLoad", "", buf, 2u);
      }

      v16 = [MEMORY[0x1E695DF00] date];
      [v16 timeIntervalSinceDate:v7];
      v18 = v17;
      [v16 timeIntervalSinceDate:*(a1 + 48)];
      v20 = v19;
      v21 = PLSyndicationUIGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v29 = v18 * 1000.0;
        v30 = 2048;
        v31 = v20 * 1000.0;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "ContentSyndicationConfiguration: Syndication photo library took %.2fms to load, total time %.2fms. Dispatching to main.", buf, 0x16u);
      }
    }

    v22 = 1;
  }

  v24 = [*(a1 + 32) syndicationPhotoLibrary];

  if (!v22 || v24)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __66__PXContentSyndicationConfigurationProvider_initWithPhotoLibrary___block_invoke_208;
    v25[3] = &unk_1E774C648;
    v26 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], v25);
  }
}

- (PXContentSyndicationConfigurationProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXContentSyndicationConfigurationProvider.m" lineNumber:207 description:{@"%s is not available as initializer", "-[PXContentSyndicationConfigurationProvider init]"}];

  abort();
}

- (void)setTestingOverride_contentSyndicationEnabled:(id)a3
{
  v8 = a3;
  v5 = self->_testingOverride_contentSyndicationEnabled;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSNumber *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_testingOverride_contentSyndicationEnabled, a3);
      [(PXContentSyndicationConfigurationProvider *)self _updateEverything];
    }
  }
}

+ (PXContentSyndicationConfigurationProvider)contentSyndicationConfigurationProviderWithPhotoLibrary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:]"];
    [v12 handleFailureInFunction:v13 file:@"PXContentSyndicationConfigurationProvider.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  os_unfair_lock_lock(&contentSyndicationConfigurationProviderWithPhotoLibrary___statusProvidersMapTableLock);
  v4 = contentSyndicationConfigurationProviderWithPhotoLibrary___statusProvidersMapTable;
  if (!contentSyndicationConfigurationProviderWithPhotoLibrary___statusProvidersMapTable)
  {
    v5 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v6 = contentSyndicationConfigurationProviderWithPhotoLibrary___statusProvidersMapTable;
    contentSyndicationConfigurationProviderWithPhotoLibrary___statusProvidersMapTable = v5;

    v4 = contentSyndicationConfigurationProviderWithPhotoLibrary___statusProvidersMapTable;
  }

  v7 = [v4 objectForKey:v3];
  if (v7)
  {
    v8 = v7;
    v9 = PLSyndicationUIGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v15 = v3;
    v16 = 2048;
    v17 = v8;
    v10 = "%@ Reusing existing content syndication configuration provider: %p";
  }

  else
  {
    v8 = [[PXContentSyndicationConfigurationProvider alloc] initWithPhotoLibrary:v3];
    [contentSyndicationConfigurationProviderWithPhotoLibrary___statusProvidersMapTable setObject:v8 forKey:v3];
    v9 = PLSyndicationUIGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 138412546;
    v15 = v3;
    v16 = 2048;
    v17 = v8;
    v10 = "%@ Creating new content syndication configuration provider: %p";
  }

  _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, v10, buf, 0x16u);
LABEL_11:

  os_unfair_lock_unlock(&contentSyndicationConfigurationProviderWithPhotoLibrary___statusProvidersMapTableLock);

  return v8;
}

+ (void)preloadResourcesForPhotoLibrary:(id)a3
{
  v3 = a3;
  if (_isContentSyndicationPossible())
  {
    _isContentSyndicationAvailable(v3, 0);
  }
}

+ (PXContentSyndicationConfigurationProvider)deprecated_sharedInstance
{
  if (deprecated_sharedInstance_onceToken != -1)
  {
    dispatch_once(&deprecated_sharedInstance_onceToken, &__block_literal_global_202091);
  }

  v3 = deprecated_sharedInstance_provider;

  return v3;
}

void __70__PXContentSyndicationConfigurationProvider_deprecated_sharedInstance__block_invoke()
{
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v0 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v2];
  v1 = deprecated_sharedInstance_provider;
  deprecated_sharedInstance_provider = v0;
}

@end