@interface PXSharedLibraryStatusProvider
+ (PXSharedLibraryStatusProvider)sharedLibraryStatusProviderWithPhotoLibrary:(id)a3;
- (PXSharedLibrary)exiting;
- (PXSharedLibrary)invitation;
- (PXSharedLibrary)preview;
- (PXSharedLibrary)sharedLibrary;
- (PXSharedLibrary)sharedLibraryOrPreview;
- (PXSharedLibraryStatusProvider)init;
- (PXSharedLibraryStatusProvider)initWithPhotoLibrary:(id)a3 deferInitialization:(BOOL)a4 initialHasPreview:(BOOL)a5 initialHasSharedLibrary:(BOOL)a6;
- (id)fetchExiting;
- (id)fetchPreview;
- (id)fetchSharedLibrary;
- (void)_configureExitingDataSourceManager;
- (void)_configureInvitationDataSourceManager;
- (void)_configurePreviewDataSourceManager;
- (void)_configureSharedLibraryDataSourceManager;
- (void)_fullfillDeferredInitializationIfNecessary;
- (void)_initializeDataSourceManagers;
- (void)_performDeferredInitializationIfNecessary;
- (void)_updateExitingWithChangeNotification:(BOOL)a3;
- (void)_updateInvitationReceivedDateWithIdentifier:(id)a3;
- (void)_updateInvitationWithChangeNotification:(BOOL)a3;
- (void)_updatePreviewWithChangeNotification:(BOOL)a3;
- (void)_updateSharedLibraryWithChangeNotification:(BOOL)a3;
- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setExiting:(id)a3;
- (void)setHasPreview:(BOOL)a3;
- (void)setHasSharedLibrary:(BOOL)a3;
- (void)setInvitation:(id)a3;
- (void)setIsInitialized:(BOOL)a3;
- (void)setPreview:(id)a3;
- (void)setSharedLibrary:(id)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation PXSharedLibraryStatusProvider

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = +[PXSharedLibraryDataSourceManager keyPathsAffectingCurrentInvitationsDataSourceManager];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    [(PXSharedLibraryStatusProvider *)self _configureInvitationDataSourceManager];
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v17 = 138543362;
      v18 = v9;
      v10 = "PXSharedLibraryStatusProvider INVITATIONS MANAGER did change: %{public}@";
LABEL_13:
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, v10, &v17, 0xCu);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v11 = +[PXSharedLibraryDataSourceManager keyPathsAffectingCurrentPreviewDataSourceManager];
  v12 = [v11 containsObject:v5];

  if (v12)
  {
    [(PXSharedLibraryStatusProvider *)self _configurePreviewDataSourceManager];
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v17 = 138543362;
      v18 = v9;
      v10 = "PXSharedLibraryStatusProvider PREVIEW MANAGER did change: %{public}@";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v13 = +[PXSharedLibraryDataSourceManager keyPathsAffectingCurrentSharedLibraryDataSourceManager];
  v14 = [v13 containsObject:v5];

  if (v14)
  {
    [(PXSharedLibraryStatusProvider *)self _configureSharedLibraryDataSourceManager];
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v17 = 138543362;
      v18 = v9;
      v10 = "PXSharedLibraryStatusProvider SHARED LIBRARY MANAGER did change: %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v15 = +[PXSharedLibraryDataSourceManager keyPathsAffectingCurrentExitingDataSourceManager];
  v16 = [v15 containsObject:v5];

  if (v16)
  {
    [(PXSharedLibraryStatusProvider *)self _configureExitingDataSourceManager];
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v17 = 138543362;
      v18 = v9;
      v10 = "PXSharedLibraryStatusProvider EXITING MANAGER did change: %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (InvitationObservationContext == a5)
  {
    [(PXSharedLibraryStatusProvider *)self _updateInvitationWithChangeNotification:1];
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v13 = 138543362;
      v14 = v10;
      v11 = "PXSharedLibraryStatusProvider INVITATIONS did change: %{public}@";
      goto LABEL_13;
    }
  }

  else if (PreviewObservationContext == a5)
  {
    [(PXSharedLibraryStatusProvider *)self _updatePreviewWithChangeNotification:1];
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v13 = 138543362;
      v14 = v10;
      v11 = "PXSharedLibraryStatusProvider PREVIEW did change: %{public}@";
      goto LABEL_13;
    }
  }

  else if (SharedLibraryObservationContext == a5)
  {
    [(PXSharedLibraryStatusProvider *)self _updateSharedLibraryWithChangeNotification:1];
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v13 = 138543362;
      v14 = v10;
      v11 = "PXSharedLibraryStatusProvider SHARED LIBRARY did change: %{public}@";
      goto LABEL_13;
    }
  }

  else
  {
    if (ExitingObservationContext != a5)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:468 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXSharedLibraryStatusProvider *)self _updateExitingWithChangeNotification:1];
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v13 = 138543362;
      v14 = v10;
      v11 = "PXSharedLibraryStatusProvider EXITING did change: %{public}@";
