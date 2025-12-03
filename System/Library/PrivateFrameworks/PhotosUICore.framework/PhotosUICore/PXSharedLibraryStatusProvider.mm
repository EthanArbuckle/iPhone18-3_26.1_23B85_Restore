@interface PXSharedLibraryStatusProvider
+ (PXSharedLibraryStatusProvider)sharedLibraryStatusProviderWithPhotoLibrary:(id)library;
- (PXSharedLibrary)exiting;
- (PXSharedLibrary)invitation;
- (PXSharedLibrary)preview;
- (PXSharedLibrary)sharedLibrary;
- (PXSharedLibrary)sharedLibraryOrPreview;
- (PXSharedLibraryStatusProvider)init;
- (PXSharedLibraryStatusProvider)initWithPhotoLibrary:(id)library deferInitialization:(BOOL)initialization initialHasPreview:(BOOL)preview initialHasSharedLibrary:(BOOL)sharedLibrary;
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
- (void)_updateExitingWithChangeNotification:(BOOL)notification;
- (void)_updateInvitationReceivedDateWithIdentifier:(id)identifier;
- (void)_updateInvitationWithChangeNotification:(BOOL)notification;
- (void)_updatePreviewWithChangeNotification:(BOOL)notification;
- (void)_updateSharedLibraryWithChangeNotification:(BOOL)notification;
- (void)fetchSharedLibraryForURL:(id)l completionHandler:(id)handler;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setExiting:(id)exiting;
- (void)setHasPreview:(BOOL)preview;
- (void)setHasSharedLibrary:(BOOL)library;
- (void)setInvitation:(id)invitation;
- (void)setIsInitialized:(BOOL)initialized;
- (void)setPreview:(id)preview;
- (void)setSharedLibrary:(id)library;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PXSharedLibraryStatusProvider

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = +[PXSharedLibraryDataSourceManager keyPathsAffectingCurrentInvitationsDataSourceManager];
  v7 = [v6 containsObject:keyCopy];

  if (v7)
  {
    [(PXSharedLibraryStatusProvider *)self _configureInvitationDataSourceManager];
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v17 = 138543362;
      v18 = _statusDescription;
      v10 = "PXSharedLibraryStatusProvider INVITATIONS MANAGER did change: %{public}@";
LABEL_13:
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, v10, &v17, 0xCu);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v11 = +[PXSharedLibraryDataSourceManager keyPathsAffectingCurrentPreviewDataSourceManager];
  v12 = [v11 containsObject:keyCopy];

  if (v12)
  {
    [(PXSharedLibraryStatusProvider *)self _configurePreviewDataSourceManager];
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v17 = 138543362;
      v18 = _statusDescription;
      v10 = "PXSharedLibraryStatusProvider PREVIEW MANAGER did change: %{public}@";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v13 = +[PXSharedLibraryDataSourceManager keyPathsAffectingCurrentSharedLibraryDataSourceManager];
  v14 = [v13 containsObject:keyCopy];

  if (v14)
  {
    [(PXSharedLibraryStatusProvider *)self _configureSharedLibraryDataSourceManager];
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v17 = 138543362;
      v18 = _statusDescription;
      v10 = "PXSharedLibraryStatusProvider SHARED LIBRARY MANAGER did change: %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v15 = +[PXSharedLibraryDataSourceManager keyPathsAffectingCurrentExitingDataSourceManager];
  v16 = [v15 containsObject:keyCopy];

  if (v16)
  {
    [(PXSharedLibraryStatusProvider *)self _configureExitingDataSourceManager];
    v8 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v17 = 138543362;
      v18 = _statusDescription;
      v10 = "PXSharedLibraryStatusProvider EXITING MANAGER did change: %{public}@";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v15 = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (InvitationObservationContext == context)
  {
    [(PXSharedLibraryStatusProvider *)self _updateInvitationWithChangeNotification:1];
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v13 = 138543362;
      v14 = _statusDescription;
      v11 = "PXSharedLibraryStatusProvider INVITATIONS did change: %{public}@";
      goto LABEL_13;
    }
  }

  else if (PreviewObservationContext == context)
  {
    [(PXSharedLibraryStatusProvider *)self _updatePreviewWithChangeNotification:1];
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v13 = 138543362;
      v14 = _statusDescription;
      v11 = "PXSharedLibraryStatusProvider PREVIEW did change: %{public}@";
      goto LABEL_13;
    }
  }

  else if (SharedLibraryObservationContext == context)
  {
    [(PXSharedLibraryStatusProvider *)self _updateSharedLibraryWithChangeNotification:1];
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v13 = 138543362;
      v14 = _statusDescription;
      v11 = "PXSharedLibraryStatusProvider SHARED LIBRARY did change: %{public}@";
      goto LABEL_13;
    }
  }

  else
  {
    if (ExitingObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:468 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXSharedLibraryStatusProvider *)self _updateExitingWithChangeNotification:1];
    v9 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v13 = 138543362;
      v14 = _statusDescription;
      v11 = "PXSharedLibraryStatusProvider EXITING did change: %{public}@";
