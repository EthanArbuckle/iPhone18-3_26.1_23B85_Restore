@interface PXCPLSharedLibraryActivity
+ (OS_dispatch_queue)sharedQueue;
- (PXCPLSharedLibraryActivity)init;
- (PXCPLSharedLibraryActivity)initWithPhotoLibrary:(id)library;
- (void)_queue_fetchLibraryScopeForPhotoLibrary:(id)library;
- (void)_queue_handleCloudStatusCounts:(id)counts error:(id)error libraryScope:(id)scope;
- (void)_queue_updateScopeStatusCounts;
- (void)_setMovingToShared:(unint64_t)shared movingToPersonal:(unint64_t)personal;
- (void)_setState:(int64_t)state;
- (void)_updateScopeStatusCounts;
- (void)photoLibraryDidChange:(id)change;
- (void)setMovingToPersonal:(unint64_t)personal;
- (void)setMovingToShared:(unint64_t)shared;
- (void)setState:(int64_t)state;
@end

@implementation PXCPLSharedLibraryActivity

- (void)_updateScopeStatusCounts
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__PXCPLSharedLibraryActivity__updateScopeStatusCounts__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __54__PXCPLSharedLibraryActivity__updateScopeStatusCounts__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updateScopeStatusCounts];
}

- (void)_queue_updateScopeStatusCounts
{
  dispatch_assert_queue_V2(self->_serialQueue);
  firstObject = [(PHFetchResult *)self->_libraryScopeFetchResult firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    if (![firstObject exitState])
    {
      objc_initWeak(buf, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __60__PXCPLSharedLibraryActivity__queue_updateScopeStatusCounts__block_invoke;
      v7[3] = &unk_1E773B370;
      v7[4] = self;
      objc_copyWeak(&v9, buf);
      v8 = v4;
      [v8 getCloudStatusCountsWithCompletionHandler:v7];

      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
      goto LABEL_10;
    }

    v5 = PLUserStatusGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "PXCPLSharedLibraryActivity: Library scope is exiting when fetching scope status counts - bailing out";
LABEL_7:
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else
  {
    v5 = PLUserStatusGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "PXCPLSharedLibraryActivity: No library scope available for fetching scope status counts - bailing out";
      goto LABEL_7;
    }
  }

LABEL_10:
}

void __60__PXCPLSharedLibraryActivity__queue_updateScopeStatusCounts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 96);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__PXCPLSharedLibraryActivity__queue_updateScopeStatusCounts__block_invoke_2;
  v10[3] = &unk_1E7748228;
  objc_copyWeak(&v14, (a1 + 48));
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v14);
}

void __60__PXCPLSharedLibraryActivity__queue_updateScopeStatusCounts__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _queue_handleCloudStatusCounts:*(a1 + 32) error:*(a1 + 40) libraryScope:*(a1 + 48)];
}

- (void)_queue_handleCloudStatusCounts:(id)counts error:(id)error libraryScope:(id)scope
{
  v26 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  errorCopy = error;
  serialQueue = self->_serialQueue;
  scopeCopy = scope;
  dispatch_assert_queue_V2(serialQueue);
  firstObject = [(PHFetchResult *)self->_libraryScopeFetchResult firstObject];

  if (firstObject != scopeCopy)
  {
    v13 = PLUserStatusGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "PXCPLSharedLibraryActivity: Library scope changed while fetching scope status counts - bailing out";
LABEL_9:
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v15 = firstObject;
  if (!scopeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL _IsExiting(PHLibraryScope *__strong)"];
    [currentHandler handleFailureInFunction:v21 file:@"PXCPLSharedLibraryActivity.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"libraryScope"}];
  }

  exitState = [v15 exitState];

  if (exitState)
  {
    v13 = PLUserStatusGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "PXCPLSharedLibraryActivity: Library scope is exiting after fetching scope status counts - bailing out";
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (countsCopy)
  {
    countOfSharingRecords = [countsCopy countOfSharingRecords];
    countOfUnsharingRecords = [countsCopy countOfUnsharingRecords];
  }

  else
  {
    v19 = PLUserStatusGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = errorCopy;
      _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "PXCPLSharedLibraryActivity: Failed to fetch scope status counts: %@", buf, 0xCu);
    }

    countOfUnsharingRecords = 0;
    countOfSharingRecords = 0;
  }

  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PXCPLSharedLibraryActivity__queue_handleCloudStatusCounts_error_libraryScope___block_invoke;
  block[3] = &unk_1E773B348;
  objc_copyWeak(v23, buf);
  v23[1] = countOfSharingRecords;
  v23[2] = countOfUnsharingRecords;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v23);
  objc_destroyWeak(buf);
LABEL_11:
}

