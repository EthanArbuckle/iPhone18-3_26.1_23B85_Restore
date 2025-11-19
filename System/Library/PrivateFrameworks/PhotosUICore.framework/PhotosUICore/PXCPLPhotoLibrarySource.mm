@interface PXCPLPhotoLibrarySource
+ (id)sharedQueue;
- (PXCPLPhotoLibrarySource)init;
- (PXCPLPhotoLibrarySource)initWithPhotoLibrary:(id)a3;
- (float)fractionCompletedForRebuild;
- (void)_logChanges;
- (void)_queue_resolveSettings;
- (void)_queue_subscribeToPostOpenProgressForPhotoLibrary:(id)a3;
- (void)_removePostOpenProgressObserverIfNeeded;
- (void)_updateFractionCompletedForRebuild;
- (void)_updateIsCloudPhotosEnabled:(BOOL)a3;
- (void)_updateIsKeepOriginalsEnabled:(BOOL)a3;
- (void)_updateIsLocalModeEnabled;
- (void)_updateIsRebuildingThumbnails;
- (void)cplSettingsDidChange:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setFractionCompletedForRebuild:(float)a3;
- (void)setIsCloudPhotosEnabled:(BOOL)a3;
- (void)setIsKeepOriginalsEnabled:(BOOL)a3;
- (void)setIsLocalModeEnabled:(BOOL)a3;
- (void)setIsRebuildingThumbnails:(BOOL)a3;
@end

@implementation PXCPLPhotoLibrarySource

void __38__PXCPLPhotoLibrarySource_sharedQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);
  attr = dispatch_queue_attr_make_initially_inactive(v1);

  v2 = dispatch_queue_create("com.apple.photos.PXCPLPhotoLibrarySource", attr);
  v3 = sharedQueue_sharedQueue_177178;
  sharedQueue_sharedQueue_177178 = v2;

  v4 = [off_1E7721858 sharedScheduler];
  [v4 scheduleMainQueueTask:&__block_literal_global_190_177182];
}

+ (id)sharedQueue
{
  if (sharedQueue_onceToken_177176 != -1)
  {
    dispatch_once(&sharedQueue_onceToken_177176, &__block_literal_global_177177);
  }

  v3 = sharedQueue_sharedQueue_177178;

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (_PostOpenProgressObservationContext == a6)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PXCPLPhotoLibrarySource_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXCPLPhotoLibrarySource;
    [(PXCPLPhotoLibrarySource *)&v6 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

void __74__PXCPLPhotoLibrarySource_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFractionCompletedForRebuild];
}

- (void)cplSettingsDidChange:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PXCPLPhotoLibrarySource_cplSettingsDidChange___block_invoke;
  v6[3] = &unk_1E774C620;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __48__PXCPLPhotoLibrarySource_cplSettingsDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateIsCloudPhotosEnabled:{objc_msgSend(*(a1 + 40), "isCloudPhotoLibraryEnabled")}];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) settings];
  [v2 _updateIsKeepOriginalsEnabled:{objc_msgSend(v3, "isKeepOriginalsEnabled")}];
}

- (void)_logChanges
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(PXCPLPhotoLibrarySource *)self currentChanges])
  {
    v3 = PLUserStatusGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      isCloudPhotosEnabled = self->_isCloudPhotosEnabled;
      isLocalModeEnabled = self->_isLocalModeEnabled;
      isKeepOriginalsEnabled = self->_isKeepOriginalsEnabled;
      v7 = _DescriptionForPercentCompleted(self->_percentCompletedForRebuild);
      isRebuildingThumbnails = self->_isRebuildingThumbnails;
      v9 = 138544642;
      v10 = self;
      v11 = 1024;
      v12 = isCloudPhotosEnabled;
      v13 = 1024;
      v14 = isLocalModeEnabled;
      v15 = 1024;
      v16 = isKeepOriginalsEnabled;
      v17 = 2112;
      v18 = v7;
      v19 = 1024;
      v20 = isRebuildingThumbnails;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ IsCloudPhotosEnabled: %d, IsLocalModeEnabled: %d, IsKeepOriginalsEnabled: %d, FractionCompletedForRebuild: %@, IsRebuildingThumbnails: %d (new)", &v9, 0x2Eu);
    }
  }
}

- (void)_updateIsRebuildingThumbnails
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__PXCPLPhotoLibrarySource__updateIsRebuildingThumbnails__block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXCPLPhotoLibrarySource *)self performChanges:v3];
}

uint64_t __56__PXCPLPhotoLibrarySource__updateIsRebuildingThumbnails__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsRebuildingThumbnails:0];
  v2 = *(a1 + 32);

  return [v2 _logChanges];
}