LABEL_13:
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
    }
  }
}

- (void)setExiting:(id)exiting
{
  exitingCopy = exiting;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_exiting != exitingCopy)
  {
    objc_storeStrong(&self->_exiting, exiting);
    [(PXSharedLibraryStatusProvider *)self signalChange:32];
  }
}

- (void)setSharedLibrary:(id)library
{
  libraryCopy = library;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_sharedLibrary != libraryCopy)
  {
    objc_storeStrong(&self->_sharedLibrary, library);
    [(PXSharedLibraryStatusProvider *)self signalChange:16];
  }
}

- (void)setPreview:(id)preview
{
  previewCopy = preview;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_preview != previewCopy)
  {
    objc_storeStrong(&self->_preview, preview);
    [(PXSharedLibraryStatusProvider *)self signalChange:8];
  }
}

- (void)setInvitation:(id)invitation
{
  invitationCopy = invitation;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_invitation != invitationCopy)
  {
    objc_storeStrong(&self->_invitation, invitation);
    [(PXSharedLibraryStatusProvider *)self signalChange:4];
  }
}

- (void)setHasSharedLibrary:(BOOL)library
{
  libraryCopy = library;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_hasSharedLibrary != libraryCopy)
  {
    self->_hasSharedLibrary = libraryCopy;
    if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
    {
      PXPreferencesSetInteger(@"LastKnownHasSharedLibrary", self->_hasSharedLibrary);
    }

    [(PXSharedLibraryStatusProvider *)self signalChange:2];
  }
}

- (void)setHasPreview:(BOOL)preview
{
  previewCopy = preview;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_hasPreview != previewCopy)
  {
    self->_hasPreview = previewCopy;
    if ((PFProcessIsLaunchedToExecuteTests() & 1) == 0)
    {
      PXPreferencesSetInteger(@"LastKnownHasSharedLibraryPreview", self->_hasPreview);
    }

    [(PXSharedLibraryStatusProvider *)self signalChange:1];
  }
}

- (void)setIsInitialized:(BOOL)initialized
{
  initializedCopy = initialized;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_isInitialized != initializedCopy)
  {
    self->_isInitialized = initializedCopy;

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
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v5 = 138543362;
      v6 = _statusDescription;
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
      _statusDescription = [(PXSharedLibraryStatusProvider *)self _statusDescription];
      v5 = 138543362;
      v6 = _statusDescription;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:315 description:{@"%s is not available as initializer", "-[PXSharedLibraryStatusProvider init]"}];

  abort();
}