void __80__PXCPLSharedLibraryActivity__queue_handleCloudStatusCounts_error_libraryScope___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMovingToShared:*(a1 + 40) movingToPersonal:*(a1 + 48)];
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PXCPLSharedLibraryActivity_photoLibraryDidChange___block_invoke;
  v7[3] = &unk_1E774C620;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_sync(serialQueue, v7);
}

void __52__PXCPLSharedLibraryActivity_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) changeDetailsForFetchResult:*(*(a1 + 40) + 104)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 fetchResultAfterChanges];
    v5 = *(a1 + 40);
    v6 = *(v5 + 104);
    *(v5 + 104) = v4;

    objc_initWeak(&location, *(a1 + 40));
    Result = _StateForLibraryScopeFetchResult(*(*(a1 + 40) + 104));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__PXCPLSharedLibraryActivity_photoLibraryDidChange___block_invoke_2;
    block[3] = &unk_1E7749808;
    objc_copyWeak(v9, &location);
    v9[1] = Result;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }
}

void __52__PXCPLSharedLibraryActivity_photoLibraryDidChange___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setState:*(a1 + 40)];
}

- (void)_setMovingToShared:(unint64_t)shared movingToPersonal:(unint64_t)personal
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  state = self->_state;
  v8 = state == 1;
  if (state == 1)
  {
    sharedCopy = shared;
  }

  else
  {
    sharedCopy = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__PXCPLSharedLibraryActivity__setMovingToShared_movingToPersonal___block_invoke;
  v11[3] = &unk_1E7746798;
  if (v8)
  {
    personalCopy = personal;
  }

  else
  {
    personalCopy = 0;
  }

  v11[4] = self;
  v11[5] = sharedCopy;
  v11[6] = personalCopy;
  [(PXCPLSharedLibraryActivity *)self performChanges:v11];
}

void __66__PXCPLSharedLibraryActivity__setMovingToShared_movingToPersonal___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setMovingToShared:*(a1 + 40)];
  [*(a1 + 32) setMovingToPersonal:*(a1 + 48)];
  v2 = [*(a1 + 32) currentChanges];
  if (v2)
  {
    v3 = v2;
    v4 = PLUserStatusGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = _StateDescription(*(*(a1 + 32) + 120));
      v6 = *(a1 + 40);
      if ((v3 & 2) != 0)
      {
        v7 = @" (new)";
      }

      else
      {
        v7 = &stru_1F1741150;
      }

      v8 = v7;
      v9 = *(a1 + 48);
      if ((v3 & 4) != 0)
      {
        v10 = @" (new)";
      }

      else
      {
        v10 = &stru_1F1741150;
      }

      v11 = v10;
      v12 = 138544386;
      v13 = v5;
      v14 = 2048;
      v15 = v6;
      v16 = 2114;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "PXCPLSharedLibraryActivity { state:%{public}@, movingToShared:%lu%{public}@, movingToPersonal:%lu%{public}@ }", &v12, 0x34u);
    }
  }
}

- (void)_setState:(int64_t)state
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  state = [(PXCPLSharedLibraryActivity *)self state];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXCPLSharedLibraryActivity__setState___block_invoke;
  v6[3] = &unk_1E7746798;
  v6[4] = self;
  v6[5] = state;
  v6[6] = state;
  [(PXCPLSharedLibraryActivity *)self performChanges:v6];
}

void __40__PXCPLSharedLibraryActivity__setState___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setState:*(a1 + 40)];
  if ([*(a1 + 32) currentChanges])
  {
    v2 = *(a1 + 32);
    v3 = v2[15];
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      [v2 setMovingToShared:0];
      [*(a1 + 32) setMovingToPersonal:0];
      v4 = [*(a1 + 32) currentChanges];
      if ((v4 & 2) != 0)
      {
        v5 = @" (new)";
      }

      else
      {
        v5 = &stru_1F1741150;
      }

      if ((v4 & 4) != 0)
      {
        v6 = @" (new)";
      }

      else
      {
        v6 = &stru_1F1741150;
      }
    }

    else
    {
      if (v3 == 1 || *(a1 + 48) == 0)
      {
        [v2 _updateScopeStatusCounts];
      }

      v6 = &stru_1F1741150;
      v5 = &stru_1F1741150;
    }

    v8 = PLUserStatusGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _StateDescription(*(*(a1 + 32) + 120));
      v10 = *(*(a1 + 32) + 128);
      v11 = v5;
      v12 = *(*(a1 + 32) + 136);
      v13 = v6;
      v14 = 138544642;
      v15 = v9;
      v16 = 2114;
      v17 = @" (new)";
      v18 = 2048;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2048;
      v23 = v12;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "PXCPLSharedLibraryActivity { state:%{public}@%{public}@, movingToShared:%lu%{public}@, movingToPersonal:%lu%{public}@ }", &v14, 0x3Eu);
    }
  }
}