LABEL_13:
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
    }
  }
}

- (void)setExiting:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_exiting != v5)
  {
    objc_storeStrong(&self->_exiting, a3);
    [(PXSharedLibraryStatusProvider *)self signalChange:32];
  }
}

- (void)setSharedLibrary:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_sharedLibrary != v5)
  {
    objc_storeStrong(&self->_sharedLibrary, a3);
    [(PXSharedLibraryStatusProvider *)self signalChange:16];
  }
}

- (void)setPreview:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_preview != v5)
  {
    objc_storeStrong(&self->_preview, a3);
    [(PXSharedLibraryStatusProvider *)self signalChange:8];
  }
}

- (void)setInvitation:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_invitation != v5)
  {
    objc_storeStrong(&self->_invitation, a3);
    [(PXSharedLibraryStatusProvider *)self signalChange:4];
  }
}

- (void)setHasSharedLibrary:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_hasSharedLibrary != v3)
  {
    self->_hasSharedLibrary = v3;
    if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
    {
      PXPreferencesSetInteger(@"LastKnownHasSharedLibrary", self->_hasSharedLibrary);
    }

    [(PXSharedLibraryStatusProvider *)self signalChange:2];
  }
}

- (void)setHasPreview:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_hasPreview != v3)
  {
    self->_hasPreview = v3;
    if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
    {
      PXPreferencesSetInteger(@"LastKnownHasSharedLibraryPreview", self->_hasPreview);
    }

    [(PXSharedLibraryStatusProvider *)self signalChange:1];
  }
}

- (void)setIsInitialized:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_isInitialized != v3)
  {
    self->_isInitialized = v3;

    [(PXSharedLibraryStatusProvider *)self signalChange:64];
  }
}

- (PXSharedLibrary)exiting
{
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  exiting = self->_exiting;

  return exiting;
}

- (PXSharedLibrary)sharedLibrary
{
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  sharedLibrary = self->_sharedLibrary;

  return sharedLibrary;
}

- (PXSharedLibrary)preview
{
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  preview = self->_preview;

  return preview;
}

- (PXSharedLibrary)invitation
{
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  invitation = self->_invitation;

  return invitation;
}

- (void)_fullfillDeferredInitializationIfNecessary
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_deferredInitializationLock);
  if (!self->_invitationsDataSourceManager)
  {
    [(PXSharedLibraryStatusProvider *)self _initializeDataSourceManagers];
    v3 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryStatusProvider performed deferred initialization on-demand: %{public}@", &v5, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_deferredInitializationLock);
}

- (void)_performDeferredInitializationIfNecessary
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_deferredInitializationLock);
  if (!self->_invitationsDataSourceManager)
  {
    [(PXSharedLibraryStatusProvider *)self _initializeDataSourceManagers];
    v3 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryStatusProvider performed scheduled deferred initialization: %{public}@", &v5, 0xCu);
    }
  }

  os_unfair_lock_unlock(&self->_deferredInitializationLock);
}

- (void)_initializeDataSourceManagers
{
  [(PXSharedLibraryStatusProvider *)self _configureInvitationDataSourceManager];
  [(PXSharedLibraryStatusProvider *)self _configurePreviewDataSourceManager];
  [(PXSharedLibraryStatusProvider *)self _configureSharedLibraryDataSourceManager];

  [(PXSharedLibraryStatusProvider *)self _configureExitingDataSourceManager];
}

- (PXSharedLibraryStatusProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:315 description:{@"%s is not available as initializer", "-[PXSharedLibraryStatusProvider init]"}];

  abort();
}