- (void)_updateFractionCompletedForRebuild
{
  v16 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3 = [(PXCPLPhotoLibrarySource *)self postOpenProgress];
  [v3 fractionCompleted];
  v5 = v4 >= 1.0 || v4 <= 0.0;
  v6 = v4;
  v9 = 3221225472;
  v8 = MEMORY[0x1E69E9820];
  v10 = __61__PXCPLPhotoLibrarySource__updateFractionCompletedForRebuild__block_invoke;
  v11 = &unk_1E77467C0;
  if (v5)
  {
    v6 = -1.0;
  }

  v12 = self;
  v13 = v6;
  [(PXCPLPhotoLibrarySource *)self performChanges:&v8];
  if ([v3 isFinished])
  {
    v7 = PLUserStatusGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = self;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Post-open progress finished", buf, 0xCu);
    }

    [(PXCPLPhotoLibrarySource *)self _removePostOpenProgressObserverIfNeeded];
  }
}

uint64_t __61__PXCPLPhotoLibrarySource__updateFractionCompletedForRebuild__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  [*(a1 + 32) setFractionCompletedForRebuild:a2];
  v3 = *(a1 + 32);

  return [v3 _logChanges];
}

- (void)_updateIsKeepOriginalsEnabled:(BOOL)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PXCPLPhotoLibrarySource__updateIsKeepOriginalsEnabled___block_invoke;
  v5[3] = &unk_1E774C670;
  v5[4] = self;
  v6 = a3;
  [(PXCPLPhotoLibrarySource *)self performChanges:v5];
}

uint64_t __57__PXCPLPhotoLibrarySource__updateIsKeepOriginalsEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsKeepOriginalsEnabled:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _logChanges];
}

- (void)_updateIsLocalModeEnabled
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  IsLocalModeEnabled = _IsLocalModeEnabled(self->_photoLibrary);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PXCPLPhotoLibrarySource__updateIsLocalModeEnabled__block_invoke;
  v4[3] = &unk_1E774C670;
  v4[4] = self;
  v5 = IsLocalModeEnabled;
  [(PXCPLPhotoLibrarySource *)self performChanges:v4];
}

uint64_t __52__PXCPLPhotoLibrarySource__updateIsLocalModeEnabled__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsLocalModeEnabled:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _logChanges];
}

- (void)_updateIsCloudPhotosEnabled:(BOOL)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__PXCPLPhotoLibrarySource__updateIsCloudPhotosEnabled___block_invoke;
  v5[3] = &unk_1E774C670;
  v5[4] = self;
  v6 = a3;
  [(PXCPLPhotoLibrarySource *)self performChanges:v5];
}

void __55__PXCPLPhotoLibrarySource__updateIsCloudPhotosEnabled___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setIsCloudPhotosEnabled:*(a1 + 40)];
  if ([*(a1 + 32) currentChanges])
  {
    v2 = PLUserStatusGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 112);
      v5 = *(v3 + 113);
      v6 = _DescriptionForPercentCompleted(*(v3 + 104));
      v7 = *(*(a1 + 32) + 115);
      v8 = 138544386;
      v9 = v3;
      v10 = 1024;
      v11 = v4;
      v12 = 1024;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ IsCloudPhotosEnabled: %d (new), IsLocalModeEnabled: %d, FractionCompletedForRebuild: %@, IsRebuildingThumbnails: %d", &v8, 0x28u);
    }
  }
}

- (void)_queue_resolveSettings
{
  v3 = [(PLCPLSettingsObserver *)self->_cplSettingsObserver settings];
  v4 = [v3 isKeepOriginalsEnabled];

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PXCPLPhotoLibrarySource__queue_resolveSettings__block_invoke;
  block[3] = &unk_1E774A170;
  objc_copyWeak(&v6, &location);
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __49__PXCPLPhotoLibrarySource__queue_resolveSettings__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIsKeepOriginalsEnabled:*(a1 + 40)];
}

- (void)_removePostOpenProgressObserverIfNeeded
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(PXCPLPhotoLibrarySource *)self postOpenProgress];
  [(PXCPLPhotoLibrarySource *)self setPostOpenProgress:0];
  if (v3)
  {
    v4 = PLUserStatusGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = self;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Unsubscribing from post-open progress", &v5, 0xCu);
    }

    [v3 removeObserver:self forKeyPath:@"fractionCompleted" context:_PostOpenProgressObservationContext];
  }
}

- (void)_queue_subscribeToPostOpenProgressForPhotoLibrary:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXCPLPhotoLibrarySource.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v6 = [v5 postOpenProgress];
  v7 = v6;
  if (!v6)
  {
    v9 = PLUserStatusGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = self;
      v11 = "%{public}@ No post-open progress - bailing out";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_14;
  }

  v8 = [v6 isFinished];
  v9 = PLUserStatusGetLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138543362;
      v16 = self;
      v11 = "%{public}@ Post-open progress already finished - bailing out";
LABEL_9:
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v10)
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Subscribing to post-open progress", buf, 0xCu);
  }

  [v7 addObserver:self forKeyPath:@"fractionCompleted" options:0 context:_PostOpenProgressObservationContext];
  [(PXCPLPhotoLibrarySource *)self setPostOpenProgress:v7];
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PXCPLPhotoLibrarySource__queue_subscribeToPostOpenProgressForPhotoLibrary___block_invoke;
  block[3] = &unk_1E774C318;
  objc_copyWeak(&v14, buf);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