- (void)_queue_fetchLibraryScopeForPhotoLibrary:(id)library
{
  v16 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  dispatch_assert_queue_V2(self->_serialQueue);
  v6 = PLUserStatusGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = libraryCopy;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "PXCPLSharedLibraryActivity { %{public}@ }", buf, 0xCu);
  }

  objc_storeStrong(&self->_photoLibrary, library);
  [(PHPhotoLibrary *)self->_photoLibrary registerChangeObserver:self];
  librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setIncludeExitingShares:1];
  v8 = [MEMORY[0x1E69788A0] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions];
  libraryScopeFetchResult = self->_libraryScopeFetchResult;
  self->_libraryScopeFetchResult = v8;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _scopeStatusCountsDidChange, *MEMORY[0x1E6978E90], 0, 1024);
  objc_initWeak(buf, self);
  Result = _StateForLibraryScopeFetchResult(self->_libraryScopeFetchResult);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PXCPLSharedLibraryActivity__queue_fetchLibraryScopeForPhotoLibrary___block_invoke;
  v12[3] = &unk_1E7749808;
  objc_copyWeak(v13, buf);
  v13[1] = Result;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
  objc_destroyWeak(v13);
  objc_destroyWeak(buf);
}

void __70__PXCPLSharedLibraryActivity__queue_fetchLibraryScopeForPhotoLibrary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setState:*(a1 + 40)];
}

- (void)setMovingToPersonal:(unint64_t)personal
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_movingToPersonal != personal)
  {
    self->_movingToPersonal = personal;

    [(PXCPLSharedLibraryActivity *)self signalChange:4];
  }
}

- (void)setMovingToShared:(unint64_t)shared
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_movingToShared != shared)
  {
    self->_movingToShared = shared;

    [(PXCPLSharedLibraryActivity *)self signalChange:2];
  }
}

- (void)setState:(int64_t)state
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_state != state)
  {
    self->_state = state;

    [(PXCPLSharedLibraryActivity *)self signalChange:1];
  }
}

- (PXCPLSharedLibraryActivity)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLSharedLibraryActivity.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v17.receiver = self;
  v17.super_class = PXCPLSharedLibraryActivity;
  v6 = [(PXCPLSharedLibraryActivity *)&v17 init];
  if (v6)
  {
    v7 = +[PXCPLSharedLibraryActivity sharedQueue];
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v7;

    objc_initWeak(&location, v6);
    v9 = v6->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PXCPLSharedLibraryActivity_initWithPhotoLibrary___block_invoke;
    block[3] = &unk_1E774B248;
    objc_copyWeak(&v15, &location);
    v14 = libraryCopy;
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, QOS_CLASS_UTILITY, 0, block);
    dispatch_async(v9, v10);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __51__PXCPLSharedLibraryActivity_initWithPhotoLibrary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_fetchLibraryScopeForPhotoLibrary:*(a1 + 32)];
}

- (PXCPLSharedLibraryActivity)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLSharedLibraryActivity.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXCPLSharedLibraryActivity init]"}];

  abort();
}

+ (OS_dispatch_queue)sharedQueue
{
  if (sharedQueue_onceToken_124823 != -1)
  {
    dispatch_once(&sharedQueue_onceToken_124823, &__block_literal_global_124824);
  }

  v3 = sharedQueue_sharedQueue_124825;

  return v3;
}

void __41__PXCPLSharedLibraryActivity_sharedQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);
  attr = dispatch_queue_attr_make_initially_inactive(v1);

  v2 = dispatch_queue_create("com.apple.photos.PXCPLSharedLibraryActivity.sharedQueue", attr);
  v3 = sharedQueue_sharedQueue_124825;
  sharedQueue_sharedQueue_124825 = v2;

  v4 = [off_1E7721858 sharedScheduler];
  [v4 scheduleMainQueueTask:&__block_literal_global_190_124829];
}

@end