- (PXSharedLibraryStatusProvider)initWithPhotoLibrary:(id)a3 deferInitialization:(BOOL)a4 initialHasPreview:(BOOL)a5 initialHasSharedLibrary:(BOOL)a6
{
  v8 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v12 = a3;
  if (!v12)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:288 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v23.receiver = self;
  v23.super_class = PXSharedLibraryStatusProvider;
  v13 = [(PXSharedLibraryStatusProvider *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_deferredInitializationLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_photoLibrary, a3);
    v14->_hasPreview = a5;
    v14->_hasSharedLibrary = a6;
    if (v8)
    {
      v15 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(PXSharedLibraryStatusProvider *)v14 _statusDescription];
        *buf = 138543362;
        v25 = v16;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryStatusProvider deferring initialization... (%{public}@)", buf, 0xCu);
      }

      objc_initWeak(buf, v14);
      v17 = [off_1E7721858 sharedScheduler];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __116__PXSharedLibraryStatusProvider_initWithPhotoLibrary_deferInitialization_initialHasPreview_initialHasSharedLibrary___block_invoke;
      v21[3] = &unk_1E774C318;
      objc_copyWeak(&v22, buf);
      [v17 scheduleMainQueueTask:v21];

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }

    else
    {
      v14->_isInitialized = 1;
      [(PXSharedLibraryStatusProvider *)v14 _initializeDataSourceManagers];
    }

    v18 = +[PXSharedLibrarySettings sharedInstance];
    [v18 addDeferredKeyObserver:v14];
  }

  return v14;
}

void __116__PXSharedLibraryStatusProvider_initWithPhotoLibrary_deferInitialization_initialHasPreview_initialHasSharedLibrary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performDeferredInitializationIfNecessary];
}

- (void)_configureExitingDataSourceManager
{
  v3 = [(PXSharedLibraryStatusProvider *)self photoLibrary];
  v4 = [PXSharedLibraryDataSourceManager currentExitingDataSourceManagerForPhotoLibrary:v3];

  [(PXSectionedDataSourceManager *)self->_exitingDataSourceManager unregisterChangeObserver:self context:ExitingObservationContext];
  exitingDataSourceManager = self->_exitingDataSourceManager;
  self->_exitingDataSourceManager = v4;
  v6 = v4;

  [(PXSectionedDataSourceManager *)self->_exitingDataSourceManager registerChangeObserver:self context:ExitingObservationContext];

  [(PXSharedLibraryStatusProvider *)self _updateExitingWithChangeNotification:0];
}

- (void)_configureSharedLibraryDataSourceManager
{
  v3 = [(PXSharedLibraryStatusProvider *)self photoLibrary];
  v4 = [PXSharedLibraryDataSourceManager currentSharedLibraryDataSourceManagerForPhotoLibrary:v3];

  [(PXSectionedDataSourceManager *)self->_sharedLibraryDataSourceManager unregisterChangeObserver:self context:SharedLibraryObservationContext];
  sharedLibraryDataSourceManager = self->_sharedLibraryDataSourceManager;
  self->_sharedLibraryDataSourceManager = v4;
  v6 = v4;

  [(PXSectionedDataSourceManager *)self->_sharedLibraryDataSourceManager registerChangeObserver:self context:SharedLibraryObservationContext];

  [(PXSharedLibraryStatusProvider *)self _updateSharedLibraryWithChangeNotification:0];
}

- (void)_configurePreviewDataSourceManager
{
  v3 = [(PXSharedLibraryStatusProvider *)self photoLibrary];
  v4 = [PXSharedLibraryDataSourceManager currentPreviewDataSourceManagerForPhotoLibrary:v3];

  [(PXSectionedDataSourceManager *)self->_previewDataSourceManager unregisterChangeObserver:self context:PreviewObservationContext];
  previewDataSourceManager = self->_previewDataSourceManager;
  self->_previewDataSourceManager = v4;
  v6 = v4;

  [(PXSectionedDataSourceManager *)self->_previewDataSourceManager registerChangeObserver:self context:PreviewObservationContext];

  [(PXSharedLibraryStatusProvider *)self _updatePreviewWithChangeNotification:0];
}

- (void)_configureInvitationDataSourceManager
{
  if (!self->_invitationsDataSourceManager && ![(PXSharedLibraryStatusProvider *)self isInitialized])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PXSharedLibraryStatusProvider__configureInvitationDataSourceManager__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v3 = [(PXSharedLibraryStatusProvider *)self photoLibrary];
  v4 = [PXSharedLibraryDataSourceManager currentInvitationsDataSourceManagerForPhotoLibrary:v3];

  [(PXSectionedDataSourceManager *)self->_invitationsDataSourceManager unregisterChangeObserver:self context:InvitationObservationContext];
  invitationsDataSourceManager = self->_invitationsDataSourceManager;
  self->_invitationsDataSourceManager = v4;
  v6 = v4;

  [(PXSectionedDataSourceManager *)self->_invitationsDataSourceManager registerChangeObserver:self context:InvitationObservationContext];
  [(PXSharedLibraryStatusProvider *)self _updateInvitationWithChangeNotification:0];
}