LABEL_14:
}

void __77__PXCPLPhotoLibrarySource__queue_subscribeToPostOpenProgressForPhotoLibrary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFractionCompletedForRebuild];
}

- (void)setIsRebuildingThumbnails:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_isRebuildingThumbnails != v3)
  {
    self->_isRebuildingThumbnails = v3;

    [(PXCPLPhotoLibrarySource *)self signalChange:8];
  }
}

- (void)setFractionCompletedForRebuild:(float)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v6 = a3 <= 1.0 && a3 >= 0.0;
  if (!v6 && a3 != -1.0)
  {
    PXAssertGetLog();
  }

  v7 = -1;
  v8 = vcvtps_s32_f32(a3 * 100.0);
  if (v8 >= 100)
  {
    v8 = 100;
  }

  if (a3 >= 0.0)
  {
    v7 = v8;
  }

  if (self->_percentCompletedForRebuild != v7)
  {
    self->_percentCompletedForRebuild = v7;
    [(PXCPLPhotoLibrarySource *)self signalChange:4];
  }
}

- (void)setIsKeepOriginalsEnabled:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_isKeepOriginalsEnabled != v3)
  {
    self->_isKeepOriginalsEnabled = v3;

    [(PXCPLPhotoLibrarySource *)self signalChange:16];
  }
}

- (void)setIsLocalModeEnabled:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_isLocalModeEnabled != v3)
  {
    self->_isLocalModeEnabled = v3;

    [(PXCPLPhotoLibrarySource *)self signalChange:2];
  }
}

- (void)setIsCloudPhotosEnabled:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_isCloudPhotosEnabled != v3)
  {
    self->_isCloudPhotosEnabled = v3;

    [(PXCPLPhotoLibrarySource *)self signalChange:1];
  }
}

- (float)fractionCompletedForRebuild
{
  percentCompletedForRebuild = self->_percentCompletedForRebuild;
  if (percentCompletedForRebuild < 0)
  {
    return -1.0;
  }

  result = percentCompletedForRebuild / 100.0;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

- (void)dealloc
{
  [(PXCPLPhotoLibrarySource *)self _removePostOpenProgressObserverIfNeeded];
  v3.receiver = self;
  v3.super_class = PXCPLPhotoLibrarySource;
  [(PXCPLPhotoLibrarySource *)&v3 dealloc];
}

- (PXCPLPhotoLibrarySource)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXCPLPhotoLibrarySource.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v25.receiver = self;
  v25.super_class = PXCPLPhotoLibrarySource;
  v7 = [(PXCPLPhotoLibrarySource *)&v25 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, a3);
    v9 = objc_alloc(MEMORY[0x1E69BE2C8]);
    v10 = [v6 photoLibraryBundle];
    v11 = [v9 initWithLibraryBundle:v10];
    cplSettingsObserver = v8->_cplSettingsObserver;
    v8->_cplSettingsObserver = v11;

    [(PLCPLSettingsObserver *)v8->_cplSettingsObserver setDelegate:v8];
    v8->_isCloudPhotosEnabled = [(PLCPLSettingsObserver *)v8->_cplSettingsObserver isCloudPhotoLibraryEnabled];
    v8->_isLocalModeEnabled = _IsLocalModeEnabled(v8->_photoLibrary);
    v8->_percentCompletedForRebuild = -1;
    v13 = [(PHPhotoLibrary *)v8->_photoLibrary pathManager];
    v8->_isRebuildingThumbnails = [MEMORY[0x1E69BE848] hasRebuildingThumbnailsIndicatorAndRebuildingWithPathManager:v13];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, _systemPhotoLibraryURLDidChange, [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(MEMORY[0x1E69789A8], "systemPhotoLibraryURLChangeNotificationName")}], 0, 1024);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, _localModeEnabledDidChange, *MEMORY[0x1E69BE948], 0, 1024);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, _thumbnailRebuildDidStop, [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69BF100]], 0, 1024);
    v15 = +[PXCPLPhotoLibrarySource sharedQueue];
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v15;

    objc_initWeak(&location, v8);
    v17 = v8->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__PXCPLPhotoLibrarySource_initWithPhotoLibrary___block_invoke;
    block[3] = &unk_1E774B248;
    objc_copyWeak(&v23, &location);
    v22 = v6;
    v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_UTILITY, 0, block);
    dispatch_async(v17, v18);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __48__PXCPLPhotoLibrarySource_initWithPhotoLibrary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_subscribeToPostOpenProgressForPhotoLibrary:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _queue_resolveSettings];
}

- (PXCPLPhotoLibrarySource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCPLPhotoLibrarySource.m" lineNumber:68 description:{@"%s is not available as initializer", "-[PXCPLPhotoLibrarySource init]"}];

  abort();
}

@end