- (PXSharedLibraryStatusProvider)initWithPhotoLibrary:(id)library deferInitialization:(BOOL)initialization initialHasPreview:(BOOL)preview initialHasSharedLibrary:(BOOL)sharedLibrary
{
  initializationCopy = initialization;
  v26 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:288 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v23.receiver = self;
  v23.super_class = PXSharedLibraryStatusProvider;
  v13 = [(PXSharedLibraryStatusProvider *)&v23 init];
  v14 = v13;
  if (v13)
  {
    v13->_deferredInitializationLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_photoLibrary, library);
    v14->_hasPreview = preview;
    v14->_hasSharedLibrary = sharedLibrary;
    if (initializationCopy)
    {
      v15 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        _statusDescription = [(PXSharedLibraryStatusProvider *)v14 _statusDescription];
        *buf = 138543362;
        v25 = _statusDescription;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "PXSharedLibraryStatusProvider deferring initialization... (%{public}@)", buf, 0xCu);
      }

      objc_initWeak(buf, v14);
      sharedScheduler = [off_1E7721858 sharedScheduler];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __116__PXSharedLibraryStatusProvider_initWithPhotoLibrary_deferInitialization_initialHasPreview_initialHasSharedLibrary___block_invoke;
      v21[3] = &unk_1E774C318;
      objc_copyWeak(&v22, buf);
      [sharedScheduler scheduleMainQueueTask:v21];

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
  photoLibrary = [(PXSharedLibraryStatusProvider *)self photoLibrary];
  v4 = [PXSharedLibraryDataSourceManager currentExitingDataSourceManagerForPhotoLibrary:photoLibrary];

  [(PXSectionedDataSourceManager *)self->_exitingDataSourceManager unregisterChangeObserver:self context:ExitingObservationContext];
  exitingDataSourceManager = self->_exitingDataSourceManager;
  self->_exitingDataSourceManager = v4;
  v6 = v4;

  [(PXSectionedDataSourceManager *)self->_exitingDataSourceManager registerChangeObserver:self context:ExitingObservationContext];

  [(PXSharedLibraryStatusProvider *)self _updateExitingWithChangeNotification:0];
}

- (void)_configureSharedLibraryDataSourceManager
{
  photoLibrary = [(PXSharedLibraryStatusProvider *)self photoLibrary];
  v4 = [PXSharedLibraryDataSourceManager currentSharedLibraryDataSourceManagerForPhotoLibrary:photoLibrary];

  [(PXSectionedDataSourceManager *)self->_sharedLibraryDataSourceManager unregisterChangeObserver:self context:SharedLibraryObservationContext];
  sharedLibraryDataSourceManager = self->_sharedLibraryDataSourceManager;
  self->_sharedLibraryDataSourceManager = v4;
  v6 = v4;

  [(PXSectionedDataSourceManager *)self->_sharedLibraryDataSourceManager registerChangeObserver:self context:SharedLibraryObservationContext];

  [(PXSharedLibraryStatusProvider *)self _updateSharedLibraryWithChangeNotification:0];
}