uint64_t __70__PXSharedLibraryStatusProvider__configureInvitationDataSourceManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__PXSharedLibraryStatusProvider__configureInvitationDataSourceManager__block_invoke_2;
  v3[3] = &unk_1E774C5F8;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

- (void)_updateExitingWithChangeNotification:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXSectionedDataSourceManager *)self->_exitingDataSourceManager dataSource];
  if ([v5 containsAnyItems])
  {
    if (v5)
    {
      [v5 firstItemIndexPath];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    v6 = [v5 sharedLibraryAtItemIndexPath:v11];
    if (v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (v3)
    {
LABEL_8:
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __70__PXSharedLibraryStatusProvider__updateExitingWithChangeNotification___block_invoke;
      v9[3] = &unk_1E7738B90;
      v10 = v6;
      [(PXSharedLibraryStatusProvider *)self performChanges:v9];
      exiting = v10;
      goto LABEL_9;
    }
  }

  v7 = v6;
  exiting = self->_exiting;
  self->_exiting = v7;
LABEL_9:
}

- (void)_updateSharedLibraryWithChangeNotification:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXSectionedDataSourceManager *)self->_sharedLibraryDataSourceManager dataSource];
  if ([v5 containsAnyItems])
  {
    if (v5)
    {
      [v5 firstItemIndexPath];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    v6 = [v5 sharedLibraryAtItemIndexPath:v10];
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__PXSharedLibraryStatusProvider__updateSharedLibraryWithChangeNotification___block_invoke;
    v7[3] = &unk_1E7738BB8;
    v8 = v6;
    v9 = v6 != 0;
    [(PXSharedLibraryStatusProvider *)self performChanges:v7];
  }

  else
  {
    objc_storeStrong(&self->_sharedLibrary, v6);
    self->_hasSharedLibrary = v6 != 0;
    if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
    {
      PXPreferencesSetInteger(@"LastKnownHasSharedLibrary", self->_hasSharedLibrary);
    }
  }
}

void __76__PXSharedLibraryStatusProvider__updateSharedLibraryWithChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setSharedLibrary:v3];
  [v4 setHasSharedLibrary:*(a1 + 40)];
}

- (void)_updatePreviewWithChangeNotification:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXSectionedDataSourceManager *)self->_previewDataSourceManager dataSource];
  if ([v5 containsAnyItems])
  {
    if (v5)
    {
      [v5 firstItemIndexPath];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    v6 = [v5 sharedLibraryAtItemIndexPath:v10];
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__PXSharedLibraryStatusProvider__updatePreviewWithChangeNotification___block_invoke;
    v7[3] = &unk_1E7738BB8;
    v8 = v6;
    v9 = v6 != 0;
    [(PXSharedLibraryStatusProvider *)self performChanges:v7];
  }

  else
  {
    objc_storeStrong(&self->_preview, v6);
    self->_hasPreview = v6 != 0;
    if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
    {
      PXPreferencesSetInteger(@"LastKnownHasSharedLibraryPreview", self->_hasPreview);
    }
  }
}

void __70__PXSharedLibraryStatusProvider__updatePreviewWithChangeNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPreview:v3];
  [v4 setHasPreview:*(a1 + 40)];
}

- (void)_updateInvitationReceivedDateWithIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = _PXPreferencesSharedLibraryInvitationDate(@"SharedLibraryInvitationReceivedDate", v3);
    if (!v4)
    {
      v5 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        v8 = v3;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Updating shared library invitation received date for library %{public}@", &v7, 0xCu);
      }

      v6 = [MEMORY[0x1E695DF00] now];
      _PXPreferencesSetSharedLibraryInvitationDate(@"SharedLibraryInvitationReceivedDate", v6, v3);
    }
  }
}

- (void)_updateInvitationWithChangeNotification:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXSharedLibrary *)self->_invitation identifier];
  v6 = [(PXSectionedDataSourceManager *)self->_invitationsDataSourceManager dataSource];
  if ([v6 containsAnyItems])
  {
    if (v6)
    {
      [v6 firstItemIndexPath];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v7 = [v6 sharedLibraryAtItemIndexPath:v13];
    if (v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (v3)
    {
LABEL_8:
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __73__PXSharedLibraryStatusProvider__updateInvitationWithChangeNotification___block_invoke;
      v11[3] = &unk_1E7738B90;
      v12 = v7;
      [(PXSharedLibraryStatusProvider *)self performChanges:v11];
      invitation = v12;
      goto LABEL_9;
    }
  }

  v8 = v7;
  invitation = self->_invitation;
  self->_invitation = v8;
LABEL_9:

  v10 = [(PXSharedLibrary *)self->_invitation identifier];
  if (v5 != v10 && ([v5 isEqualToString:v10] & 1) == 0)
  {
    [(PXSharedLibraryStatusProvider *)self _updateInvitationReceivedDateWithIdentifier:v10];
  }
}

- (id)fetchExiting
{
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  exitingDataSourceManager = self->_exitingDataSourceManager;
  if (!exitingDataSourceManager)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"_exitingDataSourceManager"}];

    exitingDataSourceManager = self->_exitingDataSourceManager;
  }

  return [(PXSharedLibraryDataSourceManager *)exitingDataSourceManager fetchExiting];
}