- (void)_configurePreviewDataSourceManager
{
  photoLibrary = [(PXSharedLibraryStatusProvider *)self photoLibrary];
  v4 = [PXSharedLibraryDataSourceManager currentPreviewDataSourceManagerForPhotoLibrary:photoLibrary];

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

  photoLibrary = [(PXSharedLibraryStatusProvider *)self photoLibrary];
  v4 = [PXSharedLibraryDataSourceManager currentInvitationsDataSourceManagerForPhotoLibrary:photoLibrary];

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

- (void)_updateExitingWithChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  dataSource = [(PXSectionedDataSourceManager *)self->_exitingDataSourceManager dataSource];
  if ([dataSource containsAnyItems])
  {
    if (dataSource)
    {
      [dataSource firstItemIndexPath];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    v6 = [dataSource sharedLibraryAtItemIndexPath:v11];
    if (notificationCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (notificationCopy)
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

- (void)_updateSharedLibraryWithChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  dataSource = [(PXSectionedDataSourceManager *)self->_sharedLibraryDataSourceManager dataSource];
  if ([dataSource containsAnyItems])
  {
    if (dataSource)
    {
      [dataSource firstItemIndexPath];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    v6 = [dataSource sharedLibraryAtItemIndexPath:v10];
  }

  else
  {
    v6 = 0;
  }

  if (notificationCopy)
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

- (void)_updatePreviewWithChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  dataSource = [(PXSectionedDataSourceManager *)self->_previewDataSourceManager dataSource];
  if ([dataSource containsAnyItems])
  {
    if (dataSource)
    {
      [dataSource firstItemIndexPath];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    v6 = [dataSource sharedLibraryAtItemIndexPath:v10];
  }

  else
  {
    v6 = 0;
  }

  if (notificationCopy)
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

- (void)_updateInvitationReceivedDateWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = _PXPreferencesSharedLibraryInvitationDate(@"SharedLibraryInvitationReceivedDate", identifierCopy);
    if (!v4)
    {
      v5 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        v8 = identifierCopy;
        _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Updating shared library invitation received date for library %{public}@", &v7, 0xCu);
      }

      v6 = [MEMORY[0x1E695DF00] now];
      _PXPreferencesSetSharedLibraryInvitationDate(@"SharedLibraryInvitationReceivedDate", v6, identifierCopy);
    }
  }
}

- (void)_updateInvitationWithChangeNotification:(BOOL)notification
{
  notificationCopy = notification;
  identifier = [(PXSharedLibrary *)self->_invitation identifier];
  dataSource = [(PXSectionedDataSourceManager *)self->_invitationsDataSourceManager dataSource];
  if ([dataSource containsAnyItems])
  {
    if (dataSource)
    {
      [dataSource firstItemIndexPath];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v7 = [dataSource sharedLibraryAtItemIndexPath:v13];
    if (notificationCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (notificationCopy)
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

  identifier2 = [(PXSharedLibrary *)self->_invitation identifier];
  if (identifier != identifier2 && ([identifier isEqualToString:identifier2] & 1) == 0)
  {
    [(PXSharedLibraryStatusProvider *)self _updateInvitationReceivedDateWithIdentifier:identifier2];
  }
}

- (id)fetchExiting
{
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  exitingDataSourceManager = self->_exitingDataSourceManager;
  if (!exitingDataSourceManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"_exitingDataSourceManager"}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"_sharedLibraryDataSourceManager"}];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"_previewDataSourceManager"}];

    previewDataSourceManager = self->_previewDataSourceManager;
  }

  return [(PXSharedLibraryDataSourceManager *)previewDataSourceManager fetchPreview];
}

- (void)fetchSharedLibraryForURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  [(PXSharedLibraryStatusProvider *)self _fullfillDeferredInitializationIfNecessary];
  sharedLibraryDataSourceManager = self->_sharedLibraryDataSourceManager;
  if (!sharedLibraryDataSourceManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryStatusProvider.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"_sharedLibraryDataSourceManager"}];

    sharedLibraryDataSourceManager = self->_sharedLibraryDataSourceManager;
  }

  [(PXSharedLibraryDataSourceManager *)sharedLibraryDataSourceManager fetchSharedLibraryForURL:lCopy completionHandler:handlerCopy];
}

- (PXSharedLibrary)sharedLibraryOrPreview
{
  preview = [(PXSharedLibraryStatusProvider *)self preview];
  v4 = preview;
  if (preview)
  {
    sharedLibrary = preview;
  }

  else
  {
    sharedLibrary = [(PXSharedLibraryStatusProvider *)self sharedLibrary];
  }

  v6 = sharedLibrary;

  return v6;
}

+ (PXSharedLibraryStatusProvider)sharedLibraryStatusProviderWithPhotoLibrary:(id)library
{
  v22 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (libraryCopy)
  {
    os_unfair_lock_lock(&sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTableLock);
    v4 = sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable;
    if (!sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable)
    {
      weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      v6 = sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable;
      sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable = weakToWeakObjectsMapTable;

      v4 = sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable;
    }

    v7 = [v4 objectForKey:libraryCopy];
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
      v19 = libraryCopy;
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

      v8 = [[PXSharedLibraryStatusProvider alloc] initWithPhotoLibrary:libraryCopy deferInitialization:IsLaunchedToExecuteTests ^ 1u initialHasPreview:v14 initialHasSharedLibrary:v13];
      [sharedLibraryStatusProviderWithPhotoLibrary___statusProvidersMapTable setObject:v8 forKey:libraryCopy];
      v9 = PLSharedLibraryGetLog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      v18 = 138412546;
      v19 = libraryCopy;
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