- (id)fetchSharedLibrary
{
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  sharedLibraryDataSourceManager = self->_sharedLibraryDataSourceManager;
  if (!sharedLibraryDataSourceManager)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"_sharedLibraryDataSourceManager"}];

    sharedLibraryDataSourceManager = self->_sharedLibraryDataSourceManager;
  }

  return [(PXSharedLibraryDataSourceManager *)sharedLibraryDataSourceManager fetchSharedLibrary];
}

- (id)fetchPreview
{
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  previewDataSourceManager = self->_previewDataSourceManager;
  if (!previewDataSourceManager)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"_previewDataSourceManager"}];

    previewDataSourceManager = self->_previewDataSourceManager;
  }

  return [(PXSharedLibraryDataSourceManager *)previewDataSourceManager fetchPreview];
}

- (void)fetchSharedLibraryForURL:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v7 = a4;
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  sharedLibraryDataSourceManager = self->_sharedLibraryDataSourceManager;
  if (!sharedLibraryDataSourceManager)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"_sharedLibraryDataSourceManager"}];

    sharedLibraryDataSourceManager = self->_sharedLibraryDataSourceManager;
  }

  [(PXSharedLibraryDataSourceManager *)sharedLibraryDataSourceManager fetchSharedLibraryForURL:v10 completionHandler:v7];
}

- (PXSharedLibrary)sharedLibraryOrPreview
{
  v3 = [(PXSharedLibraryStatusProvider *)self preview];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PXSharedLibraryStatusProvider *)self sharedLibrary];
  }

  v6 = v5;

  return v6;
}

+ (PXSharedLibraryStatusProvider)sharedLibraryStatusProviderWithPhotoLibrary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    os_unfair_lock_lock(&sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTableLock);
    v4 = sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable;
    if (!sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable)
    {
      v5 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      v6 = sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable;
      sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable = v5;

      v4 = sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable;
    }

    v7 = [v4 objectForKey:v3];
    if (v7)
    {
      v8 = v7;
      v9 = PLSharedLibraryGetLog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
LABEL_27:

        os_unfair_lock_unlock(&sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTableLock);
        goto LABEL_28;
      }

      v18 = 138412546;
      v19 = v3;
      v20 = 2048;
      v21 = v8;
      v10 = "%@ Reusing existing shared library status provider: %p";
    }

    else
    {
      IsLaunchedToExecuteTests = PFProcessIsLaunchedToExecuteTests();
      if (IsLaunchedToExecuteTests)
      {
        v13 = 0;
        v14 = 0;
      }

      else
      {
        LOBYTE(v18) = 0;
        if (CFPreferencesGetAppBooleanValue(@"LastKnownHasSharedLibraryPreview", @"com.apple.mobileslideshow", &v18))
        {
          v15 = v18 == 0;
        }

        else
        {
          v15 = 1;
        }

        v14 = !v15;
        LOBYTE(v18) = 0;
        if (CFPreferencesGetAppBooleanValue(@"LastKnownHasSharedLibrary", @"com.apple.mobileslideshow", &v18))
        {
          v16 = v18 == 0;
        }

        else
        {
          v16 = 1;
        }

        v13 = !v16;
      }

      v8 = [[PXSharedLibraryStatusProvider alloc] initWithPhotoLibrary:v3 deferInitialization:IsLaunchedToExecuteTests ^ 1u initialHasPreview:v14 initialHasSharedLibrary:v13];
      [sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable setObject:v8 forKey:v3];
      v9 = PLSharedLibraryGetLog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      v18 = 138412546;
      v19 = v3;
      v20 = 2048;
      v21 = v8;
      v10 = "%@ Creating new shared library status provider: %p";
    }

    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, v10, &v18, 0x16u);
    goto LABEL_27;
  }

  v11 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_FAULT, "+[PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:] called without a photo library", &v18, 2u);
  }

  v8 = 0;
LABEL_28:

  return v8;
}

@end